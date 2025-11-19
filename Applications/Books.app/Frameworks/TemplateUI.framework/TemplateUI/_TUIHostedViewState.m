@interface _TUIHostedViewState
- (BOOL)isAvailable;
- (BOOL)needsLayout;
- (CGPoint)anchorPoint;
- (TUIHostingController)controller;
- (TUIVisibilityOptions)visibilityOptions;
- (UIView)view;
- (UIViewController)viewController;
- (_TUIHostedViewState)initWithController:(id)a3 provider:(id)a4 identifier:(id)a5;
- (void)_updateAnchorPoint;
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationDidDismiss;
- (void)recycleViewWithController:(id)a3;
- (void)setAnchorPoint:(CGPoint)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation _TUIHostedViewState

- (_TUIHostedViewState)initWithController:(id)a3 provider:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _TUIHostedViewState;
  v11 = [(_TUIHostedViewState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, v8);
    objc_storeStrong(&v12->_provider, a4);
    objc_storeStrong(&v12->_identifier, a5);
    v12->_anchorPoint = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v12;
}

- (void)dealloc
{
  [(_TUIHostedViewState *)self setVisible:0];
  viewController = self->_viewController;
  if (viewController)
  {
    v4 = [(UIViewController *)viewController parentViewController];

    v5 = self->_viewController;
    if (v4)
    {
      if ([(UIViewController *)v5 _appearState]== 2)
      {
        [(UIViewController *)self->_viewController beginAppearanceTransition:0 animated:0];
        v6 = [(UIViewController *)self->_viewController viewIfLoaded];
        [v6 removeFromSuperview];

        [(UIViewController *)self->_viewController endAppearanceTransition];
      }

      [(UIViewController *)self->_viewController removeFromParentViewController];
    }

    else
    {
      v7 = [(UIViewController *)v5 presentingViewController];

      if (v7)
      {
        v8 = self->_viewController;
        WeakRetained = objc_loadWeakRetained(&self->_controller);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_C8E40;
        v12[3] = &unk_25DE30;
        v13 = v8;
        v10 = v8;
        [WeakRetained _finishOngoingModalTransitionAnimationsWithCompletion:v12];

        [(_TUIHostedViewState *)self presentationDidDismiss];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = _TUIHostedViewState;
  [(_TUIHostedViewState *)&v11 dealloc];
}

- (void)recycleViewWithController:(id)a3
{
  v3 = [(_TUIHostedViewState *)self view];
  [v3 removeFromSuperview];
}

- (BOOL)needsLayout
{
  v2 = [(_TUIHostedViewState *)self viewController];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 isHidden];

  return v4;
}

- (BOOL)isAvailable
{
  v2 = [(_TUIHostedViewState *)self viewController];
  v3 = v2 != 0;

  return v3;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    v3 = a3;
    self->_visible = a3;
    if (objc_opt_respondsToSelector())
    {
      provider = self->_provider;
      viewController = self->_viewController;

      [(TUIHostedViewProviding *)provider hostedViewProviderDidChangeVisibility:v3 viewController:viewController];
    }
  }
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5 = [WeakRetained _groupIdentifierForIdentifier:self->_identifier];

    if (!v5 || (v6 = objc_loadWeakRetained(&self->_controller), v7 = [v6 _shouldVendViewForIdentifier:self->_identifier inGroup:v5], v6, v7))
    {
      if (self->_viewController || ([(TUIHostedViewProviding *)self->_provider hostedViewProviderCreateViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = self->_viewController, self->_viewController = v8, v9, self->_viewController))
      {
        v10 = objc_loadWeakRetained(&self->_controller);
        v11 = [v10 _propertiesForIdentifier:self->_identifier];
        v12 = [v11 presentation];

        if (!v12)
        {
          v13 = objc_loadWeakRetained(&self->_controller);
          v14 = [v13 viewController];
          [v14 addChildViewController:self->_viewController];
        }

        if (v5)
        {
          v15 = objc_loadWeakRetained(&self->_controller);
          [v15 _activateGroup:v5];
        }

        [(_TUIHostedViewState *)self _updateAnchorPoint];
      }
    }

    viewController = self->_viewController;
  }

  return viewController;
}

- (UIView)view
{
  v2 = [(_TUIHostedViewState *)self viewController];
  v3 = [v2 view];

  return v3;
}

- (TUIVisibilityOptions)visibilityOptions
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(TUIHostedViewProviding *)self->_provider hostedViewProviderVisibilityOptions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  [(_TUIHostedViewState *)self setVisible:0];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _removeProviderForViewState:self];
}

- (void)presentationDidDismiss
{
  [(_TUIHostedViewState *)self setVisible:0];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _removeProviderForViewState:self];
}

- (void)setAnchorPoint:(CGPoint)a3
{
  if (self->_anchorPoint.x != a3.x || self->_anchorPoint.y != a3.y)
  {
    self->_anchorPoint = a3;
    [(_TUIHostedViewState *)self _updateAnchorPoint];
  }
}

- (void)_updateAnchorPoint
{
  if (objc_opt_respondsToSelector())
  {
    provider = self->_provider;
    viewController = self->_viewController;
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;

    [(TUIHostedViewProviding *)provider hostedViewProviderCustomizeViewController:viewController withAnchorPoint:x, y];
  }
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (TUIHostingController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end