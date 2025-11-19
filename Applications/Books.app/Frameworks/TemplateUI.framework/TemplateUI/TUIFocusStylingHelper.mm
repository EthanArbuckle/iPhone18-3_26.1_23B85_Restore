@interface TUIFocusStylingHelper
- (TUIFocusStylingHelper)initWithContainer:(id)a3 reference:(id)a4 style:(id)a5;
- (id)_cornerCurve;
- (id)focusEffect;
- (void)_configureEffectView;
- (void)activateEffectWithAnimationCoordinator:(id)a3;
- (void)deactivateEffectWithAnimationCoordinator:(id)a3;
- (void)reset;
- (void)updateStyle:(id)a3;
@end

@implementation TUIFocusStylingHelper

- (TUIFocusStylingHelper)initWithContainer:(id)a3 reference:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TUIFocusStylingHelper;
  v11 = [(TUIFocusStylingHelper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_container = v8;
    v11->_reference = v9;
    objc_storeStrong(&v11->_style, a5);
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

- (void)updateStyle:(id)a3
{
  v5 = a3;
  if (self->_style != v5)
  {
    objc_storeStrong(&self->_style, a3);
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
  v21 = [(TUIFocusStylingHelper *)self _cornerCurve];
  v22 = [UIFocusHaloEffect effectWithRoundedRect:v21 cornerRadius:v12 curve:v14, v16, v18, v20];

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
  v2 = [(TUIFocusStyle *)self->_style continuousCurve];
  v3 = &kCACornerCurveContinuous;
  if (!v2)
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
  v17 = [(UIView *)self->_effectView layer];
  [v17 setCornerRadius:v16];

  v18 = [(TUIFocusStylingHelper *)self _cornerCurve];
  v19 = [(UIView *)self->_effectView layer];
  [v19 setCornerCurve:v18];

  v22 = +[UIColor tintColor];
  v20 = [(TUIFocusStyle *)self->_style color];
  if (v20)
  {
    [(UIView *)self->_effectView setBackgroundColor:v20];
  }

  else
  {
    v21 = [v22 colorWithAlphaComponent:0.12];
    [(UIView *)self->_effectView setBackgroundColor:v21];
  }
}

- (void)activateEffectWithAnimationCoordinator:(id)a3
{
  v20 = a3;
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
    v19 = [(UIView *)self->_effectView layer];
    [v19 setCornerCurve:kCACornerCurveContinuous];

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

- (void)deactivateEffectWithAnimationCoordinator:(id)a3
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;
}

@end