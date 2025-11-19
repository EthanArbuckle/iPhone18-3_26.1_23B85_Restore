@interface SCATAuxiliaryElementManager
- (void)driver:(id)a3 willFocusOnContext:(id)a4;
- (void)setContextElement:(id)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)willBecomeCurrentAuxiliaryElementManager;
- (void)willResignCurrentAuxiliaryElementManager;
@end

@implementation SCATAuxiliaryElementManager

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_enabled == a3)
  {
    return;
  }

  v5 = a4;
  v6 = a3;
  self->_enabled = a3;
  v16 = [(SCATAuxiliaryElementManager *)self viewController];
  v8 = [v16 view];
  v9 = v8;
  if (v6)
  {
    v10 = [(SCATAuxiliaryElementManager *)self isVisibilityTiedToFocus];
    v11 = 1.0;
    if (v10)
    {
      v11 = 0.0;
    }

    [v9 setAlpha:v11];
    v12 = [v9 window];

    if (!v12)
    {
      v14 = +[SCATScannerManager sharedManager];
      v15 = [v14 scatUIContext];

      [v15 bounds];
      [v9 setFrame:?];
      [v16 viewWillAppear:v5];
      [v15 addSubview:v9];
      [v9 setHidden:0];
      [v16 viewDidAppear:v5];

      goto LABEL_9;
    }

    v8 = v9;
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  [v8 setHidden:v13];
LABEL_9:
}

- (void)setContextElement:(id)a3
{
  objc_storeStrong(&self->_contextElement, a3);
  v5 = a3;
  v6 = [(SCATAuxiliaryElementManager *)self viewController];
  [v6 updateWithContextElement:v5];
}

- (void)willBecomeCurrentAuxiliaryElementManager
{
  if ([(SCATAuxiliaryElementManager *)self isVisibilityTiedToFocus])
  {
    v3 = [(SCATAuxiliaryElementManager *)self viewController];
    [v3 setTransitioningToOrFromActive:1];

    v4 = [(SCATAuxiliaryElementManager *)self viewController];
    v5 = [v4 view];

    v6 = [v5 superview];
    [v6 bringSubviewToFront:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000EA8C;
    v12[3] = &unk_1001D3488;
    v7 = v5;
    v13 = v7;
    [UIView animateWithDuration:4 delay:v12 options:0 animations:0.3 completion:0.0];
    v9[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000EA98;
    v10[3] = &unk_1001D3488;
    v11 = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EAA4;
    v9[3] = &unk_1001D3750;
    v8 = v7;
    [UIView animateWithDuration:4 delay:v10 options:v9 animations:0.3 completion:0.0];
  }
}

- (void)willResignCurrentAuxiliaryElementManager
{
  if ([(SCATAuxiliaryElementManager *)self isVisibilityTiedToFocus])
  {
    v3 = [(SCATAuxiliaryElementManager *)self viewController];
    [v3 setTransitioningToOrFromActive:1];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000EBEC;
    v5[3] = &unk_1001D3488;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000EC4C;
    v4[3] = &unk_1001D3750;
    v4[4] = self;
    [UIView animateWithDuration:4 delay:v5 options:v4 animations:0.3 completion:0.0];
  }
}

- (void)driver:(id)a3 willFocusOnContext:(id)a4
{
  v5 = a4;
  v7 = [(SCATAuxiliaryElementManager *)self viewController];
  v6 = [v5 element];

  [v7 updateCustomFocusingViewStateForViewsWithElement:v6];
}

@end