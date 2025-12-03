@interface RCAudioScrubber
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGRect)thumbHitRect;
- (RCAudioScrubber)initWithFrame:(CGRect)frame;
- (RCMPDetailSliderDelegate)delegate;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (double)currentPosition;
- (id)_stringForCurrentTime:(double)time;
- (id)_stringForInverseCurrentTime:(double)time;
- (id)_stringForTime:(double)time elapsed:(BOOL)elapsed;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_autoscrubTick:(id)tick;
- (void)_beginTracking;
- (void)_commitTimeValue:(float)value;
- (void)_setCurrentTimeWhileTracking:(float)tracking animated:(BOOL)animated;
- (void)_updateForAvailableDuration;
- (void)_updateTimeDisplayForTime:(double)time force:(BOOL)force;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)cancelTracking;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed;
- (void)detailScrubController:(id)controller didChangeValue:(float)value;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setDuration:(double)duration;
- (void)setFrame:(CGRect)frame;
- (void)setSliderPositionForTime:(float)time animated:(BOOL)animated;
@end

@implementation RCAudioScrubber

- (RCAudioScrubber)initWithFrame:(CGRect)frame
{
  if (frame.size.height == 0.0)
  {
    frame.size.height = 34.0;
  }

  v11.receiver = self;
  v11.super_class = RCAudioScrubber;
  v3 = [(RCAudioScrubber *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor labelColor];
    [(RCAudioScrubber *)v3 setTintColor:v4];

    [(RCAudioScrubber *)v3 setSliderStyle:1];
    v5 = [[RCMPDetailScrubController alloc] initWithScrubbingControl:v3];
    scrubController = v3->_scrubController;
    v3->_scrubController = v5;

    [(RCMPDetailScrubController *)v3->_scrubController setDelegate:v3];
    [(RCMPDetailScrubController *)v3->_scrubController setDetailedScrubbingEnabled:1];
    [(RCAudioScrubber *)v3 setDeliversTouchesForGesturesToSuperview:0];
    [(RCAudioScrubber *)v3 setSemanticContentAttribute:1];
    v7 = objc_opt_new();
    formatter = v3->_formatter;
    v3->_formatter = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"didChangePreferredContentSize" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSTimer *)self->_autoscrubTimer invalidate];
  v3.receiver = self;
  v3.super_class = RCAudioScrubber;
  [(RCAudioScrubber *)&v3 dealloc];
}

- (double)currentPosition
{
  [(RCAudioScrubber *)self value];
  v4 = v3;
  [(RCAudioScrubber *)self duration];
  return v5 * v4;
}

- (void)setSliderPositionForTime:(float)time animated:(BOOL)animated
{
  if (!self->_isTracking)
  {
    [(RCAudioScrubber *)self _setCurrentTimeWhileTracking:animated animated:?];
  }
}

