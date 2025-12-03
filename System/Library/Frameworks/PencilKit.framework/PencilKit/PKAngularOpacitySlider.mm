@interface PKAngularOpacitySlider
+ (void)_layoutGradientMaskLayer:(double)layer frame:(double)frame isReversed:(uint64_t)reversed;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)result;
- (_PKColorAlphaSliderDelegate)delegate;
- (double)_angleForSliderKnobPosition:(double)position;
- (double)_colorAlphaForSliderKnobAngle:(double *)angle;
- (double)_knobViewFrameForColorAlpha:(uint64_t)alpha;
- (double)initWithFrame:(double)frame startAngle:(double)angle endAngle:(double)endAngle arcRadius:(double)radius arcWidth:(double)width;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_colorViewTapGestureHandler:(id)handler;
- (void)_didPanSliderKnob:(id)knob;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColor:(id)color animated:(BOOL)animated;
- (void)setColorUserInterfaceStyle:(int64_t)style;
@end

@implementation PKAngularOpacitySlider

- (double)initWithFrame:(double)frame startAngle:(double)angle endAngle:(double)endAngle arcRadius:(double)radius arcWidth:(double)width
{
  if (!self)
  {
    return 0;
  }

  v39.receiver = self;
  v39.super_class = PKAngularOpacitySlider;
  v13 = objc_msgSendSuper2(&v39, sel_initWithFrame_);
  v14 = v13;
  if (v13)
  {
    v13[57] = radius;
    v13[58] = width;
    v13[59] = a8;
    v13[60] = a9;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v16 = *(v14 + 52);
    *(v14 + 52) = blackColor;

    v14[56] = 0.0;
    v14[55] = 1.0;
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    if (_UISolariumEnabled())
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithWhite:0.95 alpha:1.0];
    }
    v18 = ;
    v19 = [[_PKCheckerGridView alloc] initWithTileSize:v17 colorA:v18 colorB:a9 / 3.0];
    v20 = *(v14 + 63);
    *(v14 + 63) = v19;

    [*(v14 + 63) setUserInteractionEnabled:0];
    [v14 addSubview:*(v14 + 63)];
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v22 = *(v14 + 61);
    *(v14 + 61) = v21;

    [v14 addSubview:*(v14 + 61)];
    v23 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v14 action:sel__colorViewTapGestureHandler_];
    [v23 setDelegate:v14];
    [*(v14 + 61) addGestureRecognizer:v23];
    v24 = objc_alloc_init(MEMORY[0x1E6979380]);
    v25 = *(v14 + 62);
    *(v14 + 62) = v24;

    [*(v14 + 62) setType:*MEMORY[0x1E6979DA8]];
    [*(v14 + 62) setStartPoint:{0.5, 0.5}];
    [*(v14 + 62) setEndPoint:{0.5, 1.0}];
    v26 = *(v14 + 62);
    layer = [*(v14 + 61) layer];
    [layer setMask:v26];

    v28 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v29 = *(v14 + 66);
    *(v14 + 66) = v28;

    [*(v14 + 66) setLineCap:*MEMORY[0x1E6979E78]];
    [*(v14 + 66) setStrokeStart:0.0];
    [*(v14 + 66) setStrokeEnd:1.0];
    [*(v14 + 66) setFillColor:0];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [*(v14 + 66) setStrokeColor:{objc_msgSend(blackColor2, "CGColor")}];

    v31 = *(v14 + 66);
    layer2 = [v14 layer];
    [layer2 setMask:v31];

    layer3 = [v14 layer];
    [layer3 setMasksToBounds:1];

    v34 = [PKPerforatedOpacitySliderKnobView alloc];
    v35 = [(PKPerforatedOpacitySliderKnobView *)v34 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v36 = *(v14 + 65);
    *(v14 + 65) = v35;

    [v14 addSubview:*(v14 + 65)];
    v37 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v14 action:sel__didPanSliderKnob_];
    [v37 setMinimumPressDuration:0.0];
    [v37 setAllowableMovement:1.79769313e308];
    [*(v14 + 65) addGestureRecognizer:v37];
    [*(v14 + 65) setAccessibilityIdentifier:@"OpacitySliderKnob"];
    [v14 setAccessibilityIdentifier:@"Opacity"];
    [v14 setAccessibilityLabel:@"Opacity"];
  }

  return v14;
}

