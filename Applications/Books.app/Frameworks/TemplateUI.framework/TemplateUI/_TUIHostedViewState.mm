@interface _TUIHostedViewState
- (BOOL)isAvailable;
- (BOOL)needsLayout;
- (CGPoint)anchorPoint;
- (TUIHostingController)controller;
- (TUIVisibilityOptions)visibilityOptions;
- (UIView)view;
- (UIViewController)viewController;
- (_TUIHostedViewState)initWithController:(id)controller provider:(id)provider identifier:(id)identifier;
- (void)_updateAnchorPoint;
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationDidDismiss;
- (void)recycleViewWithController:(id)controller;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setVisible:(BOOL)visible;
@end

@implementation _TUIHostedViewState

- (_TUIHostedViewState)initWithController:(id)controller provider:(id)provider identifier:(id)identifier
{
  controllerCopy = controller;
  providerCopy = provider;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _TUIHostedViewState;
  v11 = [(_TUIHostedViewState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, controllerCopy);
    objc_storeStrong(&v12->_provider, provider);
    objc_storeStrong(&v12->_identifier, identifier);
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
    parentViewController = [(UIViewController *)viewController parentViewController];

    v5 = self->_viewController;
    if (parentViewController)
    {
      if ([(UIViewController *)v5 _appearState]== 2)
      {
        [(UIViewController *)self->_viewController beginAppearanceTransition:0 animated:0];
        viewIfLoaded = [(UIViewController *)self->_viewController viewIfLoaded];
        [viewIfLoaded removeFromSuperview];

        [(UIViewController *)self->_viewController endAppearanceTransition];
      }

      [(UIViewController *)self->_viewController removeFromParentViewController];
    }

    else
    {
      presentingViewController = [(UIViewController *)v5 presentingViewController];

      if (presentingViewController)
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

- (void)recycleViewWithController:(id)controller
{
  view = [(_TUIHostedViewState *)self view];
  [view removeFromSuperview];
}

- (BOOL)needsLayout
{
  viewController = [(_TUIHostedViewState *)self viewController];
  viewIfLoaded = [viewController viewIfLoaded];
  isHidden = [viewIfLoaded isHidden];

  return isHidden;
}

- (BOOL)isAvailable
{
  viewController = [(_TUIHostedViewState *)self viewController];
  v3 = viewController != 0;

  return v3;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    visibleCopy = visible;
    self->_visible = visible;
    if (objc_opt_respondsToSelector())
    {
      provider = self->_provider;
      viewController = self->_viewController;

      [(TUIHostedViewProviding *)provider hostedViewProviderDidChangeVisibility:visibleCopy viewController:viewController];
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
        presentation = [v11 presentation];

        if (!presentation)
        {
          v13 = objc_loadWeakRetained(&self->_controller);
          viewController = [v13 viewController];
          [viewController addChildViewController:self->_viewController];
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
  viewController = [(_TUIHostedViewState *)self viewController];
  view = [viewController view];

  return view;
}

- (TUIVisibilityOptions)visibilityOptions
{
  if (objc_opt_respondsToSelector())
  {
    hostedViewProviderVisibilityOptions = [(TUIHostedViewProviding *)self->_provider hostedViewProviderVisibilityOptions];
  }

  else
  {
    hostedViewProviderVisibilityOptions = 0;
  }

  return hostedViewProviderVisibilityOptions;
}

- (void)presentationControllerDidDismiss:(id)dismiss
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

- (void)setAnchorPoint:(CGPoint)point
{
  if (self->_anchorPoint.x != point.x || self->_anchorPoint.y != point.y)
  {
    self->_anchorPoint = point;
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