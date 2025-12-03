@interface _TUIAuxiliaryViewHost
- (TUIHostingController)hostingController;
- (_TUIAuxiliaryViewHost)initWithIdentifier:(id)identifier hostingController:(id)controller viewVisibilityController:(id)visibilityController view:(id)view;
- (void)_updateHost;
- (void)_updatePopoverLayout;
- (void)_updateVisible:(BOOL)visible;
- (void)dealloc;
@end

@implementation _TUIAuxiliaryViewHost

- (_TUIAuxiliaryViewHost)initWithIdentifier:(id)identifier hostingController:(id)controller viewVisibilityController:(id)visibilityController view:(id)view
{
  identifierCopy = identifier;
  controllerCopy = controller;
  visibilityControllerCopy = visibilityController;
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = _TUIAuxiliaryViewHost;
  v15 = [(_TUIAuxiliaryViewHost *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeWeak(&v16->_hostingController, controllerCopy);
    objc_storeStrong(&v16->_view, view);
    WeakRetained = objc_loadWeakRetained(&v16->_hostingController);
    [WeakRetained addProviderObserver:v16 forIdentifier:v16->_identifier];

    objc_initWeak(&location, v16);
    v18 = +[TUIVisibilityOptions modalAnchorOptions];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_124B40;
    v25 = &unk_2604B0;
    objc_copyWeak(&v26, &location);
    v19 = [visibilityControllerCopy observeNavigationBarView:viewCopy options:v18 block:&v22];
    visibilityObserver = v16->_visibilityObserver;
    v16->_visibilityObserver = v19;

    [(_TUIAuxiliaryViewHost *)v16 _updateHost:v22];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (void)dealloc
{
  if (self->_viewState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostingController);
    [WeakRetained runDisappearanceTransitionForViewState:self->_viewState];
  }

  v4 = objc_loadWeakRetained(&self->_hostingController);
  [v4 removeProviderObserver:self forIdentifier:self->_identifier];

  v5.receiver = self;
  v5.super_class = _TUIAuxiliaryViewHost;
  [(_TUIAuxiliaryViewHost *)&v5 dealloc];
}

- (void)_updatePopoverLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);
  [WeakRetained updatePopoverLayoutForViewState:self->_viewState superview:self->_view];
}

- (void)_updateVisible:(BOOL)visible
{
  self->_visible = visible;
  viewState = self->_viewState;
  if (visible)
  {
    if (!viewState)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_hostingController);
    [WeakRetained runAppearanceTransitionForViewState:self->_viewState superview:self->_view];
  }

  else
  {
    if (!viewState)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_hostingController);
    [WeakRetained runDisappearanceTransitionForViewState:self->_viewState];
  }
}

- (void)_updateHost
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);
  obj = [WeakRetained viewStateForIdentifier:self->_identifier];

  p_viewState = &self->_viewState;
  viewState = self->_viewState;
  if (viewState != obj)
  {
    if (viewState)
    {
      v6 = objc_loadWeakRetained(&self->_hostingController);
      [v6 runDisappearanceTransitionForViewState:*p_viewState];
    }

    objc_storeStrong(&self->_viewState, obj);
    if (*p_viewState && self->_visible)
    {
      v7 = objc_loadWeakRetained(&self->_hostingController);
      [v7 runAppearanceTransitionForViewState:self->_viewState superview:self->_view];
    }
  }
}

- (TUIHostingController)hostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);

  return WeakRetained;
}

@end