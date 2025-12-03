@interface IMCustomSlider
- (BOOL)_controlScrubbing;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)offset;
- (CGPoint)tapPosition;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (IMCustomSlider)initWithCoder:(id)coder;
- (IMCustomSlider)initWithFrame:(CGRect)frame;
- (IMCustomSliderDelegate)delegate;
- (UIEdgeInsets)touchInsets;
- (float)_scaleForIdealValueForVerticalPosition:(double)position;
- (float)_scaleForVerticalPosition:(double)position;
- (id)_imageForKey:(id)key forState:(unint64_t)state;
- (void)_setImage:(id)image key:(id)key forState:(unint64_t)state;
- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setThumb:(id)thumb;
- (void)setTrackBreadcrumbImage:(id)image forState:(unint64_t)state;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateFactor:(double)factor;
@end

@implementation IMCustomSlider

- (IMCustomSlider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IMCustomSlider;
  result = [(IMCustomSlider *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_fineScrubbingVerticalRange = 220.0;
  }

  return result;
}

- (IMCustomSlider)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = IMCustomSlider;
  v3 = [(IMCustomSlider *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_fineScrubbingVerticalRange = 220.0;
    v3->_tapToPosition = 0;
    v3->_trackingTapPosition = 0;
    if (_UISolariumEnabled())
    {
      v5 = objc_opt_new();
      [v5 setExpansionFactor:1.0];
      [v5 setDelegate:v4];
      [v5 setStretchLimit:0.0];
      [(IMCustomSlider *)v4 _setSliderStyle:110];
      [(IMCustomSlider *)v4 _setSliderConfiguration:v5];
    }
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  thumb = self->_thumb;
  self->_thumb = 0;

  perStateContent = self->_perStateContent;
  self->_perStateContent = 0;

  [(CALayer *)self->_breadcrumbLayer removeFromSuperlayer];
  v5.receiver = self;
  v5.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v5 dealloc];
}

- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location
{
  if (self->_tapToPosition)
  {
    self->_trackingTapPosition = 1;
    self->_tapPosition = location;
  }
}

- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location
{
  if (vabdd_f64(self->_tapPosition.x, location.x) >= 0.00999999978 || vabdd_f64(self->_tapPosition.y, location.y) >= 0.00999999978)
  {
    self->_trackingTapPosition = 0;
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  endCopy = end;
  if (self->_tapToPosition && self->_trackingTapPosition)
  {
    v10 = endCopy;
    v5 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(IMCustomSlider *)self semanticContentAttribute]]== &dword_0 + 1;
    [(IMCustomSlider *)self minimumValue];
    v7 = v6;
    [(IMCustomSlider *)self maximumValue];
    *&v9 = sub_17EF44(self, v5, self->_tapPosition.x, self->_tapPosition.y, v7, v8);
    [(IMCustomSlider *)self setValue:0 animated:v9];
    [(IMCustomSlider *)self sendActionsForControlEvents:4096];
    endCopy = v10;
  }

  self->_trackingTapPosition = 0;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v36 layoutSubviews];
  breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
  if (breadcrumbLayer)
  {
    [(IMCustomSlider *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(IMCustomSlider *)self trackRectForBounds:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(IMCustomSlider *)self value];
    LODWORD(v34) = v20;
    v35 = v15;
    [(IMCustomSlider *)self thumbRectForBounds:v5 trackRect:v7 value:v9, v11, v13, v15, v17, v19, v34];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(IMCustomSlider *)self breadcrumbValue];
    v30 = v13 + v29 * v17;
    v37.origin.x = v22;
    v37.origin.y = v24;
    v37.size.width = v26;
    v37.size.height = v28;
    if (v30 >= CGRectGetMinX(v37))
    {
      v39.origin.x = v22;
      v39.origin.y = v24;
      v39.size.width = v26;
      v39.size.height = v28;
      MaxX = CGRectGetMaxX(v39);
      v40.origin.x = v22;
      v40.origin.y = v24;
      v40.size.width = v26;
      v40.size.height = v28;
      v31 = v30 - CGRectGetMaxX(v40);
      v30 = MaxX;
    }

    else
    {
      v38.origin.x = v22;
      v38.origin.y = v24;
      v38.size.width = v26;
      v38.size.height = v28;
      v31 = CGRectGetMinX(v38) - v30;
    }

    v33 = fmax(v31, 0.0);
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [breadcrumbLayer setFrame:{v30, v35, v33, v19}];
    +[CATransaction commit];
  }
}

