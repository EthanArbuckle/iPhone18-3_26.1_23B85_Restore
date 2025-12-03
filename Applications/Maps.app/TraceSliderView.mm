@interface TraceSliderView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TraceSliderView)initWithFrame:(CGRect)frame;
- (TraceSliderViewDelegate)delegate;
- (void)_throttledSliderUpdate:(id)update;
- (void)_updateSliderValue:(float)value animated:(BOOL)animated;
- (void)editingChanged:(id)changed;
- (void)editingDidBegin:(id)begin;
- (void)editingWasCancelled:(id)cancelled;
- (void)setPlaySpeed:(double)speed;
- (void)setStale:(BOOL)stale;
- (void)setTraceLength:(double)length;
- (void)setTraceTime:(double)time animated:(BOOL)animated;
@end

@implementation TraceSliderView

- (TraceSliderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  playbackSlider = self->_playbackSlider;
  [(UISlider *)playbackSlider convertPoint:self fromView:x, y];
  if (([(UISlider *)playbackSlider pointInside:eventCopy withEvent:?]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TraceSliderView;
    v9 = [(TraceSliderView *)&v11 pointInside:eventCopy withEvent:x, y];
  }

  return v9;
}

- (void)editingWasCancelled:(id)cancelled
{
  self->_sliderEditing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderViewCancelledEditing:self];
}

- (void)editingChanged:(id)changed
{
  [changed value];
  self->_traceTime = v4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderView:self editingEndedAtTime:self->_traceTime];
}

- (void)editingDidBegin:(id)begin
{
  self->_sliderEditing = 1;
  [(NSTimer *)self->_sliderThrottleTimer invalidate];
  sliderThrottleTimer = self->_sliderThrottleTimer;
  self->_sliderThrottleTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained traceSliderViewEditingDidBegin:self];
}

- (void)setStale:(BOOL)stale
{
  if (self->_stale != stale)
  {
    self->_stale = stale;
    if (stale)
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

- (void)_throttledSliderUpdate:(id)update
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

- (void)_updateSliderValue:(float)value animated:(BOOL)animated
{
  if (!self->_sliderEditing)
  {
    if (self->_sliderThrottleTimer)
    {
      self->_animateNextSliderUpdate = animated;
    }

    else
    {
      [(UISlider *)self->_playbackSlider setValue:animated animated:?];
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

- (void)setTraceTime:(double)time animated:(BOOL)animated
{
  if (self->_traceTime != time)
  {
    self->_traceTime = time;
    *&time = time;
    [(TraceSliderView *)self _updateSliderValue:animated animated:time];
  }
}

- (void)setTraceLength:(double)length
{
  if (self->_traceLength != length)
  {
    self->_traceLength = length;
    [(UISlider *)self->_playbackSlider setMinimumValue:0.0];
    playbackSlider = self->_playbackSlider;

    *&v5 = length;
    [(UISlider *)playbackSlider setMaximumValue:v5];
  }
}

- (void)setPlaySpeed:(double)speed
{
  if (self->_playSpeed != speed)
  {
    self->_playSpeed = speed;
    [(NSTimer *)self->_sliderThrottleTimer fire];
  }
}

- (TraceSliderView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = TraceSliderView;
  v3 = [(TraceSliderView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    leadingAnchor = [(UISlider *)v4->_playbackSlider leadingAnchor];
    leadingAnchor2 = [(TraceSliderView *)v4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v22[0] = v18;
    trailingAnchor = [(TraceSliderView *)v4 trailingAnchor];
    trailingAnchor2 = [(UISlider *)v4->_playbackSlider trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
    v22[1] = v7;
    topAnchor = [(UISlider *)v4->_playbackSlider topAnchor];
    topAnchor2 = [(TraceSliderView *)v4 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v22[2] = v10;
    bottomAnchor = [(TraceSliderView *)v4 bottomAnchor];
    bottomAnchor2 = [(UISlider *)v4->_playbackSlider bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:5.0];
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