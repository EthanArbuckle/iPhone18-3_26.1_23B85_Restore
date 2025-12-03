@interface FlyoverGlyphView
- (FlyoverGlyphView)initWithCoder:(id)coder;
- (FlyoverGlyphView)initWithFrame:(CGRect)frame;
- (double)stopAnimating;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)gv_commonInit;
- (void)layoutSubviews;
- (void)startAnimating;
@end

@implementation FlyoverGlyphView

- (void)applicationWillEnterForeground:(id)foreground
{
  if ([(FlyoverGlyphView *)self isAnimating])
  {
    frameList = self->_frameList;
    loopFrameRange = [(FlyoverGlyphFrameList *)frameList loopFrameRange];
    v8 = sub_100C5662C(frameList, loopFrameRange, v6);
    [v8 setBeginTime:self->_introDuration + self->_animationStartTime];
    LODWORD(v7) = 2139095040;
    [v8 setRepeatCount:v7];
    [(CALayer *)self->_imageLayer addAnimation:v8 forKey:@"loop"];
  }
}

- (double)stopAnimating
{
  animationEndTime = -1.0;
  if ([(FlyoverGlyphView *)self isAnimating])
  {
    v4 = fmax(ceil((CACurrentMediaTime() - (self->_animationStartTime + self->_introDuration)) / self->_loopDuration), 0.0);
    if (v4 >= 1.0)
    {
      frameList = self->_frameList;
      loopFrameRange = [(FlyoverGlyphFrameList *)frameList loopFrameRange];
      v8 = sub_100C5662C(frameList, loopFrameRange, v7);
      [v8 setBeginTime:self->_introDuration + self->_animationStartTime];
      *&v9 = v4;
      [v8 setRepeatCount:v9];
      [(CALayer *)self->_imageLayer addAnimation:v8 forKey:@"loop"];
    }

    else
    {
      [(CALayer *)self->_imageLayer removeAnimationForKey:@"loop"];
    }

    v10 = self->_frameList;
    outroFrameRange = [(FlyoverGlyphFrameList *)v10 outroFrameRange];
    v13 = sub_100C5662C(v10, outroFrameRange, v12);
    [v13 setBeginTime:self->_introDuration + self->_animationStartTime + self->_loopDuration * v4];
    [(CALayer *)self->_imageLayer addAnimation:v13 forKey:@"outro"];
    [v13 beginTime];
    self->_animationEndTime = self->_outroDuration + v14;
    [(FlyoverGlyphView *)self setAnimating:0];
    animationEndTime = self->_animationEndTime;
  }

  return animationEndTime;
}

- (void)startAnimating
{
  if (![(FlyoverGlyphView *)self isAnimating])
  {
    v3 = CACurrentMediaTime();
    animationEndTime = self->_animationEndTime;
    if (v3 < animationEndTime && (v5 = v3 < animationEndTime - self->_outroDuration, v3 = self->_animationEndTime, v5))
    {
      [(CALayer *)self->_imageLayer removeAnimationForKey:@"outro", v3];
    }

    else
    {
      self->_animationStartTime = v3;
      frameList = self->_frameList;
      introFrameRange = [(FlyoverGlyphFrameList *)frameList introFrameRange];
      v9 = sub_100C5662C(frameList, introFrameRange, v8);
      [v9 setBeginTime:self->_animationStartTime];
      [(CALayer *)self->_imageLayer addAnimation:v9 forKey:@"intro"];
    }

    v10 = self->_frameList;
    loopFrameRange = [(FlyoverGlyphFrameList *)v10 loopFrameRange];
    v14 = sub_100C5662C(v10, loopFrameRange, v12);
    [v14 setBeginTime:self->_introDuration + self->_animationStartTime];
    LODWORD(v13) = 2139095040;
    [v14 setRepeatCount:v13];
    [(CALayer *)self->_imageLayer addAnimation:v14 forKey:@"loop"];
    [(FlyoverGlyphView *)self setAnimating:1];
  }
}

- (void)layoutSubviews
{
  [(FlyoverGlyphView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  wrapperLayer = self->_wrapperLayer;

  [(CALayer *)wrapperLayer setPosition:MidX, MidY];
}

- (FlyoverGlyphView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = FlyoverGlyphView;
  v3 = [(FlyoverGlyphView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FlyoverGlyphView *)v3 gv_commonInit];
    v5 = v4;
  }

  return v4;
}

- (FlyoverGlyphView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FlyoverGlyphView;
  v3 = [(FlyoverGlyphView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FlyoverGlyphView *)v3 gv_commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)gv_commonInit
{
  v3 = objc_alloc_init(FlyoverGlyphFrameList);
  frameList = self->_frameList;
  self->_frameList = v3;

  if (self->_frameList)
  {
    [(FlyoverGlyphView *)self setAccessibilityIdentifier:@"FlyoverGlyphView"];
    [(FlyoverGlyphFrameList *)self->_frameList frameDuration];
    v6 = v5;
    [(FlyoverGlyphFrameList *)self->_frameList introFrameRange];
    self->_introDuration = v6 * v7;
    [(FlyoverGlyphFrameList *)self->_frameList loopFrameRange];
    self->_loopDuration = v6 * v8;
    [(FlyoverGlyphFrameList *)self->_frameList outroFrameRange];
    self->_outroDuration = v6 * v9;
    v10 = +[CALayer layer];
    wrapperLayer = self->_wrapperLayer;
    self->_wrapperLayer = v10;

    [(CALayer *)self->_wrapperLayer setAllowsGroupBlending:0];
    [(CALayer *)self->_wrapperLayer setBounds:0.0, 0.0, 50.0, 50.0];
    layer = [(FlyoverGlyphView *)self layer];
    [layer addSublayer:self->_wrapperLayer];

    v13 = +[CALayer layer];
    imageLayer = self->_imageLayer;
    self->_imageLayer = v13;

    [(CALayer *)self->_imageLayer setCompositingFilter:kCAFilterPlusD];
    [(CALayer *)self->_imageLayer setContents:[(FlyoverGlyphFrameList *)self->_frameList atlasImage]];
    [(CALayer *)self->_wrapperLayer addSublayer:self->_imageLayer];
    *v20 = 0u;
    v15 = [CAFilter filterWithType:kCAFilterColorMatrix, 0, 0, 0, 0, 0, 0, 0, *&v20[12]];
    *&v20[16] = -1082130432;
    v21 = 0;
    v22 = 1065353216;
    v16 = [NSValue valueWithCAColorMatrix:&v19];
    [v15 setValue:v16 forKey:@"inputColorMatrix"];

    v23 = v15;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    [(CALayer *)self->_imageLayer setFilters:v17];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }
}

@end