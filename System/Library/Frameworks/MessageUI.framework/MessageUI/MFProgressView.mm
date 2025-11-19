@interface MFProgressView
+ (id)progressViewWithDefaultStyleStrokeAndRect;
- (BOOL)_isValidCenter:(CGPoint)a3 radius:(double)a4 rect:(CGRect)a5;
- (CGSize)intrinsicContentSize;
- (MFProgressView)initWithProgressViewStyle:(int64_t)a3 stroke:(double)a4 frame:(CGRect)a5;
- (MFProgressViewDelegate)delegate;
- (void)_adjustProgress;
- (void)_drawCircleWithCenter:(CGPoint)a3 radius:(double)a4;
- (void)_drawProgressInRect:(CGRect)a3;
- (void)_drawWedgeWithCenter:(CGPoint)a3 radius:(double)a4;
- (void)_invalidateDisplayLink;
- (void)_invalidateSimulationTimer;
- (void)_onDisplayLink:(id)a3;
- (void)_stopSimulationIfCompleted;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)progressDidFinish;
- (void)setProgress:(double)a3;
- (void)simulateActivity;
@end

@implementation MFProgressView

+ (id)progressViewWithDefaultStyleStrokeAndRect
{
  v2 = [MFProgressView alloc];
  UIRoundToViewScale();
  v4 = v3;
  UIRoundToViewScale();
  v6 = [(MFProgressView *)v2 initWithProgressViewStyle:0 stroke:3.0 frame:0.0, 0.0, v4, v5];

  return v6;
}

- (MFProgressView)initWithProgressViewStyle:(int64_t)a3 stroke:(double)a4 frame:(CGRect)a5
{
  v12.receiver = self;
  v12.super_class = MFProgressView;
  v6 = [(MFProgressView *)&v12 initWithFrame:a3, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_stroke = a4;
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.870000005 green:0.870000005 blue:0.870000005 alpha:1.0];
    [(MFProgressView *)v7 setTintColor:v8];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(MFProgressView *)v7 setBackgroundColor:v9];

    [(MFProgressView *)v7 bounds];
    [(MFProgressView *)v7 setBounds:?];
    [(MFProgressView *)v7 bounds];
    v7->_diameter = CGRectGetWidth(v13);
    v10 = v7;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  diameter = self->_diameter;
  v3 = diameter;
  result.height = v3;
  result.width = diameter;
  return result;
}

- (void)dealloc
{
  [(MFProgressView *)self _invalidateDisplayLink];
  [(MFProgressView *)self _invalidateSimulationTimer];
  v3.receiver = self;
  v3.super_class = MFProgressView;
  [(MFProgressView *)&v3 dealloc];
}

- (void)_invalidateDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)setProgress:(double)a3
{
  v4 = self->_targetProgress - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 >= 0.00000011920929)
  {
    if (!self->_displayLink)
    {
      v6 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
      displayLink = self->_displayLink;
      self->_displayLink = v6;

      v8 = self->_displayLink;
      v11 = CAFrameRateRangeMake(30.0, 120.0, 0.0);
      [(CADisplayLink *)v8 setPreferredFrameRateRange:*&v11.minimum, *&v11.maximum, *&v11.preferred];

      v9 = self->_displayLink;
      v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v9 addToRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];
    }

    self->_targetProgress = a3;
  }
}

- (void)progressDidFinish
{
  self->_targetProgress = 0.0;
  self->_displayedProgress = 0.0;
  [(MFProgressView *)self _invalidateDisplayLink];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained progressViewCanBeRemoved:self];
}

- (void)simulateActivity
{
  if (self->_simulateActivityTimer)
  {
    v3 = self->_targetProgress + 0.1;

    [(MFProgressView *)self setProgress:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_simulateActivity selector:0 userInfo:1 repeats:1.0];
    simulateActivityTimer = self->_simulateActivityTimer;
    self->_simulateActivityTimer = v4;
  }
}

- (void)_invalidateSimulationTimer
{
  [(NSTimer *)self->_simulateActivityTimer invalidate];
  simulateActivityTimer = self->_simulateActivityTimer;
  self->_simulateActivityTimer = 0;
}

