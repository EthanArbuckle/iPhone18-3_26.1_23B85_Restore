@interface MKCompassButton
+ (MKCompassButton)compassButtonWithMapView:(MKMapView *)mapView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MKCompassButton)initWithFrame:(CGRect)a3 mapView:(id)a4;
- (MKMapView)mapView;
- (void)_updateVisibility;
- (void)addInteraction:(id)a3;
- (void)dealloc;
- (void)didTapCompassGesture:(id)a3;
- (void)layoutSubviews;
- (void)mapViewDidUpdateYawNotification:(id)a3;
- (void)removeInteraction:(id)a3;
- (void)setCompassSize:(int64_t)a3;
- (void)setCompassVisibility:(MKFeatureVisibility)compassVisibility;
- (void)setMapView:(MKMapView *)mapView;
@end

@implementation MKCompassButton

- (void)_updateVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  compassView = self->_compassView;
  if (WeakRetained)
  {
    [(MKCompassView *)compassView setAlpha:1.0];
    compassVisibility = self->_compassVisibility;
    if (compassVisibility == 2)
    {
      visible = 1;
    }

    else if (compassVisibility)
    {
      visible = 0;
    }

    else
    {
      visible = self->_visible;
    }

    v7 = [(MKCompassButton *)self window];

    if (v7)
    {
      if (((visible ^ [(MKCompassButton *)self isHidden]) & 1) == 0)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __36__MKCompassButton__updateVisibility__block_invoke;
        v10[3] = &unk_1E76CA760;
        v11 = visible;
        v10[4] = self;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __36__MKCompassButton__updateVisibility__block_invoke_2;
        v8[3] = &unk_1E76CCF40;
        v8[4] = self;
        v9 = visible;
        [MEMORY[0x1E69DD250] _mapkit_animateFromCurrentStateWithDuration:v10 animations:v8 completion:0.5];
      }

      return;
    }

    [(MKCompassButton *)self setAlpha:visible];
    [(MKCompassButton *)self setHidden:!visible];
  }

  else
  {
    [(MKCompassView *)compassView setAlpha:0.25];
  }

  [(MKCompassButton *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  if ([(MKCompassButton *)self isHidden])
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(MKCompassView *)self->_compassView intrinsicContentSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)removeInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKCompassView *)self->_compassView removeInteraction:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKCompassButton;
    [(MKCompassButton *)&v5 removeInteraction:v4];
  }
}

- (void)addInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKCompassView *)self->_compassView addInteraction:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKCompassButton;
    [(MKCompassButton *)&v5 addInteraction:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MKCompassView *)self->_compassView intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(MKCompassView *)self->_compassView intrinsicContentSize:a3.width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKCompassButton;
  [(MKCompassButton *)&v3 layoutSubviews];
  [(MKCompassButton *)self bounds];
  [(MKCompassView *)self->_compassView setFrame:?];
}

uint64_t __36__MKCompassButton__updateVisibility__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    [*(a1 + 32) setHidden:0];
    [*(a1 + 32) invalidateIntrinsicContentSize];
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 32);

  return [v3 setAlpha:v2];
}

uint64_t __36__MKCompassButton__updateVisibility__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setHidden:(*(result + 40) & 1) == 0];
    result = [*(v2 + 32) isHidden];
    if (result)
    {
      v3 = *(v2 + 32);

      return [v3 invalidateIntrinsicContentSize];
    }
  }

  return result;
}

- (void)didTapCompassGesture:(id)a3
{
  v5 = a3;
  if ([v5 state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _handleCompassTap:v5];
  }
}

- (void)mapViewDidUpdateYawNotification:(id)a3
{
  v8 = [a3 userInfo];
  v4 = [v8 objectForKeyedSubscript:@"MKMapViewDidUpdateYawDegreesKey"];
  [v4 doubleValue];
  v6 = v5;

  [(MKCompassView *)self->_compassView setMapHeading:v6];
  v7 = [v8 objectForKeyedSubscript:@"MKMapViewDidUpdateYawVisibleKey"];
  self->_visible = [v7 BOOLValue];

  [(MKCompassButton *)self _updateVisibility];
}

- (void)setCompassSize:(int64_t)a3
{
  if (self->_compassSize != a3)
  {
    self->_compassSize = a3;
    compassView = self->_compassView;
    v7 = [(MKCompassButton *)self traitCollection];
    -[MKCompassView setCompassViewSize:style:](compassView, "setCompassViewSize:style:", a3, [v7 userInterfaceStyle] != 2);

    [(MKCompassButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setCompassVisibility:(MKFeatureVisibility)compassVisibility
{
  if (self->_compassVisibility != compassVisibility)
  {
    self->_compassVisibility = compassVisibility;
    [(MKCompassButton *)self _updateVisibility];
  }
}

- (void)setMapView:(MKMapView *)mapView
{
  obj = mapView;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_mapView);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_mapView);
      [(MKMapView *)v6 _stopPostingCompassUpdateNotifications];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = objc_loadWeakRetained(&self->_mapView);
      [v7 removeObserver:self name:@"MKMapViewDidUpdateYawNotification" object:v8];
    }

    self->_visible = 0;
    [(MKCompassView *)self->_compassView setMapHeading:0.0];
    v9 = objc_storeWeak(&self->_mapView, obj);

    if (obj)
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = objc_loadWeakRetained(&self->_mapView);
      [v10 addObserver:self selector:sel_mapViewDidUpdateYawNotification_ name:@"MKMapViewDidUpdateYawNotification" object:v11];

      v12 = objc_loadWeakRetained(&self->_mapView);
      if (v12)
      {
        ++v12[164];
      }

      v13 = objc_loadWeakRetained(&self->_mapView);
      [v13 _postDidUpdateYawNotification];
    }

    [(MKCompassButton *)self _updateVisibility];
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [(MKMapView *)WeakRetained _stopPostingCompassUpdateNotifications];

  v4.receiver = self;
  v4.super_class = MKCompassButton;
  [(MKCompassButton *)&v4 dealloc];
}

- (MKCompassButton)initWithFrame:(CGRect)a3 mapView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = MKCompassButton;
  v10 = [(MKCompassButton *)&v17 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MKCompassView alloc];
    [(MKCompassButton *)v10 bounds];
    v12 = [(MKCompassView *)v11 initWithFrame:?];
    compassView = v10->_compassView;
    v10->_compassView = v12;

    if (_MKLinkedOnOrAfterReleaseSet(3081))
    {
      [(MKCompassView *)v10->_compassView setCompassViewSize:1 style:1];
    }

    [(MKCompassView *)v10->_compassView setAutoresizingMask:18];
    [(MKCompassButton *)v10 setAutoresizesSubviews:1];
    [(MKCompassButton *)v10 addSubview:v10->_compassView];
    v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_didTapCompassGesture_];
    [(MKCompassButton *)v10 addGestureRecognizer:v14];
    [(MKCompassButton *)v10 setMapView:v9];
    v15 = +[MKUsageCounter sharedCounter];
    [v15 count:2];
  }

  return v10;
}

+ (MKCompassButton)compassButtonWithMapView:(MKMapView *)mapView
{
  v4 = mapView;
  v5 = _MKLinkedOnOrAfterReleaseSet(3081);
  v6 = MKCompassViewDiameterForSize(v5);
  v7 = [[a1 alloc] initWithFrame:v4 mapView:{0.0, 0.0, v6, v6}];

  return v7;
}

@end