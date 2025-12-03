@interface SCATAuxiliaryElementManager
- (void)driver:(id)driver willFocusOnContext:(id)context;
- (void)setContextElement:(id)element;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)willBecomeCurrentAuxiliaryElementManager;
- (void)willResignCurrentAuxiliaryElementManager;
@end

@implementation SCATAuxiliaryElementManager

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_enabled == enabled)
  {
    return;
  }

  animatedCopy = animated;
  enabledCopy = enabled;
  self->_enabled = enabled;
  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  view = [viewController view];
  v9 = view;
  if (enabledCopy)
  {
    isVisibilityTiedToFocus = [(SCATAuxiliaryElementManager *)self isVisibilityTiedToFocus];
    v11 = 1.0;
    if (isVisibilityTiedToFocus)
    {
      v11 = 0.0;
    }

    [v9 setAlpha:v11];
    window = [v9 window];

    if (!window)
    {
      v14 = +[SCATScannerManager sharedManager];
      scatUIContext = [v14 scatUIContext];

      [scatUIContext bounds];
      [v9 setFrame:?];
      [viewController viewWillAppear:animatedCopy];
      [scatUIContext addSubview:v9];
      [v9 setHidden:0];
      [viewController viewDidAppear:animatedCopy];

      goto LABEL_9;
    }

    view = v9;
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  [view setHidden:v13];
LABEL_9:
}

- (void)setContextElement:(id)element
{
  objc_storeStrong(&self->_contextElement, element);
  elementCopy = element;
  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  [viewController updateWithContextElement:elementCopy];
}

- (void)willBecomeCurrentAuxiliaryElementManager
{
  if ([(SCATAuxiliaryElementManager *)self isVisibilityTiedToFocus])
  {
    viewController = [(SCATAuxiliaryElementManager *)self viewController];
    [viewController setTransitioningToOrFromActive:1];

    viewController2 = [(SCATAuxiliaryElementManager *)self viewController];
    view = [viewController2 view];

    superview = [view superview];
    [superview bringSubviewToFront:view];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000EA8C;
    v12[3] = &unk_1001D3488;
    v7 = view;
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
    viewController = [(SCATAuxiliaryElementManager *)self viewController];
    [viewController setTransitioningToOrFromActive:1];

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

- (void)driver:(id)driver willFocusOnContext:(id)context
{
  contextCopy = context;
  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  element = [contextCopy element];

  [viewController updateCustomFocusingViewStateForViewsWithElement:element];
}

@end