@interface MKUserTrackingBarButtonItem
- (BOOL)_isInMiniBar;
- (MKMapView)mapView;
- (MKUserTrackingBarButtonItem)initWithMapView:(MKMapView *)mapView;
- (id)_imageForState:(int64_t)state controlState:(unint64_t)controlState;
- (id)_trackingEmptyImage;
- (id)_trackingFollowImage;
- (id)_trackingFollowWithHeadingImage;
- (id)_trackingNoneImage;
- (id)createViewForNavigationItem:(id)item;
- (id)createViewForToolbar:(id)toolbar;
- (int64_t)_activityIndicatorStyle;
- (void)_setInternallyEnabled:(BOOL)enabled;
- (void)_setUserTrackingView:(id)view;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setEnabled:(BOOL)enabled;
- (void)setMapView:(MKMapView *)mapView;
- (void)set_associatedView:(id)view;
@end

@implementation MKUserTrackingBarButtonItem

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"controlSize"])
  {
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MKUserTrackingBarButtonItem;
    [(MKUserTrackingBarButtonItem *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)createViewForNavigationItem:(id)item
{
  itemCopy = item;
  if (self->_hasCustomAssociatedView)
  {
    _associatedView = [(MKUserTrackingBarButtonItem *)self _associatedView];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MKUserTrackingBarButtonItem;
    v6 = [(MKUserTrackingBarButtonItem *)&v10 createViewForNavigationItem:itemCopy];
    [(MKUserTrackingBarButtonItem *)self set_associatedView:v6];

    navigationBar = [itemCopy navigationBar];
    [(MKUserTrackingBarButtonItem *)self set_navigationBar:navigationBar];

    imageView = [(_MKUserTrackingButtonController *)self->_controller imageView];
    [imageView removeFromSuperview];
    [(UIView *)self->_associatedView addSubview:imageView];
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
    _associatedView = self->_associatedView;
  }

  return _associatedView;
}

- (id)createViewForToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  if (self->_hasCustomAssociatedView)
  {
    _associatedView = [(MKUserTrackingBarButtonItem *)self _associatedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MKUserTrackingBarButtonItem;
    v6 = [(MKUserTrackingBarButtonItem *)&v9 createViewForToolbar:toolbarCopy];
    [(MKUserTrackingBarButtonItem *)self set_associatedView:v6];

    [(MKUserTrackingBarButtonItem *)self set_toolbar:toolbarCopy];
    imageView = [(_MKUserTrackingButtonController *)self->_controller imageView];
    [imageView removeFromSuperview];
    [(UIView *)self->_associatedView addSubview:imageView];
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
    _associatedView = self->_associatedView;
  }

  return _associatedView;
}

- (void)set_associatedView:(id)view
{
  viewCopy = view;
  associatedView = self->_associatedView;
  if (associatedView)
  {
    [(UIView *)associatedView removeObserver:self forKeyPath:@"controlSize"];
  }

  objc_storeStrong(&self->_associatedView, view);
  v6 = self->_associatedView;
  if (v6)
  {
    [(UIView *)v6 addObserver:self forKeyPath:@"controlSize" options:0 context:0];
  }
}

- (void)_setInternallyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_internallyEnabled = enabled;
  explicitlyEnabled = self->_explicitlyEnabled;
  v6.receiver = self;
  v6.super_class = MKUserTrackingBarButtonItem;
  [(MKUserTrackingBarButtonItem *)&v6 setEnabled:explicitlyEnabled & enabled];
  [(UIButton *)self->_customButton setEnabled:explicitlyEnabled & enabledCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_explicitlyEnabled = enabled;
  v4 = enabled && self->_internallyEnabled;
  v5.receiver = self;
  v5.super_class = MKUserTrackingBarButtonItem;
  [(MKUserTrackingBarButtonItem *)&v5 setEnabled:v4];
  [(UIButton *)self->_customButton setEnabled:v4];
}

- (void)setMapView:(MKMapView *)mapView
{
  v5 = mapView;
  v13 = v5;
  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5 = v13, (isKindOfClass & 1) == 0))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v11 = NSStringFromSelector(a2);
    v12 = [v9 stringWithFormat:@"%@ %@", selfCopy, v11];

    [v7 raise:v8 format:{@"%@: mapView must be an MKMapView instance", v12}];
  }

  else
  {
    [(MKUserTrackingBarButtonItem *)self _setUserTrackingView:v5];
  }
}

- (MKMapView)mapView
{
  _userTrackingView = [(MKUserTrackingBarButtonItem *)self _userTrackingView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _userTrackingView2 = [(MKUserTrackingBarButtonItem *)self _userTrackingView];
  }

  else
  {
    _userTrackingView2 = 0;
  }

  return _userTrackingView2;
}

- (void)_setUserTrackingView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
  }

  else
  {
    v4 = 0;
  }

  mapView = self->_mapView;
  self->_mapView = v4;

  [(_MKUserTrackingButtonController *)self->_controller setUserTrackingView:viewCopy];
}

- (BOOL)_isInMiniBar
{
  toolbar = self->_toolbar;
  if (toolbar || (toolbar = self->_navigationBar) != 0)
  {
    LOBYTE(toolbar) = [toolbar isMinibar];
  }

  return toolbar;
}