- (void)dealloc
{
  baseShapeLayerPathForHitTesting = self->_baseShapeLayerPathForHitTesting;
  if (baseShapeLayerPathForHitTesting)
  {
    CGPathRelease(baseShapeLayerPathForHitTesting);
    self->_baseShapeLayerPathForHitTesting = 0;
  }

  v4.receiver = self;
  v4.super_class = PKAngularOpacitySlider;
  [(PKAngularOpacitySlider *)&v4 dealloc];
}

- (void)setColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  color = [(PKAngularOpacitySlider *)self color];
  [color alphaComponent];
  v9 = v8;

  v10 = colorCopy;
  if (self && ([(UIColor *)self->_color isEqual:v10]& 1) == 0)
  {
    v11 = [_PKColorAlphaSliderIOS rgbaColorFromColorIfPossible:v10];
    [v10 alphaComponent];
    v13 = v12;
    [(PKAngularOpacitySlider *)self minAlpha];
    v15 = fmax(v13, v14);
    [(PKAngularOpacitySlider *)self maxAlpha];
    v17 = [v11 colorWithAlphaComponent:{fmin(v15, v16)}];
    color = self->_color;
    self->_color = v17;
  }

  [(PKAngularOpacitySlider *)self setNeedsLayout];
  if (animatedCopy)
  {
    [v10 alphaComponent];
    v20 = vabdd_f64(*&v9, v19);
    v21 = *&v9 <= v19;
    v22 = v20 * 0.0666666667;
    v23 = fmax(v20 / 0.01, 1.0);
    objc_initWeak(&location, self);
    v24 = MEMORY[0x1E69DD250];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __44__PKAngularOpacitySlider_setColor_animated___block_invoke;
    v26[3] = &unk_1E82DC3C8;
    v27[1] = v23;
    v27[2] = v9;
    v28 = v21;
    v27[3] = 0x3F847AE147AE147BLL;
    objc_copyWeak(v27, &location);
    v26[4] = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__PKAngularOpacitySlider_setColor_animated___block_invoke_3;
    v25[3] = &unk_1E82D8F30;
    v25[4] = self;
    [v24 animateKeyframesWithDuration:6 delay:v26 options:v25 animations:v22 completion:0.0];
    objc_destroyWeak(v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKAngularOpacitySlider *)self layoutIfNeeded];
  }
}

void __44__PKAngularOpacitySlider_setColor_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E9820];
    do
    {
      v5 = -v3;
      if (*(a1 + 72))
      {
        v5 = v3;
      }

      v6 = *(a1 + 56) + v5 * *(a1 + 64);
      v7 = v3 / v1;
      v8 = MEMORY[0x1E69DD250];
      v10[0] = v4;
      v10[1] = 3221225472;
      v10[2] = __44__PKAngularOpacitySlider_setColor_animated___block_invoke_2;
      v10[3] = &unk_1E82DC3A0;
      v9 = 1.0 / v1;
      objc_copyWeak(v11, (a1 + 40));
      v10[4] = *(a1 + 32);
      v11[1] = *&v6;
      [v8 addKeyframeWithRelativeStartTime:v10 relativeDuration:v7 animations:v9];
      objc_destroyWeak(v11);
      ++v3;
      v1 = *(a1 + 48);
    }

    while (v3 < v1);
  }
}

void __44__PKAngularOpacitySlider_setColor_animated___block_invoke_2(uint64_t a1)
{
  v2 = [(PKAngularOpacitySlider *)*(a1 + 32) _knobViewFrameForColorAlpha:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained sliderKnob];
  [v9 setFrame:{v2, v4, v6, v8}];
}

- (double)_knobViewFrameForColorAlpha:(uint64_t)alpha
{
  if (!alpha)
  {
    return 0.0;
  }

  [alpha minAlpha];
  v5 = fmax(a2, v4);
  [alpha maxAlpha];
  v7 = fmin(v5, v6);
  [alpha minAlpha];
  v9 = v8;
  [alpha maxAlpha];
  v11 = *(alpha + 456) + (*(alpha + 464) - *(alpha + 456)) * ((a2 - v9) / (v10 - v9));
  [alpha bounds];
  UIRectGetCenter();
  PKPointOnArc(v12, v13, *(alpha + 472), v11);
  v14 = a2 - v7;
  v15 = 0.0;
  if (v14 != 0.0)
  {
    [_PKColorAlphaSliderIOS _outputForResistanceFunction:v14 factor:0.176776695];
    v15 = v16 * 44.0;
  }

  [*(alpha + 520) sizeThatFits:{*(alpha + 480), 1.79769313e308}];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectCenteredAboutPointScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  CGRectOffset(v30, v15, 0.0);
  traitCollection = [alpha traitCollection];
  [traitCollection displayScale];
  UIRectIntegralWithScale();
  v28 = v27;

  return v28;
}

