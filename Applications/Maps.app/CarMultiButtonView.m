@interface CarMultiButtonView
- (CGSize)intrinsicContentSize;
- (CarMultiButtonView)initWithFrame:(CGRect)a3;
- (double)_buttonSpacing;
- (void)_recalculateShadowAttributes;
- (void)_reparentStackView;
- (void)_setCombineButtons:(BOOL)a3;
- (void)didMoveToWindow;
- (void)setButtons:(id)a3;
- (void)setCombineButtons:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarMultiButtonView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarMultiButtonView;
  [(CarMultiButtonView *)&v4 didMoveToWindow];
  v3 = [(CarMultiButtonView *)self window];

  if (v3)
  {
    [(UIView *)self->_shadowView _mapsCar_updateShadow];
    [(CarMultiButtonView *)self _recalculateShadowAttributes];
    [(CarMultiButtonView *)self _buttonSpacing];
    [(CarMultiButtonStackView *)self->_stackView setSpacing:?];
  }
}

- (void)_recalculateShadowAttributes
{
  v3 = [(NSArray *)self->_buttons firstObject];
  v4 = [v3 roundedCorners];

  v5 = [(NSArray *)self->_buttons lastObject];
  v6 = [v5 roundedCorners];

  v7 = [(NSArray *)self->_buttons firstObject];
  [v7 roundedCornerRadius];
  v9 = v8;
  v10 = [(NSArray *)self->_buttons lastObject];
  [v10 roundedCornerRadius];
  buttons = self->_buttons;
  if (v9 > v12)
  {
    [(NSArray *)buttons firstObject];
  }

  else
  {
    [(NSArray *)buttons lastObject];
  }
  v13 = ;
  v14 = v6 | v4;
  [v13 roundedCornerRadius];
  v16 = v15;

  v17 = [(NSArray *)self->_buttons firstObject];
  if ([v17 needsContinuousRoundedCorners])
  {
    v18 = kCACornerCurveContinuous;
    v26 = v18;
  }

  else
  {
    v19 = [(NSArray *)self->_buttons firstObject];
    v20 = [v19 needsContinuousRoundedCorners];
    v18 = kCACornerCurveContinuous;
    v21 = kCACornerCurveCircular;
    if (v20)
    {
      v21 = kCACornerCurveContinuous;
    }

    v26 = v21;
  }

  v22 = [(UIView *)self->_shadowView layer];
  [v22 setCornerRadius:v16];

  v23 = [(UIView *)self->_shadowView layer];
  [v23 setMaskedCorners:v14 & 0xF];

  v24 = [(UIView *)self->_shadowView layer];
  [v24 setCornerCurve:v26];

  if ([(CarMultiButtonView *)self combineButtons])
  {
    [(CarDynamicBlurView *)self->_combinedBlurView _setCornerRadius:v26 == v18 continuous:15 maskedCorners:v16];
    v25 = [(CarDynamicBlurView *)self->_combinedBlurView layer];
    [v25 setCornerCurve:v26];
  }
}

- (double)_buttonSpacing
{
  v3 = [(CarMultiButtonView *)self combineButtons];
  result = 4.0;
  if (v3)
  {
    v5 = [(CarMultiButtonView *)self window];
    v6 = [v5 screen];
    [v6 scale];
    if (v7 == 0.0)
    {
      v8 = +[UIScreen _carScreen];
      [v8 scale];
      v11 = v12;
    }

    else
    {
      v8 = [(CarMultiButtonView *)self window];
      v9 = [v8 screen];
      [v9 scale];
      v11 = v10;
    }

    result = 1.0 / v11;
    if (v11 == 0.0)
    {
      return 0.5;
    }
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CarMultiButtonView *)self buttons];
  if ([v3 count] == 1)
  {

LABEL_4:
    v6 = [(CarMultiButtonView *)self buttons];
    [v6 count];
    [(CarMultiButtonView *)self _buttonSpacing];

    goto LABEL_5;
  }

  v4 = [(CarMultiButtonView *)self buttons];
  v5 = [v4 count] * 36.0;

  if (v5 > 0.0)
  {
    goto LABEL_4;
  }

