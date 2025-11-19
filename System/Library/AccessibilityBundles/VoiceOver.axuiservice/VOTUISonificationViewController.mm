@interface VOTUISonificationViewController
- (AXUIService)axuiService;
- (CGRect)convertFrameToViewSpace:(CGRect)a3;
- (CGRect)playbackBounds;
- (CGRect)playheadFrameFromPosition:(double)a3;
- (VOTUISonificationViewController)initWithAXUIService:(id)a3;
- (void)handleUpdatePlayheadPositionFromLink;
- (void)pausePlayback;
- (void)resumePlaybackFromPosition:(double)a3 startTime:(double)a4 totalDuration:(double)a5;
- (void)setPlaybackBounds:(CGRect)a3;
- (void)setPlayheadHidden:(BOOL)a3;
- (void)setPlayheadProgress:(double)a3;
- (void)viewDidLoad;
@end

@implementation VOTUISonificationViewController

- (VOTUISonificationViewController)initWithAXUIService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VOTUISonificationViewController;
  v5 = [(VOTUISonificationViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_axuiService, v4);
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

  v8 = [[VOTUISonificationPlayheadView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTUISonificationViewController *)self setPlayheadView:v8];

  v9 = [(VOTUISonificationViewController *)self view];
  v10 = [(VOTUISonificationViewController *)self playheadView];
  [v9 addSubview:v10];

  v11.receiver = self;
  v11.super_class = VOTUISonificationViewController;
  [(VOTUISonificationViewController *)&v11 viewDidLoad];
}

- (CGRect)convertFrameToViewSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VOTUISonificationViewController *)self view];
  v9 = [v8 window];
  [v9 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(VOTUISonificationViewController *)self view];
  [v18 convertRect:0 fromView:{v11, v13, v15, v17}];
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

- (void)setPlayheadHidden:(BOOL)a3
{
  self->_playheadHidden = a3;
  if ([(VOTUISonificationViewController *)self isPlayheadHidden])
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [(VOTUISonificationViewController *)self playheadView];
    [v7 setFrame:{CGRectZero.origin.x, y, width, height}];

    v8 = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
    [v8 invalidate];
  }
}

- (void)setPlaybackBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_playbackBounds = &self->_playbackBounds;
  if (!CGRectEqualToRect(a3, self->_playbackBounds))
  {
    p_playbackBounds->origin.x = x;
    p_playbackBounds->origin.y = y;
    p_playbackBounds->size.width = width;
    p_playbackBounds->size.height = height;
    v9 = [(VOTUISonificationViewController *)self playheadView];
    [v9 setNeedsLayout];

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

- (void)resumePlaybackFromPosition:(double)a3 startTime:(double)a4 totalDuration:(double)a5
{
  [(VOTUISonificationViewController *)self setPlaybackStartTime:a4];
  [(VOTUISonificationViewController *)self setPlaybackDuration:a5];
  [(VOTUISonificationViewController *)self setPlaybackStartPosition:a3];
  v8 = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  [v8 invalidate];

  v9 = [CADisplayLink displayLinkWithTarget:self selector:"handleUpdatePlayheadPositionFromLink"];
  [(VOTUISonificationViewController *)self setPlayheadUpdateDisplayLink:v9];

  v11 = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  v10 = +[NSRunLoop currentRunLoop];
  [v11 addToRunLoop:v10 forMode:NSDefaultRunLoopMode];
}

- (CGRect)playheadFrameFromPosition:(double)a3
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
  v10 = MinX + a3 * CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v12 = [(VOTUISonificationViewController *)self playheadView];
  [v12 lineWidth];
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

- (void)setPlayheadProgress:(double)a3
{
  self->_playheadProgress = a3;
  [(VOTUISonificationViewController *)self playheadProgress];
  [(VOTUISonificationViewController *)self playheadFrameFromPosition:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(VOTUISonificationViewController *)self playheadView];
  [v12 setFrame:{v5, v7, v9, v11}];
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
  v15 = [(VOTUISonificationViewController *)self playheadView];
  [v15 setFrame:{v8, v10, v12, v14}];
}

- (void)pausePlayback
{
  v2 = [(VOTUISonificationViewController *)self playheadUpdateDisplayLink];
  [v2 invalidate];
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