- (int64_t)_activityIndicatorStyle
{
  if ([(MKUserTrackingBarButtonItem *)self _isInMiniBar])
  {
    return 4;
  }

  else
  {
    return 100;
  }
}

- (id)_trackingFollowWithHeadingImage
{
  trackingFollowWithHeadingImage = self->_trackingFollowWithHeadingImage;
  if (!trackingFollowWithHeadingImage)
  {
    if (_MKLinkedOnOrAfterReleaseSet(2310))
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:@"location.north.line.fill"];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"TrackingHeadingMask"];
    }
    v4 = ;
    v5 = self->_trackingFollowWithHeadingImage;
    self->_trackingFollowWithHeadingImage = v4;

    trackingFollowWithHeadingImage = self->_trackingFollowWithHeadingImage;
  }

  return trackingFollowWithHeadingImage;
}

- (id)_trackingFollowImage
{
  trackingFollowImage = self->_trackingFollowImage;
  if (!trackingFollowImage)
  {
    if (_MKLinkedOnOrAfterReleaseSet(2310))
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:@"location.fill"];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"TrackingLocationMask"];
    }
    v4 = ;
    v5 = self->_trackingFollowImage;
    self->_trackingFollowImage = v4;

    trackingFollowImage = self->_trackingFollowImage;
  }

  return trackingFollowImage;
}

- (id)_trackingNoneImage
{
  trackingNoneImage = self->_trackingNoneImage;
  if (!trackingNoneImage)
  {
    if (_MKLinkedOnOrAfterReleaseSet(2310))
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:@"location"];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"TrackingLocationMask"];
    }
    v4 = ;
    v5 = self->_trackingNoneImage;
    self->_trackingNoneImage = v4;

    trackingNoneImage = self->_trackingNoneImage;
  }

  return trackingNoneImage;
}

- (id)_trackingEmptyImage
{
  trackingEmptyImage = self->_trackingEmptyImage;
  if (!trackingEmptyImage)
  {
    v4 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"TrackingEmpty.png"];
    v5 = self->_trackingEmptyImage;
    self->_trackingEmptyImage = v4;

    trackingEmptyImage = self->_trackingEmptyImage;
  }

  return trackingEmptyImage;
}

- (id)_imageForState:(int64_t)state controlState:(unint64_t)controlState
{
  userTrackingButton = self->_userTrackingButton;
  if (userTrackingButton)
  {
    userTrackingButton = [userTrackingButton _imageForState:state controlState:controlState];
    goto LABEL_3;
  }

  if (state <= 0)
  {
    if (state != -1)
    {
      if (!state)
      {
        userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingNoneImage:0];
      }

      goto LABEL_3;
    }

LABEL_14:
    userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingEmptyImage];
    goto LABEL_3;
  }

  switch(state)
  {
    case 3:
      userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingFollowWithHeadingImage:3];
      break;
    case 2:
      userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingFollowImage:2];
      break;
    case 1:
      goto LABEL_14;
  }

LABEL_3:

  return userTrackingButton;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  associatedView = self->_associatedView;
  if (associatedView)
  {
    [(UIView *)associatedView removeObserver:self forKeyPath:@"controlSize"];
  }

  v5.receiver = self;
  v5.super_class = MKUserTrackingBarButtonItem;
  [(MKUserTrackingBarButtonItem *)&v5 dealloc];
}

- (MKUserTrackingBarButtonItem)initWithMapView:(MKMapView *)mapView
{
  v5 = mapView;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v20 = NSStringFromSelector(a2);
    v21 = [v19 stringWithFormat:@"%@ %@", selfCopy, v20];

    [v17 raise:v18 format:{@"%@: mapView must be an MKMapView instance", v21}];
    v16 = 0;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = MKUserTrackingBarButtonItem;
    v6 = [(MKUserTrackingBarButtonItem *)&v23 init];
    v7 = v6;
    if (v6)
    {
      [(MKUserTrackingBarButtonItem *)v6 setStyle:0];
      [(MKUserTrackingBarButtonItem *)v7 setTarget:v7];
      [(MKUserTrackingBarButtonItem *)v7 setAction:sel__goToNextMode_];
      [(MKUserTrackingBarButtonItem *)v7 _setInternallyEnabled:1];
      v8 = [_MKUserTrackingButton buttonWithUserTrackingView:v5];
      userTrackingButton = v7->_userTrackingButton;
      v7->_userTrackingButton = v8;

      controller = [(_MKUserTrackingButton *)v7->_userTrackingButton controller];
      controller = v7->_controller;
      v7->_controller = controller;

      objc_storeStrong(&v7->_customButton, v7->_userTrackingButton);
      [(MKUserTrackingBarButtonItem *)v7 setCustomView:v7->_customButton];
      [(MKUserTrackingBarButtonItem *)v7 set_associatedView:v7->_customButton];
      v7->_hasCustomAssociatedView = 1;
      v12 = v7->_userTrackingButton;
      v13 = objc_alloc_init(MEMORY[0x1E69DCDB0]);
      [(_MKUserTrackingButton *)v12 addInteraction:v13];

      v14 = +[MKUsageCounter sharedCounter];
      [v14 count:5];
    }

    selfCopy = v7;
    v16 = selfCopy;
  }

  return v16;
}

@end