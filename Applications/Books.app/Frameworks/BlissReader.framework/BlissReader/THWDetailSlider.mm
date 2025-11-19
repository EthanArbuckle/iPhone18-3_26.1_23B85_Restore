@interface THWDetailSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)_thumbHitFrame;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)timeLabelShadowOffsetForStyle:(int64_t)a3;
- (THWDetailSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4 maxTrackWidth:(double)a5;
- (UIEdgeInsets)timeLabelInsets;
- (UIImageView)thumbImageView;
- (float)_scaleForIdealValueForVerticalPosition:(double)a3;
- (float)_scaleForVerticalPosition:(double)a3;
- (id)_stringForCurrentTime:(double)a3;
- (id)_stringForInverseCurrentTime:(double)a3;
- (id)_stringForTime:(double)a3;
- (id)currentThumbImage;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)timeLabelFontForStyle:(int64_t)a3;
- (void)_adjustMinScale;
- (void)_autoscrubTick:(id)a3;
- (void)_commitValue;
- (void)_resetScrubInfo;
- (void)_setValueWhileTracking:(float)a3;
- (void)_setupControlsForStyle;
- (void)_updateForAvailableDuration;
- (void)_updateTimeDisplayForTime:(double)a3 force:(BOOL)a4;
- (void)_updateTrackInset;
- (void)cancelTracking;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAllowsScrubbing:(BOOL)a3;
- (void)setAvailableDuration:(double)duration;
- (void)setDuration:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHideLeftNumericDisplay:(BOOL)a3;
- (void)setHideRightNumericDisplay:(BOOL)a3;
- (void)setMinTimeLabelWidth:(double)a3;
- (void)setTimeLabelInsets:(UIEdgeInsets)a3;
- (void)setTimeLabelStyle:(int64_t)a3;
- (void)setValue:(float)a3;
@end

@implementation THWDetailSlider

