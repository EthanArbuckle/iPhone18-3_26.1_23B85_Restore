@interface VMDetailSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)thumbHitRect;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (VMDetailSlider)initWithCoder:(id)a3;
- (VMDetailSlider)initWithFrame:(CGRect)a3;
- (VMDetailSliderDelegate)delegate;
- (id)maxTrackColor;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)commonInit;
- (void)detailScrubController:(id)a3 didChangeValue:(float)a4;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setElapsedTime:(double)a3 animated:(BOOL)a4 force:(BOOL)a5;
- (void)setMaximumTime:(double)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMaximumTrackImage;
- (void)updateMinimumTrackImage;
- (void)updateTrackImages;
@end

@implementation VMDetailSlider

- (VMDetailSlider)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VMDetailSlider;
  v3 = [(VMDetailSlider *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(VMDetailSlider *)v3 commonInit];
  }

  return v4;
}

- (VMDetailSlider)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VMDetailSlider;
  v3 = [(VMDetailSlider *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMDetailSlider *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [(VMDetailSlider *)self traitCollection];
  self->_accessibilityConstraintsEnabled = [v3 isPreferredContentSizeCategoryAccessible];

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

- (void)setMaximumTime:(double)a3
{
  v5 = [(VMDetailSlider *)self detailScrubController];
  v6 = [v5 isTracking];

  if ((v6 & 1) == 0 && vabdd_f64(self->_maximumTime, a3) > 2.22044605e-16)
  {
    self->_maximumTime = a3;
    v7 = [(VMDetailSlider *)self detailScrubController];
    [v7 setDuration:a3];
  }
}

- (void)setElapsedTime:(double)a3 animated:(BOOL)a4 force:(BOOL)a5
{
  v5 = a4;
  if (a5 || (-[VMDetailSlider detailScrubController](self, "detailScrubController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isTracking], v8, (v9 & 1) == 0))
  {
    v10 = a3;
    if (vabdd_f64(self->_elapsedTime, a3) > 2.22044605e-16)
    {
      [(VMDetailSlider *)self minimumTime];
      v12 = v11;
      [(VMDetailSlider *)self maximumTime];
      if (v12 >= v10)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v14 >= v13)
      {
        v14 = v13;
      }

      v15 = v14 / v13;
      self->_elapsedTime = v14;
      *&v15 = v15;

      [(VMDetailSlider *)self setValue:v5 animated:v15];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(VMDetailSlider *)self thumbHitRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 locationInView:self];
  v24.x = v16;
  v24.y = v17;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  if (CGRectContainsPoint(v25, v24))
  {
    v18 = [(VMDetailSlider *)self detailScrubController];
    v19 = [v18 beginTrackingWithTouch:v6 withEvent:v7];

    v20 = [(VMDetailSlider *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(VMDetailSlider *)self delegate];
      [v22 detailSliderTrackingDidBegin:self];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v10 = a3;
  v4 = [(VMDetailSlider *)self detailScrubController];
  v5 = [v4 isTracking];

  if (v5)
  {
    v6 = [(VMDetailSlider *)self detailScrubController];
    [v6 cancelTrackingWithEvent:v10];

    v7 = [(VMDetailSlider *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(VMDetailSlider *)self delegate];
      [v9 detailSliderTrackingDidCancel:self];
    }
  }
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(VMDetailSlider *)self isContinuous])
  {
    [(VMDetailSlider *)self sendActionsForControlEvents:4096];
  }

  v8 = [(VMDetailSlider *)self detailScrubController];
  v9 = [v8 continueTrackingWithTouch:v7 withEvent:v6];

  return v9;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(VMDetailSlider *)self detailScrubController];
  v8 = [v7 isTracking];

  if (v8)
  {
    v9 = [(VMDetailSlider *)self detailScrubController];
    [v9 endTrackingWithTouch:v13 withEvent:v6];

    v10 = [(VMDetailSlider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(VMDetailSlider *)self delegate];
      [v12 detailSliderTrackingDidEnd:self];
    }
  }
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v4 setValue:a4 animated:*&a3, 0.0];
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
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
  [(VMDetailSlider *)&v20 thumbRectForBounds:v10 trackRect:v9 value:v8, v7, x, y, width, height, LODWORD(a5)];
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

- (void)detailScrubController:(id)a3 didChangeValue:(float)a4
{
  [(VMDetailSlider *)self setElapsedTime:0 animated:1 force:a4];
  v5 = [(VMDetailSlider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(VMDetailSlider *)self delegate];
    [(VMDetailSlider *)self elapsedTime];
    [v7 detailSlider:self didChangeElapsedTime:?];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VMDetailSlider;
  [(VMDetailSlider *)&v10 traitCollectionDidChange:v4];
  v5 = [(VMDetailSlider *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [v5 isPreferredContentSizeCategoryAccessible];
    if (v8 != [(VMDetailSlider *)self isAccessibilityConstraintsEnabled])
    {
      [(VMDetailSlider *)self setAccessibilityConstraintsEnabled:v8];
      [(VMDetailSlider *)self updateTrackImages];
      [(VMDetailSlider *)self setNeedsLayout];
    }
  }

  v9 = [v5 userInterfaceStyle];
  if (v9 != [v4 userInterfaceStyle] && objc_msgSend(v5, "userInterfaceStyle"))
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
  v10 = [(VMDetailSlider *)self maxTrackColor];
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

  [v10 setFill];
  v7 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v3, v3 / 3.0];
  [v7 fill];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  v9 = [v8 resizableImageWithCapInsets:{v3 / 3.0, v3 / 3.0, v3 / 3.0, v3 / 3.0}];
  [(VMDetailSlider *)self setMaximumTrackImage:v9 forState:0];
}

- (void)updateMinimumTrackImage
{
  v10 = [(VMDetailSlider *)self trackColor];
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

  [v10 setFill];
  v7 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v3, v3 / 3.0];
  [v7 fill];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  v9 = [v8 resizableImageWithCapInsets:{v3 / 3.0, v3 / 3.0, v3 / 3.0, v3 / 3.0}];
  [(VMDetailSlider *)self setMinimumTrackImage:v9 forState:0];
}

- (id)maxTrackColor
{
  v2 = [(VMDetailSlider *)self traitCollection];
  v3 = [v2 userInterfaceStyle];
  v4 = 0.0;
  if (v3 == 2)
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