- (void)setThumb:(id)thumb
{
  thumbCopy = thumb;
  if (self->_thumb != thumbCopy)
  {
    v6 = thumbCopy;
    objc_storeStrong(&self->_thumb, thumb);
    [(IMCustomSlider *)self setThumbImage:v6 forState:0];
    thumbCopy = [(IMCustomSlider *)self setThumbImage:v6 forState:1];
  }

  _objc_release_x2(thumbCopy);
}

- (void)setTrackBreadcrumbImage:(id)image forState:(unint64_t)state
{
  [(IMCustomSlider *)self _setImage:image key:@"breadcrumbImage" forState:state];
  v8 = [(IMCustomSlider *)self trackBreadcrumbImageForState:[(IMCustomSlider *)self state]];
  v5 = v8;
  cGImage = [v8 CGImage];
  breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
  [breadcrumbLayer setContents:cGImage];
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  v27.receiver = self;
  v27.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v27 thumbRectForBounds:bounds.origin.x trackRect:bounds.origin.y value:bounds.size.width, bounds.size.height, rect.origin.x, rect.origin.y, LODWORD(value)];
  x = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (_UISolariumEnabled() && [(IMCustomSlider *)self _sliderStyle]== &stru_68.sectname[6])
  {
    x = width * value;
    v16 = height * 0.5;
    v13 = 1.0;
    v15 = 1.0;
  }

  else
  {
    p_offset = &self->_offset;
    if (self->_offset.x != 0.0)
    {
      [(IMCustomSlider *)self maximumValue];
      v19 = v18 * 0.5;
      if ((v18 * 0.5) == 0.0)
      {
        x = p_offset->x;
      }

      else
      {
        v20 = v19;
        valueCopy = value;
        v22 = p_offset->x;
        if (v19 >= value)
        {
          x = x - v22 * (1.0 - valueCopy / v20);
        }

        else
        {
          x = x + (valueCopy - v20) * v22 / v20;
        }
      }
    }

    v16 = v11 + self->_offset.y;
  }

  v23 = x;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v16;
  result.origin.x = v23;
  return result;
}

- (float)_scaleForIdealValueForVerticalPosition:(double)position
{
  fineScrubbing = [(IMCustomSlider *)self fineScrubbing];
  LODWORD(v6) = 1.0;
  if (fineScrubbing)
  {
    [(IMCustomSlider *)self fineScrubbingVerticalRange];
    v8 = vabdd_f64(position, self->_beginLocation.y);
    if (v7 >= v8)
    {
      v7 = v8;
    }

    v9 = fmax(v7, 20.0) + -20.0;
    v10 = v9;
    [(IMCustomSlider *)self fineScrubbingVerticalRange];
    v12 = v10 / (v11 + -20.0);
    if (v12 <= 0.15)
    {
      v12 = v12 / 0.15;
      v13 = 0.33333;
    }

    else
    {
      v13 = 0.025;
    }

    v14 = 1.0 - fmaxf(powf(v12, v13), 0.0);
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    *&v6 = fmaxf(v14, 0.0);
  }

  return *&v6;
}

