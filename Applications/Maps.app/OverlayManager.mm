@interface OverlayManager
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (void)addOverlay:(id)overlay level:(int64_t)level fromProvider:(id)provider;
- (void)addOverlayProvider:(id)provider;
- (void)removeOverlay:(id)overlay fromProvider:(id)provider;
- (void)removeOverlayProvider:(id)provider;
- (void)setMapView:(id)view;
- (void)setSelectedLabelMarker:(id)marker;
@end

@implementation OverlayManager

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  overlayCopy = overlay;
  if (self->_selectedItemUncertaintyRadiusOverlay == overlayCopy)
  {
    v9 = [[MKCircleRenderer alloc] initWithCircle:self->_selectedItemUncertaintyRadiusOverlay];
    [v9 setFillColor:self->_selectedItemUncertaintyRadiusColor];
  }

  else
  {
    v8 = [(NSMapTable *)self->_providerOverlays objectForKey:overlayCopy];
    v9 = [v8 mapView:viewCopy rendererForOverlay:overlayCopy];
  }

  return v9;
}

- (void)setSelectedLabelMarker:(id)marker
{
  markerCopy = marker;
  if (self->_selectedLabelMarker != markerCopy)
  {
    v40 = markerCopy;
    if (self->_selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)self->_mapView removeOverlay:?];
      selectedItemUncertaintyRadiusOverlay = self->_selectedItemUncertaintyRadiusOverlay;
      self->_selectedItemUncertaintyRadiusOverlay = 0;

      selectedItemUncertaintyRadiusColor = self->_selectedItemUncertaintyRadiusColor;
      self->_selectedItemUncertaintyRadiusColor = 0;
    }

    objc_storeStrong(&self->_selectedLabelMarker, marker);
    featureAnnotation = [(VKLabelMarker *)self->_selectedLabelMarker featureAnnotation];
    v9 = featureAnnotation;
    if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      v10 = v9;
      parkedCar = [v10 parkedCar];
      v12 = parkedCar;
      if (parkedCar)
      {
        [parkedCar horizontalAccuracy];
        if (v13 > 0.0)
        {
          [v12 coordinate];
          v15 = v14;
          v17 = v16;
          [v12 horizontalAccuracy];
          v19 = [MKCircle circleWithCenterCoordinate:v15 radius:v17, v18];
          v20 = self->_selectedItemUncertaintyRadiusOverlay;
          self->_selectedItemUncertaintyRadiusOverlay = v19;

          styleAttributes = [v10 styleAttributes];
          v21StyleAttributes = [styleAttributes styleAttributes];

          v23 = [GEOFeatureStyleAttributes styleAttributesForCalloutWithAttributes:v21StyleAttributes];

          mapView = [(OverlayManager *)self mapView];
          window = [mapView window];
          screen = [window screen];
          if (screen)
          {
            mapView2 = [(OverlayManager *)self mapView];
            [mapView2 window];
            v28 = v39 = v23;
            screen2 = [v28 screen];
            [screen2 scale];
            v31 = v30;

            v23 = v39;
          }

          else
          {
            mapView2 = +[UIScreen mainScreen];
            [mapView2 scale];
            v31 = v32;
          }

          mapView3 = [(OverlayManager *)self mapView];
          _mapLayer = [mapView3 _mapLayer];
          v35 = [_mapLayer iconForStyleAttributes:v23 contentScale:8 size:1 transparent:v31];

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

    markerCopy = v40;
  }
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  mapView = self->_mapView;
  v8 = viewCopy;
  if (mapView != viewCopy)
  {
    if (self->_selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)mapView removeOverlay:?];
    }

    objc_storeStrong(&self->_mapView, view);
    selectedItemUncertaintyRadiusOverlay = self->_selectedItemUncertaintyRadiusOverlay;
    if (selectedItemUncertaintyRadiusOverlay)
    {
      [(MKMapView *)self->_mapView addOverlay:selectedItemUncertaintyRadiusOverlay level:0];
    }
  }
}

- (void)removeOverlay:(id)overlay fromProvider:(id)provider
{
  mapView = self->_mapView;
  overlayCopy = overlay;
  [(MKMapView *)mapView removeOverlay:overlayCopy];
  [(NSMapTable *)self->_providerOverlays removeObjectForKey:overlayCopy];
}

- (void)addOverlay:(id)overlay level:(int64_t)level fromProvider:(id)provider
{
  overlayCopy = overlay;
  providerCopy = provider;
  providerOverlays = self->_providerOverlays;
  if (!providerOverlays)
  {
    v10 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:517 capacity:1];
    v11 = self->_providerOverlays;
    self->_providerOverlays = v10;

    providerOverlays = self->_providerOverlays;
  }

  [(NSMapTable *)providerOverlays setObject:providerCopy forKey:overlayCopy];
  [(MKMapView *)self->_mapView addOverlay:overlayCopy level:level];
}

- (void)removeOverlayProvider:(id)provider
{
  providerCopy = provider;
  [(NSHashTable *)self->_providers removeObject:providerCopy];
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
        if (v12 == providerCopy)
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

- (void)addOverlayProvider:(id)provider
{
  providerCopy = provider;
  providers = self->_providers;
  v8 = providerCopy;
  if (!providers)
  {
    v6 = [[NSHashTable alloc] initWithOptions:517 capacity:1];
    v7 = self->_providers;
    self->_providers = v6;

    providerCopy = v8;
    providers = self->_providers;
  }

  [(NSHashTable *)providers addObject:providerCopy];
}

@end