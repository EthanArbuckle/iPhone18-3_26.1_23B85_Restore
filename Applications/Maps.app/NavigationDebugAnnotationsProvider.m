@interface NavigationDebugAnnotationsProvider
- (NavigationDebugAnnotationsProvider)initWithMapView:(id)a3;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_addArrivalRegionOverlay:(id)a3 fillColor:(id)a4 strokeColor:(id)a5 lineWidth:(double)a6;
- (void)_addDebugLocationAnnotationMatchedLocation:(id)a3;
- (void)_addLocationAnnotation:(id)a3 history:(id)a4;
- (void)_addStepOrManeuverOverlayForCoordinate:(id)a3 color:(id)a4;
- (void)_clearDebugHistoryAnnotations;
- (void)_clearStepAndManeuverOverlays;
- (void)_updateArrivalOverlaysWithRoute:(id)a3;
- (void)_updateStepAndManeuverOverlaysWithRoute:(id)a3;
- (void)clearAllAnnotationsAndOverlays;
- (void)dealloc;
- (void)updateWithRoute:(id)a3;
@end

@implementation NavigationDebugAnnotationsProvider

- (void)_addArrivalRegionOverlay:(id)a3 fillColor:(id)a4 strokeColor:(id)a5 lineWidth:(double)a6
{
  v21 = a4;
  v10 = a5;
  v11 = [a3 coordinates];
  v12 = malloc_type_malloc(16 * [v11 count], 0x1000040451B5BE8uLL);
  if ([v11 count])
  {
    v13 = 0;
    v14 = v12 + 1;
    do
    {
      v15 = [v11 objectAtIndexedSubscript:v13];
      [v15 lat];
      v17 = v16;
      [v15 lng];
      *(v14 - 1) = v17;
      *v14 = v18;

      ++v13;
      v14 += 2;
    }

    while (v13 < [v11 count]);
  }

  v19 = +[MKPolygon polygonWithCoordinates:count:](MKPolygon, "polygonWithCoordinates:count:", v12, [v11 count]);
  free(v12);
  v20 = [[MKPolygonRenderer alloc] initWithPolygon:v19];
  [v20 setFillColor:v21];
  [v20 setStrokeColor:v10];
  [v20 setLineWidth:a6];
  [(NSMapTable *)self->_renderersForOverlays setObject:v20 forKey:v19];
  [(MKMapView *)self->_mapView addOverlay:v19 level:0];
}

