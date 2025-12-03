@interface VMDetailSlider
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGRect)thumbHitRect;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (VMDetailSlider)initWithCoder:(id)coder;
- (VMDetailSlider)initWithFrame:(CGRect)frame;
- (VMDetailSliderDelegate)delegate;
- (id)maxTrackColor;
- (void)cancelTrackingWithEvent:(id)event;
- (void)commonInit;
- (void)detailScrubController:(id)controller didChangeValue:(float)value;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setElapsedTime:(double)time animated:(BOOL)animated force:(BOOL)force;
- (void)setMaximumTime:(double)time;
- (void)setValue:(float)value animated:(BOOL)animated;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMaximumTrackImage;
- (void)updateMinimumTrackImage;
- (void)updateTrackImages;
@end

@implementation VMDetailSlider

- (VMDetailSlider)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VMDetailSlider;
  v3 = [(VMDetailSlider *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(VMDetailSlider *)v3 commonInit];
  }

  return v4;
}

- (VMDetailSlider)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VMDetailSlider;
  v3 = [(VMDetailSlider *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMDetailSlider *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  traitCollection = [(VMDetailSlider *)self traitCollection];
  self->_accessibilityConstraintsEnabled = [traitCollection isPreferredContentSizeCategoryAccessible];

  v4 = [[MPDetailScrubController alloc] initWithScrubbingControl:self];
  detailScrubController = self->_detailScrubController;
  self->_detailScrubController = v4;

  [(MPDetailScrubController *)self->_detailScrubController setDelegate:self];
  [(MPDetailScrubController *)self->_detailScrubController setDetailedScrubbingEnabled:0];
  self->_minimumTime = 0.0;
  [(VMDetailSlider *)self setDeliversTouchesForGesturesToSuperview:0];
  [(VMDetailSlider *)self _setSliderStyle:110];

  [(VMDetailSlider *)self updateTrackImages];
}

- (void)setMaximumTime:(double)time
{
  detailScrubController = [(VMDetailSlider *)self detailScrubController];
  isTracking = [detailScrubController isTracking];

  if ((isTracking & 1) == 0 && vabdd_f64(self->_maximumTime, time) > 2.22044605e-16)
  {
    self->_maximumTime = time;
    detailScrubController2 = [(VMDetailSlider *)self detailScrubController];
    [detailScrubController2 setDuration:time];
  }
}

- (void)setElapsedTime:(double)time animated:(BOOL)animated force:(BOOL)force
{
  animatedCopy = animated;
  if (force || (-[VMDetailSlider detailScrubController](self, "detailScrubController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isTracking], v8, (v9 & 1) == 0))
  {
    timeCopy = time;
    if (vabdd_f64(self->_elapsedTime, time) > 2.22044605e-16)
    {
      [(VMDetailSlider *)self minimumTime];
      v12 = v11;
      [(VMDetailSlider *)self maximumTime];
      if (v12 >= timeCopy)
      {
        v14 = v12;
      }

      else
      {
        v14 = timeCopy;
      }

      if (v14 >= v13)
      {
        v14 = v13;
      }

      v15 = v14 / v13;
      self->_elapsedTime = v14;
      *&v15 = v15;

      [(VMDetailSlider *)self setValue:animatedCopy animated:v15];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [(VMDetailSlider *)self thumbHitRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [touchCopy locationInView:self];
  v24.x = v16;
  v24.y = v17;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  if (CGRectContainsPoint(v25, v24))
  {
    detailScrubController = [(VMDetailSlider *)self detailScrubController];
    v19 = [detailScrubController beginTrackingWithTouch:touchCopy withEvent:eventCopy];

    delegate = [(VMDetailSlider *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(VMDetailSlider *)self delegate];
      [delegate2 detailSliderTrackingDidBegin:self];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  detailScrubController = [(VMDetailSlider *)self detailScrubController];
  isTracking = [detailScrubController isTracking];

  if (isTracking)
  {
    detailScrubController2 = [(VMDetailSlider *)self detailScrubController];
    [detailScrubController2 cancelTrackingWithEvent:eventCopy];

    delegate = [(VMDetailSlider *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(VMDetailSlider *)self delegate];
      [delegate2 detailSliderTrackingDidCancel:self];
    }
  }
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  if ([(VMDetailSlider *)self isContinuous])
  {
    [(VMDetailSlider *)self sendActionsForControlEvents:4096];
  }

  detailScrubController = [(VMDetailSlider *)self detailScrubController];
  v9 = [detailScrubController continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v9;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  detailScrubController = [(VMDetailSlider *)self detailScrubController];
  isTracking = [detailScrubController isTracking];

  if (isTracking)
  {
    detailScrubController2 = [(VMDetailSlider *)self detailScrubController];
    [detailScrubController2 endTrackingWithTouch:touchCopy withEvent:eventCopy];

    delegate = [(VMDetailSlider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(VMDetailSlider *)self delegate];
      [delegate2 detailSliderTrackingDidEnd:self];
    }
  }
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v4 setValue:animated animated:*&value, 0.0];
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 3.0;
  }

  v13.receiver = self;
  v13.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v13 trackRectForBounds:x, y, width, height];
  v12 = (height - v8) * 0.5;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v9;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  if ([(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
  {
    v12 = 12.0;
  }

  else
  {
    v12 = 6.0;
  }

  v20.receiver = self;
  v20.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v20 thumbRectForBounds:v10 trackRect:v9 value:v8, v7, x, y, width, height, LODWORD(value)];
  v16 = (v7 - v12) * 0.5;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v16;
  result.origin.x = v13;
  return result;
}

- (CGRect)thumbHitRect
{
  [(VMDetailSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VMDetailSlider *)self bounds];
  [(VMDetailSlider *)self trackRectForBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(VMDetailSlider *)self value];
  LODWORD(v24) = v19;
  [(VMDetailSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v12, v14, v16, v18, v24];

  return CGRectInset(*&v20, -15.0, -15.0);
}

- (void)detailScrubController:(id)controller didChangeValue:(float)value
{
  [(VMDetailSlider *)self setElapsedTime:0 animated:1 force:value];
  delegate = [(VMDetailSlider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(VMDetailSlider *)self delegate];
    [(VMDetailSlider *)self elapsedTime];
    [delegate2 detailSlider:self didChangeElapsedTime:?];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(VMDetailSlider *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];
    if (isPreferredContentSizeCategoryAccessible != [(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
    {
      [(VMDetailSlider *)self setAccessibilityConstraintsEnabled:isPreferredContentSizeCategoryAccessible];
      [(VMDetailSlider *)self updateTrackImages];
      [(VMDetailSlider *)self setNeedsLayout];
    }
  }

  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle != [changeCopy userInterfaceStyle] && objc_msgSend(traitCollection, "userInterfaceStyle"))
  {
    [(VMDetailSlider *)self updateTrackImages];
    [(VMDetailSlider *)self setNeedsLayout];
  }
}

- (void)updateTrackImages
{
  [(VMDetailSlider *)self updateMinimumTrackImage];

  [(VMDetailSlider *)self updateMaximumTrackImage];
}

- (void)updateMaximumTrackImage
{
  maxTrackColor = [(VMDetailSlider *)self maxTrackColor];
  if ([(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;
  v12.width = v3;
  v12.height = v3;
  UIGraphicsBeginImageContextWithOptions(v12, 0, v6);

  [maxTrackColor setFill];
  v7 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v3, v3 / 3.0];
  [v7 fill];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  v9 = [v8 resizableImageWithCapInsets:{v3 / 3.0, v3 / 3.0, v3 / 3.0, v3 / 3.0}];
  [(VMDetailSlider *)self setMaximumTrackImage:v9 forState:0];
}

- (void)updateMinimumTrackImage
{
  trackColor = [(VMDetailSlider *)self trackColor];
  if ([(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;
  v12.width = v3;
  v12.height = v3;
  UIGraphicsBeginImageContextWithOptions(v12, 0, v6);

  [trackColor setFill];
  v7 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v3, v3 / 3.0];
  [v7 fill];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  v9 = [v8 resizableImageWithCapInsets:{v3 / 3.0, v3 / 3.0, v3 / 3.0, v3 / 3.0}];
  [(VMDetailSlider *)self setMinimumTrackImage:v9 forState:0];
}

- (id)maxTrackColor
{
  traitCollection = [(VMDetailSlider *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v4 = 0.0;
  if (userInterfaceStyle == 2)
  {
    v4 = 1.0;
  }

  v5 = [UIColor colorWithWhite:v4 alpha:0.1];

  return v5;
}

- (void)tintColorDidChange
{
  v2.receiver = self;
  v2.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v2 tintColorDidChange];
}

- (VMDetailSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end