- (void)layoutSubviews
{
  v54[2] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = PKAngularOpacitySlider;
  [(PKAngularOpacitySlider *)&v53 layoutSubviews];
  startAngle = 0.0;
  arcRadius = 0.0;
  if (self)
  {
    arcRadius = self->_arcRadius;
  }

  [(PKAngularOpacitySlider *)self bounds];
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  [(PKAngularOpacitySlider *)self bounds];
  CGRectGetWidth(v55);
  [(PKAngularOpacitySlider *)self bounds];
  CGRectGetHeight(v56);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectCenteredAboutPointScale();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  color = [(PKAngularOpacitySlider *)self color];
  colorView = [(PKAngularOpacitySlider *)self colorView];
  [colorView setFrame:{v11, v13, v15, v17}];
  [colorView _setContinuousCornerRadius:arcRadius];
  [colorView setClipsToBounds:1];
  v20 = [color colorWithAlphaComponent:1.0];
  [colorView setBackgroundColor:v20];

  colorViewMaskLayer = [(PKAngularOpacitySlider *)self colorViewMaskLayer];
  [colorView bounds];
  [(PKAngularOpacitySlider *)v22 _layoutGradientMaskLayer:v23 frame:v24 isReversed:v25, PKAngularOpacitySlider, colorViewMaskLayer];

  alphaGridView = [(PKAngularOpacitySlider *)self alphaGridView];
  [alphaGridView setFrame:{v11, v13, v15, v17}];
  [alphaGridView _setContinuousCornerRadius:arcRadius];
  [alphaGridView setClipsToBounds:1];
  alphaGridViewMaskLayer = [(PKAngularOpacitySlider *)self alphaGridViewMaskLayer];
  [alphaGridView bounds];
  [(PKAngularOpacitySlider *)v28 _layoutGradientMaskLayer:v29 frame:v30 isReversed:v31, PKAngularOpacitySlider, alphaGridViewMaskLayer];

  [color alphaComponent];
  v33 = [(PKAngularOpacitySlider *)self _knobViewFrameForColorAlpha:v32];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sliderKnob = [(PKAngularOpacitySlider *)self sliderKnob];
  [sliderKnob setFrame:{v33, v35, v37, v39}];

  arcWidth = 0.0;
  endAngle = 0.0;
  if (self)
  {
    arcWidth = self->_arcWidth;
    startAngle = self->_startAngle;
    endAngle = self->_endAngle;
  }

  baseShapeLayer = [(PKAngularOpacitySlider *)self baseShapeLayer];
  [baseShapeLayer setLineWidth:arcWidth];
  v44 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v6 startAngle:v8 endAngle:arcRadius clockwise:{startAngle, endAngle}];
  cGPath = [v44 CGPath];

  [baseShapeLayer setPath:cGPath];
  baseShapeLayerPathForHitTesting = self->_baseShapeLayerPathForHitTesting;
  if (baseShapeLayerPathForHitTesting)
  {
    CGPathRelease(baseShapeLayerPathForHitTesting);
    self->_baseShapeLayerPathForHitTesting = 0;
  }

  self->_baseShapeLayerPathForHitTesting = CGPathCreateCopyByStrokingPath(cGPath, 0, arcWidth, kCGLineCapRound, kCGLineJoinRound, 0.0);
  v47 = endAngle + -1.57079633;
  *&v47 = (startAngle + -1.57079633) / 6.28318531;
  v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
  v54[0] = v48;
  *&v49 = (endAngle + -1.57079633) / 6.28318531;
  v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
  v54[1] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  colorViewMaskLayer2 = [(PKAngularOpacitySlider *)self colorViewMaskLayer];
  [colorViewMaskLayer2 setLocations:v51];
}