- (void)_updateArrivalOverlaysWithRoute:(id)a3
{
  v4 = a3;
  mapView = self->_mapView;
  if (mapView)
  {
    v6 = [(NSMapTable *)self->_renderersForOverlays keyEnumerator];
    v7 = [v6 allObjects];
    [(MKMapView *)mapView removeOverlays:v7];

    renderersForOverlays = self->_renderersForOverlays;
    self->_renderersForOverlays = 0;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = [v4 legs];
    v52 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v52)
    {
      v51 = *v64;
      v49 = v4;
      do
      {
        for (i = 0; i != v52; i = i + 1)
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v63 + 1) + 8 * i) arrivalParameters];
          if (v10)
          {
            if (!self->_renderersForOverlays)
            {
              v11 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
              v12 = self->_renderersForOverlays;
              self->_renderersForOverlays = v11;
            }

            v54 = i;
            if (GEOConfigGetBOOL() && [v4 pointCount] && objc_msgSend(v10, "endOfRouteDistanceThreshold"))
            {
              [v4 pointAtRouteCoordinate:{objc_msgSend(v4, "routeCoordinateAtDistance:beforeRouteCoordinate:", objc_msgSend(v4, "pointCount") - 1, objc_msgSend(v10, "endOfRouteDistanceThreshold"))}];
              v13 = [MKCircle circleWithCenterCoordinate:"circleWithCenterCoordinate:radius:" radius:?];
              v14 = [[MKCircleRenderer alloc] initWithCircle:v13];
              v15 = +[UIColor greenColor];
              v16 = [v15 colorWithAlphaComponent:0.8];
              [v14 setFillColor:v16];

              [(NSMapTable *)self->_renderersForOverlays setObject:v14 forKey:v13];
              [(MKMapView *)self->_mapView addOverlay:v13 level:0];
            }

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v53 = v10;
            v17 = [v10 arrivalMapRegions];
            v18 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v60;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v60 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v59 + 1) + 8 * j);
                  v23 = [v22 arrivalRegionAction];
                  if (v23 <= 4)
                  {
                    if (v23 == 2 || v23 == 3)
                    {
                      if (!GEOConfigGetBOOL())
                      {
                        continue;
                      }

                      v33 = +[UIColor greenColor];
                      v28 = [v33 colorWithAlphaComponent:0.2];

                      v32 = +[UIColor redColor];
LABEL_40:
                      v29 = v32;
                      v30 = 2.0;
                      goto LABEL_41;
                    }

                    if (v23 == 4 && GEOConfigGetBOOL())
                    {
                      v27 = +[UIColor orangeColor];
                      v28 = [v27 colorWithAlphaComponent:0.2];

                      v29 = +[UIColor blackColor];
                      v30 = 0.0;
                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    if (v23 <= 6)
                    {
                      if (v23 == 5)
                      {
                        if (!GEOConfigGetBOOL())
                        {
                          continue;
                        }

                        v31 = +[UIColor cyanColor];
                        v28 = [v31 colorWithAlphaComponent:0.2];

                        v32 = +[UIColor grayColor];
                        goto LABEL_40;
                      }

                      if (!GEOConfigGetBOOL())
                      {
                        continue;
                      }

                      v24 = +[UIColor yellowColor];
                      v25 = v24;
                      v26 = 0.15;
LABEL_37:
                      v28 = [v24 colorWithAlphaComponent:v26];

                      v29 = +[UIColor greenColor];
                      v30 = 3.0;
LABEL_41:
                      v34 = [v22 arrivalRegion];
                      [(NavigationDebugAnnotationsProvider *)self _addArrivalRegionOverlay:v34 fillColor:v28 strokeColor:v29 lineWidth:v30];

                      continue;
                    }

                    if ((v23 == 7 || v23 == 8) && GEOConfigGetBOOL())
                    {
                      v24 = +[UIColor magentaColor];
                      v25 = v24;
                      v26 = 0.3;
                      goto LABEL_37;
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
              }

              while (v19);
            }

            v10 = v53;
            i = v54;
            if (GEOConfigGetBOOL())
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v35 = [v53 arrivalPoints];
              v36 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v56;
                do
                {
                  for (k = 0; k != v37; k = k + 1)
                  {
                    if (*v56 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v55 + 1) + 8 * k);
                    v41 = [v40 point];
                    [v41 coordinate];

                    CLLocationCoordinate2DFromGEOLocationCoordinate2D();
                    v44 = +[MKCircle circleWithCenterCoordinate:radius:](MKCircle, "circleWithCenterCoordinate:radius:", v42, v43, [v40 radius]);
                    v45 = [[MKCircleRenderer alloc] initWithCircle:v44];
                    v46 = +[UIColor greenColor];
                    v47 = [v46 colorWithAlphaComponent:0.3];
                    [v45 setFillColor:v47];

                    v48 = +[UIColor redColor];
                    [v45 setStrokeColor:v48];

                    [v45 setLineWidth:2.0];
                    [(NSMapTable *)self->_renderersForOverlays setObject:v45 forKey:v44];
                    [(MKMapView *)self->_mapView addOverlay:v44 level:0];
                  }

                  v37 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
                }

                while (v37);
              }

              v4 = v49;
              v10 = v53;
              i = v54;
            }
          }
        }

        v52 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v52);
    }
  }
}

- (void)_clearStepAndManeuverOverlays
{
  mapView = self->_mapView;
  v4 = [(NSMapTable *)self->_stepAndManeuverOverlays keyEnumerator];
  v5 = [v4 allObjects];
  [(MKMapView *)mapView removeOverlays:v5];

  stepAndManeuverOverlays = self->_stepAndManeuverOverlays;
  self->_stepAndManeuverOverlays = 0;
}

- (void)_addStepOrManeuverOverlayForCoordinate:(id)a3 color:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = CLLocationCoordinate2DMake(var0, var1);
  v10 = [MKCircle circleWithCenterCoordinate:v8.latitude radius:v8.longitude, 2.0];
  v9 = [[MKCircleRenderer alloc] initWithCircle:v10];
  [v9 setFillColor:v7];

  [(NSMapTable *)self->_stepAndManeuverOverlays setObject:v9 forKey:v10];
  [(MKMapView *)self->_mapView addOverlay:v10];
}