- (void)layoutSubviews
{
  [(RCAudioScrubber *)self bounds];
  traitCollection = [(RCAudioScrubber *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  if (v5 < 0.00000011920929)
  {
    v5 = UIMainScreenScale();
  }

  [(RCAudioScrubber *)self bounds];
  [(RCAudioScrubber *)self trackRectForBounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  rect = v12;
  timeLabelFont = [(RCAudioScrubber *)self timeLabelFont];
  timeLabelTextColor = [(RCAudioScrubber *)self timeLabelTextColor];
  currentTimeLabel = self->_currentTimeLabel;
  if (!currentTimeLabel)
  {
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = self->_currentTimeLabel;
    self->_currentTimeLabel = v16;

    [(UILabel *)self->_currentTimeLabel setBackgroundColor:0];
    [(UILabel *)self->_currentTimeLabel setFont:timeLabelFont];
    [(UILabel *)self->_currentTimeLabel setLineBreakMode:2];
    [(UILabel *)self->_currentTimeLabel setOpaque:0];
    v18 = [(RCAudioScrubber *)self _stringForCurrentTime:NAN];
    v19 = RCLocalizationNotNeeded();
    [(UILabel *)self->_currentTimeLabel setText:v19];

    [(UILabel *)self->_currentTimeLabel setTextAlignment:2];
    [(UILabel *)self->_currentTimeLabel setTextColor:timeLabelTextColor];
    [(RCAudioScrubber *)self addSubview:self->_currentTimeLabel];
    currentTimeLabel = self->_currentTimeLabel;
  }

  [(UILabel *)currentTimeLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_currentTimeLabel sizeToFit];
  [(UILabel *)self->_currentTimeLabel frame];
  UIRectCenteredYInRectScale();
  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = rect;
  CGRectGetMinX(v35);
  v36.origin.x = v7;
  v36.origin.y = v9;
  v36.size.width = v11;
  v36.size.height = rect;
  CGRectGetMaxY(v36);
  UIRectIntegralWithScale();
  [(UILabel *)self->_currentTimeLabel setFrame:*&v5];
  currentTimeInverseLabel = self->_currentTimeInverseLabel;
  if (!currentTimeInverseLabel)
  {
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v22 = self->_currentTimeInverseLabel;
    self->_currentTimeInverseLabel = v21;

    [(UILabel *)self->_currentTimeInverseLabel setBackgroundColor:0];
    [(UILabel *)self->_currentTimeInverseLabel setFont:timeLabelFont];
    [(UILabel *)self->_currentTimeInverseLabel setLineBreakMode:2];
    [(UILabel *)self->_currentTimeInverseLabel setOpaque:0];
    v23 = [(RCAudioScrubber *)self _stringForInverseCurrentTime:NAN];
    v24 = RCLocalizationNotNeeded();
    [(UILabel *)self->_currentTimeInverseLabel setText:v24];

    [(UILabel *)self->_currentTimeInverseLabel setTextAlignment:0];
    [(UILabel *)self->_currentTimeInverseLabel setTextColor:timeLabelTextColor];
    [(RCAudioScrubber *)self addSubview:self->_currentTimeInverseLabel];
    currentTimeInverseLabel = self->_currentTimeInverseLabel;
  }

  [(UILabel *)currentTimeInverseLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_currentTimeInverseLabel sizeToFit];
  [(UILabel *)self->_currentTimeInverseLabel frame];
  UIRectCenteredYInRectScale();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v37.origin.x = v7;
  v37.origin.y = v9;
  v37.size.width = v11;
  v37.size.height = rect;
  CGRectGetMaxX(v37);
  v38.origin.x = v26;
  v38.origin.y = v28;
  v38.size.width = v30;
  v38.size.height = v32;
  CGRectGetWidth(v38);
  [(UILabel *)self->_currentTimeLabel frame];
  UIRectIntegralWithScale();
  [(UILabel *)self->_currentTimeInverseLabel setFrame:?];
  v34.receiver = self;
  v34.super_class = RCAudioScrubber;
  [(RCAudioScrubber *)&v34 layoutSubviews];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(RCAudioScrubber *)self bounds];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = RCAudioScrubber;
    [(RCAudioScrubber *)&v9 setBounds:x, y, width, height];
    currentTime = self->_currentTime;
    *&currentTime = currentTime;
    [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:currentTime];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(RCAudioScrubber *)self frame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = RCAudioScrubber;
    [(RCAudioScrubber *)&v9 setFrame:x, y, width, height];
    currentTime = self->_currentTime;
    *&currentTime = currentTime;
    [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:currentTime];
  }
}

- (void)_setCurrentTimeWhileTracking:(float)tracking animated:(BOOL)animated
{
  duration = self->_duration;
  if (duration > 0.0)
  {
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = v6;
    v28 = v4;
    v29 = v5;
    animatedCopy = animated;
    v15 = fmax(tracking, 0.0);
    if (duration < v15)
    {
      v15 = duration;
    }

    v16 = v15;
    v17 = v16 / duration;
    [(RCAudioScrubber *)self bounds];
    v19 = 1.0 / v18;
    LODWORD(v19) = 1.0;
    if (vabdd_f64(1.0, v17) >= 1.0 / v18)
    {
      *&v19 = v17;
    }

    v21.receiver = self;
    v21.super_class = RCAudioScrubber;
    [(RCAudioScrubber *)&v21 setValue:animatedCopy animated:v19];
    [(RCAudioScrubber *)self _updateForAvailableDuration];
    [(RCAudioScrubber *)self _updateTimeDisplayForTime:v16];
    if (self->_isTracking && self->_canCommit)
    {
      *&v20 = v16;
      [(RCAudioScrubber *)self _commitTimeValue:v20];
    }
  }
}

- (UIEdgeInsets)_thumbHitEdgeInsets
{
  v2 = -19.0;
  v3 = -19.0;
  v4 = -19.0;
  v5 = -19.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_beginTracking
{
  if (!self->_isTracking)
  {
    self->_isTracking = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 detailSliderTrackingDidBegin:self];
    }
  }
}