- (float)_scaleForVerticalPosition:(double)position
{
  fineScrubbing = [(IMCustomSlider *)self fineScrubbing];
  result = 1.0;
  if (fineScrubbing)
  {
    if (isPad())
    {
      v7 = 20.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(IMCustomSlider *)self fineScrubbingVerticalRange];
    v9 = vabdd_f64(position, self->_beginLocation.y);
    if (v8 >= v9)
    {
      v8 = v9;
    }

    if (v7 >= v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (isPad())
    {
      v11 = 20.0;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v10 - v11;
    v13 = v12;
    [(IMCustomSlider *)self fineScrubbingVerticalRange];
    v15 = v14;
    if (isPad())
    {
      v16 = 20.0;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = v13 / (v15 - v16);
    result = 1.0 - v17;
    if (result < 0.09)
    {
      return 0.09;
    }
  }

  return result;
}

- (void)updateFactor:(double)factor
{
  self->_factor = factor;
  *&factor = factor;
  [(IMCustomSlider *)self _setSliderSpeedMultiplier:factor];
  factor = self->_factor;
  if (factor <= 0.1)
  {
    v5 = 3;
  }

  else if (factor > 0.35 || factor <= 0.1)
  {
    v5 = factor > 0.35 && factor <= 0.75;
  }

  else
  {
    v5 = 2;
  }

  if (v5 != self->_speed)
  {
    self->_speed = v5;
    delegate = [(IMCustomSlider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate fineScrubSpeedChanged:self];
    }
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(IMCustomSlider *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v25.receiver = self;
  v25.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v25 touchesMoved:movedCopy withEvent:event];
  if (_UISolariumEnabled())
  {
    trackingTouches = [(IMCustomSlider *)self trackingTouches];
    anyObject = [movedCopy anyObject];
    [(IMCustomSlider *)self setTrackingTouches:1];
    if (trackingTouches)
    {
      if (anyObject)
      {
        [anyObject locationInView:self];
        v10 = v9;
        v12 = v11;
        [(IMCustomSlider *)self _scaleForVerticalPosition:v11];
        [(IMCustomSlider *)self updateFactor:v13];
        self->_previousLocation.x = v10;
        self->_previousLocation.y = v12;
      }
    }

    else
    {
      v14 = [(IMCustomSlider *)self trackBreadcrumbImageForState:[(IMCustomSlider *)self state]];
      if (v14)
      {
        [(IMCustomSlider *)self value];
        [(IMCustomSlider *)self setBreadcrumbValue:?];
        v15 = +[CALayer layer];
        [v15 setContents:{objc_msgSend(v14, "CGImage")}];
        layer = [(IMCustomSlider *)self layer];
        [layer addSublayer:v15];

        [(IMCustomSlider *)self setBreadcrumbLayer:v15];
      }

      highlightedThumb = [(IMCustomSlider *)self highlightedThumb];

      if (highlightedThumb)
      {
        highlightedThumb2 = [(IMCustomSlider *)self highlightedThumb];
        [(IMCustomSlider *)self setThumbImage:highlightedThumb2 forState:0];

        highlightedThumb3 = [(IMCustomSlider *)self highlightedThumb];
        [(IMCustomSlider *)self setThumbImage:highlightedThumb3 forState:1];
      }

      if ([(IMCustomSlider *)self _controlScrubbing]&& anyObject)
      {
        [anyObject locationInView:self];
        self->_previousLocation.x = v20;
        self->_previousLocation.y = v21;
        self->_beginLocation = self->_previousLocation;
        [(IMCustomSlider *)self updateFactor:1.0];
      }

      delegate = [(IMCustomSlider *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate2 = [(IMCustomSlider *)self delegate];
        [delegate2 beginTracking:self];
      }
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v18.receiver = self;
  v18.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v18 touchesEnded:endedCopy withEvent:event];
  if (_UISolariumEnabled())
  {
    anyObject = [endedCopy anyObject];
    if (anyObject)
    {
      if (![(IMCustomSlider *)self trackingTouches])
      {
        delegate = [(IMCustomSlider *)self delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          delegate2 = [(IMCustomSlider *)self delegate];
          [anyObject locationInView:self];
          [delegate2 tapped:self atLocation:?];
        }
      }
    }

    highlightedThumb = [(IMCustomSlider *)self highlightedThumb];

    if (highlightedThumb)
    {
      thumb = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb forState:0];

      thumb2 = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb2 forState:1];
    }

    if ([(IMCustomSlider *)self trackingTouches])
    {
      delegate3 = [(IMCustomSlider *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate4 = [(IMCustomSlider *)self delegate];
        [delegate4 endTracking:self];
      }
    }

    breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
    [breadcrumbLayer removeFromSuperlayer];

    [(IMCustomSlider *)self setBreadcrumbLayer:0];
    [(IMCustomSlider *)self setTrackingTouches:0];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = IMCustomSlider;
  [(IMCustomSlider *)&v12 touchesCancelled:cancelled withEvent:event];
  if (_UISolariumEnabled())
  {
    breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
    [breadcrumbLayer removeFromSuperlayer];

    [(IMCustomSlider *)self setBreadcrumbLayer:0];
    highlightedThumb = [(IMCustomSlider *)self highlightedThumb];

    if (highlightedThumb)
    {
      thumb = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb forState:0];

      thumb2 = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb2 forState:1];
    }

    if ([(IMCustomSlider *)self trackingTouches])
    {
      delegate = [(IMCustomSlider *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [(IMCustomSlider *)self delegate];
        [delegate2 endTracking:self];
      }
    }

    [(IMCustomSlider *)self setTrackingTouches:0];
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  v19.receiver = self;
  v19.super_class = IMCustomSlider;
  v7 = [(IMCustomSlider *)&v19 beginTrackingWithTouch:touchCopy withEvent:event];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    delegate = [(IMCustomSlider *)self delegate];
    if (v7)
    {
      v9 = [(IMCustomSlider *)self trackBreadcrumbImageForState:[(IMCustomSlider *)self state]];
      if (v9)
      {
        [(IMCustomSlider *)self value];
        [(IMCustomSlider *)self setBreadcrumbValue:?];
        v10 = +[CALayer layer];
        [v10 setContents:{objc_msgSend(v9, "CGImage")}];
        layer = [(IMCustomSlider *)self layer];
        [layer addSublayer:v10];

        [(IMCustomSlider *)self setBreadcrumbLayer:v10];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [touchCopy locationInView:self];
      [delegate tapped:self atLocation:?];
    }

    highlightedThumb = [(IMCustomSlider *)self highlightedThumb];
    v13 = highlightedThumb != 0 && v7;

    if (v13 == 1)
    {
      highlightedThumb2 = [(IMCustomSlider *)self highlightedThumb];
      [(IMCustomSlider *)self setThumbImage:highlightedThumb2 forState:0];

      highlightedThumb3 = [(IMCustomSlider *)self highlightedThumb];
      [(IMCustomSlider *)self setThumbImage:highlightedThumb3 forState:1];
    }

    if (v7)
    {
      if ([(IMCustomSlider *)self _controlScrubbing])
      {
        [touchCopy locationInView:self];
        self->_previousLocation.x = v16;
        self->_previousLocation.y = v17;
        self->_beginLocation = self->_previousLocation;
        [(IMCustomSlider *)self updateFactor:1.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate beginTracking:self];
      }
    }
  }

  return v7;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([(IMCustomSlider *)self _controlScrubbing]&& !_UISolariumEnabled())
  {
    if ([(IMCustomSlider *)self isTracking])
    {
      [touchCopy locationInView:self];
      v10 = v9;
      v12 = v11;
      [(IMCustomSlider *)self _scaleForVerticalPosition:v11];
      v14 = v13;
      [(IMCustomSlider *)self updateFactor:v13];
      v15 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(IMCustomSlider *)self semanticContentAttribute]];
      v16 = v10 - self->_previousLocation.x;
      [(IMCustomSlider *)self maximumValue];
      v18 = v17;
      [(IMCustomSlider *)self minimumValue];
      v20 = (v18 - v19);
      [(IMCustomSlider *)self bounds];
      [(IMCustomSlider *)self trackRectForBounds:?];
      v21 = v16 * (v20 / CGRectGetWidth(v43));
      if (v15 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v22 = -v21;
      }

      else
      {
        v22 = v21;
      }

      [(IMCustomSlider *)self value];
      v24 = v23;
      v25 = v23 + v22 * v14;
      y = self->_previousLocation.y;
      v27 = v12 - y;
      v28 = v12 - y < 0.0;
      v29 = v12 > y;
      v30 = -(v12 - y);
      if (v29 && v28)
      {
        v12 = -v12;
      }

      else
      {
        v30 = v27;
      }

      if (v30 > 0.0)
      {
        [(IMCustomSlider *)self minimumValue];
        v32 = v31;
        [(IMCustomSlider *)self maximumValue];
        v34 = sub_17EF44(self, v15 == UIUserInterfaceLayoutDirectionRightToLeft, v10, v12, v32, v33) - v24;
        [(IMCustomSlider *)self _scaleForIdealValueForVerticalPosition:v12];
        v25 = v25 + (v34 * v35);
      }

      [(IMCustomSlider *)self minimumValue];
      v37 = v36;
      [(IMCustomSlider *)self maximumValue];
      v39 = v38;
      if (v25 <= v39)
      {
        v39 = v25;
      }

      if (v39 <= v37)
      {
        *&v39 = v37;
      }

      else
      {
        *&v39 = v39;
      }

      [(IMCustomSlider *)self setValue:0 animated:v39];
      [(IMCustomSlider *)self sendActionsForControlEvents:4096];
      self->_previousLocation.x = v10;
      self->_previousLocation.y = v12;
    }

    isTracking = [(IMCustomSlider *)self isTracking];
  }

  else
  {
    v42.receiver = self;
    v42.super_class = IMCustomSlider;
    isTracking = [(IMCustomSlider *)&v42 continueTrackingWithTouch:touchCopy withEvent:eventCopy];
  }

  v40 = isTracking;

  return v40;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if (_UISolariumEnabled())
  {
    v14.receiver = self;
    v14.super_class = IMCustomSlider;
    [(IMCustomSlider *)&v14 endTrackingWithTouch:touchCopy withEvent:eventCopy];
  }

  else
  {
    highlightedThumb = [(IMCustomSlider *)self highlightedThumb];

    if (highlightedThumb)
    {
      thumb = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb forState:0];

      thumb2 = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb2 forState:1];
    }

    delegate = [(IMCustomSlider *)self delegate];
    if ([(IMCustomSlider *)self isTracking]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate endTracking:self];
    }

    breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
    [breadcrumbLayer removeFromSuperlayer];

    [(IMCustomSlider *)self setBreadcrumbLayer:0];
    if (![(IMCustomSlider *)self _controlScrubbing])
    {
      v13.receiver = self;
      v13.super_class = IMCustomSlider;
      [(IMCustomSlider *)&v13 endTrackingWithTouch:touchCopy withEvent:eventCopy];
    }
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  if (_UISolariumEnabled())
  {
    v9.receiver = self;
    v9.super_class = IMCustomSlider;
    [(IMCustomSlider *)&v9 cancelTrackingWithEvent:eventCopy];
  }

  else
  {
    breadcrumbLayer = [(IMCustomSlider *)self breadcrumbLayer];
    [breadcrumbLayer removeFromSuperlayer];

    [(IMCustomSlider *)self setBreadcrumbLayer:0];
    highlightedThumb = [(IMCustomSlider *)self highlightedThumb];

    if (highlightedThumb)
    {
      thumb = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb forState:0];

      thumb2 = [(IMCustomSlider *)self thumb];
      [(IMCustomSlider *)self setThumbImage:thumb2 forState:1];
    }
  }
}

- (id)_imageForKey:(id)key forState:(unint64_t)state
{
  keyCopy = key;
  perStateContent = [(IMCustomSlider *)self perStateContent];
  v8 = [NSNumber numberWithUnsignedInteger:state];
  v9 = [perStateContent objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:keyCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    perStateContent2 = [(IMCustomSlider *)self perStateContent];
    v14 = [perStateContent2 objectForKeyedSubscript:&off_2E6AB8];
    v12 = [v14 objectForKeyedSubscript:keyCopy];
  }

  return v12;
}

- (void)_setImage:(id)image key:(id)key forState:(unint64_t)state
{
  imageCopy = image;
  keyCopy = key;
  perStateContent = [(IMCustomSlider *)self perStateContent];

  if (!perStateContent)
  {
    v10 = +[NSMutableDictionary dictionary];
    [(IMCustomSlider *)self setPerStateContent:v10];
  }

  perStateContent2 = [(IMCustomSlider *)self perStateContent];
  v12 = [NSNumber numberWithUnsignedInteger:state];
  v13 = [perStateContent2 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = +[NSMutableDictionary dictionary];
    perStateContent3 = [(IMCustomSlider *)self perStateContent];
    v15 = [NSNumber numberWithUnsignedInteger:state];
    [perStateContent3 setObject:v13 forKeyedSubscript:v15];
  }

  [v13 setObject:imageCopy forKeyedSubscript:keyCopy];
}

- (BOOL)_controlScrubbing
{
  if ([(IMCustomSlider *)self fineScrubbing])
  {
    return 1;
  }

  return [(IMCustomSlider *)self scrubToPointingDevice];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (IMCustomSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)tapPosition
{
  x = self->_tapPosition.x;
  y = self->_tapPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end