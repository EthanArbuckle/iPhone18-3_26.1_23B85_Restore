@interface _PKColorAlphaSliderIOS
+ (double)_outputForResistanceFunction:(double)function factor:(double)factor;
+ (double)opacitySliderHeight;
+ (id)rgbaColorFromColorIfPossible:(id)possible;
+ (void)_layoutGradientMaskLayer:(id)layer frame:(CGRect)frame isReversed:(BOOL)reversed;
- (CGRect)_knobViewFrameForColorAlpha:(double)alpha;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_PKColorAlphaSliderDelegate)delegate;
- (_PKColorAlphaSliderIOS)initWithFrame:(CGRect)frame;
- (double)_sliderKnobViewWidth;
- (double)colorAlphaForSliderKnobXPosition:(double)position;
- (double)sliderKnobXPositionForColorAlpha:(double)alpha;
- (int64_t)_uiColorUserInterfaceStyle;
- (void)_colorViewTapGestureHandler:(id)handler;
- (void)_setColorNoLayout:(id)layout;
- (void)didPanSliderKnob:(id)knob;
- (void)layoutSubviews;
- (void)setColor:(id)color animated:(BOOL)animated;
- (void)setColorUserInterfaceStyle:(int64_t)style;
@end

@implementation _PKColorAlphaSliderIOS

+ (double)opacitySliderHeight
{
  v2 = _UISolariumEnabled();
  result = 36.0;
  if (!v2)
  {
    return 20.0;
  }

  return result;
}

- (_PKColorAlphaSliderIOS)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = _PKColorAlphaSliderIOS;
  v3 = [(_PKColorAlphaSliderIOS *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  color = v3->_color;
  v3->_color = blackColor;

  v3->_minAlpha = 0.0;
  v3->_maxAlpha = 1.0;
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.95 alpha:1.0];
  }
  v7 = ;
  v8 = [_PKCheckerGridView alloc];
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  v10 = [(_PKCheckerGridView *)v8 initWithTileSize:v6 colorA:v7 colorB:v9 / 3.0];
  alphaGridView = v3->_alphaGridView;
  v3->_alphaGridView = v10;

  [(_PKCheckerGridView *)v3->_alphaGridView setUserInteractionEnabled:0];
  [(_PKColorAlphaSliderIOS *)v3 addSubview:v3->_alphaGridView];
  v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
  colorView = v3->_colorView;
  v3->_colorView = v12;

  [(_PKColorAlphaSliderIOS *)v3 addSubview:v3->_colorView];
  v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__colorViewTapGestureHandler_];
  [(UIView *)v3->_colorView addGestureRecognizer:v14];
  v15 = objc_alloc_init(MEMORY[0x1E6979380]);
  alphaGridViewMaskLayer = v3->_alphaGridViewMaskLayer;
  v3->_alphaGridViewMaskLayer = v15;

  v17 = v3->_alphaGridViewMaskLayer;
  layer = [(_PKCheckerGridView *)v3->_alphaGridView layer];
  [layer setMask:v17];

  v19 = objc_alloc_init(MEMORY[0x1E6979380]);
  colorViewMaskLayer = v3->_colorViewMaskLayer;
  v3->_colorViewMaskLayer = v19;

  v21 = v3->_colorViewMaskLayer;
  layer2 = [(UIView *)v3->_colorView layer];
  [layer2 setMask:v21];

  v23 = _UISolariumEnabled();
  v24 = off_1E82D4810;
  if (!v23)
  {
    v24 = off_1E82D4EE0;
  }

  v25 = objc_alloc(*v24);
  v26 = [v25 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  sliderKnobView = v3->_sliderKnobView;
  v3->_sliderKnobView = v26;

  [(_PKColorAlphaSliderIOS *)v3 addSubview:v3->_sliderKnobView];
  v28 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel_didPanSliderKnob_];
  [v28 setMinimumPressDuration:0.0];
  [v28 setAllowableMovement:1.79769313e308];
  sliderKnobView = [(_PKColorAlphaSliderIOS *)v3 sliderKnobView];
  [sliderKnobView addGestureRecognizer:v28];

  [(UIView *)v3->_sliderKnobView setAccessibilityIdentifier:@"OpacitySliderKnob"];
  [(_PKColorAlphaSliderIOS *)v3 setAccessibilityIdentifier:@"Opacity"];

  return v3;
}