- (THWDetailSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4 maxTrackWidth:(double)a5
{
  v10.receiver = self;
  v10.super_class = THWDetailSlider;
  v7 = [(THWDetailSlider *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_allowsScrubbing = 1;
    v7->_allowsDetailScrubbing = 1;
    v7->_detailScrubbingVerticalRange = 220.0;
    v7->_minTimeLabelWidth = 20.0;
    v7->_maxTrackWidth = a5;
    v7->_style = a4;
    [(THWDetailSlider *)v7 _setupControlsForStyle];
  }

  return v8;
}

- (void)dealloc
{
  [(NSTimer *)self->_autoscrubTimer invalidate];

  v3.receiver = self;
  v3.super_class = THWDetailSlider;
  [(THWDetailSlider *)&v3 dealloc];
}

- (void)setHideLeftNumericDisplay:(BOOL)a3
{
  if (self->_hideLeftNumericDisplay != a3)
  {
    self->_hideLeftNumericDisplay = a3;
    if (a3)
    {
      [(UILabel *)self->_currentTimeLabel removeFromSuperview];

      self->_currentTimeLabel = 0;
    }

    [(THWDetailSlider *)self setNeedsLayout];
  }
}

- (void)setHideRightNumericDisplay:(BOOL)a3
{
  if (self->_hideRightNumericDisplay != a3)
  {
    self->_hideRightNumericDisplay = a3;
    if (a3)
    {
      [(UILabel *)self->_currentTimeInverseLabel removeFromSuperview];

      self->_currentTimeInverseLabel = 0;
    }

    [(THWDetailSlider *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(THWDetailSlider *)self _thumbHitFrame];
  v10.x = x;
  v10.y = y;
  if (!CGRectContainsPoint(v11, v10))
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = THWDetailSlider;
  return [(THWDetailSlider *)&v9 hitTest:a4 withEvent:x, y];
}

- (void)layoutSubviews
{
  [(THWDetailSlider *)self timeLabelVerticalOffsetForStyle:self->_style];
  v4 = v3;
  v5 = [(THWDetailSlider *)self timeLabelFontForStyle:self->_style];
  v6 = [(THWDetailSlider *)self timeLabelTextColorForStyle:self->_style];
  [(THWDetailSlider *)self timeLabelShadowOffsetForStyle:self->_style];
  v8 = v7;
  v10 = v9;
  v11 = [(THWDetailSlider *)self timeLabelShadowColorForStyle:self->_style];
  if (![(THWDetailSlider *)self hideLeftNumericDisplay])
  {
    currentTimeLabel = self->_currentTimeLabel;
    if (!currentTimeLabel)
    {
      v13 = [objc_alloc(objc_msgSend(objc_opt_class() "labelClass"))];
      self->_currentTimeLabel = v13;
      [(UILabel *)v13 setTextColor:v6];
      [(UILabel *)self->_currentTimeLabel setFont:v5];
      [(UILabel *)self->_currentTimeLabel setShadowOffset:v8, v10];
      [(UILabel *)self->_currentTimeLabel setShadowColor:v11];
      [(UILabel *)self->_currentTimeLabel setOpaque:0];
      [(UILabel *)self->_currentTimeLabel setBackgroundColor:0];
      [(UILabel *)self->_currentTimeLabel setLineBreakMode:2];
      [(UILabel *)self->_currentTimeLabel setText:[(THWDetailSlider *)self _stringForCurrentTime:self->_currentTime]];
      [(UILabel *)self->_currentTimeLabel setTextAlignment:2];
      [(THWDetailSlider *)self addSubview:self->_currentTimeLabel];
      currentTimeLabel = self->_currentTimeLabel;
    }

    [(UILabel *)currentTimeLabel frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(THWDetailSlider *)self bounds];
    v21 = v4 + (v20 - v19) * 0.5;
    [(UILabel *)self->_currentTimeLabel setFrame:v15, floorf(v21), v17, v19];
  }

  if (![(THWDetailSlider *)self hideRightNumericDisplay])
  {
    currentTimeInverseLabel = self->_currentTimeInverseLabel;
    if (!currentTimeInverseLabel)
    {
      v23 = [objc_alloc(objc_msgSend(objc_opt_class() "labelClass"))];
      self->_currentTimeInverseLabel = v23;
      [(UILabel *)v23 setTextColor:v6];
      [(UILabel *)self->_currentTimeInverseLabel setFont:v5];
      [(UILabel *)self->_currentTimeInverseLabel setShadowOffset:v8, v10];
      [(UILabel *)self->_currentTimeInverseLabel setShadowColor:v11];
      [(UILabel *)self->_currentTimeInverseLabel setOpaque:0];
      [(UILabel *)self->_currentTimeInverseLabel setBackgroundColor:0];
      [(UILabel *)self->_currentTimeInverseLabel setLineBreakMode:2];
      [(UILabel *)self->_currentTimeInverseLabel setText:[(THWDetailSlider *)self _stringForInverseCurrentTime:self->_currentTime]];
      [(UILabel *)self->_currentTimeInverseLabel setTextAlignment:0];
      [(THWDetailSlider *)self addSubview:self->_currentTimeInverseLabel];
      currentTimeInverseLabel = self->_currentTimeInverseLabel;
    }

    [(UILabel *)currentTimeInverseLabel frame];
    v25 = v24;
    v27 = v26;
    [(THWDetailSlider *)self bounds];
    v29 = v4 + (v28 - v27) * 0.5;
    v30 = floorf(v29);
    [(THWDetailSlider *)self bounds];
    [(UILabel *)self->_currentTimeInverseLabel setFrame:CGRectGetWidth(v32) - self->_trackInsetRight - self->_timeLabelInsets.left, self->_timeLabelInsets.top + v30, v25 - (-self->_timeLabelInsets.right - self->_timeLabelInsets.left), v27 - (self->_timeLabelInsets.top + self->_timeLabelInsets.bottom)];
  }

  [(THWDetailSlider *)self _adjustMinScale];
  [(THWDetailSlider *)self _updateTrackInset];
  v31.receiver = self;
  v31.super_class = THWDetailSlider;
  [(THWDetailSlider *)&v31 layoutSubviews];
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = THWDetailSlider;
  [(THWDetailSlider *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  currentTime = self->_currentTime;
  *&currentTime = currentTime;
  [(THWDetailSlider *)self setValue:currentTime];
}

- (UIImageView)thumbImageView
{
  objc_opt_class();
  [(THWDetailSlider *)self _thumbView];
  result = TSUDynamicCast();
  if (!result)
  {
    objc_opt_class();
    [(THWDetailSlider *)self _thumbViewNeue];

    return TSUDynamicCast();
  }

  return result;
}

- (id)currentThumbImage
{
  if ((self->_style - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (self->_isTracking && self->_allowsDetailScrubbing && self->_durationAllowsDetailScrubbing)
    {
      if (!self->_glowDetailScrubImageView)
      {
        v3 = [[UIImageView alloc] initWithImage:{+[UIImage th_imageNamed:](UIImage, "th_imageNamed:", @"scrubberglow"}];
        self->_glowDetailScrubImageView = v3;
        [(UIImageView *)v3 bounds];
        [(UIImageView *)[(THWDetailSlider *)self thumbImageView] bounds];
        UIRectCenteredIntegralRect();
        v8 = CGRectOffset(v7, 0.0, -1.0);
        [(UIImageView *)v3 setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
      }

      [(UIImageView *)[(THWDetailSlider *)self thumbImageView] addSubview:self->_glowDetailScrubImageView];
    }

    else
    {
      glowDetailScrubImageView = self->_glowDetailScrubImageView;
      if (glowDetailScrubImageView)
      {
        [-[UIImageView layer](glowDetailScrubImageView "layer")];
        [(UIImageView *)self->_glowDetailScrubImageView removeFromSuperview];
      }
    }
  }

  v6.receiver = self;
  v6.super_class = THWDetailSlider;
  return [(THWDetailSlider *)&v6 currentThumbImage];
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(THWDetailSlider *)self _updateTrackInset];
  v15.receiver = self;
  v15.super_class = THWDetailSlider;
  [(THWDetailSlider *)&v15 trackRectForBounds:x, y, width, height];
  v8 = v16.origin.x;
  v9 = v16.origin.y;
  v10 = v16.size.width;
  v11 = v16.size.height;
  v12 = CGRectGetWidth(v16);
  trackInsetLeft = self->_trackInsetLeft;
  v14 = trackInsetLeft + self->_trackInsetRight;
  if (v12 <= v14)
  {
    result.origin.x = CGRectZero.origin.x;
    result.origin.y = CGRectZero.origin.y;
    result.size.width = CGRectZero.size.width;
    result.size.height = CGRectZero.size.height;
  }

  else
  {
    v17.origin.x = v8 + trackInsetLeft;
    v17.size.width = v10 - v14;
    v17.origin.y = v9;
    v17.size.height = v11;
    return CGRectOffset(v17, 0.0, -2.0);
  }

  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  style = self->_style;
  if (style == 4)
  {
    v18.receiver = self;
    v18.super_class = THWDetailSlider;
    [(THWDetailSlider *)&v18 thumbRectForBounds:a3.origin.x trackRect:a3.origin.y value:a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, LODWORD(a5)];
    goto LABEL_7;
  }

  if (style == 3)
  {
    v17.receiver = self;
    v17.super_class = THWDetailSlider;
    [(THWDetailSlider *)&v17 thumbRectForBounds:a3.origin.x trackRect:a3.origin.y value:a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, LODWORD(a5)];
LABEL_9:
    v15 = 3.0;
    return CGRectOffset(*&v11, 0.0, v15);
  }

  if (style != 2)
  {
    v21 = CGRectInset(a4, -2.0, 0.0);
    v16.receiver = self;
    v16.super_class = THWDetailSlider;
    [(THWDetailSlider *)&v16 thumbRectForBounds:x trackRect:y value:width, height, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, LODWORD(a5)];
    goto LABEL_9;
  }

  v20 = CGRectInset(a4, -3.0, 0.0);
  v19.receiver = self;
  v19.super_class = THWDetailSlider;
  [(THWDetailSlider *)&v19 thumbRectForBounds:x trackRect:y value:width, height, v20.origin.x, v20.origin.y, v20.size.width, v20.size.height, LODWORD(a5)];
LABEL_7:
  v15 = 2.0;
  return CGRectOffset(*&v11, 0.0, v15);
}

- (void)setValue:(float)a3
{
  if (!self->_isTracking)
  {
    [(THWDetailSlider *)self _setValueWhileTracking:?];
  }
}

- (void)_setValueWhileTracking:(float)a3
{
  duration = self->_duration;
  if (duration > 0.0)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v3;
    v23 = v4;
    v11 = fmax(a3, 0.0);
    if (duration < v11)
    {
      v11 = duration;
    }

    v12 = v11;
    v13 = v12;
    v14 = v12 / duration;
    [(THWDetailSlider *)self bounds];
    v16 = 1.0 / v15;
    LODWORD(v16) = 1.0;
    if (vabdd_f64(1.0, v14) >= 1.0 / v15)
    {
      *&v16 = v14;
    }

    v17.receiver = self;
    v17.super_class = THWDetailSlider;
    [(THWDetailSlider *)&v17 setValue:v16];
    [(THWDetailSlider *)self _updateForAvailableDuration];
    [(THWDetailSlider *)self _updateTimeDisplayForTime:v13];
    if (self->_isTracking && self->_canCommit)
    {
      [(THWDetailSlider *)self _commitValue];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_didBeginTracking = 0;
  [a3 locationInView:{self, a4}];
  v6 = v5;
  v8 = v7;
  [(THWDetailSlider *)self _thumbHitFrame];
  v11.x = v6;
  v11.y = v8;
  v9 = CGRectContainsPoint(v12, v11);
  if (v9)
  {
    self->_isTracking = 1;
    self->_previousLocationInView.x = v6;
    self->_previousLocationInView.y = v8;
    self->_beginLocationInView.x = v6;
    self->_beginLocationInView.y = v8;
    self->_lastCommittedLocationInView.x = v6;
    self->_lastCommittedLocationInView.y = v8;
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate detailSliderTrackingDidBegin:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [self->_delegate detailSlider:self didChangeScrubSpeed:0];
    }
  }

  return v9;
}

- (void)_autoscrubTick:(id)a3
{
  [(THWDetailSlider *)self maximumValue];
  v5 = v4;
  [(THWDetailSlider *)self minimumValue];
  v7 = (v5 - v6);
  [(THWDetailSlider *)self bounds];
  [(THWDetailSlider *)self trackRectForBounds:?];
  v8 = v7 / CGRectGetWidth(v24);
  [(THWDetailSlider *)self _scaleForVerticalPosition:self->_previousLocationInView.y];
  v10 = v9;
  v11 = v8 * v9;
  [(THWDetailSlider *)self convertPoint:[(THWDetailSlider *)self window] toView:self->_previousLocationInView.x, self->_previousLocationInView.y];
  v13 = v12;
  [-[THWDetailSlider window](self "window")];
  if (v13 >= CGRectGetMidX(v25))
  {
    v14 = v11;
  }

  else
  {
    v14 = -(v8 * v10);
  }

  v15 = v14;
  self->_needsCommit = 1;
  self->_canCommit = 1;
  [(THWDetailSlider *)self minimumValue];
  v17 = v16;
  [(THWDetailSlider *)self maximumValue];
  v19 = v18;
  [(THWDetailSlider *)self value];
  v21 = v20 + v15;
  if (v19 < v21)
  {
    v21 = v19;
  }

  if (v17 >= v21)
  {
    v21 = v17;
  }

  v22 = self->_duration * v21;
  *&v22 = v22;
  [(THWDetailSlider *)self setValue:0 animated:v22];
  if ([(THWDetailSlider *)self isContinuous])
  {

    [(THWDetailSlider *)self sendActionsForControlEvents:4096];
  }
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [a3 locationInView:{self, a4}];
  v7 = v6;
  v8 = v5;
  v9 = 1.0;
  if (self->_allowsDetailScrubbing && self->_durationAllowsDetailScrubbing)
  {
    [(THWDetailSlider *)self _scaleForVerticalPosition:v5];
    v9 = v10;
    if (v10 <= self->_minScale || (v11 = v10, v9 <= 0.1))
    {
      v12 = 3;
    }

    else if (v11 > 0.35 || v11 <= 0.1)
    {
      v12 = v11 > 0.35 && v9 <= 0.75;
    }

    else
    {
      v12 = 2;
    }

    if (self->_scrubValue != v12)
    {
      self->_scrubValue = v12;
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate detailSlider:self didChangeScrubSpeed:self->_scrubValue];
      }
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (!self->_didBeginTracking)
  {
    if (vabdd_f64(self->_beginLocationInView.x, v7) < 12.0)
    {
LABEL_32:
      self->_previousLocationInView.x = v7;
      p_y = &self->_previousLocationInView.y;
      goto LABEL_57;
    }

    self->_didBeginTracking = 1;
  }

  if (v13)
  {
    v14 = [(THWDetailSlider *)self window];
    [(THWDetailSlider *)self convertPoint:v14 toView:v7, v8];
    v16 = v15;
    v18 = v17;
    autoscrubActive = self->_autoscrubActive;
    v20 = [objc_msgSend(v14 "windowScene")] - 3;
    if (v20 < 2)
    {
      v16 = v18;
    }

    [v14 bounds];
    if (v20 > 1)
    {
      Width = CGRectGetWidth(*&v21);
      if (v14)
      {
LABEL_22:
        Width = Width + -20.0;
        v26 = v16 > Width || v16 < 20.0;
        self->_autoscrubActive = v26;
        if (v26)
        {
          [(UIImageView *)[(THWDetailSlider *)self thumbImageView] setImage:[(THWDetailSlider *)self currentThumbImage]];
          if (!autoscrubActive)
          {
            v27 = [CABasicAnimation animationWithKeyPath:@"opacity"];
            [(CABasicAnimation *)v27 setToValue:[NSNumber numberWithFloat:0.0]];
            [(CABasicAnimation *)v27 setDuration:0.25];
            LODWORD(v28) = 2139095039;
            [(CABasicAnimation *)v27 setRepeatCount:v28];
            [(CABasicAnimation *)v27 setAutoreverses:1];
            [-[UIImageView layer](self->_glowDetailScrubImageView "layer")];
          }

          [(THWDetailSlider *)self value];
          v30 = self->_duration * v29;
          *&v30 = v30;
          [(THWDetailSlider *)self _setValueWhileTracking:v30];
          if ([(THWDetailSlider *)self isContinuous])
          {
            [(THWDetailSlider *)self sendActionsForControlEvents:4096];
          }

          if (!self->_autoscrubTimer)
          {
            self->_autoscrubTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_autoscrubTick:" selector:0 userInfo:1 repeats:0.1];
          }

          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      Width = CGRectGetHeight(*&v21);
      if (v14)
      {
        goto LABEL_22;
      }
    }

    self->_autoscrubActive = 0;
LABEL_35:
    if (self->_autoscrubTimer)
    {
      [-[UIImageView layer](self->_glowDetailScrubImageView layer];
      v32 = self;
      [(NSTimer *)self->_autoscrubTimer invalidate];

      self->_autoscrubTimer = 0;
    }
  }

  v33 = v7 - self->_previousLocationInView.x;
  [(THWDetailSlider *)self maximumValue];
  v35 = v34;
  [(THWDetailSlider *)self minimumValue];
  v37 = (v35 - v36);
  [(THWDetailSlider *)self bounds];
  [(THWDetailSlider *)self trackRectForBounds:?];
  v38 = v33 * (v37 / CGRectGetWidth(v65));
  [(THWDetailSlider *)self value];
  v40 = v39;
  v41 = v39 + v38 * v9;
  p_y = &self->_previousLocationInView.y;
  if (v8 < self->_previousLocationInView.y)
  {
    v42 = v13;
  }

  else
  {
    v42 = 0;
  }

  if (v42 == 1)
  {
    [(THWDetailSlider *)self minimumValue];
    v44 = v43;
    [(THWDetailSlider *)self maximumValue];
    v46 = v45;
    [(THWDetailSlider *)self bounds];
    v48 = v47;
    v50 = v49;
    [(THWDetailSlider *)self trackRectForBounds:?];
    v66.origin.y = v48;
    v66.size.height = v50;
    v67 = CGRectInset(v66, -2.0, 0.0);
    x = v67.origin.x;
    v52 = v67.size.width;
    [(UIImageView *)[(THWDetailSlider *)self thumbImageView] frame];
    v54 = v7 - x + v53 * -0.5;
    v55 = ((v46 - v44) * v54) / (v52 - v53) + v44;
    if (v44 <= v55)
    {
      v44 = v55;
      if (v46 < v55)
      {
        v44 = v46;
      }
    }

    [(THWDetailSlider *)self _scaleForIdealValueForVerticalPosition:v8];
    v41 = v41 + ((v44 - v40) * v56);
  }

  [(THWDetailSlider *)self minimumValue];
  v58 = v57;
  [(THWDetailSlider *)self maximumValue];
  v60 = v59;
  if (v41 <= v60)
  {
    v60 = v41;
  }

  if (v60 <= v58)
  {
    v60 = v58;
  }

  v61 = v60;
  if (vabds_f32(v61, v40) > 0.00000011921)
  {
    self->_needsCommit = 1;
  }

  if (vabdd_f64(self->_lastCommittedLocationInView.x, v7) > 8.0 || vabdd_f64(self->_lastCommittedLocationInView.y, v8) > 4.0)
  {
    self->_canCommit = 1;
    self->_lastCommittedLocationInView.x = v7;
    self->_lastCommittedLocationInView.y = v8;
  }

  v62 = v60 * self->_duration;
  *&v62 = v62;
  [(THWDetailSlider *)self _setValueWhileTracking:v62];
  if ([(THWDetailSlider *)self isContinuous])
  {
    [(THWDetailSlider *)self sendActionsForControlEvents:4096];
  }

  self->_previousLocationInView.x = v7;
LABEL_57:
  *p_y = v8;
  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = self;
  [(NSTimer *)self->_autoscrubTimer invalidate];

  self->_autoscrubTimer = 0;
  self->_autoscrubActive = 0;
  self->_isTracking = 0;
  [(THWDetailSlider *)self _resetScrubInfo];
  [a3 locationInView:self];
  if (vabdd_f64(self->_lastCommittedLocationInView.x, v7) > 3.0)
  {
    [(THWDetailSlider *)self _commitValue];
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate detailSliderTrackingDidEnd:self];
  }
}

- (void)cancelTracking
{
  v3 = self;
  [(NSTimer *)self->_autoscrubTimer invalidate];

  self->_autoscrubTimer = 0;
  self->_autoscrubActive = 0;
  isTracking = self->_isTracking;
  self->_isTracking = 0;
  [(THWDetailSlider *)self _resetScrubInfo];
  if (isTracking && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate detailSliderTrackingDidCancel:self];
  }
}

- (void)setAllowsScrubbing:(BOOL)a3
{
  if (self->_allowsScrubbing != a3)
  {
    self->_allowsScrubbing = a3;
    [(THWDetailSlider *)self setUserInteractionEnabled:?];
  }
}

- (void)setAvailableDuration:(double)duration
{
  if (self->_duration <= duration)
  {
    duration = self->_duration;
  }

  if (vabdd_f64(duration, self->_availableDuration) > 2.22044605e-16)
  {
    self->_availableDuration = duration;
    [(THWDetailSlider *)self _updateForAvailableDuration];
  }
}

- (void)setDuration:(double)a3
{
  if (vabdd_f64(self->_duration, a3) > 2.22044605e-16)
  {
    self->_duration = a3;
    self->_durationAllowsDetailScrubbing = [(THWDetailSlider *)self detailScrubbingAvailableForCurrentDuration];
    currentTime = self->_currentTime;
    if (currentTime >= self->_duration)
    {
      currentTime = self->_duration;
    }

    self->_currentTime = fmax(currentTime, 0.0);
    [(THWDetailSlider *)self layoutSubviews];
    v5 = self->_currentTime;
    *&v5 = v5;
    [(THWDetailSlider *)self setValue:0 animated:v5];
    [(THWDetailSlider *)self setAvailableDuration:self->_duration];
    v6 = self->_currentTime;

    [(THWDetailSlider *)self _updateTimeDisplayForTime:1 force:v6];
  }
}

- (void)setMinTimeLabelWidth:(double)a3
{
  if (self->_minTimeLabelWidth != a3)
  {
    self->_minTimeLabelWidth = a3;
    [(THWDetailSlider *)self setNeedsLayout];
  }
}

- (void)setTimeLabelInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_timeLabelInsets.top, v3), vceqq_f64(*&self->_timeLabelInsets.bottom, v4)))) & 1) == 0)
  {
    self->_timeLabelInsets = a3;
    [(THWDetailSlider *)self setNeedsLayout];
  }
}

- (void)setTimeLabelStyle:(int64_t)a3
{
  if (self->_timeLabelStyle != a3)
  {
    self->_timeLabelStyle = a3;
    [(THWDetailSlider *)self setNeedsLayout];
  }
}

- (id)timeLabelFontForStyle:(int64_t)a3
{
  style = self->_style;
  if ((style - 1) < 2)
  {
    v4 = 12.0;
    return [UIFont boldSystemFontOfSize:a3, v4];
  }

  if (style != 4)
  {
    if (style == 3)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 14.0;
    }

    return [UIFont boldSystemFontOfSize:a3, v4];
  }

  return [UIFont systemFontOfSize:a3, 11.0];
}

- (CGSize)timeLabelShadowOffsetForStyle:(int64_t)a3
{
  v3 = 1.0;
  if (self->_style != 2)
  {
    v3 = -1.0;
  }

  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)_setupControlsForStyle
{
  v3 = self->_style - 1;
  if (v3 > 3)
  {
    v6 = @"ScrubberKnob";
    v5 = @"VolumeBlueTrack";
    v7 = 5;
    v4 = @"VolumeWhiteTrack";
  }

  else
  {
    v4 = off_45E028[v3];
    v5 = off_45E048[v3];
    v6 = off_45E068[v3];
    v7 = 6;
  }

  v8 = [UIImage th_imageNamed:v6];
  v9 = [+[UIImage th_imageNamed:](UIImage th_imageNamed:{v5), "stretchableImageWithLeftCapWidth:topCapHeight:", v7, 0}];
  v10 = [+[UIImage th_imageNamed:](UIImage th_imageNamed:{v4), "stretchableImageWithLeftCapWidth:topCapHeight:", v7, 0}];
  [(THWDetailSlider *)self setThumbImage:v8 forState:0];
  [(THWDetailSlider *)self setMinimumTrackImage:v9 forState:0];

  [(THWDetailSlider *)self setMaximumTrackImage:v10 forState:0];
}

- (void)_updateTrackInset
{
  if (self->_currentTimeInverseLabel && self->_currentTimeLabel)
  {
    v3 = 0.0;
    v4 = 0.0;
    if (![(THWDetailSlider *)self hideRightNumericDisplay])
    {
      [(THWDetailSlider *)self duration];
      v5 = [(THWDetailSlider *)self _stringForInverseCurrentTime:?];
      v22 = NSFontAttributeName;
      v23 = [(UILabel *)self->_currentTimeInverseLabel font];
      [v5 sizeWithAttributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}];
      v4 = v6;
    }

    if (![(THWDetailSlider *)self hideLeftNumericDisplay])
    {
      [(THWDetailSlider *)self duration];
      v7 = [(THWDetailSlider *)self _stringForCurrentTime:?];
      v20 = NSFontAttributeName;
      v21 = [(UILabel *)self->_currentTimeLabel font];
      [v7 sizeWithAttributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}];
      v3 = v8;
    }

    v9 = [(THWDetailSlider *)self hideLeftNumericDisplay];
    v10 = 2.0;
    v11 = 2.0;
    if ((v9 & 1) == 0)
    {
      minTimeLabelWidth = self->_minTimeLabelWidth;
      if (minTimeLabelWidth < v3)
      {
        minTimeLabelWidth = v3;
      }

      v11 = minTimeLabelWidth + 2.0;
    }

    self->_trackInsetLeft = v11;
    if (![(THWDetailSlider *)self hideRightNumericDisplay])
    {
      v13 = self->_minTimeLabelWidth;
      if (v13 < v4)
      {
        v13 = v4;
      }

      v10 = v13 + 2.0;
    }

    self->_trackInsetRight = v10;
    if (![(THWDetailSlider *)self hideLeftNumericDisplay])
    {
      [(UILabel *)self->_currentTimeLabel frame];
      [(UILabel *)self->_currentTimeLabel setFrame:self->_timeLabelInsets.left + 0.0, v14 + self->_timeLabelInsets.top, self->_trackInsetLeft - (self->_timeLabelInsets.left + self->_timeLabelInsets.right), v15 - (self->_timeLabelInsets.top + self->_timeLabelInsets.bottom)];
      [(UILabel *)self->_currentTimeLabel setNeedsDisplay];
    }

    if (![(THWDetailSlider *)self hideRightNumericDisplay])
    {
      [(UILabel *)self->_currentTimeInverseLabel frame];
      v17 = v16;
      v19 = v18;
      [(THWDetailSlider *)self bounds];
      [(UILabel *)self->_currentTimeInverseLabel setFrame:CGRectGetWidth(v24) - self->_trackInsetRight - self->_timeLabelInsets.left, v17 + self->_timeLabelInsets.top, self->_trackInsetRight - (-self->_timeLabelInsets.right - self->_timeLabelInsets.left), v19 - (self->_timeLabelInsets.top + self->_timeLabelInsets.bottom)];
    }
  }
}

