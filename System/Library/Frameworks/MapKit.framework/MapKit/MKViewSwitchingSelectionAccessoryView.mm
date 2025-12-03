@interface MKViewSwitchingSelectionAccessoryView
- (MKViewSwitchingSelectionAccessoryView)initWithFrame:(CGRect)frame;
- (UIViewController)parentViewController;
- (void)_displayView:(id)view;
- (void)_displayViewController:(id)controller;
- (void)_updateDisplay;
- (void)displayError;
- (void)displayLoading;
- (void)displayMapItem:(id)item;
- (void)placeCardPreferredContentSizeDidChange:(CGSize)change;
@end

@implementation MKViewSwitchingSelectionAccessoryView

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)placeCardPreferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v15 = *MEMORY[0x1E69E9840];
  if (MKGetMKRemoteUILog_onceToken_3887 != -1)
  {
    dispatch_once(&MKGetMKRemoteUILog_onceToken_3887, &__block_literal_global_149);
  }

  v6 = MKGetMKRemoteUILog_log_3888;
  if (os_log_type_enabled(MKGetMKRemoteUILog_log_3888, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = [v7 stringWithFormat:@"{%.1f, %.1f}", *&width, *&height];
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "SelectionAccessoryView placeCardPreferredContentSizeDidChange: %{public}@", buf, 0xCu);
  }

  placeCardContentSizeDelegate = [(MKSelectionAccessoryView *)self placeCardContentSizeDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    placeCardContentSizeDelegate2 = [(MKSelectionAccessoryView *)self placeCardContentSizeDelegate];
    [placeCardContentSizeDelegate2 placeCardPreferredContentSizeDidChange:{width, height}];
  }
}

- (void)_displayView:(id)view
{
  v20[4] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_view, view);
  viewCopy = view;
  [(UIView *)self->_view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewSwitchingSelectionAccessoryView *)self addSubview:self->_view];
  v15 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)self->_view topAnchor];
  topAnchor2 = [(MKViewSwitchingSelectionAccessoryView *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v17;
  leadingAnchor = [(UIView *)self->_view leadingAnchor];
  leadingAnchor2 = [(MKViewSwitchingSelectionAccessoryView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[1] = v7;
  trailingAnchor = [(MKViewSwitchingSelectionAccessoryView *)self trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_view trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[2] = v10;
  bottomAnchor = [(MKViewSwitchingSelectionAccessoryView *)self bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_view bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v14];
}

- (void)_displayViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  if (!WeakRetained)
  {
    WeakRetained = [[_MKSelectionAccessoryParentViewController alloc] initWithChildViewController:controllerCopy];
  }

  [(_MKSelectionAccessoryParentViewController *)WeakRetained addChildViewController:controllerCopy];
  [(_MKSelectionAccessoryParentViewController *)controllerCopy setPlaceCardContentSizeDelegate:self];
  v5 = objc_loadWeakRetained(&self->_parentViewController);
  if (v5)
  {
    v6 = controllerCopy;
  }

  else
  {
    v6 = WeakRetained;
  }

  objc_storeStrong(&self->_viewController, v6);

  view = [(UIViewController *)self->_viewController view];
  [(MKViewSwitchingSelectionAccessoryView *)self _displayView:view];

  [(_MKSelectionAccessoryParentViewController *)controllerCopy didMoveToParentViewController:WeakRetained];
}

- (void)_updateDisplay
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  viewController = self->_viewController;
  if (viewController)
  {
    [(UIViewController *)viewController willMoveToParentViewController:0];
  }

  view = self->_view;
  if (view)
  {
    [(UIView *)view removeFromSuperview];
    v5 = self->_view;
    self->_view = 0;
  }

  v6 = self->_viewController;
  if (v6)
  {
    [(UIViewController *)v6 removeFromParentViewController];
    v7 = self->_viewController;
    self->_viewController = 0;
  }

  mapItem = self->_mapItem;
  if (mapItem)
  {
    location = [(MKMapItem *)mapItem location];
    if (location)
    {
      v10 = location;
      location2 = [(MKMapItem *)self->_mapItem location];
      [location2 coordinate];
      v13 = v12;
      v15 = fabs(v14);

      if (v15 <= 180.0 && fabs(v13) <= 90.0)
      {
        v16 = [(MKViewSwitchingSelectionAccessoryView *)self _createMapItemViewController:self->_mapItem];
        [(MKViewSwitchingSelectionAccessoryView *)self _displayViewController:v16];
        goto LABEL_16;
      }
    }
  }

  else if (!self->_error)
  {
    _createLoadingView = [(MKViewSwitchingSelectionAccessoryView *)self _createLoadingView];
    goto LABEL_15;
  }

  _createLoadingView = [(MKViewSwitchingSelectionAccessoryView *)self _createErrorView];
LABEL_15:
  v16 = _createLoadingView;
  [(MKViewSwitchingSelectionAccessoryView *)self _displayView:_createLoadingView];
LABEL_16:

  [(MKSelectionAccessoryView *)self _bringDismissButtonToFront];
}

- (void)displayError
{
  if (!self->_error || self->_mapItem)
  {
    self->_error = 1;
    mapItem = self->_mapItem;
    self->_mapItem = 0;

    [(MKViewSwitchingSelectionAccessoryView *)self _updateDisplay];
  }
}

- (void)displayMapItem:(id)item
{
  itemCopy = item;
  if (self->_error || self->_mapItem != itemCopy)
  {
    self->_error = 0;
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    [(MKViewSwitchingSelectionAccessoryView *)self _updateDisplay];
    itemCopy = v6;
  }
}

- (void)displayLoading
{
  if (self->_error || self->_mapItem)
  {
    self->_error = 0;
    mapItem = self->_mapItem;
    self->_mapItem = 0;

    [(MKViewSwitchingSelectionAccessoryView *)self _updateDisplay];
  }
}

- (MKViewSwitchingSelectionAccessoryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKViewSwitchingSelectionAccessoryView;
  v3 = [(MKSelectionAccessoryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKViewSwitchingSelectionAccessoryView *)v3 _updateDisplay];
  }

  return v4;
}

@end