+ (void)_layoutGradientMaskLayer:(double)layer frame:(double)frame isReversed:(uint64_t)reversed
{
  v16[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  objc_opt_self();
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v12 = [whiteColor colorWithAlphaComponent:0.0];
  v16[0] = [v12 CGColor];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v14 = [whiteColor2 colorWithAlphaComponent:1.0];
  v16[1] = [v14 CGColor];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v10 setColors:v15];

  [v10 setFrame:{self, a2, layer, frame}];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (self)
  {
    arcWidth = self->_arcWidth;
  }

  else
  {
    arcWidth = 0.0;
  }

  result.height = arcWidth;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v9.receiver = self;
  v9.super_class = PKAngularOpacitySlider;
  v7 = [(PKAngularOpacitySlider *)&v9 hitTest:event withEvent:?];
  if (!self || (v11.x = x, v11.y = y, !CGPathContainsPoint(self->_baseShapeLayerPathForHitTesting, 0, v11, 0)))
  {

    v7 = 0;
  }

  return v7;
}

- (void)_colorViewTapGestureHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy state] == 3)
  {
    view = [handlerCopy view];
    [handlerCopy locationInView:view];
    v6 = v5;
    v8 = v7;

    v9 = [(PKAngularOpacitySlider *)self _angleForSliderKnobPosition:v6, v8];
    v10 = [(PKAngularOpacitySlider *)self _colorAlphaForSliderKnobAngle:v9];
    color = [(PKAngularOpacitySlider *)self color];
    v12 = [color colorWithAlphaComponent:v10];
    [(PKAngularOpacitySlider *)self setColor:v12 animated:1];

    delegate = [(PKAngularOpacitySlider *)self delegate];
    [delegate _colorAlphaSliderUserDidChangeSlider:self];
  }
}

- (double)_angleForSliderKnobPosition:(double)position
{
  if (!self)
  {
    return 0.0;
  }

  [self bounds];
  UIRectGetCenter();
  v8 = atan2(position - v7, a2 - v6);
  v9 = fmod(v8, 6.28318531);
  if (v8 <= 6.28318531 && v8 >= 0.0)
  {
    v9 = v8;
  }

  if (v9 < 0.0)
  {
    v9 = v9 + 6.28318531;
  }

  if (v9 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9;
  }

  color = [self color];
  [color alphaComponent];
  v14 = v13;
  [self minAlpha];
  v16 = v15;
  [self maxAlpha];
  v18 = self[57] + (self[58] - self[57]) * ((v14 - v16) / (v17 - v16));

  v19 = v11 + 6.28318531;
  v20 = vabdd_f64(v11, v18);
  if (vabdd_f64(v11 + 6.28318531, v18) >= v20)
  {
    v19 = v11;
    if (vabdd_f64(v11 + -6.28318531, v18) < v20)
    {
      v19 = v11 + -6.28318531;
    }
  }

  return fmin(fmax(v19, self[57]), self[58]);
}

- (double)_colorAlphaForSliderKnobAngle:(double *)angle
{
  if (!angle)
  {
    return 0.0;
  }

  v3 = (a2 - angle[57]) / (angle[58] - angle[57]);
  [angle minAlpha];
  v5 = v4;
  [angle maxAlpha];
  return v6 * v3 + v5 * (1.0 - v3);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [touch locationInView:self];
  if (!self)
  {
    return 0;
  }

  baseShapeLayerPathForHitTesting = self->_baseShapeLayerPathForHitTesting;

  return CGPathContainsPoint(baseShapeLayerPathForHitTesting, 0, *&v5, 0);
}

- (void)_didPanSliderKnob:(id)knob
{
  knobCopy = knob;
  [knobCopy locationInView:self];
  v6 = [(PKAngularOpacitySlider *)self _angleForSliderKnobPosition:v4, v5];
  v7 = [(PKAngularOpacitySlider *)self _colorAlphaForSliderKnobAngle:v6];
  color = [(PKAngularOpacitySlider *)self color];
  v9 = [color colorWithAlphaComponent:v7];
  [(PKAngularOpacitySlider *)self setColor:v9];

  delegate = [(PKAngularOpacitySlider *)self delegate];
  if ([knobCopy state] == 1)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate _colorAlphaSliderUserDidStartDraggingSlider:self];
    }
  }

  else if ([knobCopy state] == 3 || objc_msgSend(knobCopy, "state") == 4 || objc_msgSend(knobCopy, "state") == 5) && delegate && (objc_opt_respondsToSelector())
  {
    [delegate _colorAlphaSliderUserDidEndDraggingSlider:self];
  }

  [delegate _colorAlphaSliderUserDidChangeSlider:self];
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKAngularOpacitySlider *)self setNeedsLayout];
  }
}

- (_PKColorAlphaSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end