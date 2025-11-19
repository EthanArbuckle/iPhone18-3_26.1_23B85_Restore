@interface AVTPaddleView
- (AVTPaddleView)initWithLayoutDirection:(int64_t)a3 symbolConfiguration:(id)a4;
- (AVTPaddleViewDelegate)delegate;
- (BOOL)isPointInsideTransparentRegion:(CGPoint)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)frameForAddButtonInCoordinateSpace:(id)a3;
- (CGRect)frameForVideoInCoordinateSpace:(id)a3;
- (void)_configureWithSymbolConfiguration:(id)a3;
- (void)attachVideoController:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissAnimated:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)handleDismissGesture;
- (void)handleTapAddButton;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)showAnimated:(BOOL)a3;
- (void)startPlayingIfNecessary;
- (void)stopPlayingIfNecessary;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutFromPlusButtonView:(id)a3 videoView:(id)a4;
@end

@implementation AVTPaddleView

- (AVTPaddleView)initWithLayoutDirection:(int64_t)a3 symbolConfiguration:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = AVTPaddleView;
  v7 = [(AVTPaddleView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    [objc_opt_class() defaultPadding];
    v7->_padding = v8;
    v7->_layoutDirection = a3;
    v9 = +[AVTUIEnvironment defaultEnvironment];
    v10 = [v9 logger];
    logger = v7->_logger;
    v7->_logger = v10;

    [(AVTPaddleView *)v7 _configureWithSymbolConfiguration:v6];
  }

  return v7;
}

