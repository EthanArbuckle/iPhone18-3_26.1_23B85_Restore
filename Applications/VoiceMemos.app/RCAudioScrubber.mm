@interface RCAudioScrubber
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)thumbHitRect;
- (RCAudioScrubber)initWithFrame:(CGRect)a3;
- (RCMPDetailSliderDelegate)delegate;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (double)currentPosition;
- (id)_stringForCurrentTime:(double)a3;
- (id)_stringForInverseCurrentTime:(double)a3;
- (id)_stringForTime:(double)a3 elapsed:(BOOL)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_autoscrubTick:(id)a3;
- (void)_beginTracking;
- (void)_commitTimeValue:(float)a3;
- (void)_setCurrentTimeWhileTracking:(float)a3 animated:(BOOL)a4;
- (void)_updateForAvailableDuration;
- (void)_updateTimeDisplayForTime:(double)a3 force:(BOOL)a4;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)cancelTracking;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)detailScrubController:(id)a3 didChangeScrubSpeed:(int64_t)a4;
- (void)detailScrubController:(id)a3 didChangeValue:(float)a4;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setDuration:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSliderPositionForTime:(float)a3 animated:(BOOL)a4;
@end

@implementation RCAudioScrubber

- (RCAudioScrubber)initWithFrame:(CGRect)a3
{
  if (a3.size.height == 0.0)
  {
    a3.size.height = 34.0;
  }

  v11.receiver = self;
  v11.super_class = RCAudioScrubber;
  v3 = [(RCAudioScrubber *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setSliderPositionForTime:(float)a3 animated:(BOOL)a4
{
  if (!self->_isTracking)
  {
    [(RCAudioScrubber *)self _setCurrentTimeWhileTracking:a4 animated:?];
  }
}

- (void)layoutSubviews
{
  [(RCAudioScrubber *)self bounds];
  v3 = [(RCAudioScrubber *)self traitCollection];
  [v3 displayScale];
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
  v13 = [(RCAudioScrubber *)self timeLabelFont];
  v14 = [(RCAudioScrubber *)self timeLabelTextColor];
  currentTimeLabel = self->_currentTimeLabel;
  if (!currentTimeLabel)
  {
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = self->_currentTimeLabel;
    self->_currentTimeLabel = v16;

    [(UILabel *)self->_currentTimeLabel setBackgroundColor:0];
    [(UILabel *)self->_currentTimeLabel setFont:v13];
    [(UILabel *)self->_currentTimeLabel setLineBreakMode:2];
    [(UILabel *)self->_currentTimeLabel setOpaque:0];
    v18 = [(RCAudioScrubber *)self _stringForCurrentTime:NAN];
    v19 = RCLocalizationNotNeeded();
    [(UILabel *)self->_currentTimeLabel setText:v19];

    [(UILabel *)self->_currentTimeLabel setTextAlignment:2];
    [(UILabel *)self->_currentTimeLabel setTextColor:v14];
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
    [(UILabel *)self->_currentTimeInverseLabel setFont:v13];
    [(UILabel *)self->_currentTimeInverseLabel setLineBreakMode:2];
    [(UILabel *)self->_currentTimeInverseLabel setOpaque:0];
    v23 = [(RCAudioScrubber *)self _stringForInverseCurrentTime:NAN];
    v24 = RCLocalizationNotNeeded();
    [(UILabel *)self->_currentTimeInverseLabel setText:v24];

    [(UILabel *)self->_currentTimeInverseLabel setTextAlignment:0];
    [(UILabel *)self->_currentTimeInverseLabel setTextColor:v14];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_setCurrentTimeWhileTracking:(float)a3 animated:(BOOL)a4
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
    v13 = a4;
    v15 = fmax(a3, 0.0);
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
    [(RCAudioScrubber *)&v21 setValue:v13 animated:v19];
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

- (void)detailScrubController:(id)a3 didChangeScrubSpeed:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 detailSlider:self didChangeScrubSpeed:a4];
  }
}

- (void)detailScrubController:(id)a3 didChangeValue:(float)a4
{
  [(RCAudioScrubber *)self _setCurrentTimeWhileTracking:1 animated:?];
  *&v6 = a4;

  [(RCAudioScrubber *)self _commitTimeValue:v6];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = [(RCMPDetailScrubController *)self->_scrubController beginTrackingWithTouch:a3 withEvent:a4];
  [(RCAudioScrubber *)self _beginTracking];
  return v5;
}

- (void)_autoscrubTick:(id)a3
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
  v12 = [(RCAudioScrubber *)self window];
  [(RCAudioScrubber *)self convertPoint:v12 toView:self->_previousLocationInView.x, self->_previousLocationInView.y];
  v14 = v13;
  v15 = [(RCAudioScrubber *)self window];
  [v15 bounds];
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

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 locationInView:self];
  v9 = v8;
  v11 = v10;
  if ([(RCMPDetailScrubController *)self->_scrubController detailedScrubbingEnabled]&& [(RCMPDetailScrubController *)self->_scrubController durationAllowsForDetailedScrubbing])
  {
    v12 = [(RCAudioScrubber *)self window];
    [(RCAudioScrubber *)self convertPoint:v12 toView:v9, v11];
    v14 = v13;
    v16 = v15;
    v17 = +[UIApplication sharedApplication];
    v18 = [v17 delegate];
    v19 = [v18 window];
    v20 = [v19 windowScene];
    v21 = [v20 interfaceOrientation] - 3;

    if (v21 < 2)
    {
      v14 = v16;
    }

    [v12 bounds];
    if (v21 > 1)
    {
      Width = CGRectGetWidth(*&v22);
      if (v12)
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
      if (v12)
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

  v30 = [(RCMPDetailScrubController *)self->_scrubController continueTrackingWithTouch:v6 withEvent:v7];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(RCAudioScrubber *)self value];
    v34 = LODWORD(v33);
    if (vabds_f32(v33, *&dword_1002D70F0) > 0.02 || CFAbsoluteTimeGetCurrent() - *&qword_1002D70F8 > 5.0)
    {
      v35 = UIAccessibilityAnnouncementNotification;
      v36 = [(RCAudioScrubber *)self accessibilityValue];
      UIAccessibilityPostNotification(v35, v36);

      dword_1002D70F0 = v34;
      qword_1002D70F8 = CFAbsoluteTimeGetCurrent();
    }
  }

LABEL_27:

  return v30;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(NSTimer *)self->_autoscrubTimer invalidate:a3];
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

