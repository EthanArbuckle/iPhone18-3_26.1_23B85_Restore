@interface CarMultiButtonView
- (CGSize)intrinsicContentSize;
- (CarMultiButtonView)initWithFrame:(CGRect)frame;
- (double)_buttonSpacing;
- (void)_recalculateShadowAttributes;
- (void)_reparentStackView;
- (void)_setCombineButtons:(BOOL)buttons;
- (void)didMoveToWindow;
- (void)setButtons:(id)buttons;
- (void)setCombineButtons:(BOOL)buttons;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarMultiButtonView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarMultiButtonView;
  [(CarMultiButtonView *)&v4 didMoveToWindow];
  window = [(CarMultiButtonView *)self window];

  if (window)
  {
    [(UIView *)self->_shadowView _mapsCar_updateShadow];
    [(CarMultiButtonView *)self _recalculateShadowAttributes];
    [(CarMultiButtonView *)self _buttonSpacing];
    [(CarMultiButtonStackView *)self->_stackView setSpacing:?];
  }
}

- (void)_recalculateShadowAttributes
{
  firstObject = [(NSArray *)self->_buttons firstObject];
  roundedCorners = [firstObject roundedCorners];

  lastObject = [(NSArray *)self->_buttons lastObject];
  roundedCorners2 = [lastObject roundedCorners];

  firstObject2 = [(NSArray *)self->_buttons firstObject];
  [firstObject2 roundedCornerRadius];
  v9 = v8;
  lastObject2 = [(NSArray *)self->_buttons lastObject];
  [lastObject2 roundedCornerRadius];
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
  v14 = roundedCorners2 | roundedCorners;
  [v13 roundedCornerRadius];
  v16 = v15;

  firstObject3 = [(NSArray *)self->_buttons firstObject];
  if ([firstObject3 needsContinuousRoundedCorners])
  {
    v18 = kCACornerCurveContinuous;
    v26 = v18;
  }

  else
  {
    firstObject4 = [(NSArray *)self->_buttons firstObject];
    needsContinuousRoundedCorners = [firstObject4 needsContinuousRoundedCorners];
    v18 = kCACornerCurveContinuous;
    v21 = kCACornerCurveCircular;
    if (needsContinuousRoundedCorners)
    {
      v21 = kCACornerCurveContinuous;
    }

    v26 = v21;
  }

  layer = [(UIView *)self->_shadowView layer];
  [layer setCornerRadius:v16];

  layer2 = [(UIView *)self->_shadowView layer];
  [layer2 setMaskedCorners:v14 & 0xF];

  layer3 = [(UIView *)self->_shadowView layer];
  [layer3 setCornerCurve:v26];

  if ([(CarMultiButtonView *)self combineButtons])
  {
    [(CarDynamicBlurView *)self->_combinedBlurView _setCornerRadius:v26 == v18 continuous:15 maskedCorners:v16];
    layer4 = [(CarDynamicBlurView *)self->_combinedBlurView layer];
    [layer4 setCornerCurve:v26];
  }
}

- (double)_buttonSpacing
{
  combineButtons = [(CarMultiButtonView *)self combineButtons];
  result = 4.0;
  if (combineButtons)
  {
    window = [(CarMultiButtonView *)self window];
    screen = [window screen];
    [screen scale];
    if (v7 == 0.0)
    {
      window2 = +[UIScreen _carScreen];
      [window2 scale];
      v11 = v12;
    }

    else
    {
      window2 = [(CarMultiButtonView *)self window];
      screen2 = [window2 screen];
      [screen2 scale];
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
  buttons = [(CarMultiButtonView *)self buttons];
  if ([buttons count] == 1)
  {

LABEL_4:
    buttons2 = [(CarMultiButtonView *)self buttons];
    [buttons2 count];
    [(CarMultiButtonView *)self _buttonSpacing];

    goto LABEL_5;
  }

  buttons3 = [(CarMultiButtonView *)self buttons];
  v5 = [buttons3 count] * 36.0;

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

- (void)setButtons:(id)buttons
{
  buttonsCopy = buttons;
  if (self->_buttons != buttonsCopy)
  {
    v17 = buttonsCopy;
    objc_storeStrong(&self->_buttons, buttons);
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

        firstObject = [(NSArray *)self->_buttons firstObject];

        v13 = 0.0;
        v14 = 0.0;
        if (v11 == firstObject)
        {
          [v11 setRoundedCorners:{objc_msgSend(v11, "roundedCorners") | 3}];
          v14 = -4.0;
        }

        lastObject = [(NSArray *)self->_buttons lastObject];

        if (v11 == lastObject)
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
        buttonsCopy = v17;
        break;
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarMultiButtonView;
  changeCopy = change;
  [(CarMultiButtonView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarMultiButtonView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(UIView *)self->_shadowView _mapsCar_updateShadow];
  }
}

- (void)_reparentStackView
{
  contentView = [(CarDynamicBlurView *)self->_combinedBlurView contentView];
  shadowView = contentView;
  if (!contentView)
  {
    shadowView = self->_shadowView;
    if (!shadowView)
    {
      shadowView = self;
    }
  }

  v9 = shadowView;

  superview = [(CarMultiButtonStackView *)self->_stackView superview];

  if (superview != v9)
  {
    [(CarMultiButtonStackView *)self->_stackView removeFromSuperview];
    [(CarMultiButtonView *)v9 addSubview:self->_stackView];
    LODWORD(v6) = 1148846080;
    v7 = [(CarMultiButtonStackView *)self->_stackView _maps_constraintsEqualToEdgesOfView:v9 priority:v6];
    allConstraints = [v7 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }
}

- (void)_setCombineButtons:(BOOL)buttons
{
  self->_combineButtons = buttons;
  if (!buttons || [(CarMultiButtonView *)self disableGlass])
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
  buttonsCopy = buttons;

  [(CarMultiButtonView *)self setButtons:buttonsCopy];
}

- (void)setCombineButtons:(BOOL)buttons
{
  if (self->_combineButtons != buttons)
  {
    [(CarMultiButtonView *)self _setCombineButtons:?];
  }
}

- (CarMultiButtonView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CarMultiButtonView;
  v3 = [(CarMultiButtonView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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