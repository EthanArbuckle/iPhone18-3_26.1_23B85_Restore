@interface OverlayManager
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (void)addOverlay:(id)a3 level:(int64_t)a4 fromProvider:(id)a5;
- (void)addOverlayProvider:(id)a3;
- (void)removeOverlay:(id)a3 fromProvider:(id)a4;
- (void)removeOverlayProvider:(id)a3;
- (void)setMapView:(id)a3;
- (void)setSelectedLabelMarker:(id)a3;
@end

@implementation OverlayManager

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_selectedItemUncertaintyRadiusOverlay == v7)
  {
    v9 = [[MKCircleRenderer alloc] initWithCircle:self->_selectedItemUncertaintyRadiusOverlay];
    [v9 setFillColor:self->_selectedItemUncertaintyRadiusColor];
  }

  else
  {
    v8 = [(NSMapTable *)self->_providerOverlays objectForKey:v7];
    v9 = [v8 mapView:v6 rendererForOverlay:v7];
  }

  return v9;
}

- (void)setSelectedLabelMarker:(id)a3
{
  v5 = a3;
  if (self->_selectedLabelMarker != v5)
  {
    v40 = v5;
    if (self->_selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)self->_mapView removeOverlay:?];
      selectedItemUncertaintyRadiusOverlay = self->_selectedItemUncertaintyRadiusOverlay;
      self->_selectedItemUncertaintyRadiusOverlay = 0;

      selectedItemUncertaintyRadiusColor = self->_selectedItemUncertaintyRadiusColor;
      self->_selectedItemUncertaintyRadiusColor = 0;
    }

    objc_storeStrong(&self->_selectedLabelMarker, a3);
    v8 = [(VKLabelMarker *)self->_selectedLabelMarker featureAnnotation];
    v9 = v8;
    if (v8 && [v8 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      v10 = v9;
      v11 = [v10 parkedCar];
      v12 = v11;
      if (v11)
      {
        [v11 horizontalAccuracy];
        if (v13 > 0.0)
        {
          [v12 coordinate];
          v15 = v14;
          v17 = v16;
          [v12 horizontalAccuracy];
          v19 = [MKCircle circleWithCenterCoordinate:v15 radius:v17, v18];
          v20 = self->_selectedItemUncertaintyRadiusOverlay;
          self->_selectedItemUncertaintyRadiusOverlay = v19;

          v21 = [v10 styleAttributes];
          v22 = [v21 styleAttributes];

          v23 = [GEOFeatureStyleAttributes styleAttributesForCalloutWithAttributes:v22];

          v24 = [(OverlayManager *)self mapView];
          v25 = [v24 window];
          v26 = [v25 screen];
          if (v26)
          {
            v27 = [(OverlayManager *)self mapView];
            [v27 window];
            v28 = v39 = v23;
            v29 = [v28 screen];
            [v29 scale];
            v31 = v30;

            v23 = v39;
          }

          else
          {
            v27 = +[UIScreen mainScreen];
            [v27 scale];
            v31 = v32;
          }

          v33 = [(OverlayManager *)self mapView];
          v34 = [v33 _mapLayer];
          v35 = [v34 iconForStyleAttributes:v23 contentScale:8 size:1 transparent:v31];

          if (v35)
          {
            v36 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v35 fillColor]);
            v37 = [v36 colorWithAlphaComponent:0.200000003];
            v38 = self->_selectedItemUncertaintyRadiusColor;
            self->_selectedItemUncertaintyRadiusColor = v37;
          }

          [(MKMapView *)self->_mapView addOverlay:self->_selectedItemUncertaintyRadiusOverlay level:0];
        }
      }
    }

    v5 = v40;
  }
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  mapView = self->_mapView;
  v8 = v5;
  if (mapView != v5)
  {
    if (self->_selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)mapView removeOverlay:?];
    }

    objc_storeStrong(&self->_mapView, a3);
    selectedItemUncertaintyRadiusOverlay = self->_selectedItemUncertaintyRadiusOverlay;
    if (selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)self->_mapView addOverlay:selectedItemUncertaintyRadiusOverlay level:0];
    }
  }
}

- (void)removeOverlay:(id)a3 fromProvider:(id)a4
{
  mapView = self->_mapView;
  v6 = a3;
  [(MKMapView *)mapView removeOverlay:v6];
  [(NSMapTable *)self->_providerOverlays removeObjectForKey:v6];
}

- (void)addOverlay:(id)a3 level:(int64_t)a4 fromProvider:(id)a5
{
  v12 = a3;
  v8 = a5;
  providerOverlays = self->_providerOverlays;
  if (!providerOverlays)
  {
    v10 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:517 capacity:1];
    v11 = self->_providerOverlays;
    self->_providerOverlays = v10;

    providerOverlays = self->_providerOverlays;
  }

  [(NSMapTable *)providerOverlays setObject:v8 forKey:v12];
  [(MKMapView *)self->_mapView addOverlay:v12 level:a4];
}

- (void)removeOverlayProvider:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_providers removeObject:v4];
  v5 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_providerOverlays;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_providerOverlays objectForKey:v11];
        if (v12 == v4)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  [(MKMapView *)self->_mapView removeOverlays:v5];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)self->_providerOverlays removeObjectForKey:*(*(&v18 + 1) + 8 * j), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)addOverlayProvider:(id)a3
{
  v4 = a3;
  providers = self->_providers;
  v8 = v4;
  if (!providers)
  {
    v6 = [[NSHashTable alloc] initWithOptions:517 capacity:1];
    v7 = self->_providers;
    self->_providers = v6;

    v4 = v8;
    providers = self->_providers;
  }

  [(NSHashTable *)providers addObject:v4];
}

@end