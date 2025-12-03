@interface PKMovieView
- (id)initWithURL:(id *)l;
- (void)_playbackEnded;
- (void)didMoveToWindow;
@end

@implementation PKMovieView

- (id)initWithURL:(id *)l
{
  v3 = a2;
  if (l)
  {
    v8.receiver = l;
    v8.super_class = PKMovieView;
    l = objc_msgSendSuper2(&v8, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (l)
    {
      v4 = [MEMORY[0x1E6988098] playerWithURL:v3];
      v5 = l[51];
      l[51] = v4;

      [l[51] setRate:0.0];
      [l[51] setAllowsExternalPlayback:0];
      layer = [l layer];
      [layer setVideoGravity:*MEMORY[0x1E69874E8]];
      [layer setPlayer:l[51]];
    }
  }

  return l;
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = PKMovieView;
  [(PKMovieView *)&v9 didMoveToWindow];
  window = [(PKMovieView *)self window];

  LODWORD(v4) = 1.0;
  if (!window)
  {
    *&v4 = 0.0;
  }

  [(AVPlayer *)self->_moviePlayer setRate:v4];
  if (window)
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    [mEMORY[0x1E6958460] setCategory:*MEMORY[0x1E6958038] error:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E6987A10];
    currentItem = [(AVPlayer *)self->_moviePlayer currentItem];
    [defaultCenter addObserver:self selector:sel__playbackEnded name:v7 object:currentItem];
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