- (void)dealloc
{
  [(AVTPaddleView *)self stopPlayingIfNecessary];
  v3 = [(AVTPaddleView *)self tapGestureRecognizer];
  [(AVTPaddleView *)self removeGestureRecognizer:v3];

  v4 = [(AVTPaddleView *)self superview];
  v5 = [(AVTPaddleView *)self dismissGestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  [(AVTPaddleView *)self setTapGestureRecognizer:0];
  [(AVTPaddleView *)self setDismissGestureRecognizer:0];
  v6.receiver = self;
  v6.super_class = AVTPaddleView;
  [(AVTPaddleView *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = a4;
  v8 = [a3 isEqualToString:@"status"];
  v9 = v13;
  if (v8)
  {
    v10 = v13;
    if ([v10 status] == 2)
    {
      v11 = [(AVTPaddleView *)self logger];
      v12 = [v10 error];
      [v11 logPaddleViewVideoPlayerFailed:v12];

      [(AVTPaddleView *)self stopPlayingIfNecessary];
      [(AVTPaddleView *)self startPlayingIfNecessary];
    }

    v9 = v13;
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = AVTPaddleView;
  [(AVTPaddleView *)&v2 layoutSubviews];
}

- (void)_configureWithSymbolConfiguration:(id)a3
{
  v38 = a3;
  self->_automaticallyStartsPlaying = 1;
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [(AVTPaddleView *)self setBackgroundColor:v4];

  [(AVTPaddleView *)self setAutoresizingMask:0];
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = [(AVTPaddleView *)self layer];
  [v7 setShadowOffset:{v5, v6}];

  v8 = [(AVTPaddleView *)self layer];
  [v8 setShadowRadius:40.0];

  v9 = [(AVTPaddleView *)self layer];
  LODWORD(v10) = 1047233823;
  [v9 setShadowOpacity:v10];

  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  videoViewContainer = self->_videoViewContainer;
  self->_videoViewContainer = v16;

  [(UIView *)self->_videoViewContainer setAutoresizingMask:0];
  v18 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_videoViewContainer setBackgroundColor:v18];

  [(AVTPaddleView *)self addSubview:self->_videoViewContainer];
  v19 = objc_alloc_init(MEMORY[0x1E6958608]);
  videoController = self->_videoController;
  self->_videoController = v19;

  v21 = [MEMORY[0x1E69DC888] clearColor];
  v22 = [(AVPlayerViewController *)self->_videoController view];
  [v22 setBackgroundColor:v21];

  [(AVPlayerViewController *)self->_videoController setShowsPlaybackControls:0];
  [(AVPlayerViewController *)self->_videoController setUpdatesNowPlayingInfoCenter:0];
  v23 = [(AVPlayerViewController *)self->_videoController player];
  [v23 setAllowsExternalPlayback:0];

  v24 = [(AVPlayerViewController *)self->_videoController view];
  [v24 setAutoresizingMask:0];

  v25 = self->_videoViewContainer;
  v26 = [(AVPlayerViewController *)self->_videoController view];
  [(UIView *)v25 addSubview:v26];

  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  addButtonViewContainer = self->_addButtonViewContainer;
  self->_addButtonViewContainer = v27;

  [(UIView *)self->_addButtonViewContainer setAutoresizingMask:0];
  v29 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_addButtonViewContainer setBackgroundColor:v29];

  [(AVTPaddleView *)self addSubview:self->_addButtonViewContainer];
  v30 = [AVTCircularButton buttonWithType:0];
  addButton = self->_addButton;
  self->_addButton = v30;

  v32 = self->_addButton;
  if (v38)
  {
    [(AVTCircularButton *)v32 setSymbolImageWithName:@"plus" configuration:v38];
  }

  else
  {
    [(AVTCircularButton *)v32 setSymbolImageWithName:@"plus"];
  }

  [(AVTCircularButton *)self->_addButton setAutoresizingMask:0];
  [(UIView *)self->_addButtonViewContainer addSubview:self->_addButton];
  v33 = [[AVTTouchDownGestureRecognizer alloc] initWithTarget:self action:sel_handleTapGesture];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v33;

  [(AVTPaddleView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  v35 = [[AVTTouchDownGestureRecognizer alloc] initWithTarget:self action:sel_handleDismissGesture];
  dismissGestureRecognizer = self->_dismissGestureRecognizer;
  self->_dismissGestureRecognizer = v35;

  [(AVTTouchDownGestureRecognizer *)self->_dismissGestureRecognizer requireGestureRecognizerToFail:self->_tapGestureRecognizer];
  v37 = [(AVTPaddleView *)self superview];
  [v37 addGestureRecognizer:self->_dismissGestureRecognizer];

  [(AVTPaddleView *)self layoutIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVTPaddleView;
  [(AVTPaddleView *)&v4 traitCollectionDidChange:a3];
  [(AVTPaddleView *)self setNeedsDisplay];
}

- (void)updateLayoutFromPlusButtonView:(id)a3 videoView:(id)a4
{
  v114 = a4;
  v6 = a3;
  v7 = [v6 superview];
  [v6 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVTPaddleView *)self superview];
  [v7 convertRect:v16 toView:{v9, v11, v13, v15}];
  rect_24 = v17;
  v19 = v18;
  v115 = v20;
  rect_8 = v21;

  [v6 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(AVTPaddleView *)self padding];
  v31 = v27 + v30 * 2.0;
  [(AVTPaddleView *)self padding];
  v33 = v29 + v32 * 2.0;
  v118.origin.x = v23;
  v118.origin.y = v25;
  v118.size.width = v31;
  v118.size.height = v33;
  Width = CGRectGetWidth(v118);
  v119.origin.x = v23;
  v119.origin.y = v25;
  v119.size.width = v31;
  v113 = v33;
  v119.size.height = v33;
  Height = CGRectGetHeight(v119);
  [(AVTPaddleView *)self padding];
  if (v114)
  {
    v37 = [v114 superview];
    [v114 frame];
    v39 = v38;
    rect_16a = v19;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(AVTPaddleView *)self superview];
    [v37 convertRect:v46 toView:{v39, v41, v43, v45}];
    v48 = v47;
    rect = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v120.origin.x = v48;
    v120.origin.y = v50;
    v120.size.width = v52;
    v120.size.height = v54;
    v111 = v23;
    MinY = CGRectGetMinY(v120);
    v121.origin.y = rect_16a;
    v121.origin.x = rect_24;
    v121.size.width = v115;
    v121.size.height = rect_8;
    v56 = MinY - CGRectGetMaxY(v121);
    v122.origin.x = rect_24;
    v122.origin.y = rect_16a;
    v122.size.width = v115;
    v122.size.height = rect_8;
    v57 = CGRectGetMinY(v122);
    v123.origin.x = rect;
    v123.origin.y = v50;
    rect_8a = v52;
    v123.size.width = v52;
    v116 = v54;
    v123.size.height = v54;
    v19 = rect_16a;
    v58 = v57 - CGRectGetMaxY(v123);
    v23 = v111;
    if (v58 < v56)
    {
      v58 = v56;
    }

    v59 = fmax(v58, 0.0);
  }

  else
  {
    v59 = v36;
    rect_8a = Width + Width;
    v116 = Height + Height;
  }

  [(AVTPaddleView *)self padding];
  v61 = v60;
  [(AVTPaddleView *)self padding];
  v63 = v19 - v62;
  v64 = [(AVTPaddleView *)self layoutDirection];
  v65 = v113;
  if (v64 == 1)
  {
    v66 = v23;
    v67 = v25;
    v68 = v31;
    v69 = v59 + CGRectGetMaxY(*(&v65 - 3));
    v70 = v116;
    v71 = rect_8a;
  }

  else
  {
    v124.origin.x = 0.0;
    v124.origin.y = 0.0;
    v71 = rect_8a;
    v124.size.width = rect_8a;
    v70 = v116;
    v124.size.height = v116;
    v25 = v59 + CGRectGetMaxY(v124);
    v72 = v59 + v116;
    v69 = 0.0;
    v63 = v63 - v72;
  }

  v73 = rect_24 - v61;
  rect_16 = v63;
  v112 = v25;
  if ([(AVTPaddleView *)self isRTL])
  {
    v125.origin.x = 0.0;
    v125.origin.y = v69;
    v125.size.width = v71;
    v125.size.height = v70;
    v74 = v73;
    MaxX = CGRectGetMaxX(v125);
    v126.origin.x = v23;
    v126.origin.y = v25;
    v126.size.width = v31;
    v126.size.height = v113;
    v76 = MaxX - CGRectGetWidth(v126);
    rect_24a = v74 - (v71 - v31);
  }

  else
  {
    v76 = v23;
    rect_24a = v73;
  }

  v77 = [(AVTPaddleView *)self videoViewContainer];
  [v77 setFrame:{0.0, v69, v71, v70}];

  v78 = [(AVTPaddleView *)self videoViewContainer];
  [(AVTPaddleView *)self frameForVideoInCoordinateSpace:v78];
  v80 = v79;
  rect_8b = v69;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = [(AVTPaddleView *)self videoController];
  v88 = [v87 view];
  [v88 setFrame:{v80, v82, v84, v86}];

  v89 = [(AVTPaddleView *)self addButtonViewContainer];
  [v89 setFrame:{v76, v112, v31, v113}];

  v90 = [(AVTPaddleView *)self addButtonViewContainer];
  [(AVTPaddleView *)self frameForAddButtonInCoordinateSpace:v90];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = [(AVTPaddleView *)self addButton];
  [v99 setFrame:{v92, v94, v96, v98}];

  v127.origin.x = 0.0;
  v127.origin.y = rect_8b;
  v127.size.width = v71;
  v127.size.height = v70;
  MaxY = CGRectGetMaxY(v127);
  v128.origin.x = v76;
  v128.origin.y = v112;
  v128.size.width = v31;
  v128.size.height = v113;
  v101 = CGRectGetMaxY(v128);
  if (MaxY >= v101)
  {
    v102 = MaxY;
  }

  else
  {
    v102 = v101;
  }

  [(AVTPaddleView *)self setFrame:rect_24a, rect_16, v71, v102];
  [(AVTPaddleView *)self setNeedsDisplay];
}

- (CGRect)frameForAddButtonInCoordinateSpace:(id)a3
{
  v4 = a3;
  [(AVTPaddleView *)self padding];
  v6 = v5;
  v7 = [(AVTPaddleView *)self addButtonViewContainer];
  [v7 bounds];
  v26 = CGRectInset(v25, v6, v6);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v12 = [(AVTPaddleView *)self addButtonViewContainer];
  [v4 convertRect:v12 fromCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)frameForVideoInCoordinateSpace:(id)a3
{
  v4 = a3;
  [(AVTPaddleView *)self padding];
  if (v5 >= 12.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 12.0;
  }

  v7 = [(AVTPaddleView *)self videoViewContainer];
  [v7 bounds];
  v26 = CGRectInset(v25, v6, v6);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v12 = [(AVTPaddleView *)self videoViewContainer];
  [v4 convertRect:v12 fromCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)handleTapAddButton
{
  v3 = [(AVTPaddleView *)self delegate];

  if (v3)
  {
    v4 = [(AVTPaddleView *)self delegate];
    [v4 paddleViewTapped:self];
  }
}

- (void)handleTapGesture
{
  v3 = [(AVTPaddleView *)self delegate];

  if (v3)
  {
    v4 = [(AVTPaddleView *)self delegate];
    [v4 paddleViewTapped:self];
  }
}

- (void)handleDismissGesture
{
  v3 = [(AVTPaddleView *)self delegate];

  if (v3)
  {
    v4 = [(AVTPaddleView *)self delegate];
    [v4 paddleViewWantsToBeDismissed:self];
  }
}

- (BOOL)isPointInsideTransparentRegion:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVTPaddleView *)self addButtonViewContainer];
  [v6 frame];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v12, v10))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(AVTPaddleView *)self videoViewContainer];
    [v8 frame];
    v11.x = x;
    v11.y = y;
    v7 = !CGRectContainsPoint(v13, v11);
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = AVTPaddleView;
  v7 = [(AVTPaddleView *)&v9 pointInside:a4 withEvent:?];
  if (v7)
  {
    LOBYTE(v7) = ![(AVTPaddleView *)self isPointInsideTransparentRegion:x, y];
  }

  return v7;
}