- (void)cancelTrackingWithEvent:(id)a3
{
  [(RCMPDetailScrubController *)self->_scrubController cancelTrackingWithEvent:a3];

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

- (void)setDuration:(double)a3
{
  if (vabdd_f64(self->_duration, a3) > 2.22044605e-16)
  {
    self->_duration = a3;
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

- (void)_updateTimeDisplayForTime:(double)a3 force:(BOOL)a4
{
  v5 = floor(a3);
  if (a4 || vabdd_f64(self->_currentTime, v5) > 2.22044605e-16)
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

- (id)_stringForTime:(double)a3 elapsed:(BOOL)a4
{
  formatter = self->_formatter;
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(AVTimeFormatter *)formatter setStyle:v7];
  v8 = self->_formatter;

  return [(AVTimeFormatter *)v8 stringFromSeconds:a3];
}

- (id)_stringForCurrentTime:(double)a3
{
  v5 = [(RCAudioScrubber *)self _stringForTime:1 elapsed:a3, v3];

  return v5;
}

- (id)_stringForInverseCurrentTime:(double)a3
{
  v5 = [(RCAudioScrubber *)self _stringForTime:0 elapsed:a3, v3];

  return v5;
}

- (void)_commitTimeValue:(float)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    *&v7 = a3;
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