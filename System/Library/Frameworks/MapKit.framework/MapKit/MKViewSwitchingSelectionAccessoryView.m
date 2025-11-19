@interface MKViewSwitchingSelectionAccessoryView
- (MKViewSwitchingSelectionAccessoryView)initWithFrame:(CGRect)a3;
- (UIViewController)parentViewController;
- (void)_displayView:(id)a3;
- (void)_displayViewController:(id)a3;
- (void)_updateDisplay;
- (void)displayError;
- (void)displayLoading;
- (void)displayMapItem:(id)a3;
- (void)placeCardPreferredContentSizeDidChange:(CGSize)a3;
@end

@implementation MKViewSwitchingSelectionAccessoryView

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)placeCardPreferredContentSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v10 = [(MKSelectionAccessoryView *)self placeCardContentSizeDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(MKSelectionAccessoryView *)self placeCardContentSizeDelegate];
    [v12 placeCardPreferredContentSizeDidChange:{width, height}];
  }
}

- (void)_displayView:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_view, a3);
  v16 = a3;
  [(UIView *)self->_view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewSwitchingSelectionAccessoryView *)self addSubview:self->_view];
  v15 = MEMORY[0x1E696ACD8];
  v19 = [(UIView *)self->_view topAnchor];
  v18 = [(MKViewSwitchingSelectionAccessoryView *)self topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v5 = [(UIView *)self->_view leadingAnchor];
  v6 = [(MKViewSwitchingSelectionAccessoryView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v20[1] = v7;
  v8 = [(MKViewSwitchingSelectionAccessoryView *)self trailingAnchor];
  v9 = [(UIView *)self->_view trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v20[2] = v10;
  v11 = [(MKViewSwitchingSelectionAccessoryView *)self bottomAnchor];
  v12 = [(UIView *)self->_view bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v14];
}

- (void)_displayViewController:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  if (!WeakRetained)
  {
    WeakRetained = [[_MKSelectionAccessoryParentViewController alloc] initWithChildViewController:v8];
  }

  [(_MKSelectionAccessoryParentViewController *)WeakRetained addChildViewController:v8];
  [(_MKSelectionAccessoryParentViewController *)v8 setPlaceCardContentSizeDelegate:self];
  v5 = objc_loadWeakRetained(&self->_parentViewController);
  if (v5)
  {
    v6 = v8;
  }

  else
  {
    v6 = WeakRetained;
  }

  objc_storeStrong(&self->_viewController, v6);

  v7 = [(UIViewController *)self->_viewController view];
  [(MKViewSwitchingSelectionAccessoryView *)self _displayView:v7];

  [(_MKSelectionAccessoryParentViewController *)v8 didMoveToParentViewController:WeakRetained];
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
    v9 = [(MKMapItem *)mapItem location];
    if (v9)
    {
      v10 = v9;
      v11 = [(MKMapItem *)self->_mapItem location];
      [v11 coordinate];
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
    v17 = [(MKViewSwitchingSelectionAccessoryView *)self _createLoadingView];
    goto LABEL_15;
  }

  v17 = [(MKViewSwitchingSelectionAccessoryView *)self _createErrorView];
LABEL_15:
  v16 = v17;
  [(MKViewSwitchingSelectionAccessoryView *)self _displayView:v17];
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

- (void)displayMapItem:(id)a3
{
  v5 = a3;
  if (self->_error || self->_mapItem != v5)
  {
    self->_error = 0;
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(MKViewSwitchingSelectionAccessoryView *)self _updateDisplay];
    v5 = v6;
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

- (MKViewSwitchingSelectionAccessoryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKViewSwitchingSelectionAccessoryView;
  v3 = [(MKSelectionAccessoryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKViewSwitchingSelectionAccessoryView *)v3 _updateDisplay];
  }

  return v4;
}

@end