- (void)attachVideoController:(id)a3
{
  v4 = a3;
  [(AVTPaddleView *)self stopPlayingIfNecessary];
  v5 = [(AVPlayerViewController *)v4 player];
  player = self->_player;
  self->_player = v5;

  [(AVPlayer *)self->_player setAllowsExternalPlayback:0];
  [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:1 context:0];
  videoController = self->_videoController;
  self->_videoController = v4;
  v8 = v4;

  [(AVTPaddleView *)self frameForVideoInCoordinateSpace:self->_videoViewContainer];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(AVPlayerViewController *)self->_videoController view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(AVPlayerViewController *)self->_videoController view];
  [v18 setAutoresizingMask:18];

  videoViewContainer = self->_videoViewContainer;
  v20 = [(AVPlayerViewController *)self->_videoController view];
  [(UIView *)videoViewContainer addSubview:v20];
}

- (void)startPlayingIfNecessary
{
  if (!self->_player)
  {
    v6 = [objc_opt_class() videoItem];
    v3 = [objc_alloc(MEMORY[0x1E6988100]) initWithPlayerItem:v6];
    [(AVPlayer *)v3 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVPlayer *)v3 addObserver:self forKeyPath:@"status" options:1 context:0];
    player = self->_player;
    self->_player = v3;
    v5 = v3;

    [(AVPlayer *)self->_player setAllowsExternalPlayback:0];
    [(AVPlayerViewController *)self->_videoController setPlayer:self->_player];
    [(AVPlayer *)self->_player play];
  }
}

