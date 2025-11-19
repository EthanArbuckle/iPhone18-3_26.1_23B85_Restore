@interface MKUserTrackingBarButtonItem
- (BOOL)_isInMiniBar;
- (MKMapView)mapView;
- (MKUserTrackingBarButtonItem)initWithMapView:(MKMapView *)mapView;
- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_trackingEmptyImage;
- (id)_trackingFollowImage;
- (id)_trackingFollowWithHeadingImage;
- (id)_trackingNoneImage;
- (id)createViewForNavigationItem:(id)a3;
- (id)createViewForToolbar:(id)a3;
- (int64_t)_activityIndicatorStyle;
- (void)_setInternallyEnabled:(BOOL)a3;
- (void)_setUserTrackingView:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setEnabled:(BOOL)a3;
- (void)setMapView:(MKMapView *)mapView;
- (void)set_associatedView:(id)a3;
@end

@implementation MKUserTrackingBarButtonItem

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"controlSize"])
  {
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MKUserTrackingBarButtonItem;
    [(MKUserTrackingBarButtonItem *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)createViewForNavigationItem:(id)a3
{
  v4 = a3;
  if (self->_hasCustomAssociatedView)
  {
    v5 = [(MKUserTrackingBarButtonItem *)self _associatedView];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MKUserTrackingBarButtonItem;
    v6 = [(MKUserTrackingBarButtonItem *)&v10 createViewForNavigationItem:v4];
    [(MKUserTrackingBarButtonItem *)self set_associatedView:v6];

    v7 = [v4 navigationBar];
    [(MKUserTrackingBarButtonItem *)self set_navigationBar:v7];

    v8 = [(_MKUserTrackingButtonController *)self->_controller imageView];
    [v8 removeFromSuperview];
    [(UIView *)self->_associatedView addSubview:v8];
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
    v5 = self->_associatedView;
  }

  return v5;
}

- (id)createViewForToolbar:(id)a3
{
  v4 = a3;
  if (self->_hasCustomAssociatedView)
  {
    v5 = [(MKUserTrackingBarButtonItem *)self _associatedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MKUserTrackingBarButtonItem;
    v6 = [(MKUserTrackingBarButtonItem *)&v9 createViewForToolbar:v4];
    [(MKUserTrackingBarButtonItem *)self set_associatedView:v6];

    [(MKUserTrackingBarButtonItem *)self set_toolbar:v4];
    v7 = [(_MKUserTrackingButtonController *)self->_controller imageView];
    [v7 removeFromSuperview];
    [(UIView *)self->_associatedView addSubview:v7];
    [(MKUserTrackingBarButtonItem *)self _repositionViews];
    v5 = self->_associatedView;
  }

  return v5;
}

- (void)set_associatedView:(id)a3
{
  v7 = a3;
  associatedView = self->_associatedView;
  if (associatedView)
  {
    [(UIView *)associatedView removeObserver:self forKeyPath:@"controlSize"];
  }

  objc_storeStrong(&self->_associatedView, a3);
  v6 = self->_associatedView;
  if (v6)
  {
    [(UIView *)v6 addObserver:self forKeyPath:@"controlSize" options:0 context:0];
  }
}

- (void)_setInternallyEnabled:(BOOL)a3
{
  v3 = a3;
  self->_internallyEnabled = a3;
  explicitlyEnabled = self->_explicitlyEnabled;
  v6.receiver = self;
  v6.super_class = MKUserTrackingBarButtonItem;
  [(MKUserTrackingBarButtonItem *)&v6 setEnabled:explicitlyEnabled & a3];
  [(UIButton *)self->_customButton setEnabled:explicitlyEnabled & v3];
}

- (void)setEnabled:(BOOL)a3
{
  self->_explicitlyEnabled = a3;
  v4 = a3 && self->_internallyEnabled;
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
    v10 = self;
    v11 = NSStringFromSelector(a2);
    v12 = [v9 stringWithFormat:@"%@ %@", v10, v11];

    [v7 raise:v8 format:{@"%@: mapView must be an MKMapView instance", v12}];
  }

  else
  {
    [(MKUserTrackingBarButtonItem *)self _setUserTrackingView:v5];
  }
}

- (MKMapView)mapView
{
  v3 = [(MKUserTrackingBarButtonItem *)self _userTrackingView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MKUserTrackingBarButtonItem *)self _userTrackingView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setUserTrackingView:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  mapView = self->_mapView;
  self->_mapView = v4;

  [(_MKUserTrackingButtonController *)self->_controller setUserTrackingView:v6];
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

- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4
{
  userTrackingButton = self->_userTrackingButton;
  if (userTrackingButton)
  {
    userTrackingButton = [userTrackingButton _imageForState:a3 controlState:a4];
    goto LABEL_3;
  }

  if (a3 <= 0)
  {
    if (a3 != -1)
    {
      if (!a3)
      {
        userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingNoneImage:0];
      }

      goto LABEL_3;
    }

LABEL_14:
    userTrackingButton = [(MKUserTrackingBarButtonItem *)self _trackingEmptyImage];
    goto LABEL_3;
  }

  switch(a3)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
    v15 = self;
    v20 = NSStringFromSelector(a2);
    v21 = [v19 stringWithFormat:@"%@ %@", v15, v20];

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

      v10 = [(_MKUserTrackingButton *)v7->_userTrackingButton controller];
      controller = v7->_controller;
      v7->_controller = v10;

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

    v15 = v7;
    v16 = v15;
  }

  return v16;
}

@end