- (void)_onDisplayLink:(id)a3
{
  [(MFProgressView *)self bounds];

  [(MFProgressView *)self setNeedsDisplayInRect:?];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MFProgressView *)self _adjustProgress];

  [(MFProgressView *)self _drawProgressInRect:x, y, width, height];
}

- (void)_adjustProgress
{
  targetProgress = self->_targetProgress;
  if (targetProgress >= 0.999999881)
  {
    self->_displayedProgress = 1.0;
  }

  else
  {
    displayedProgress = self->_displayedProgress;
    v5 = self->_displayLink;
    if (displayedProgress <= targetProgress)
    {
      v8 = CAFrameRateRangeMake(30.0, 120.0, 0.0);
      [(CADisplayLink *)v5 setPreferredFrameRateRange:*&v8.minimum, *&v8.maximum, *&v8.preferred];

      self->_displayedProgress = self->_displayedProgress + 0.02;
    }

    else
    {
      v7 = CAFrameRateRangeMake(30.0, 120.0, 30.0);
      [(CADisplayLink *)v5 setPreferredFrameRateRange:*&v7.minimum, *&v7.maximum, *&v7.preferred];
    }
  }
}

- (void)_drawProgressInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  v12 = v8 - x + self->_stroke * -0.5;
  if ([(MFProgressView *)self _isValidCenter:v8 radius:v10 rect:v12, x, y, width, height])
  {
    [(MFProgressView *)self _drawCircleWithCenter:v9 radius:v11, v12];

    [(MFProgressView *)self _drawWedgeWithCenter:v9 radius:v11, v12];
  }
}

- (BOOL)_isValidCenter:(CGPoint)a3 radius:(double)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3.y;
  v11 = a3.x;
  v29 = *MEMORY[0x1E69E9840];
  if (CGFloatIsValid() && CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
  {
    return 1;
  }

  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v30.x = v11;
    v30.y = v10;
    v15 = NSStringFromCGPoint(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v16 = NSStringFromCGRect(v31);
    displayedProgress = self->_displayedProgress;
    targetProgress = self->_targetProgress;
    v19 = 138413314;
    v20 = v15;
    v21 = 2048;
    v22 = a4;
    v23 = 2112;
    v24 = v16;
    v25 = 2048;
    v26 = displayedProgress;
    v27 = 2048;
    v28 = targetProgress;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "#Warning Invalid progress metrics (see 15710132): center: %@, radius: %f, rect:%@, progress: %f, target: %f", &v19, 0x34u);
  }

  return 0;
}

- (void)_drawCircleWithCenter:(CGPoint)a3 radius:(double)a4
{
  v5 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:a3.x startAngle:a3.y endAngle:a4 clockwise:{0.0, 6.28318531}];
  [(UIColor *)self->_tintColor setStroke];
  [(UIColor *)self->_tintColor setFill];
  [v5 setLineWidth:self->_stroke];
  [v5 strokeWithBlendMode:17 alpha:1.0];
}

- (void)_drawWedgeWithCenter:(CGPoint)a3 radius:(double)a4
{
  y = a3.y;
  x = a3.x;
  displayedProgress = self->_displayedProgress;
  if (fabs(displayedProgress) >= 2.22044605e-16)
  {
    v8 = [MEMORY[0x1E69DC728] bezierPath];
    [v8 moveToPoint:{x, y}];
    [v8 addLineToPoint:{x, y - a4}];
    [v8 addArcWithCenter:1 radius:x startAngle:y endAngle:a4 clockwise:{-1.57079633, displayedProgress * 6.28318531 + -1.57079633}];
    [v8 addLineToPoint:{x, y}];
    [v8 fillWithBlendMode:17 alpha:1.0];
  }
}

- (void)_stopSimulationIfCompleted
{
  if (self->_simulateActivityTimer)
  {
    if (self->_targetProgress >= 0.999999881)
    {
      [(MFProgressView *)self _invalidateSimulationTimer];
    }
  }
}

- (MFProgressViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end