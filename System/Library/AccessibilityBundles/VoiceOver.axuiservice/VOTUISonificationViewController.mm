@interface VOTUISonificationViewController
- (AXUIService)axuiService;
- (CGRect)convertFrameToViewSpace:(CGRect)space;
- (CGRect)playbackBounds;
- (CGRect)playheadFrameFromPosition:(double)position;
- (VOTUISonificationViewController)initWithAXUIService:(id)service;
- (void)handleUpdatePlayheadPositionFromLink;
- (void)pausePlayback;
- (void)resumePlaybackFromPosition:(double)position startTime:(double)time totalDuration:(double)duration;
- (void)setPlaybackBounds:(CGRect)bounds;
- (void)setPlayheadHidden:(BOOL)hidden;
- (void)setPlayheadProgress:(double)progress;
- (void)viewDidLoad;
@end

@implementation VOTUISonificationViewController

- (VOTUISonificationViewController)initWithAXUIService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = VOTUISonificationViewController;
  v5 = [(VOTUISonificationViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_axuiService, serviceCopy);
  }

  return v6;
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUISonificationViewController *)self setView:v7];

  height = [[VOTUISonificationPlayheadView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTUISonificationViewController *)self setPlayheadView:height];

  view = [(VOTUISonificationViewController *)self view];
  playheadView = [(VOTUISonificationViewController *)self playheadView];
  [view addSubview:playheadView];

  v11.receiver = self;
  v11.super_class = VOTUISonificationViewController;
  [(VOTUISonificationViewController *)&v11 viewDidLoad];
}

- (CGRect)convertFrameToViewSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  view = [(VOTUISonificationViewController *)self view];
  window = [view window];
  [window _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view2 = [(VOTUISonificationViewController *)self view];
  [view2 convertRect:0 fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)setPlayheadHidden:(BOOL)hidden
{
  self->_playheadHidden = hidden;
  if ([(VOTUISonificationViewController *)self isPlayheadHidden])
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    playheadView = [(VOTUISonificationViewController *)self playheadView];
    [playheadView setFrame:{CGRectZero.origin.x, y, width, height}];

    playheadUpdateDisplayLink = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
    [playheadUpdateDisplayLink invalidate];
  }
}

- (void)setPlaybackBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_playbackBounds = &self->_playbackBounds;
  if (!CGRectEqualToRect(bounds, self->_playbackBounds))
  {
    p_playbackBounds->origin.x = x;
    p_playbackBounds->origin.y = y;
    p_playbackBounds->size.width = width;
    p_playbackBounds->size.height = height;
    playheadView = [(VOTUISonificationViewController *)self playheadView];
    [playheadView setNeedsLayout];

    v12.origin.x = CGRectZero.origin.x;
    v12.origin.y = CGRectZero.origin.y;
    v12.size.width = CGRectZero.size.width;
    v12.size.height = CGRectZero.size.height;
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v10 = CGRectEqualToRect(v12, v13);

    [(VOTUISonificationViewController *)self setPlayheadHidden:v10];
  }
}

- (void)resumePlaybackFromPosition:(double)position startTime:(double)time totalDuration:(double)duration
{
  [(VOTUISonificationViewController *)self setPlaybackStartTime:time];
  [(VOTUISonificationViewController *)self setPlaybackDuration:duration];
  [(VOTUISonificationViewController *)self setPlaybackStartPosition:position];
  playheadUpdateDisplayLink = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  [playheadUpdateDisplayLink invalidate];

  v9 = [CADisplayLink displayLinkWithTarget:self selector:"handleUpdatePlayheadPositionFromLink"];
  [(VOTUISonificationViewController *)self setPlayheadUpdateDisplayLink:v9];

  playheadUpdateDisplayLink2 = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  v10 = +[NSRunLoop currentRunLoop];
  [playheadUpdateDisplayLink2 addToRunLoop:v10 forMode:NSDefaultRunLoopMode];
}

- (CGRect)playheadFrameFromPosition:(double)position
{
  [(VOTUISonificationViewController *)self playbackBounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v10 = MinX + position * CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  playheadView = [(VOTUISonificationViewController *)self playheadView];
  [playheadView lineWidth];
  v14 = v13;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v15 = CGRectGetHeight(v23);

  v16 = v10;
  v17 = MinY;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setPlayheadProgress:(double)progress
{
  self->_playheadProgress = progress;
  [(VOTUISonificationViewController *)self playheadProgress];
  [(VOTUISonificationViewController *)self playheadFrameFromPosition:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  playheadView = [(VOTUISonificationViewController *)self playheadView];
  [playheadView setFrame:{v5, v7, v9, v11}];
}

- (void)handleUpdatePlayheadPositionFromLink
{
  Current = CFAbsoluteTimeGetCurrent();
  [(VOTUISonificationViewController *)self playbackStartTime];
  v5 = Current - v4;
  [(VOTUISonificationViewController *)self playbackDuration];
  [(VOTUISonificationViewController *)self setPlayheadProgress:v5 / v6];
  [(VOTUISonificationViewController *)self playheadProgress];
  [(VOTUISonificationViewController *)self playheadFrameFromPosition:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  playheadView = [(VOTUISonificationViewController *)self playheadView];
  [playheadView setFrame:{v8, v10, v12, v14}];
}

- (void)pausePlayback
{
  playheadUpdateDisplayLink = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  [playheadUpdateDisplayLink invalidate];
}

- (AXUIService)axuiService
{
  WeakRetained = objc_loadWeakRetained(&self->_axuiService);

  return WeakRetained;
}

- (CGRect)playbackBounds
{
  x = self->_playbackBounds.origin.x;
  y = self->_playbackBounds.origin.y;
  width = self->_playbackBounds.size.width;
  height = self->_playbackBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end