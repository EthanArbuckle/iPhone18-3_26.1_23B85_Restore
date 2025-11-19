@interface TraceSliderView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TraceSliderView)initWithFrame:(CGRect)a3;
- (TraceSliderViewDelegate)delegate;
- (void)_throttledSliderUpdate:(id)a3;
- (void)_updateSliderValue:(float)a3 animated:(BOOL)a4;
- (void)editingChanged:(id)a3;
- (void)editingDidBegin:(id)a3;
- (void)editingWasCancelled:(id)a3;
- (void)setPlaySpeed:(double)a3;
- (void)setStale:(BOOL)a3;
- (void)setTraceLength:(double)a3;
- (void)setTraceTime:(double)a3 animated:(BOOL)a4;
@end

@implementation TraceSliderView

- (TraceSliderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  playbackSlider = self->_playbackSlider;
  [(UISlider *)playbackSlider convertPoint:self fromView:x, y];
  if (([(UISlider *)playbackSlider pointInside:v7 withEvent:?]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TraceSliderView;
    v9 = [(TraceSliderView *)&v11 pointInside:v7 withEvent:x, y];
  }

  return v9;
}

- (void)editingWasCancelled:(id)a3
{
  self->_sliderEditing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderViewCancelledEditing:self];
}

- (void)editingChanged:(id)a3
{
  [a3 value];
  self->_traceTime = v4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderView:self editingEndedAtTime:self->_traceTime];
}

- (void)editingDidBegin:(id)a3
{
  self->_sliderEditing = 1;
  [(NSTimer *)self->_sliderThrottleTimer invalidate];
  sliderThrottleTimer = self->_sliderThrottleTimer;
  self->_sliderThrottleTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderViewEditingDidBegin:self];
}

- (void)setStale:(BOOL)a3
{
  if (self->_stale != a3)
  {
    self->_stale = a3;
    if (a3)
    {
      v5 = +[UIColor redColor];
      [(UISlider *)self->_playbackSlider setThumbTintColor:v5];
    }

    else
    {
      playbackSlider = self->_playbackSlider;

      [(UISlider *)playbackSlider setThumbTintColor:0];
    }
  }
}

- (void)_throttledSliderUpdate:(id)a3
{
  [(NSTimer *)self->_sliderThrottleTimer invalidate];
  sliderThrottleTimer = self->_sliderThrottleTimer;
  self->_sliderThrottleTimer = 0;

  if (!self->_sliderEditing)
  {
    playbackSlider = self->_playbackSlider;
    traceTime = self->_traceTime;
    *&traceTime = traceTime;
    animateNextSliderUpdate = self->_animateNextSliderUpdate;

    [(UISlider *)playbackSlider setValue:animateNextSliderUpdate animated:traceTime];
  }
}

- (void)_updateSliderValue:(float)a3 animated:(BOOL)a4
{
  if (!self->_sliderEditing)
  {
    if (self->_sliderThrottleTimer)
    {
      self->_animateNextSliderUpdate = a4;
    }

    else
    {
      [(UISlider *)self->_playbackSlider setValue:a4 animated:?];
      [(TraceSliderView *)self playSpeed];
      v6 = 1.0 / v5;
      v7 = 0.0666666667;
      if (v6 >= 0.0666666667)
      {
        [(TraceSliderView *)self playSpeed];
        v7 = 1.0 / v8;
      }

      v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_throttledSliderUpdate:" selector:0 userInfo:0 repeats:v7];
      sliderThrottleTimer = self->_sliderThrottleTimer;
      self->_sliderThrottleTimer = v9;
    }
  }
}

- (void)setTraceTime:(double)a3 animated:(BOOL)a4
{
  if (self->_traceTime != a3)
  {
    self->_traceTime = a3;
    *&a3 = a3;
    [(TraceSliderView *)self _updateSliderValue:a4 animated:a3];
  }
}

- (void)setTraceLength:(double)a3
{
  if (self->_traceLength != a3)
  {
    self->_traceLength = a3;
    [(UISlider *)self->_playbackSlider setMinimumValue:0.0];
    playbackSlider = self->_playbackSlider;

    *&v5 = a3;
    [(UISlider *)playbackSlider setMaximumValue:v5];
  }
}

- (void)setPlaySpeed:(double)a3
{
  if (self->_playSpeed != a3)
  {
    self->_playSpeed = a3;
    [(NSTimer *)self->_sliderThrottleTimer fire];
  }
}

- (TraceSliderView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = TraceSliderView;
  v3 = [(TraceSliderView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_playSpeed = 1.0;
    v5 = [[SliderLargerHitArea alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    playbackSlider = v4->_playbackSlider;
    v4->_playbackSlider = &v5->super;

    [(UISlider *)v4->_playbackSlider setContinuous:0];
    [(UISlider *)v4->_playbackSlider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TraceSliderView *)v4 addSubview:v4->_playbackSlider];
    v20 = [(UISlider *)v4->_playbackSlider leadingAnchor];
    v19 = [(TraceSliderView *)v4 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19 constant:10.0];
    v22[0] = v18;
    v17 = [(TraceSliderView *)v4 trailingAnchor];
    v16 = [(UISlider *)v4->_playbackSlider trailingAnchor];
    v7 = [v17 constraintEqualToAnchor:v16 constant:10.0];
    v22[1] = v7;
    v8 = [(UISlider *)v4->_playbackSlider topAnchor];
    v9 = [(TraceSliderView *)v4 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:5.0];
    v22[2] = v10;
    v11 = [(TraceSliderView *)v4 bottomAnchor];
    v12 = [(UISlider *)v4->_playbackSlider bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:5.0];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [(TraceSliderView *)v4 addConstraints:v14];

    [(UISlider *)v4->_playbackSlider addTarget:v4 action:"editingDidBegin:" forControlEvents:1];
    [(UISlider *)v4->_playbackSlider addTarget:v4 action:"editingChanged:" forControlEvents:4096];
    [(UISlider *)v4->_playbackSlider addTarget:v4 action:"editingWasCancelled:" forControlEvents:256];
    [(UISlider *)v4->_playbackSlider addTarget:v4 action:"editingDidEnd:" forControlEvents:64];
    [(UISlider *)v4->_playbackSlider addTarget:v4 action:"editingDidEnd:" forControlEvents:128];
  }

  return v4;
}

@end