@interface _TUIAuxiliaryItemHost
- (TUIHostingController)hostingController;
- (_TUIAuxiliaryItemHost)initWithIdentifier:(id)a3 hostingController:(id)a4 item:(id)a5;
- (void)_updateHost;
- (void)dealloc;
@end

@implementation _TUIAuxiliaryItemHost

- (_TUIAuxiliaryItemHost)initWithIdentifier:(id)a3 hostingController:(id)a4 item:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _TUIAuxiliaryItemHost;
  v12 = [(_TUIAuxiliaryItemHost *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeWeak(&v13->_hostingController, v10);
    objc_storeStrong(&v13->_item, a5);
    WeakRetained = objc_loadWeakRetained(&v13->_hostingController);
    [WeakRetained addProviderObserver:v13 forIdentifier:v13->_identifier];
  }

  return v13;
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
  v5.super_class = _TUIAuxiliaryItemHost;
  [(_TUIAuxiliaryItemHost *)&v5 dealloc];
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
    if (*p_viewState)
    {
      v7 = objc_loadWeakRetained(&self->_hostingController);
      [v7 runAppearanceTransitionForViewState:self->_viewState barButtonItem:self->_item];
    }
  }
}

- (TUIHostingController)hostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);

  return WeakRetained;
}

@end