- (CGRect)thumbHitRect
{
  [(RCAudioScrubber *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(RCAudioScrubber *)self bounds];
  [(RCAudioScrubber *)self trackRectForBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(RCAudioScrubber *)self value];
  LODWORD(v24) = v19;
  [(RCAudioScrubber *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v12, v14, v16, v18, v24];

  return CGRectInset(*&v20, -19.0, -19.0);
}

- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 detailSlider:self didChangeScrubSpeed:speed];
  }
}

- (void)detailScrubController:(id)controller didChangeValue:(float)value
{
  [(RCAudioScrubber *)self _setCurrentTimeWhileTracking:1 animated:?];
  *&v6 = value;

  [(RCAudioScrubber *)self _commitTimeValue:v6];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5 = [(RCMPDetailScrubController *)self->_scrubController beginTrackingWithTouch:touch withEvent:event];
  [(RCAudioScrubber *)self _beginTracking];
  return v5;
}

- (void)_autoscrubTick:(id)tick
{
  [(RCAudioScrubber *)self maximumValue];
  v5 = v4;
  [(RCAudioScrubber *)self minimumValue];
  v7 = (v5 - v6);
  [(RCAudioScrubber *)self bounds];
  [(RCAudioScrubber *)self trackRectForBounds:?];
  v8 = v7 / CGRectGetWidth(v24);
  [(RCMPDetailScrubController *)self->_scrubController scaleForVerticalPosition:self->_previousLocationInView.y];
  v10 = v9;
  v11 = v8 * v9;
  window = [(RCAudioScrubber *)self window];
  [(RCAudioScrubber *)self convertPoint:window toView:self->_previousLocationInView.x, self->_previousLocationInView.y];
  v14 = v13;
  window2 = [(RCAudioScrubber *)self window];
  [window2 bounds];
  if (v14 >= CGRectGetMidX(v25))
  {
    v16 = v11;
  }

  else
  {
    v16 = -(v8 * v10);
  }

  v17 = v16;

  self->_canCommit = 1;
  [(RCAudioScrubber *)self minimumValue];
  v19 = v18;
  [(RCAudioScrubber *)self maximumValue];
  v21 = v20;
  [(RCAudioScrubber *)self value];
  *&v22 = *&v22 + v17;
  if (v21 < *&v22)
  {
    *&v22 = v21;
  }

  if (v19 >= *&v22)
  {
    *&v22 = v19;
  }

  [(RCAudioScrubber *)self timePositionForSliderValue:v22];
  [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:?];
  if ([(RCAudioScrubber *)self isContinuous])
  {

    [(RCAudioScrubber *)self sendActionsForControlEvents:4096];
  }
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  if ([(RCMPDetailScrubController *)self->_scrubController detailedScrubbingEnabled]&& [(RCMPDetailScrubController *)self->_scrubController durationAllowsForDetailedScrubbing])
  {
    window = [(RCAudioScrubber *)self window];
    [(RCAudioScrubber *)self convertPoint:window toView:v9, v11];
    v14 = v13;
    v16 = v15;
    v17 = +[UIApplication sharedApplication];
    delegate = [v17 delegate];
    window2 = [delegate window];
    windowScene = [window2 windowScene];
    v21 = [windowScene interfaceOrientation] - 3;

    if (v21 < 2)
    {
      v14 = v16;
    }

    [window bounds];
    if (v21 > 1)
    {
      Width = CGRectGetWidth(*&v22);
      if (window)
      {
LABEL_7:
        Width = Width + -20.0;
        v27 = v14 > Width || v14 < 20.0;
        self->_autoscrubActive = v27;
        if (v27)
        {
          [(RCAudioScrubber *)self value];
          [(RCAudioScrubber *)self timePositionForSliderValue:?];
          [(RCAudioScrubber *)self _setCurrentTimeWhileTracking:1 animated:?];
          if ([(RCAudioScrubber *)self isContinuous])
          {
            [(RCAudioScrubber *)self sendActionsForControlEvents:4096];
          }

          if (!self->_autoscrubTimer)
          {
            v28 = [NSTimer scheduledTimerWithTimeInterval:self target:"_autoscrubTick:" selector:0 userInfo:1 repeats:0.1];
            autoscrubTimer = self->_autoscrubTimer;
            self->_autoscrubTimer = v28;
          }

          self->_previousLocationInView.x = v9;
          self->_previousLocationInView.y = v11;

          v30 = 1;
          goto LABEL_27;
        }

        goto LABEL_18;
      }
    }

    else
    {
      Width = CGRectGetHeight(*&v22);
      if (window)
      {
        goto LABEL_7;
      }
    }

    self->_autoscrubActive = 0;
LABEL_18:
    v31 = self->_autoscrubTimer;
    if (v31)
    {
      [(NSTimer *)v31 invalidate];
      v32 = self->_autoscrubTimer;
      self->_autoscrubTimer = 0;
    }
  }

  if ([(RCAudioScrubber *)self isContinuous])
  {
    [(RCAudioScrubber *)self sendActionsForControlEvents:4096];
  }

  v30 = [(RCMPDetailScrubController *)self->_scrubController continueTrackingWithTouch:touchCopy withEvent:eventCopy];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(RCAudioScrubber *)self value];
    v34 = LODWORD(v33);
    if (vabds_f32(v33, *&dword_1002D70F0) > 0.02 || CFAbsoluteTimeGetCurrent() - *&qword_1002D70F8 > 5.0)
    {
      v35 = UIAccessibilityAnnouncementNotification;
      accessibilityValue = [(RCAudioScrubber *)self accessibilityValue];
      UIAccessibilityPostNotification(v35, accessibilityValue);

      dword_1002D70F0 = v34;
      qword_1002D70F8 = CFAbsoluteTimeGetCurrent();
    }
  }

