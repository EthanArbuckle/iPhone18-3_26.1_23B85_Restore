@interface TUIFocusStylingHelper
- (TUIFocusStylingHelper)initWithContainer:(id)container reference:(id)reference style:(id)style;
- (id)_cornerCurve;
- (id)focusEffect;
- (void)_configureEffectView;
- (void)activateEffectWithAnimationCoordinator:(id)coordinator;
- (void)deactivateEffectWithAnimationCoordinator:(id)coordinator;
- (void)reset;
- (void)updateStyle:(id)style;
@end

@implementation TUIFocusStylingHelper

- (TUIFocusStylingHelper)initWithContainer:(id)container reference:(id)reference style:(id)style
{
  containerCopy = container;
  referenceCopy = reference;
  styleCopy = style;
  v14.receiver = self;
  v14.super_class = TUIFocusStylingHelper;
  v11 = [(TUIFocusStylingHelper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_container = containerCopy;
    v11->_reference = referenceCopy;
    objc_storeStrong(&v11->_style, style);
  }

  return v12;
}

- (void)reset
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;

  self->_container = 0;
}

- (void)updateStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    objc_storeStrong(&self->_style, style);
    if (self->_effectView)
    {
      [(TUIFocusStylingHelper *)self _configureEffectView];
    }
  }
}

- (id)focusEffect
{
  if ([(TUIFocusStyle *)self->_style effect]- 1 > &dword_0 + 2)
  {
    v22 = 0;
    goto LABEL_8;
  }

  [(UIView *)self->_container bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUIFocusStyle *)self->_style insets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  [(TUIFocusStyle *)self->_style cornerRadius];
  v20 = v19;
  _cornerCurve = [(TUIFocusStylingHelper *)self _cornerCurve];
  v22 = [UIFocusHaloEffect effectWithRoundedRect:_cornerCurve cornerRadius:v12 curve:v14, v16, v18, v20];

  [v22 setReferenceView:self->_reference];
  [v22 setContainerView:self->_container];
  if ([(TUIFocusStyle *)self->_style effect]== &dword_0 + 2)
  {
    v23 = 2;
  }

  else
  {
    if ([(TUIFocusStyle *)self->_style effect]!= &dword_0 + 3)
    {
      goto LABEL_8;
    }

    v23 = 1;
  }

  [v22 setPosition:v23];
LABEL_8:

  return v22;
}

- (id)_cornerCurve
{
  continuousCurve = [(TUIFocusStyle *)self->_style continuousCurve];
  v3 = &kCACornerCurveContinuous;
  if (!continuousCurve)
  {
    v3 = &kCACornerCurveCircular;
  }

  v4 = *v3;

  return v4;
}

- (void)_configureEffectView
{
  [(UIView *)self->_container bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUIFocusStyle *)self->_style insets];
  [(UIView *)self->_effectView setFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
  [(TUIFocusStyle *)self->_style cornerRadius];
  v16 = v15;
  layer = [(UIView *)self->_effectView layer];
  [layer setCornerRadius:v16];

  _cornerCurve = [(TUIFocusStylingHelper *)self _cornerCurve];
  layer2 = [(UIView *)self->_effectView layer];
  [layer2 setCornerCurve:_cornerCurve];

  v22 = +[UIColor tintColor];
  color = [(TUIFocusStyle *)self->_style color];
  if (color)
  {
    [(UIView *)self->_effectView setBackgroundColor:color];
  }

  else
  {
    v21 = [v22 colorWithAlphaComponent:0.12];
    [(UIView *)self->_effectView setBackgroundColor:v21];
  }
}

- (void)activateEffectWithAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_effectView)
  {
    goto LABEL_2;
  }

  if ([(TUIFocusStylingHelper *)self _effectNeedsView])
  {
    [(UIView *)self->_container bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(TUIFocusStyle *)self->_style insets];
    v17 = [[UIView alloc] initWithFrame:{v6 + v13, v8 + v14, v10 - (v13 + v15), v12 - (v14 + v16)}];
    effectView = self->_effectView;
    self->_effectView = v17;

    [(UIView *)self->_effectView setAutoresizingMask:18];
    layer = [(UIView *)self->_effectView layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    [(UIView *)self->_container insertSubview:self->_effectView atIndex:0];
    [(TUIFocusStylingHelper *)self _configureEffectView];
    goto LABEL_7;
  }

  if (self->_effectView)
  {
LABEL_2:
    if (![(TUIFocusStylingHelper *)self _effectNeedsView])
    {
      [(UIView *)self->_effectView removeFromSuperview];
      v4 = self->_effectView;
      self->_effectView = 0;
    }
  }

LABEL_7:
}

- (void)deactivateEffectWithAnimationCoordinator:(id)coordinator
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;
}

@end