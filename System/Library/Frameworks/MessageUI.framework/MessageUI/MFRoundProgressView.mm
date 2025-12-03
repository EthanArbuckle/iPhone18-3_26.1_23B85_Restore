@interface MFRoundProgressView
- (MFRoundProgressView)initWithFrame:(CGRect)frame;
- (void)_displayLinkDidFire:(id)fire;
- (void)_startDisplayLink;
- (void)_stopDisplayLink;
- (void)_updateSubviews;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff;
- (void)resetProgress;
- (void)setPieRadius:(double)radius;
- (void)setProgress:(double)progress;
@end

@implementation MFRoundProgressView

- (MFRoundProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFRoundProgressView;
  v3 = [(MFRoundProgressView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFRoundProgressView *)v3 _updateSubviews];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFRoundProgressView;
  [(MFRoundProgressView *)&v3 layoutSubviews];
  [(MFRoundProgressView *)self _updateSubviews];
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = MFRoundProgressView;
  [(MFRoundProgressView *)&v3 dealloc];
}

- (void)_updateSubviews
{
  if (!self->_contentView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    contentView = self->_contentView;
    self->_contentView = v4;

    [(UIView *)self->_contentView setAutoresizingMask:18];
    [(MFRoundProgressView *)self addSubview:self->_contentView];
  }

  [(MFRoundProgressView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_contentView setFrame:?];
  v10 = v7 * 0.5;
  if (v7 * 0.5 >= v9 * 0.5)
  {
    v10 = v9 * 0.5;
  }

  v11 = ceil(v10 / 5.5);
  [(MFRoundProgressView *)self setPieRadius:v10 - v11 * 0.5];
  [(MFRoundProgressView *)self resetProgress];
  layer = [(UIView *)self->_contentView layer];
  sliceLayer = self->_sliceLayer;
  if (!sliceLayer)
  {
    layer2 = [MEMORY[0x1E69794A0] layer];
    v14 = self->_sliceLayer;
    self->_sliceLayer = layer2;

    [layer addSublayer:self->_sliceLayer];
    sliceLayer = self->_sliceLayer;
  }

  [(CAShapeLayer *)sliceLayer setZPosition:0.0];
  [(CAShapeLayer *)self->_sliceLayer setStrokeColor:0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  -[CAShapeLayer setFillColor:](self->_sliceLayer, "setFillColor:", [whiteColor CGColor]);
  circleLayer = self->_circleLayer;
  if (!circleLayer)
  {
    layer3 = [MEMORY[0x1E69794A0] layer];
    v18 = self->_circleLayer;
    self->_circleLayer = layer3;

    [layer addSublayer:self->_circleLayer];
    circleLayer = self->_circleLayer;
  }

  [(CAShapeLayer *)circleLayer setZPosition:0.0];
  -[CAShapeLayer setStrokeColor:](self->_circleLayer, "setStrokeColor:", [whiteColor CGColor]);
  [(CAShapeLayer *)self->_circleLayer setFillColor:0];
  [(CAShapeLayer *)self->_circleLayer setLineWidth:v11];
  pieRadius = self->_pieRadius;
  x = self->_pieCenter.x;
  y = self->_pieCenter.y;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, x, y, pieRadius + -1.0, 0.0, 6.28318531, 0);
  CGPathCloseSubpath(Mutable);
  [(CAShapeLayer *)self->_circleLayer setPath:Mutable];
  CGPathRelease(Mutable);
  v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.75];
  [layer setShadowColor:{objc_msgSend(v23, "CGColor")}];

  [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  LODWORD(v24) = 1.0;
  [layer setShadowOpacity:v24];
  [layer setShadowRadius:0.5];
  [(MFRoundProgressView *)self _updateUIProgress];
}

- (void)setPieRadius:(double)radius
{
  self->_pieRadius = radius;
  [(MFRoundProgressView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  self->_pieCenter.x = MidX;
  self->_pieCenter.y = MidY;
  pieRadius = self->_pieRadius;
  layer = [(MFRoundProgressView *)self layer];
  [layer setCornerRadius:pieRadius];
}

- (void)_stopDisplayLink
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_startDisplayLink
{
  if (self->_uiProgress < 1.0 && !self->_displayLink)
  {
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkDidFire_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [CADisplayLink addToRunLoop:v5 forMode:"addToRunLoop:forMode:"];
  }
}

- (void)_displayLinkDidFire:(id)fire
{
  fireCopy = fire;
  realProgress = self->_realProgress;
  if (realProgress != 0.0)
  {
    uiProgress = self->_uiProgress;
    if (uiProgress >= realProgress)
    {
LABEL_14:
      if (uiProgress < 1.0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v6 = self->_uiProgress;
  increaseRate = self->_increaseRate;
  v8 = 1.0;
  if (realProgress >= 1.0)
  {
    v10 = v6 + increaseRate;
    if (v6 + increaseRate <= 1.0)
    {
LABEL_13:
      self->_uiProgress = v10;
      [(MFRoundProgressView *)self _updateUIProgress];
      uiProgress = self->_uiProgress;
      goto LABEL_14;
    }

LABEL_12:
    v10 = v8;
    goto LABEL_13;
  }

  if (v6 + increaseRate * 1.1 < 1.0 && (realProgress != 0.0 || v6 < 0.25))
  {
    v8 = v6 + increaseRate;
    goto LABEL_12;
  }

LABEL_15:
  [(MFRoundProgressView *)self _stopDisplayLink];
LABEL_16:
}

- (void)_updateUIProgress
{
  [(MFRoundProgressView *)self toRadian:self->_uiProgress];
  if (self->_sliceLayer)
  {
    v4 = v3 + 4.71238898;
    pieRadius = self->_pieRadius;
    x = self->_pieCenter.x;
    y = self->_pieCenter.y;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, x, y);
    CGPathAddArc(Mutable, 0, x, y, pieRadius, 4.71238898, v4, 0);
    CGPathCloseSubpath(Mutable);
    [(CAShapeLayer *)self->_sliceLayer setPath:Mutable];

    CFRelease(Mutable);
  }
}

- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff
{
  v5 = progress / diff;
  [(CADisplayLink *)self->_displayLink duration];
  v7 = v5 * v6;
  if (v7 < 0.000166666667)
  {
    v7 = 0.000166666667;
  }

  self->_increaseRate = v7;
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  if (!self->_displayLink && self->_realProgress <= 1.0)
  {
    [(MFRoundProgressView *)self _startDisplayLink];
  }

  if (progress > 0.0)
  {
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < progress)
    {
      if (progress >= 1.0)
      {
        v10 = 1.0 - self->_uiProgress;
        v11 = 0.1;
      }

      else
      {
        v7 = CACurrentMediaTime();
        prevUpdateTimeInterval = self->_prevUpdateTimeInterval;
        self->_prevUpdateTimeInterval = v7;
        v9 = v7 - prevUpdateTimeInterval;
        v10 = 1.0 - self->_uiProgress;
        v11 = v9 * (v10 / (progress - self->_realProgress));
      }

      [(MFRoundProgressView *)self recalculateIncreaseProgress:v10 withTimeDiff:v11];
      self->_realProgress = progress;
    }
  }
}

- (void)resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;
  self->_prevUpdateTimeInterval = CACurrentMediaTime();
  [(MFRoundProgressView *)self _stopDisplayLink];

  [(MFRoundProgressView *)self _updateUIProgress];
}

@end