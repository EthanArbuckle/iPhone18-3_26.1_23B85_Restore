@interface PKMovieView
- (id)initWithURL:(id *)a1;
- (void)_playbackEnded;
- (void)didMoveToWindow;
@end

@implementation PKMovieView

- (id)initWithURL:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = PKMovieView;
    a1 = objc_msgSendSuper2(&v8, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (a1)
    {
      v4 = [MEMORY[0x1E6988098] playerWithURL:v3];
      v5 = a1[51];
      a1[51] = v4;

      [a1[51] setRate:0.0];
      [a1[51] setAllowsExternalPlayback:0];
      v6 = [a1 layer];
      [v6 setVideoGravity:*MEMORY[0x1E69874E8]];
      [v6 setPlayer:a1[51]];
    }
  }

  return a1;
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = PKMovieView;
  [(PKMovieView *)&v9 didMoveToWindow];
  v3 = [(PKMovieView *)self window];

  LODWORD(v4) = 1.0;
  if (!v3)
  {
    *&v4 = 0.0;
  }

  [(AVPlayer *)self->_moviePlayer setRate:v4];
  if (v3)
  {
    v5 = [MEMORY[0x1E6958460] sharedInstance];
    [v5 setCategory:*MEMORY[0x1E6958038] error:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E6987A10];
    v8 = [(AVPlayer *)self->_moviePlayer currentItem];
    [v6 addObserver:self selector:sel__playbackEnded name:v7 object:v8];
  }
}

- (void)_playbackEnded
{
  moviePlayer = self->_moviePlayer;
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVPlayer *)moviePlayer seekToTime:&v5];
  LODWORD(v4) = 1.0;
  [(AVPlayer *)self->_moviePlayer setRate:v4];
}

@end