LABEL_27:

  return v30;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(NSTimer *)self->_autoscrubTimer invalidate:touch];
  autoscrubTimer = self->_autoscrubTimer;
  self->_autoscrubTimer = 0;

  self->_autoscrubActive = 0;
  self->_isTracking = 0;
  [(RCMPDetailScrubController *)self->_scrubController endTracking];
  [(RCAudioScrubber *)self currentPosition];
  *&v6 = v6;
  [(RCAudioScrubber *)self _commitTimeValue:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 detailSliderTrackingDidEnd:self];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  [(RCMPDetailScrubController *)self->_scrubController cancelTrackingWithEvent:event];

  [(RCAudioScrubber *)self cancelTracking];
}

- (void)cancelTracking
{
  [(NSTimer *)self->_autoscrubTimer invalidate];
  autoscrubTimer = self->_autoscrubTimer;
  self->_autoscrubTimer = 0;

  self->_autoscrubActive = 0;
  isTracking = self->_isTracking;
  self->_isTracking = 0;
  if (isTracking)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 detailSliderTrackingDidCancel:self];
    }
  }
}

- (void)setDuration:(double)duration
{
  if (vabdd_f64(self->_duration, duration) > 2.22044605e-16)
  {
    self->_duration = duration;
    [(RCMPDetailScrubController *)self->_scrubController setDuration:?];
    currentTime = self->_currentTime;
    if (currentTime >= self->_duration)
    {
      currentTime = self->_duration;
    }

    self->_currentTime = fmax(currentTime, 0.0);
    [(RCAudioScrubber *)self frame];
    if (!CGRectIsEmpty(v8))
    {
      [(RCAudioScrubber *)self layoutSubviews];
    }

    v5 = self->_currentTime;
    *&v5 = v5;
    [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:v5];
    [(RCAudioScrubber *)self _updateForAvailableDuration];
    v6 = self->_currentTime;

    [(RCAudioScrubber *)self _updateTimeDisplayForTime:1 force:v6];
  }
}