- (void)_adjustMinScale
{
  [(THWDetailSlider *)self bounds];
  Width = CGRectGetWidth(v5);
  duration = self->_duration;
  self->_minScale = (Width / duration) / 10.0;
}

- (float)_scaleForVerticalPosition:(double)a3
{
  v5 = TSUPadUI();
  detailScrubbingVerticalRange = self->_detailScrubbingVerticalRange;
  v7 = vabdd_f64(a3, self->_beginLocationInView.y);
  if (detailScrubbingVerticalRange >= v7)
  {
    detailScrubbingVerticalRange = v7;
  }

  if (v5)
  {
    v8 = 20.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (v8 >= detailScrubbingVerticalRange)
  {
    v9 = v8;
  }

  else
  {
    v9 = detailScrubbingVerticalRange;
  }

  if (TSUPadUI())
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = v9 - v10;
  v12 = v11;
  v13 = self->_detailScrubbingVerticalRange;
  if (TSUPadUI())
  {
    v14 = 20.0;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v12 / (v13 - v14);
  result = 1.0 - v15;
  if (self->_minScale >= result)
  {
    return self->_minScale;
  }

  return result;
}

- (float)_scaleForIdealValueForVerticalPosition:(double)a3
{
  detailScrubbingVerticalRange = self->_detailScrubbingVerticalRange;
  v4 = vabdd_f64(a3, self->_beginLocationInView.y);
  if (detailScrubbingVerticalRange < v4)
  {
    v4 = self->_detailScrubbingVerticalRange;
  }

  v5 = fmax(v4, 20.0) + -20.0;
  v6 = v5 / (detailScrubbingVerticalRange + -20.0);
  if (v6 <= 0.15)
  {
    v6 = v6 / 0.15;
    v7 = 0.33333;
  }

  else
  {
    v7 = 0.025;
  }

  v8 = 1.0 - fmaxf(powf(v6, v7), 0.0);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  return fmaxf(v8, 0.0);
}

- (void)_updateTimeDisplayForTime:(double)a3 force:(BOOL)a4
{
  v5 = floor(a3);
  if (a4 || vabdd_f64(self->_currentTime, v5) > 2.22044605e-16)
  {
    [(UILabel *)self->_currentTimeLabel setText:[(THWDetailSlider *)self _stringForCurrentTime:v5]];
    [(UILabel *)self->_currentTimeInverseLabel setText:[(THWDetailSlider *)self _stringForInverseCurrentTime:self->_duration - v5]];
    self->_currentTime = v5;
  }
}

- (id)_stringForTime:(double)a3
{
  v3 = floor(a3);
  v4 = floor(v3 / 60.0);
  v5 = v3 - v4 * 60.0;
  v6 = floor(v4 / 60.0);
  v7 = v4 - v6 * 60.0;
  v8 = THBundle();
  if (v6 <= 0.0)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v8 localizedStringForKey:@"%1$2lu:%2$02lu" value:&stru_471858 table:0], v7, v5, v10);
  }

  else
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v8 localizedStringForKey:@"%1$2lu:%2$02lu:%3$02lu" value:&stru_471858 table:0], v6, v7, v5);
  }
}