- (void)stopPlayingIfNecessary
{
  player = self->_player;
  if (player)
  {
    [(AVPlayer *)player removeObserver:self forKeyPath:@"status"];
    [(AVPlayer *)self->_player pause];
    [(AVPlayerViewController *)self->_videoController setPlayer:0];
    v4 = self->_player;
    self->_player = 0;
  }
}

- (void)didMoveToWindow
{
  v18.receiver = self;
  v18.super_class = AVTPaddleView;
  [(AVTPaddleView *)&v18 didMoveToWindow];
  v3 = [(AVTPaddleView *)self dismissGestureRecognizer];
  v4 = [v3 view];
  v5 = [(AVTPaddleView *)self superview];

  if (v4 != v5)
  {
    v6 = [(AVTPaddleView *)self dismissGestureRecognizer];
    v7 = [v6 view];
    v8 = [(AVTPaddleView *)self dismissGestureRecognizer];
    [v7 removeGestureRecognizer:v8];

    v9 = [(AVTPaddleView *)self superview];
    v10 = [(AVTPaddleView *)self dismissGestureRecognizer];
    [v9 addGestureRecognizer:v10];
  }

  objc_initWeak(&location, self);
  v11 = [(AVTPaddleView *)self preCommitBlock];

  if (!v11)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __32__AVTPaddleView_didMoveToWindow__block_invoke;
    v15 = &unk_1E7F3AFD0;
    objc_copyWeak(&v16, &location);
    [(AVTPaddleView *)self setPreCommitBlock:&v12];
    [MEMORY[0x1E6979518] addCommitHandler:self->_preCommitBlock forPhase:{1, v12, v13, v14, v15}];
    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

void __32__AVTPaddleView_didMoveToWindow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained window];

  if (v1)
  {
    if ([WeakRetained automaticallyStartsPlaying])
    {
      [WeakRetained startPlayingIfNecessary];
    }
  }

  else
  {
    [WeakRetained stopPlayingIfNecessary];
  }

  [WeakRetained setPreCommitBlock:0];
}

- (void)showAnimated:(BOOL)a3
{
  v3 = a3;
  [(AVTPaddleView *)self setAlpha:0.0];
  v5 = 0.2;
  if (!v3)
  {
    v5 = 0.0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AVTPaddleView_showAnimated___block_invoke;
  v6[3] = &unk_1E7F3A9B8;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0 completion:v5];
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = 0.2;
  if (!a3)
  {
    v3 = 0.0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVTPaddleView_dismissAnimated___block_invoke;
  v5[3] = &unk_1E7F3A9B8;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AVTPaddleView_dismissAnimated___block_invoke_2;
  v4[3] = &unk_1E7F3AA80;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:v3];
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(AVTPaddleView *)self videoViewContainer:a3.origin.x];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AVTPaddleView *)self addButtonViewContainer];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = +[AVTUIColorRepository paddleViewBackgroundColor];
  v23 = [(AVTPaddleView *)self traitCollection];
  v24 = [v22 resolvedColorWithTraitCollection:v23];
  [v24 setFill];

  v25 = [AVTPaddlePathGenerator paddlePathWithBaseRect:[(AVTPaddleView *)self layoutDirection]== 1 contentRect:[(AVTPaddleView *)self isRTL] radius:v15 topToBottom:v17 rightToLeft:v19, v21, v6, v8, v10, v12, 0x4028000000000000];
  [v25 fill];
}

- (AVTPaddleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end