- (void)setColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  [(_PKColorAlphaSliderIOS *)self _setColorNoLayout:color];
  [(_PKColorAlphaSliderIOS *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___PKColorAlphaSliderIOS_setColor_animated___block_invoke;
  aBlock[3] = &unk_1E82D7148;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.0666666667 options:0.0 animations:1.0 completion:0.0];
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

- (void)_setColorNoLayout:(id)layout
{
  layoutCopy = layout;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    v4 = [objc_opt_class() rgbaColorFromColorIfPossible:layoutCopy];
    [layoutCopy alphaComponent];
    v6 = v5;
    [(_PKColorAlphaSliderIOS *)self minAlpha];
    v8 = fmax(v6, v7);
    [(_PKColorAlphaSliderIOS *)self maxAlpha];
    v10 = [v4 colorWithAlphaComponent:{fmin(v8, v9)}];
    color = self->_color;
    self->_color = v10;
  }
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = _PKColorAlphaSliderIOS;
  [(_PKColorAlphaSliderIOS *)&v51 layoutSubviews];
  [(_PKColorAlphaSliderIOS *)self bounds];
  CGRectGetWidth(v52);
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [(_PKColorAlphaSliderIOS *)self bounds];
  UIRectGetCenter();
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectCenteredAboutPointScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  colorView = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView setFrame:{v5, v7, v9, v11}];

  colorView2 = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView2 bounds];
  v14 = CGRectGetHeight(v53) * 0.5;
  colorView3 = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView3 _setContinuousCornerRadius:v14];

  colorView4 = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView4 setClipsToBounds:1];

  color = [(_PKColorAlphaSliderIOS *)self color];
  v18 = [PKInkingTool convertColor:color fromUserInterfaceStyle:1 to:[(_PKColorAlphaSliderIOS *)self _uiColorUserInterfaceStyle]];
  v19 = [v18 colorWithAlphaComponent:1.0];
  colorView5 = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView5 setBackgroundColor:v19];

  v21 = objc_opt_class();
  colorViewMaskLayer = [(_PKColorAlphaSliderIOS *)self colorViewMaskLayer];
  colorView6 = [(_PKColorAlphaSliderIOS *)self colorView];
  [colorView6 bounds];
  [v21 _layoutGradientMaskLayer:colorViewMaskLayer frame:0 isReversed:?];

  [(_PKColorAlphaSliderIOS *)self bounds];
  CGRectGetWidth(v54);
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [(_PKColorAlphaSliderIOS *)self bounds];
  UIRectGetCenter();
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  UIRectCenteredAboutPointScale();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  alphaGridView = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [alphaGridView setFrame:{v26, v28, v30, v32}];

  alphaGridView2 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [alphaGridView2 bounds];
  v35 = CGRectGetHeight(v55) * 0.5;
  alphaGridView3 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [alphaGridView3 _setContinuousCornerRadius:v35];

  alphaGridView4 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [alphaGridView4 setClipsToBounds:1];

  v38 = objc_opt_class();
  alphaGridViewMaskLayer = [(_PKColorAlphaSliderIOS *)self alphaGridViewMaskLayer];
  alphaGridView5 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [alphaGridView5 bounds];
  [v38 _layoutGradientMaskLayer:alphaGridViewMaskLayer frame:1 isReversed:?];

  color2 = [(_PKColorAlphaSliderIOS *)self color];
  [color2 alphaComponent];
  [(_PKColorAlphaSliderIOS *)self _knobViewFrameForColorAlpha:?];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sliderKnobView = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  [sliderKnobView setFrame:{v43, v45, v47, v49}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [_PKColorAlphaSliderIOS opacitySliderHeight:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_colorViewTapGestureHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy state] == 3)
  {
    view = [handlerCopy view];
    [handlerCopy locationInView:view];
    v6 = v5;

    [(_PKColorAlphaSliderIOS *)self colorAlphaForSliderKnobXPosition:v6];
    v8 = v7;
    color = [(_PKColorAlphaSliderIOS *)self color];
    v10 = [color colorWithAlphaComponent:v8];
    [(_PKColorAlphaSliderIOS *)self setColor:v10 animated:1];

    delegate = [(_PKColorAlphaSliderIOS *)self delegate];
    [delegate _colorAlphaSliderUserDidChangeSlider:self];
  }
}