- (id)_stringForCurrentTime:(double)a3
{
  if (self->_timeLabelStyle == 1 && vabdd_f64(self->_duration, a3) < 30.0)
  {
    v3 = THBundle();

    return [v3 localizedStringForKey:@"Unknown Duration" value:&stru_471858 table:0];
  }

  else
  {

    return [(THWDetailSlider *)self _stringForTime:a3];
  }
}

- (id)_stringForInverseCurrentTime:(double)a3
{
  if (self->_timeLabelStyle == 1)
  {
    if (fabs(a3) < 30.0)
    {
      v3 = THBundle();

      return [v3 localizedStringForKey:@"Live" value:&stru_471858 table:0];
    }

    v5 = [(THWDetailSlider *)self _stringForTime:?];
  }

  else
  {
    v5 = [(THWDetailSlider *)self _stringForCurrentTime:a3];
  }

  return [@"-" stringByAppendingString:v5];
}

- (CGRect)_thumbHitFrame
{
  [(UIImageView *)[(THWDetailSlider *)self thumbImageView] frame];

  return CGRectInset(*&v2, -15.0, -15.0);
}

- (void)_resetScrubInfo
{
  self->_scrubValue = 0;
  [(UIImageView *)[(THWDetailSlider *)self thumbImageView] setImage:[(THWDetailSlider *)self currentThumbImage]];
  v3 = [(UIImageView *)self->_glowDetailScrubImageView layer];

  [v3 removeAnimationForKey:@"pulseAnimation"];
}