LABEL_5:
  UIRoundToViewScale();
  v8 = v7;
  v9 = 36.0;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setButtons:(id)a3
{
  v5 = a3;
  if (self->_buttons != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_buttons, a3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_buttons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = *v19;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v11 setRoundedCorners:0];
        if (![(CarMultiButtonView *)self combineButtons])
        {
          [v11 _mapsCar_setBlurViewDisabled:0];
          v13 = -2.0;
          v16 = -1;
          v14 = -2.0;
          goto LABEL_15;
        }

        if (![(CarMultiButtonView *)self disableGlass])
        {
          [v11 _mapsCar_setBlurViewDisabled:{-[CarMultiButtonView disableGlass](self, "disableGlass") ^ 1}];
        }

        v12 = [(NSArray *)self->_buttons firstObject];

        v13 = 0.0;
        v14 = 0.0;
        if (v11 == v12)
        {
          [v11 setRoundedCorners:{objc_msgSend(v11, "roundedCorners") | 3}];
          v14 = -4.0;
        }

        v15 = [(NSArray *)self->_buttons lastObject];

        if (v11 == v15)
        {
          v16 = [v11 roundedCorners] | 0xC;
          v13 = -4.0;
LABEL_15:
          [v11 setRoundedCorners:v16];
        }

        [v11 setTouchInsets:{v14, -4.0, v13, -4.0}];
        if (objc_opt_respondsToSelector())
        {
          [v11 setNeedsLayout];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v8)
      {
LABEL_20:

        [(CarMultiButtonStackView *)self->_stackView _maps_setArrangedSubviews:self->_buttons];
        [(UIView *)self->_shadowView _mapsCar_updateShadow];
        [(CarMultiButtonView *)self _recalculateShadowAttributes];
        [(CarMultiButtonView *)self invalidateIntrinsicContentSize];
        v5 = v17;
        break;
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarMultiButtonView;
  v4 = a3;
  [(CarMultiButtonView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarMultiButtonView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(UIView *)self->_shadowView _mapsCar_updateShadow];
  }
}

- (void)_reparentStackView
{
  v3 = [(CarDynamicBlurView *)self->_combinedBlurView contentView];
  shadowView = v3;
  if (!v3)
  {
    shadowView = self->_shadowView;
    if (!shadowView)
    {
      shadowView = self;
    }
  }

  v9 = shadowView;

  v5 = [(CarMultiButtonStackView *)self->_stackView superview];

  if (v5 != v9)
  {
    [(CarMultiButtonStackView *)self->_stackView removeFromSuperview];
    [(CarMultiButtonView *)v9 addSubview:self->_stackView];
    LODWORD(v6) = 1148846080;
    v7 = [(CarMultiButtonStackView *)self->_stackView _maps_constraintsEqualToEdgesOfView:v9 priority:v6];
    v8 = [v7 allConstraints];
    [NSLayoutConstraint activateConstraints:v8];
  }
}

- (void)_setCombineButtons:(BOOL)a3
{
  self->_combineButtons = a3;
  if (!a3 || [(CarMultiButtonView *)self disableGlass])
  {
    combinedBlurView = self->_combinedBlurView;
    if (!combinedBlurView)
    {
      goto LABEL_7;
    }

    [(CarDynamicBlurView *)combinedBlurView removeFromSuperview];
    v5 = self->_combinedBlurView;
    self->_combinedBlurView = 0;
    goto LABEL_5;
  }

  if (!self->_combinedBlurView)
  {
    v7 = [(CarMultiButtonView *)self _mapsCar_injectBlurView:2];
    v5 = self->_combinedBlurView;
    self->_combinedBlurView = v7;
LABEL_5:
  }

LABEL_7:
  [(CarMultiButtonView *)self _reparentStackView];
  [(CarMultiButtonView *)self _buttonSpacing];
  [(CarMultiButtonStackView *)self->_stackView setSpacing:?];
  buttons = self->_buttons;
  self->_buttons = 0;
  v8 = buttons;

  [(CarMultiButtonView *)self setButtons:v8];
}

- (void)setCombineButtons:(BOOL)a3
{
  if (self->_combineButtons != a3)
  {
    [(CarMultiButtonView *)self _setCombineButtons:?];
  }
}

- (CarMultiButtonView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CarMultiButtonView;
  v3 = [(CarMultiButtonView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [(CarMultiButtonView *)v3 setDisableGlass:GEOConfigGetBOOL()];
    v4 = objc_alloc_init(CarMultiButtonStackView);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(CarMultiButtonStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarMultiButtonStackView *)v3->_stackView setClipsToBounds:0];
    [(CarMultiButtonStackView *)v3->_stackView setAxis:1];
    [(CarMultiButtonStackView *)v3->_stackView setAlignment:3];
    [(CarMultiButtonView *)v3 _buttonSpacing];
    [(CarMultiButtonStackView *)v3->_stackView setSpacing:?];
    [(CarMultiButtonStackView *)v3->_stackView setDistribution:1];
    if ([(CarMultiButtonView *)v3 disableGlass])
    {
      v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      shadowView = v3->_shadowView;
      v3->_shadowView = v6;

      [(UIView *)v3->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarMultiButtonView *)v3 addSubview:v3->_shadowView];
      v8 = [(UIView *)v3->_shadowView _maps_constraintsForCenteringInView:v3];
      [NSLayoutConstraint activateConstraints:v8];
    }

    [(CarMultiButtonView *)v3 _setCombineButtons:1];
  }

  return v3;
}

@end