- (void)_updateStepAndManeuverOverlaysWithRoute:(id)a3
{
  v4 = a3;
  [(NavigationDebugAnnotationsProvider *)self _clearStepAndManeuverOverlays];
  if (self->_mapView)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"NavigationDrawManeuverPoints"];

    if (v6)
    {
      if (!self->_stepAndManeuverOverlays)
      {
        v7 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
        stepAndManeuverOverlays = self->_stepAndManeuverOverlays;
        self->_stepAndManeuverOverlays = v7;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [v4 steps];
      v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v38 = *v40;
        do
        {
          v12 = 0;
          v13 = v11;
          do
          {
            if (*v40 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v39 + 1) + 8 * v12);
            if (v13)
            {
              [v13 endRouteCoordinate];
            }

            v15 = [v14 startRouteCoordinate];
            if ((GEOPolylineCoordinateEqual() & 1) == 0)
            {
              [v4 pointAtRouteCoordinate:v15];
              v17 = v16;
              v19 = v18;
              v21 = v20;
              v22 = +[UIColor blueColor];
              [(NavigationDebugAnnotationsProvider *)self _addStepOrManeuverOverlayForCoordinate:v22 color:v17, v19, v21];
            }

            [v4 pointAtRouteCoordinate:{objc_msgSend(v14, "maneuverStartRouteCoordinate")}];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v29 = +[UIColor greenColor];
            [(NavigationDebugAnnotationsProvider *)self _addStepOrManeuverOverlayForCoordinate:v29 color:v24, v26, v28];

            [v4 pointAtRouteCoordinate:{objc_msgSend(v14, "endRouteCoordinate")}];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v36 = +[UIColor redColor];
            [(NavigationDebugAnnotationsProvider *)self _addStepOrManeuverOverlayForCoordinate:v36 color:v31, v33, v35];

            v11 = v14;
            v12 = v12 + 1;
            v13 = v11;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_clearDebugHistoryAnnotations
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = self->_userLocationHistory;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MKMapView *)self->_mapView removeAnnotation:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_userLocationHistory removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_rawUserLocationHistory;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MKMapView *)self->_mapView removeAnnotation:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_rawUserLocationHistory removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = self->_matchedUserLocationHistory;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MKMapView *)self->_mapView removeAnnotation:v20, v21];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  [(NSMutableArray *)self->_matchedUserLocationHistory removeAllObjects];
}

- (void)_addLocationAnnotation:(id)a3 history:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 count] == 3)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MKMapView *)self->_mapView removeAnnotation:v7];
    }

    [v6 removeObjectAtIndex:0];
  }

  if (v9)
  {
    [v6 addObject:v9];
  }

  else
  {
    v8 = +[NSNull null];
    [v6 addObject:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKMapView *)self->_mapView addAnnotation:v9];
  }
}