- (void)_commitValue
{
  if (self->_needsCommit && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    [(THWDetailSlider *)self value];
    v5 = self->_duration * v4;
    *&v5 = v5;
    [delegate detailSlider:self didChangeValue:v5];
    self->_needsCommit = 0;
  }
}

- (void)_updateForAvailableDuration
{
  [(THWDetailSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(THWDetailSlider *)self thumbImageView])
  {
    [(THWDetailSlider *)self setNeedsLayout];
    [(THWDetailSlider *)self layoutIfNeeded];
  }

  v66.origin.x = v4;
  v66.origin.y = v6;
  v66.size.width = v8;
  v66.size.height = v10;
  if (CGRectGetWidth(v66) > 0.0)
  {
    style = self->_style;
    if (style > 2)
    {
      if (style != 3)
      {
        if (style != 4)
        {
          return;
        }

LABEL_10:
        [(THWDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
        v68 = CGRectOffset(v67, 0.0, 1.0);
        v69 = CGRectInset(v68, 0.0, 0.0);
        if (v69.size.width <= 0.0)
        {
          return;
        }

        x = v69.origin.x;
        y = v69.origin.y;
        width = v69.size.width;
        [+[UIScreen mainScreen](UIScreen scale];
        v16 = v15;
        v63.height = 10.0;
        v63.width = width;
        UIGraphicsBeginImageContextWithOptions(v63, 0, v16);
        rect_24 = width;
        v17 = self->_availableDuration / self->_duration;
        v70.size.height = 10.0;
        v70.origin.x = x;
        v70.origin.y = y;
        v70.size.width = rect_24;
        v18 = v17 * CGRectGetWidth(v70);
        rect_8 = floorf(v18);
        [(THWDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
        rect_16 = y;
        rect = x;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [(THWDetailSlider *)self value];
        LODWORD(v57) = v27;
        [(THWDetailSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v20, v22, v24, v26, v57];
        MidX = CGRectGetMidX(v71);
        v72.origin.x = v20;
        v72.origin.y = v22;
        v72.size.width = v24;
        v72.size.height = v26;
        v29 = MidX - CGRectGetMinX(v72);
        v73.size.height = 10.0;
        v73.origin.x = rect;
        v73.size.width = rect_24;
        v73.origin.y = rect_16;
        v30 = fmax(CGRectGetWidth(v73) - v29, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        v74.origin.x = 0.0;
        v74.origin.y = 0.0;
        v74.size.height = 10.0;
        v88.origin.y = 0.0;
        v88.size.height = 10.0;
        v74.size.width = rect_8;
        v88.origin.x = v29;
        v88.size.width = v30;
        v75 = CGRectIntersection(v74, v88);
        CGContextClipToRect(CurrentContext, v75);
        v32 = CGPointZero.y;
        [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath addClip:CGPointZero.x];
        [+[UIColor colorWithWhite:alpha:](UIColor set:1.0];
        v76.size.height = 10.0;
        v76.origin.x = CGPointZero.x;
        v76.origin.y = v32;
        v76.size.width = rect_24;
        UIRectFill(v76);
        ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        if (!self->_downloadingTrackOverlay && [(THWDetailSlider *)self thumbImageView])
        {
          v34 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
          self->_downloadingTrackOverlay = v34;
          [(THWDetailSlider *)self insertSubview:v34 belowSubview:[(THWDetailSlider *)self thumbImageView]];
        }

        [(UIImageView *)self->_downloadingTrackOverlay setImage:ImageFromCurrentImageContext];
        downloadingTrackOverlay = self->_downloadingTrackOverlay;
        v36 = 10.0;
        v37 = rect;
        v38 = rect_16;
        v39 = rect_24;
        goto LABEL_28;
      }

      [(THWDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
      v84 = CGRectOffset(v83, 0.0, 1.0);
      v85 = CGRectInset(v84, 1.0, 0.0);
      if (v85.size.width <= 0.0)
      {
        return;
      }

      v42 = v85.origin.x;
      v43 = v85.origin.y;
      v44 = v85.size.width;
      [+[UIScreen mainScreen](UIScreen scale];
      v50 = v49;
      v65.height = 8.0;
      v65.width = v44;
      UIGraphicsBeginImageContextWithOptions(v65, 0, v50);
      [+[UIColor colorWithWhite:alpha:](UIColor set:1.0];
      v86.size.height = 8.0;
      v86.origin.x = v42;
      v86.origin.y = v43;
      v86.size.width = v44;
      v51 = floor(self->_availableDuration / self->_duration * CGRectGetWidth(v86));
      v52 = UIGraphicsGetCurrentContext();
      v87.origin.x = 0.0;
      v87.origin.y = 0.0;
      v87.size.height = 8.0;
      v87.size.width = v51;
      CGContextClipToRect(v52, v87);
      [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath fill:CGPointZero.x];
LABEL_25:
      v53 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v54 = self->_downloadingTrackOverlay;
      if (!v54)
      {
        v55 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        self->_downloadingTrackOverlay = v55;
        [(THWDetailSlider *)self insertSubview:v55 belowSubview:[(THWDetailSlider *)self thumbImageView]];
        v54 = self->_downloadingTrackOverlay;
      }

      [(UIImageView *)v54 setImage:v53];
      downloadingTrackOverlay = self->_downloadingTrackOverlay;
      v36 = 8.0;
      v37 = v42;
      v38 = v43;
      v39 = v44;
LABEL_28:

      [(UIImageView *)downloadingTrackOverlay setFrame:v37, v38, v39, v36];
      return;
    }

    if (style)
    {
      if (style != 2)
      {
        return;
      }

      goto LABEL_10;
    }

    availableDuration = self->_availableDuration;
    if (availableDuration >= self->_duration)
    {
      v56 = self->_downloadingTrackOverlay;
      if (v56)
      {
        [(UIImageView *)v56 removeFromSuperview];

        self->_downloadingTrackOverlay = 0;
      }
    }

    else
    {
      currentTime = fmax(availableDuration, 0.0);
      if (currentTime < self->_currentTime && !self->_isTracking)
      {
        currentTime = self->_currentTime;
      }

      [(THWDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
      v78 = CGRectOffset(v77, 0.0, 1.0);
      v79 = CGRectInset(v78, 1.0, 0.0);
      if (v79.size.width > 0.0)
      {
        v42 = v79.origin.x;
        v43 = v79.origin.y;
        v44 = v79.size.width;
        if (!qword_5678D0)
        {
          qword_5678D0 = [+[UIImage th_imageNamed:](UIImage th_imageNamed:{@"ScrubberDownloading", "stretchableImageWithLeftCapWidth:topCapHeight:", 4, 0}];
        }

        [+[UIScreen mainScreen](UIScreen scale];
        v46 = v45;
        v64.height = 8.0;
        v64.width = v44;
        UIGraphicsBeginImageContextWithOptions(v64, 0, v46);
        v80.size.height = 8.0;
        v80.origin.x = v42;
        v80.origin.y = v43;
        v80.size.width = v44;
        v47 = floor(currentTime / self->_duration * CGRectGetWidth(v80));
        v48 = UIGraphicsGetCurrentContext();
        v81.size.height = 8.0;
        v81.origin.x = v42;
        v81.origin.y = v43;
        v81.size.width = v44;
        v82.size.width = CGRectGetWidth(v81) - v47;
        v82.origin.y = 0.0;
        v82.size.height = 8.0;
        v82.origin.x = v47;
        CGContextClipToRect(v48, v82);
        [qword_5678D0 drawInRect:0 blendMode:CGPointZero.x alpha:{CGPointZero.y, v44, 8.0, 1.0}];
        goto LABEL_25;
      }
    }
  }
}

- (UIEdgeInsets)timeLabelInsets
{
  top = self->_timeLabelInsets.top;
  left = self->_timeLabelInsets.left;
  bottom = self->_timeLabelInsets.bottom;
  right = self->_timeLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end