- (double)_sliderKnobViewWidth
{
  sliderKnobView = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [sliderKnobView sizeThatFits:{1.79769313e308, v3}];
  v5 = v4;

  v6 = _UISolariumEnabled();
  result = v5 + 3.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (double)sliderKnobXPositionForColorAlpha:(double)alpha
{
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v6 = v5;
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  v8 = (alpha - v6) / (v7 - v6);
  [(_PKColorAlphaSliderIOS *)self bounds];
  Width = CGRectGetWidth(v14);
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v11 = Width - v10;
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  return v12 * 0.5 + v8 * v11;
}

- (double)colorAlphaForSliderKnobXPosition:(double)position
{
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v6 = position + v5 * -0.5;
  [(_PKColorAlphaSliderIOS *)self bounds];
  Width = CGRectGetWidth(v14);
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v9 = v6 / (Width - v8);
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v11 = v10;
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  return v12 * v9 + v11 * (1.0 - v9);
}

- (void)didPanSliderKnob:(id)knob
{
  knobCopy = knob;
  [knobCopy locationInView:self];
  [(_PKColorAlphaSliderIOS *)self colorAlphaForSliderKnobXPosition:?];
  v5 = v4;
  color = [(_PKColorAlphaSliderIOS *)self color];
  v7 = [color colorWithAlphaComponent:v5];
  [(_PKColorAlphaSliderIOS *)self setColor:v7];

  if ([knobCopy state] != 1)
  {
    if ([knobCopy state] != 3 && objc_msgSend(knobCopy, "state") != 4 && objc_msgSend(knobCopy, "state") != 5)
    {
      goto LABEL_12;
    }

    delegate = [(_PKColorAlphaSliderIOS *)self delegate];
    if (!delegate)
    {
      goto LABEL_12;
    }

    v14 = delegate;
    delegate2 = [(_PKColorAlphaSliderIOS *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }

    delegate3 = [(_PKColorAlphaSliderIOS *)self delegate];
    [delegate3 _colorAlphaSliderUserDidEndDraggingSlider:self];
    goto LABEL_11;
  }

  delegate4 = [(_PKColorAlphaSliderIOS *)self delegate];
  if (delegate4)
  {
    v9 = delegate4;
    delegate5 = [(_PKColorAlphaSliderIOS *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(_PKColorAlphaSliderIOS *)self delegate];
      [delegate3 _colorAlphaSliderUserDidStartDraggingSlider:self];
LABEL_11:
    }
  }

LABEL_12:
  delegate6 = [(_PKColorAlphaSliderIOS *)self delegate];
  [delegate6 _colorAlphaSliderUserDidChangeSlider:self];
}

- (CGRect)_knobViewFrameForColorAlpha:(double)alpha
{
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v6 = fmax(alpha, v5);
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  v8 = fmin(v6, v7);
  [(_PKColorAlphaSliderIOS *)self sliderKnobXPositionForColorAlpha:v8];
  v9 = alpha - v8;
  v10 = 0.0;
  if (v9 != 0.0)
  {
    [_PKColorAlphaSliderIOS _outputForResistanceFunction:v9 factor:0.176776695];
    v10 = v11 * 44.0;
  }

  sliderKnobView = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [sliderKnobView sizeThatFits:{1.79769313e308, v13}];

  [(_PKColorAlphaSliderIOS *)self bounds];
  CGRectGetMidY(v36);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectCenteredAboutPointScale();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v37.origin.x = v16;
  v37.origin.y = v18;
  v37.size.width = v20;
  v37.size.height = v22;
  CGRectOffset(v37, v10, 0.0);
  traitCollection = [(_PKColorAlphaSliderIOS *)self traitCollection];
  [traitCollection displayScale];
  UIRectIntegralWithScale();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

+ (double)_outputForResistanceFunction:(double)function factor:(double)factor
{
  if (function == 0.0)
  {
    return 0.0;
  }

  v4 = fabs(function);
  return function / v4 * (factor * factor * -0.5 + factor * sqrt(v4 + factor * factor * 0.25));
}

+ (id)rgbaColorFromColorIfPossible:(id)possible
{
  v8[3] = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  if ([possibleCopy getRed:0 green:0 blue:0 alpha:0])
  {
    v4 = possibleCopy;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([possibleCopy getWhite:&v7 alpha:v8])
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:v7 green:v7 blue:v7 alpha:v8[0]];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (void)_layoutGradientMaskLayer:(id)layer frame:(CGRect)frame isReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19[2] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v11 = layerCopy;
  if (reversedCopy)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  if (reversedCopy)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  [layerCopy setStartPoint:{v12, 0.5}];
  [v11 setEndPoint:{v13, 0.5}];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v15 = [whiteColor colorWithAlphaComponent:0.0];
  v19[0] = [v15 CGColor];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v17 = [whiteColor2 colorWithAlphaComponent:1.0];
  v19[1] = [v17 CGColor];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v11 setColors:v18];

  [v11 setFrame:{x, y, width, height}];
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(_PKColorAlphaSliderIOS *)self setNeedsLayout];
  }
}

- (int64_t)_uiColorUserInterfaceStyle
{
  if ([(_PKColorAlphaSliderIOS *)self colorUserInterfaceStyle])
  {

    return [(_PKColorAlphaSliderIOS *)self colorUserInterfaceStyle];
  }

  else
  {
    traitCollection = [(_PKColorAlphaSliderIOS *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    return userInterfaceStyle;
  }
}

- (_PKColorAlphaSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end