- (void)_addDebugLocationAnnotationMatchedLocation:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"NavigationShowRawGPSTrail"];

  if (v6)
  {
    if (!self->_locationShifter)
    {
      v7 = objc_alloc_init(GEOLocationShifter);
      locationShifter = self->_locationShifter;
      self->_locationShifter = v7;
    }

    v9 = [v4 rawLocation];
    [v4 rawCoordinate];
    if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:?])
    {
      v10 = [[GEOLocation alloc] initWithCLLocation:v4];
      v11 = [v10 rawCoordinate];
      v40 = 0uLL;
      if ([(GEOLocationShifter *)self->_locationShifter shiftLatLng:v11 accuracy:&v40 shiftedCoordinate:0 shiftedAccuracy:0.0])
      {
        v38 = 0u;
        memset(v39, 0, 60);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        if (v9)
        {
          [v9 clientLocation];
        }

        *(v39 + 4) = v40;
        v12 = [CLLocation alloc];
        v31[6] = v39[0];
        v31[7] = v39[1];
        v32[0] = v39[2];
        *(v32 + 12) = *(&v39[2] + 12);
        v31[2] = v35;
        v31[3] = v36;
        v31[4] = v37;
        v31[5] = v38;
        v31[0] = v33;
        v31[1] = v34;
        v13 = [v12 initWithClientLocation:v31];
      }

      else
      {

        v13 = 0;
      }

      v9 = v13;
    }

    if (v9)
    {
      v14 = objc_alloc_init(DebugLocationAnnotation);
      [(DebugLocationAnnotation *)v14 setLocation:v9];
      -[DebugLocationAnnotation setLocationType:](v14, "setLocationType:", [v4 isProjected]);
      [(DebugLocationAnnotation *)v14 setNavType:self->_userLocationMarkerMode];
      v15 = [v4 rawLocation];
      v16 = [v15 _navigation_hasMatch];

      if (v16)
      {
        v17 = objc_alloc_init(DebugLocationAnnotation);
        v18 = [v4 rawLocation];
        [(DebugLocationAnnotation *)v17 setLocation:v18];

        [(DebugLocationAnnotation *)v17 setLocationType:3];
        [(DebugLocationAnnotation *)v17 setNavType:self->_userLocationMarkerMode];
      }

      else
      {
        v17 = 0;
      }

      rawUserLocationHistory = self->_rawUserLocationHistory;
      if (!rawUserLocationHistory)
      {
        v20 = [[NSMutableArray alloc] initWithCapacity:3];
        v21 = self->_rawUserLocationHistory;
        self->_rawUserLocationHistory = v20;

        rawUserLocationHistory = self->_rawUserLocationHistory;
      }

      [(NavigationDebugAnnotationsProvider *)self _addLocationAnnotation:v14 history:rawUserLocationHistory];
      userLocationHistory = self->_userLocationHistory;
      if (!userLocationHistory)
      {
        v23 = [[NSMutableArray alloc] initWithCapacity:3];
        v24 = self->_userLocationHistory;
        self->_userLocationHistory = v23;

        userLocationHistory = self->_userLocationHistory;
      }

      [(NavigationDebugAnnotationsProvider *)self _addLocationAnnotation:v17 history:userLocationHistory];
    }
  }

  v25 = +[NSUserDefaults standardUserDefaults];
  v26 = [v25 BOOLForKey:@"NavigationShowMatchedLocationTrail"];

  if (v26)
  {
    v27 = objc_alloc_init(DebugLocationAnnotation);
    [(DebugLocationAnnotation *)v27 setLocation:v4];
    [(DebugLocationAnnotation *)v27 setLocationType:2];
    [(DebugLocationAnnotation *)v27 setNavType:self->_userLocationMarkerMode];
    matchedUserLocationHistory = self->_matchedUserLocationHistory;
    if (!matchedUserLocationHistory)
    {
      v29 = [[NSMutableArray alloc] initWithCapacity:3];
      v30 = self->_matchedUserLocationHistory;
      self->_matchedUserLocationHistory = v29;

      matchedUserLocationHistory = self->_matchedUserLocationHistory;
    }

    [(NavigationDebugAnnotationsProvider *)self _addLocationAnnotation:v27 history:matchedUserLocationHistory];
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a4;
  if (self->_mapView == a3)
  {
    v8 = [(NSMapTable *)self->_renderersForOverlays objectForKey:v6];
    if (!v8)
    {
      v8 = [(NSMapTable *)self->_stepAndManeuverOverlays objectForKey:v6];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_mapView != v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    [v9 radius];
    if (v10 <= 0.0)
    {
      v8 = [(MKMapView *)v6 dequeueReusableAnnotationViewWithIdentifier:@"NavCircle"];
      if (!v8)
      {
        v8 = [[CircleAnnotationView alloc] initWithAnnotation:v9 reuseIdentifier:@"NavCircle"];
      }
    }

    else
    {
      v8 = [(MKMapView *)v6 dequeueReusableAnnotationViewWithIdentifier:@"NavDistanceCircle"];
      if (!v8)
      {
        v8 = [[DistanceCircleAnnotationView alloc] initWithAnnotation:v9 reuseIdentifier:@"NavDistanceCircle"];
      }

      [v9 radius];
      [(DistanceCircleAnnotationView *)v8 setDistanceRadius:?];
    }

    [v9 red];
    v14 = v13;
    [v9 green];
    v16 = v15;
    [v9 blue];
    v18 = v17;
    [v9 alpha];
    [(CircleAnnotationView *)v8 setColorRed:v14 green:v16 blue:v18 alpha:v19];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_15;
    }

    v11 = v7;
    v12 = [(MKMapView *)v6 dequeueReusableAnnotationViewWithIdentifier:@"NavDebugLocation"];
    if (v12)
    {
      v8 = v12;
      [(DistanceCircleAnnotationView *)v12 setDebugLocationAnnotation:v11];
    }

    else
    {
      v8 = [[DebugLocationAnnotationView alloc] initWithAnnotation:v11 debugLocationAnnotation:v11 reuseIdentifier:@"NavDebugLocation"];
    }
  }

LABEL_15:

  return v8;
}

