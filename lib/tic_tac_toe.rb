class TicTacToe
<<<<<<< HEAD
  def initialize
    @board = Array.new(9, " ")
    @WIN_COMBINATIONS = WIN_COMBINATIONS
  end
  def board
    @board
  end
  WIN_COMBINATIONS =
    [
=======
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
    @WIN_COMBINATIONS = [
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
<<<<<<< HEAD
  def move(index, player)
    @board[index] = player
=======

  end
  def WIN_COMBINATIONS
    @WIN_COMBINATIONS
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f
  end
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
<<<<<<< HEAD
  def valid_move?(index)
    index.between?(0, 8) && !position_taken?(index)
  end
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  def turn
    puts 'Please enter 1-9:'
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
=======

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  def won?
    @WIN_COMBINATIONS.each do |pos1, pos2, pos3|
      moves = [@board[pos1],@board[pos2],@board[pos3]]
      ((moves == ["X","X","X"]) || (moves == ["O","O","O"])) ? (return [pos1, pos2, pos3]) : false
    end
    return false
  end
<<<<<<< HEAD
  def position_taken?(index)
=======
  def position_taken?
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f
      !(@board[index].nil? || @board[index] == " ")
  end
  def full?
    ((@board.count("X") + @board.count("O")) == 9) ? true:false
  end
  def draw?
<<<<<<< HEAD
    (full? && !(won?))? true:false
=======
    (full? && !(won?)? true:false
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f
  end
  def over?
    (won? || draw? || full?)? true:false
  end
  def winner
<<<<<<< HEAD
    won? ? (return @board[won?[0]]) : nil
  end
  def play
    turn until over?
      if won?
        puts "Congratulations #{winner}!"
      elsif draw?
        puts "Cat's Game!"
      end
    end
=======
    won? ? (return board[won?[0]]) : nil
  end
>>>>>>> 48092b2d870c43ee06939fb016c13af85b68752f
end
