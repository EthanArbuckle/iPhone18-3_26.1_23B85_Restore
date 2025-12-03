@interface VKRouteContext(MKMapViewRouteContextUpdates)
- (uint64_t)_setRouteContextInspectedSegmentIndex:()MKMapViewRouteContextUpdates inspectedStepIndex:;
- (void)_setAlternateRouteContextAnnotationETAComparison:()MKMapViewRouteContextUpdates forRoute:;
- (void)_setRouteContextAnnotationFocus:()MKMapViewRouteContextUpdates forRoute:;
- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates advisoryStyleAttributes:forRoute:;
- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates etaType:tollCurrency:advisoryStyleAttributes:forRoute:;
- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates tollCurrency:forRoute:;
- (void)_setRouteContextAnnotationTexts:()MKMapViewRouteContextUpdates forLegsInRoute:;
- (void)_updateWaypointCaptions;
@end

@implementation VKRouteContext(MKMapViewRouteContextUpdates)

- (void)_updateWaypointCaptions
{
  v27 = *MEMORY[0x1E69E9840];
  routeInfo = [self routeInfo];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  waypoints = [routeInfo waypoints];
  v3 = [waypoints countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v5 = *v21;
    *&v4 = 138543362;
    v19 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(waypoints);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if ([v7 type] == 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            route = [routeInfo route];
            waypoint = [v7 waypoint];
            v10 = [route waypointDisplayInfoForWaypoint:waypoint];

            waypointCaption = [v10 waypointCaption];
            LOBYTE(route) = waypointCaption == 0;

            if (route)
            {
              v12 = v7;
              v13 = MEMORY[0x1E696AEC0];
              chargeInfo = [v12 chargeInfo];
              [chargeInfo chargingTime];
              v16 = [v13 _navigation_stringWithSeconds:v15 abbreviated:1];
              [v12 setChargeTimeText:v16];
            }
          }

          else
          {
            v10 = MKGetMKDefaultLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = v19;
              v25 = v18;
              _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "Received a waypoint of type VKRouteWaypointTypeEVChargeStation, but its class: (%{public}@) didn't match", buf, 0xCu);
            }
          }
        }
      }

      v3 = [waypoints countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v3);
  }
}

- (void)_setAlternateRouteContextAnnotationETAComparison:()MKMapViewRouteContextUpdates forRoute:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  alternateRoutes = [self alternateRoutes];
  v8 = [alternateRoutes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(alternateRoutes);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        route = [v11 route];
        v13 = route == v6;

        if (v13)
        {
          [v11 setEtaComparisionToMain:a3];
          goto LABEL_11;
        }
      }

      v8 = [alternateRoutes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_setRouteContextAnnotationFocus:()MKMapViewRouteContextUpdates forRoute:
{
  v5 = [self _routeInfoForRoute:a4];
  [v5 setHasFocus:a3];
}

- (void)_setRouteContextAnnotationTexts:()MKMapViewRouteContextUpdates forLegsInRoute:
{
  v6 = a3;
  v7 = a4;
  v8 = [self _routeInfoForRoute:v7];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v10 = [v6 count];
  legs = [v7 legs];
  v12 = [legs count];

  if (v10 == v12)
  {
    legs2 = [v7 legs];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __95__VKRouteContext_MKMapViewRouteContextUpdates___setRouteContextAnnotationTexts_forLegsInRoute___block_invoke;
    v18 = &unk_1E76C9AA0;
    v19 = v6;
    v20 = v9;
    [legs2 enumerateObjectsUsingBlock:&v15];
  }

  v14 = [v9 copy];
  [v8 setRouteLegEtaAnnotations:v14];
}

- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates advisoryStyleAttributes:forRoute:
{
  v11 = a3;
  v8 = a4;
  v9 = [self _routeInfoForRoute:a5];
  v10 = [objc_alloc(MEMORY[0x1E69DF490]) initWithEtaText:v11 etaAdvisoryStyleAttributes:v8];
  [v9 setEtaDescription:v10];
}

- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates tollCurrency:forRoute:
{
  v10 = a3;
  v8 = [self _routeInfoForRoute:a5];
  v9 = [objc_alloc(MEMORY[0x1E69DF490]) initWithEtaText:v10 glyphType:a4 != 0];
  [v8 setEtaDescription:v9];
}

- (void)_setRouteContextAnnotationText:()MKMapViewRouteContextUpdates etaType:tollCurrency:advisoryStyleAttributes:forRoute:
{
  v15 = a3;
  v12 = a6;
  v13 = [self _routeInfoForRoute:a7];
  if (a4 || v12)
  {
    v14 = [objc_alloc(MEMORY[0x1E69DF490]) initWithEtaText:v15 etaAdvisoryStyleAttributes:v12 routeEtaType:a4];
    [v13 setEtaDescription:v14];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69DF490]) initWithEtaText:v15 glyphType:a5 != 0];
    [v13 setEtaDescription:v14];
  }
}

- (uint64_t)_setRouteContextInspectedSegmentIndex:()MKMapViewRouteContextUpdates inspectedStepIndex:
{
  [self setInspectedSegmentIndex:?];

  return [self setInspectedStepIndex:a4];
}

@end