- (void)clearAllAnnotationsAndOverlays
{
  [(NavigationDebugAnnotationsProvider *)self _clearAllDebugAnnotations];
  [(NavigationDebugAnnotationsProvider *)self _clearStepAndManeuverOverlays];
  mapView = self->_mapView;
  v4 = [(NSMapTable *)self->_renderersForOverlays keyEnumerator];
  v5 = [v4 allObjects];
  [(MKMapView *)mapView removeOverlays:v5];

  renderersForOverlays = self->_renderersForOverlays;
  self->_renderersForOverlays = 0;
}

- (void)updateWithRoute:(id)a3
{
  objc_storeStrong(&self->_route, a3);
  v5 = a3;
  [(NavigationDebugAnnotationsProvider *)self _updateArrivalOverlaysWithRoute:v5];
  [(NavigationDebugAnnotationsProvider *)self _updateStepAndManeuverOverlaysWithRoute:v5];
}

- (void)dealloc
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_arrivalRegionChangedListeners;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        GEOConfigRemoveBlockListener();
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  arrivalRegionChangedListeners = self->_arrivalRegionChangedListeners;
  self->_arrivalRegionChangedListeners = 0;

  v9.receiver = self;
  v9.super_class = NavigationDebugAnnotationsProvider;
  [(NavigationDebugAnnotationsProvider *)&v9 dealloc];
}

- (NavigationDebugAnnotationsProvider)initWithMapView:(id)a3
{
  v5 = a3;
  v43.receiver = self;
  v43.super_class = NavigationDebugAnnotationsProvider;
  v6 = [(NavigationDebugAnnotationsProvider *)&v43 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, a3);
    v8 = [[NSMutableArray alloc] initWithCapacity:3];
    userLocationHistory = v7->_userLocationHistory;
    v7->_userLocationHistory = v8;

    v10 = [[NSMutableArray alloc] initWithCapacity:3];
    rawUserLocationHistory = v7->_rawUserLocationHistory;
    v7->_rawUserLocationHistory = v10;

    v12 = [[NSMutableArray alloc] initWithCapacity:3];
    matchedUserLocationHistory = v7->_matchedUserLocationHistory;
    v7->_matchedUserLocationHistory = v12;

    objc_initWeak(&location, v7);
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_100D4FF9C;
    v40 = &unk_101657B58;
    objc_copyWeak(&v41, &location);
    v14 = objc_retainBlock(&v37);
    v15 = [NSMutableArray array:v37];
    arrivalRegionChangedListeners = v7->_arrivalRegionChangedListeners;
    v7->_arrivalRegionChangedListeners = v15;

    v17 = v7->_arrivalRegionChangedListeners;
    v18 = &_dispatch_main_q;
    v19 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v17 addObject:v19];

    v20 = v7->_arrivalRegionChangedListeners;
    v21 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v20 addObject:v21];

    v22 = v7->_arrivalRegionChangedListeners;
    v23 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v22 addObject:v23];

    v24 = v7->_arrivalRegionChangedListeners;
    v25 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v24 addObject:v25];

    v26 = v7->_arrivalRegionChangedListeners;
    v27 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v26 addObject:v27];

    v28 = v7->_arrivalRegionChangedListeners;
    v29 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v28 addObject:v29];

    v30 = v7->_arrivalRegionChangedListeners;
    v31 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v30 addObject:v31];

    v32 = v7->_arrivalRegionChangedListeners;
    v33 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v32 addObject:v33];

    v34 = v7->_arrivalRegionChangedListeners;
    v35 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v34 addObject:v35];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v7;
}

@end