- (void)_updateTimeDisplayForTime:(double)time force:(BOOL)force
{
  v5 = floor(time);
  if (force || vabdd_f64(self->_currentTime, v5) > 2.22044605e-16)
  {
    currentTimeLabel = self->_currentTimeLabel;
    v7 = [(RCAudioScrubber *)self _stringForCurrentTime:v5];
    v8 = RCLocalizationNotNeeded();
    [(UILabel *)currentTimeLabel setText:v8];

    currentTimeInverseLabel = self->_currentTimeInverseLabel;
    v10 = [(RCAudioScrubber *)self _stringForInverseCurrentTime:self->_duration - v5];
    v11 = RCLocalizationNotNeeded();
    [(UILabel *)currentTimeInverseLabel setText:v11];

    [(RCAudioScrubber *)self setNeedsLayout];
    self->_currentTime = v5;
  }
}

- (id)_stringForTime:(double)time elapsed:(BOOL)elapsed
{
  formatter = self->_formatter;
  if (elapsed)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(AVTimeFormatter *)formatter setStyle:v7];
  v8 = self->_formatter;

  return [(AVTimeFormatter *)v8 stringFromSeconds:time];
}

- (id)_stringForCurrentTime:(double)time
{
  v5 = [(RCAudioScrubber *)self _stringForTime:1 elapsed:time, v3];

  return v5;
}

- (id)_stringForInverseCurrentTime:(double)time
{
  v5 = [(RCAudioScrubber *)self _stringForTime:0 elapsed:time, v3];

  return v5;
}

- (void)_commitTimeValue:(float)value
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    *&v7 = value;
    [v8 detailSlider:self didChangeTimeValue:v7];
  }
}

- (void)_updateForAvailableDuration
{
  [(RCAudioScrubber *)self setNeedsLayout];

  [(RCAudioScrubber *)self layoutIfNeeded];
}

- (id)accessibilityValue
{
  v3 = [NSDateComponentsFormatter hoursMinutesSecondsStringWithInterval:1 forAccessibility:self->_currentTime];
  v4 = [NSDateComponentsFormatter hoursMinutesSecondsStringWithInterval:1 forAccessibility:self->_duration];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"AX_DURATION_PROGRESS" value:&stru_100295BB8 table:0];
  v7 = [NSString stringWithFormat:v6, v3, v4];

  return v7;
}

- (void)accessibilityIncrement
{
  [(RCAudioScrubber *)self value];
  v4 = v3 + 0.1;
  *&v4 = v4;
  [(RCAudioScrubber *)self timePositionForSliderValue:v4];
  v6 = v5;
  [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:?];
  LODWORD(v7) = v6;

  [(RCAudioScrubber *)self _commitTimeValue:v7];
}

- (void)accessibilityDecrement
{
  [(RCAudioScrubber *)self value];
  v4 = v3 + -0.1;
  *&v4 = v4;
  [(RCAudioScrubber *)self timePositionForSliderValue:v4];
  v6 = v5;
  [(RCAudioScrubber *)self setSliderPositionForTime:1 animated:?];
  LODWORD(v7) = v6;

  [(RCAudioScrubber *)self _commitTimeValue:v7];
}

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TRACK_SLIDER" value:&stru_100295BB8 table:0];

  return v3;
}

- (RCMPDetailSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end