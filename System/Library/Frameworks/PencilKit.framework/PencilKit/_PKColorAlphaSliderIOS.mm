@interface _PKColorAlphaSliderIOS
+ (double)_outputForResistanceFunction:(double)a3 factor:(double)a4;
+ (double)opacitySliderHeight;
+ (id)rgbaColorFromColorIfPossible:(id)a3;
+ (void)_layoutGradientMaskLayer:(id)a3 frame:(CGRect)a4 isReversed:(BOOL)a5;
- (CGRect)_knobViewFrameForColorAlpha:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_PKColorAlphaSliderDelegate)delegate;
- (_PKColorAlphaSliderIOS)initWithFrame:(CGRect)a3;
- (double)_sliderKnobViewWidth;
- (double)colorAlphaForSliderKnobXPosition:(double)a3;
- (double)sliderKnobXPositionForColorAlpha:(double)a3;
- (int64_t)_uiColorUserInterfaceStyle;
- (void)_colorViewTapGestureHandler:(id)a3;
- (void)_setColorNoLayout:(id)a3;
- (void)didPanSliderKnob:(id)a3;
- (void)layoutSubviews;
- (void)setColor:(id)a3 animated:(BOOL)a4;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
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

- (_PKColorAlphaSliderIOS)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = _PKColorAlphaSliderIOS;
  v3 = [(_PKColorAlphaSliderIOS *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  color = v3->_color;
  v3->_color = v4;

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
  v18 = [(_PKCheckerGridView *)v3->_alphaGridView layer];
  [v18 setMask:v17];

  v19 = objc_alloc_init(MEMORY[0x1E6979380]);
  colorViewMaskLayer = v3->_colorViewMaskLayer;
  v3->_colorViewMaskLayer = v19;

  v21 = v3->_colorViewMaskLayer;
  v22 = [(UIView *)v3->_colorView layer];
  [v22 setMask:v21];

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
  v29 = [(_PKColorAlphaSliderIOS *)v3 sliderKnobView];
  [v29 addGestureRecognizer:v28];

  [(UIView *)v3->_sliderKnobView setAccessibilityIdentifier:@"OpacitySliderKnob"];
  [(_PKColorAlphaSliderIOS *)v3 setAccessibilityIdentifier:@"Opacity"];

  return v3;
}

- (void)setColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(_PKColorAlphaSliderIOS *)self _setColorNoLayout:a3];
  [(_PKColorAlphaSliderIOS *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___PKColorAlphaSliderIOS_setColor_animated___block_invoke;
  aBlock[3] = &unk_1E82D7148;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.0666666667 options:0.0 animations:1.0 completion:0.0];
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

- (void)_setColorNoLayout:(id)a3
{
  v12 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    v4 = [objc_opt_class() rgbaColorFromColorIfPossible:v12];
    [v12 alphaComponent];
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
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  UIRectCenteredAboutPointScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v13 bounds];
  v14 = CGRectGetHeight(v53) * 0.5;
  v15 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v15 _setContinuousCornerRadius:v14];

  v16 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v16 setClipsToBounds:1];

  v17 = [(_PKColorAlphaSliderIOS *)self color];
  v18 = [PKInkingTool convertColor:v17 fromUserInterfaceStyle:1 to:[(_PKColorAlphaSliderIOS *)self _uiColorUserInterfaceStyle]];
  v19 = [v18 colorWithAlphaComponent:1.0];
  v20 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v20 setBackgroundColor:v19];

  v21 = objc_opt_class();
  v22 = [(_PKColorAlphaSliderIOS *)self colorViewMaskLayer];
  v23 = [(_PKColorAlphaSliderIOS *)self colorView];
  [v23 bounds];
  [v21 _layoutGradientMaskLayer:v22 frame:0 isReversed:?];

  [(_PKColorAlphaSliderIOS *)self bounds];
  CGRectGetWidth(v54);
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [(_PKColorAlphaSliderIOS *)self bounds];
  UIRectGetCenter();
  v24 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v24 scale];
  UIRectCenteredAboutPointScale();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [v33 setFrame:{v26, v28, v30, v32}];

  v34 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [v34 bounds];
  v35 = CGRectGetHeight(v55) * 0.5;
  v36 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [v36 _setContinuousCornerRadius:v35];

  v37 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [v37 setClipsToBounds:1];

  v38 = objc_opt_class();
  v39 = [(_PKColorAlphaSliderIOS *)self alphaGridViewMaskLayer];
  v40 = [(_PKColorAlphaSliderIOS *)self alphaGridView];
  [v40 bounds];
  [v38 _layoutGradientMaskLayer:v39 frame:1 isReversed:?];

  v41 = [(_PKColorAlphaSliderIOS *)self color];
  [v41 alphaComponent];
  [(_PKColorAlphaSliderIOS *)self _knobViewFrameForColorAlpha:?];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  [v50 setFrame:{v43, v45, v47, v49}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [_PKColorAlphaSliderIOS opacitySliderHeight:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_colorViewTapGestureHandler:(id)a3
{
  v12 = a3;
  if ([v12 state] == 3)
  {
    v4 = [v12 view];
    [v12 locationInView:v4];
    v6 = v5;

    [(_PKColorAlphaSliderIOS *)self colorAlphaForSliderKnobXPosition:v6];
    v8 = v7;
    v9 = [(_PKColorAlphaSliderIOS *)self color];
    v10 = [v9 colorWithAlphaComponent:v8];
    [(_PKColorAlphaSliderIOS *)self setColor:v10 animated:1];

    v11 = [(_PKColorAlphaSliderIOS *)self delegate];
    [v11 _colorAlphaSliderUserDidChangeSlider:self];
  }
}

- (double)_sliderKnobViewWidth
{
  v2 = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [v2 sizeThatFits:{1.79769313e308, v3}];
  v5 = v4;

  v6 = _UISolariumEnabled();
  result = v5 + 3.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (double)sliderKnobXPositionForColorAlpha:(double)a3
{
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v6 = v5;
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  v8 = (a3 - v6) / (v7 - v6);
  [(_PKColorAlphaSliderIOS *)self bounds];
  Width = CGRectGetWidth(v14);
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v11 = Width - v10;
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  return v12 * 0.5 + v8 * v11;
}

- (double)colorAlphaForSliderKnobXPosition:(double)a3
{
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v6 = a3 + v5 * -0.5;
  [(_PKColorAlphaSliderIOS *)self bounds];
  Width = CGRectGetWidth(v14);
  [(_PKColorAlphaSliderIOS *)self _sliderKnobViewWidth];
  v9 = v6 / (Width - v8);
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v11 = v10;
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  return v12 * v9 + v11 * (1.0 - v9);
}

- (void)didPanSliderKnob:(id)a3
{
  v18 = a3;
  [v18 locationInView:self];
  [(_PKColorAlphaSliderIOS *)self colorAlphaForSliderKnobXPosition:?];
  v5 = v4;
  v6 = [(_PKColorAlphaSliderIOS *)self color];
  v7 = [v6 colorWithAlphaComponent:v5];
  [(_PKColorAlphaSliderIOS *)self setColor:v7];

  if ([v18 state] != 1)
  {
    if ([v18 state] != 3 && objc_msgSend(v18, "state") != 4 && objc_msgSend(v18, "state") != 5)
    {
      goto LABEL_12;
    }

    v13 = [(_PKColorAlphaSliderIOS *)self delegate];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v13;
    v15 = [(_PKColorAlphaSliderIOS *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }

    v12 = [(_PKColorAlphaSliderIOS *)self delegate];
    [v12 _colorAlphaSliderUserDidEndDraggingSlider:self];
    goto LABEL_11;
  }

  v8 = [(_PKColorAlphaSliderIOS *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(_PKColorAlphaSliderIOS *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(_PKColorAlphaSliderIOS *)self delegate];
      [v12 _colorAlphaSliderUserDidStartDraggingSlider:self];
LABEL_11:
    }
  }

LABEL_12:
  v17 = [(_PKColorAlphaSliderIOS *)self delegate];
  [v17 _colorAlphaSliderUserDidChangeSlider:self];
}

- (CGRect)_knobViewFrameForColorAlpha:(double)a3
{
  [(_PKColorAlphaSliderIOS *)self minAlpha];
  v6 = fmax(a3, v5);
  [(_PKColorAlphaSliderIOS *)self maxAlpha];
  v8 = fmin(v6, v7);
  [(_PKColorAlphaSliderIOS *)self sliderKnobXPositionForColorAlpha:v8];
  v9 = a3 - v8;
  v10 = 0.0;
  if (v9 != 0.0)
  {
    [_PKColorAlphaSliderIOS _outputForResistanceFunction:v9 factor:0.176776695];
    v10 = v11 * 44.0;
  }

  v12 = [(_PKColorAlphaSliderIOS *)self sliderKnobView];
  +[_PKColorAlphaSliderIOS opacitySliderHeight];
  [v12 sizeThatFits:{1.79769313e308, v13}];

  [(_PKColorAlphaSliderIOS *)self bounds];
  CGRectGetMidY(v36);
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
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
  v23 = [(_PKColorAlphaSliderIOS *)self traitCollection];
  [v23 displayScale];
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

+ (double)_outputForResistanceFunction:(double)a3 factor:(double)a4
{
  if (a3 == 0.0)
  {
    return 0.0;
  }

  v4 = fabs(a3);
  return a3 / v4 * (a4 * a4 * -0.5 + a4 * sqrt(v4 + a4 * a4 * 0.25));
}

+ (id)rgbaColorFromColorIfPossible:(id)a3
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 getRed:0 green:0 blue:0 alpha:0])
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 getWhite:&v7 alpha:v8])
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:v7 green:v7 blue:v7 alpha:v8[0]];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (void)_layoutGradientMaskLayer:(id)a3 frame:(CGRect)a4 isReversed:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (v5)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  if (v5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  [v10 setStartPoint:{v12, 0.5}];
  [v11 setEndPoint:{v13, 0.5}];
  v14 = [MEMORY[0x1E69DC888] whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.0];
  v19[0] = [v15 CGColor];
  v16 = [MEMORY[0x1E69DC888] whiteColor];
  v17 = [v16 colorWithAlphaComponent:1.0];
  v19[1] = [v17 CGColor];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v11 setColors:v18];

  [v11 setFrame:{x, y, width, height}];
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
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
    v4 = [(_PKColorAlphaSliderIOS *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    return v5;
  }
}

- (_PKColorAlphaSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end