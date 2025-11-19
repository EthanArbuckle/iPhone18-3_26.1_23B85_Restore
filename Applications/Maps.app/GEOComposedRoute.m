@interface GEOComposedRoute
+ (id)_maps_composedRouteWithPersistentData:(id)a3;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingMapRect;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)a3;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)a3 fromPoint:(unint64_t)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_maps_closestMapPointToMapPoint:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)arrivalStorefrontLocation;
- (BOOL)_isChargingWaypoint:(id)a3;
- (BOOL)_isStartWaypoint:(id)a3;
- (BOOL)_maps_isEqualToComposedRoute:(id)a3;
- (BOOL)carplayDestinationHandoffRequired;
- (BOOL)hasArrivalStorefrontGeometry;
- (BOOL)isLegIndexOfLastLeg:(unint64_t)a3;
- (BOOL)shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:(unint64_t)a3;
- (CLLocationCoordinate2D)_mkCoordAt:(unsigned int)a3;
- (GEOComposedRouteAdvisory)clickableAdvisory;
- (GEOComposedRouteStep)startRouteStep;
- (GuidanceETA)guidanceETA;
- (MNTraceRecordingData)_maps_traceRecordingData;
- (NSArray)_maps_directionsWaypoints;
- (NSArray)_maps_trafficIncidentsOnRoute;
- (NSArray)composedGuidanceEventsWithLaneGuidance;
- (NSArray)composedGuidanceEventsWithSignGuidance;
- (NSArray)shareETAWaypointContacts;
- (NSArray)steppingSigns;
- (NSArray)transitLinesOnRoute;
- (NSData)rideSelectionsAsNSData;
- (NSDate)transitRouteArrivalDate;
- (NSString)abbreviatedDistance;
- (NSString)accessibilityExpandedDistance;
- (NSString)clientPickingDescription;
- (NSString)expandedDistance;
- (NSString)expandedTravelTime;
- (TransitDirectionsStepsListDataProvider)transitDirectionsStepsListDataProvider;
- (id)_arrivalInstructionStringForStep:(id)a3;
- (id)_maps_convertToNavigableRouteWithTraits:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5;
- (id)_maps_routeRequestStorage;
- (id)_maps_trafficIncidentsObservers:(BOOL)a3;
- (id)_signForTransitStationStep:(id)a3;
- (id)_signForTransitTripStep:(id)a3;
- (id)_signForWalkingStep:(id)a3;
- (id)advisoriesForAutoSharingContacts:(id)a3 scale:(double)a4;
- (id)advisoriesStyleAttributes;
- (id)arrivalInstructionStringForLegIndex:(unint64_t)a3;
- (id)arrivalInstructionStringForStepIndex:(unint64_t)a3;
- (id)batteryLevelForStepIndex:(unint64_t)a3;
- (id)bookmarkRepresentation;
- (id)chargingStationInfos;
- (id)combinedDescriptionForFont:(id)a3;
- (id)distanceAndElevationString;
- (id)nextLaneGuidanceEventAfterEvent:(id)a3;
- (id)nextWaypoint;
- (id)rapDestinationTitle;
- (id)secondaryText;
- (id)tertiaryText;
- (id)timeAndElevationDescriptionStringWithAttributes:(id)a3;
- (id)timeStringWithAttributes:(id)a3;
- (id)waypointsAfterStepIndex:(unint64_t)a3 legIndex:(unint64_t *)a4;
- (unint64_t)_maps_routeIndex;
- (unint64_t)mapType;
- (unint64_t)suggestedNavigationModeForLocation:(id)a3 context:(unint64_t)a4 ignoreDeviceNavigability:(BOOL)a5;
- (unsigned)tollCurrencyType;
- (void)_getMapPoints:(id *)a3 count:(unint64_t *)a4 startIndex:(unint64_t)a5 limit:(unint64_t)a6;
- (void)_maps_addTrafficIncidentsObserver:(id)a3;
- (void)_maps_getMapPoints:(id *)a3 count:(unint64_t *)a4;
- (void)_maps_getMapPoints:(id *)a3 count:(unint64_t *)a4 forStep:(id)a5;
- (void)_maps_refreshTrafficIncidentsOnRoute;
- (void)_maps_removeTrafficIncidentsObserver:(id)a3;
- (void)_maps_routeCollectionOnly_setRouteCollectionWhenNil:(id)a3;
- (void)updateCustomRouteStartEndCaptions;
- (void)updateMyLocationAnchorNames;
- (void)updateWaypointStyleAttributesWithItemSource:(id)a3 personalizedItemManager:(id)a4;
@end

@implementation GEOComposedRoute

- (NSArray)shareETAWaypointContacts
{
  if (+[AddressBookManager addressBookAllowed])
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v4 = +[SharedTripSuggestionsCache sharedInstance];
    v5 = [v4 suggestedContacts];

    v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          v11 = [v10 contact];
          v12 = [v11 identifier];
          [v3 setObject:v10 forKey:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    v13 = +[NSMutableArray array];
    v14 = +[AddressBookManager sharedManager];
    v15 = [v14 meCard];
    v38 = [v15 identifier];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(GEOComposedRoute *)self waypoints];
    v16 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * j);
          v21 = [v20 findMyHandle];
          v22 = [v21 contact];

          if (v22)
          {
            v23 = [v20 findMyHandle];
            v24 = [v23 contact];

            v25 = [v20 findMyHandle];
            v26 = [v25 identifier];
          }

          else
          {
            v27 = [v20 addressBookAddress];
            v26 = [v27 contact];

            if (!v26)
            {
              v24 = 0;
              goto LABEL_27;
            }

            v25 = [v20 addressBookAddress];
            v24 = [v25 contact];
            v26 = 0;
          }

          if (v24)
          {
            v28 = [v24 identifier];
            v29 = [v28 isEqualToString:v38];

            if ((v29 & 1) == 0)
            {
              v30 = [v24 identifier];
              v31 = [v3 objectForKey:v30];

              if (v31)
              {
                goto LABEL_26;
              }

              if (!v26)
              {
                v36 = [v20 addressBookAddress];
                v32 = [v36 contact];
                [MSPSharedTripContact contactsFromCNContact:v32];
                v34 = v33 = v13;
                v31 = [v34 firstObject];

                v13 = v33;
                if (!v31)
                {
                  goto LABEL_27;
                }

LABEL_26:
                [v13 addObject:v31];

                goto LABEL_27;
              }

              v31 = [[MSPSharedTripContact alloc] initWithContact:v24 handle:v26];
              if (v31)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_27:
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_maps_refreshTrafficIncidentsOnRoute
{
  v13 = [(GEOComposedRoute *)self traffic];
  v3 = [v13 trafficIncidents];
  v4 = [v13 trafficIncidentOffsets];
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    if ([v3 count])
    {
      v7 = 0;
      do
      {
        v8 = [v3 objectAtIndexedSubscript:v7];
        v9 = [v4 objectAtIndexedSubscript:v7];
        v10 = [[VKTrafficIncidentFeature alloc] initWithRouteIncident:v8 routeOffsetInMeters:objc_msgSend(v9 routeRelevance:"unsignedIntValue") onRoute:{3, self}];
        [v6 addObject:v10];

        ++v7;
      }

      while (v7 < [v3 count]);
    }

    v11 = [v6 copy];
    objc_setAssociatedObject(self, &unk_10195D0F1, v11, 1);
    v12 = [(GEOComposedRoute *)self _maps_trafficIncidentsObservers:0];
    [v12 composedRoute:self didUpdateTrafficIncidentsOnRoute:v11];
  }
}

- (NSArray)_maps_trafficIncidentsOnRoute
{
  v3 = objc_getAssociatedObject(self, &unk_10195D0F1);
  if (!v3)
  {
    [(GEOComposedRoute *)self _maps_refreshTrafficIncidentsOnRoute];
    v3 = objc_getAssociatedObject(self, &unk_10195D0F1);
    if (!v3)
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [NSString stringWithFormat:@"trafficIncidentsOnRoute should be non-nil after forced refresh (empty permitted)"];
        v9 = 136316162;
        v10 = "[GEOComposedRoute(TrafficIncidents) _maps_trafficIncidentsOnRoute]";
        v11 = 2080;
        v12 = "GEOComposedRoute+TrafficIncidents.m";
        v13 = 1024;
        v14 = 63;
        v15 = 2080;
        v16 = "trafficIncidentsOnRoute != nil";
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v9, 0x30u);
      }

      if (sub_100E03634())
      {
        v7 = sub_10006D178();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = +[NSThread callStackSymbols];
          v9 = 138412290;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
        }
      }

      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)_maps_directionsWaypoints
{
  v3 = objc_getAssociatedObject(self, &unk_10195CC30);
  if (!v3)
  {
    v4 = [(GEOComposedRoute *)self waypoints];
    v3 = sub_100021DB0(v4, &stru_101623A00);

    objc_setAssociatedObject(self, &unk_10195CC30, v3, 1);
  }

  return v3;
}

- (BOOL)_isChargingWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self _maps_directionsWaypoints];
  v6 = [v5 indexOfObject:v4];

  v7 = [(GEOComposedRoute *)self waypoints];
  if (v6 >= [v7 count])
  {
    v9 = 0;
  }

  else
  {
    v8 = [(GEOComposedRoute *)self waypoints];
    v9 = [v8 objectAtIndexedSubscript:v6];
  }

  v10 = [v9 chargingInfo];
  v11 = v10 != 0;

  return v11;
}

- (BOOL)_isStartWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self _maps_directionsWaypoints];
  v6 = [v5 firstObject];
  v7 = [v6 isEqual:v4];

  return v7;
}

- (void)_maps_removeTrafficIncidentsObserver:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self _maps_trafficIncidentsObservers:0];
  [v5 unregisterObserver:v4];
}

- (void)_maps_addTrafficIncidentsObserver:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self _maps_trafficIncidentsObservers:1];
  [v5 registerObserver:v4];
}

- (id)_maps_trafficIncidentsObservers:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, &unk_10195D0F2);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___GEOComposedRouteTrafficIncidentsObserver queue:&_dispatch_main_q];
    objc_setAssociatedObject(self, &unk_10195D0F2, v5, 1);
  }

  return v5;
}

- (void)updateMyLocationAnchorNames
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(GEOComposedRoute *)self waypoints];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isCurrentLocation])
        {
          v9 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:v8];
          [v9 _routeCreation_setMyLocationName];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateCustomRouteStartEndCaptions
{
  v3 = [(GEOComposedRoute *)self waypoints];
  v10 = [v3 firstObject];

  v4 = [(GEOComposedRoute *)self waypoints];
  v5 = [v4 lastObject];

  v6 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:v10];
  v7 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:v5];
  v8 = [(GEOComposedRoute *)self anchorPoints];
  v9 = [v8 startAndEndAreTheSame];

  if (v9)
  {
    [v7 _routeCreation_setStartEndWaypointCaption];
  }

  else
  {
    [v6 _routeCreation_setStartWaypointCaption];
    [v7 _routeCreation_setEndWaypointCaption];
  }
}

- (void)updateWaypointStyleAttributesWithItemSource:(id)a3 personalizedItemManager:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = [(GEOComposedRoute *)self waypoints];
  v8 = +[NSMapTable strongToStrongObjectsMapTable];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 styleAttributesData];

        if (!v15)
        {
          v16 = [[SearchResult alloc] initWithComposedWaypoint:v14];
          v17 = [v6 itemMatchingLocation:v16];
          if (v17)
          {
            [v8 setObject:v14 forKey:v17];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = sub_100798A3C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v8 count];
      *buf = 134218242;
      v34 = v19;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will attempt to find custom style attributes for %lu waypoints from item source: %@", buf, 0x16u);
    }

    v20 = [v6 allItems];
    if ([v25 updateInProgress])
    {
      [v25 previousItems];
    }

    else
    {
      [v25 allItems];
    }
    v21 = ;
    v22 = sub_100798A3C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v21 count];
      *buf = 134217984;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Received all personalized compound items: %lu", buf, 0xCu);
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10076D5F4;
    v26[3] = &unk_1016286B8;
    v27 = v8;
    v28 = v21;
    v24 = v21;
    [v20 enumerateObjectsUsingBlock:v26];
  }
}

- (id)nextWaypoint
{
  v3 = [(GEOComposedRoute *)self waypoints];
  v4 = [v3 count];

  if (v4 > 2)
  {
    v6 = [(GEOComposedRoute *)self waypoints];
    v5 = [v6 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = [(GEOComposedRoute *)self destination];
  }

  return v5;
}

- (unint64_t)mapType
{
  if ([(GEOComposedRoute *)self transportType]== 1)
  {
    return 104;
  }

  else
  {
    return 0;
  }
}

- (NSData)rideSelectionsAsNSData
{
  v3 = [(GEOComposedRoute *)self rideSelections];
  v4 = 4 * [v3 count];

  v5 = malloc_type_malloc(v4, 0x97F847E2uLL);
  v6 = [(GEOComposedRoute *)self rideSelections];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007A38E0;
  v9[3] = &unk_101629CC8;
  v9[4] = v5;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = [NSData dataWithBytesNoCopy:v5 length:v4 freeWhenDone:1];

  return v7;
}

- (id)rapDestinationTitle
{
  v3 = [(GEOComposedRoute *)self destination];
  v4 = [v3 hasFindMyHandleID];

  if (v4)
  {
    v5 = [(GEOComposedRoute *)self destination];
    [v5 arrivingDisplayName];
  }

  else
  {
    v6 = [MKMapItem alloc];
    v7 = [(GEOComposedRoute *)self destination];
    v8 = [v7 mapItemStorage];
    v5 = [v6 initWithGeoMapItem:v8 isPlaceHolderPlace:0];

    [v5 name];
  }
  v9 = ;

  return v9;
}

- (MNTraceRecordingData)_maps_traceRecordingData
{
  v3 = objc_getAssociatedObject(self, &unk_10195D868);
  if (!v3)
  {
    v3 = objc_alloc_init(MNTraceRecordingData);
    v4 = [(GEOComposedRoute *)self routeInitializerData];
    v5 = [v4 directionsRequest];
    [v3 setInitialDirectionsRequest:v5];

    v6 = [(GEOComposedRoute *)self routeInitializerData];
    v7 = [v6 directionsResponse];
    [v3 setInitialDirectionsResponse:v7];

    v8 = [(GEOComposedRoute *)self userRequestedWaypoints];
    [v3 setWaypoints:v8];

    [(GEOComposedRoute *)self _maps_setTraceRecordingData:v3];
  }

  return v3;
}

- (id)batteryLevelForStepIndex:(unint64_t)a3
{
  v5 = [(GEOComposedRoute *)self steps];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v13 = 0;
  }

  else
  {
    v7 = [(GEOComposedRoute *)self steps];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [v8 evInfo];
    if (v9)
    {
      v10 = [NSMeasurement alloc];
      v11 = [v9 remainingBatteryCharge];
      v12 = +[NSUnitEnergy wattHours];
      v13 = [v10 initWithDoubleValue:v12 unit:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)isLegIndexOfLastLeg:(unint64_t)a3
{
  v4 = [(GEOComposedRoute *)self legs];
  LOBYTE(a3) = [v4 count] - 1 == a3;

  return a3;
}

- (id)chargingStationInfos
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(GEOComposedRoute *)self legs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 chargingStationInfo];

        if (v10)
        {
          v11 = [v9 chargingStationInfo];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)waypointsAfterStepIndex:(unint64_t)a3 legIndex:(unint64_t *)a4
{
  v7 = objc_opt_new();
  v8 = [(GEOComposedRoute *)self legIndexForStepIndex:a3];
  v9 = [(GEOComposedRoute *)self legs];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = v8;
    do
    {
      v12 = [(GEOComposedRoute *)self legs];
      v13 = [v12 objectAtIndexedSubscript:v11];

      v14 = [v13 destination];
      [v7 addObject:v14];

      ++v11;
      v15 = [(GEOComposedRoute *)self legs];
      v16 = [v15 count];
    }

    while (v11 < v16);
  }

  if (a4)
  {
    *a4 = v8;
  }

  return v7;
}

- (NSArray)steppingSigns
{
  v3 = [(GEOComposedRoute *)self segments];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(GEOComposedRoute *)self steps];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 routeSegmentType];
        if (v11 == 6)
        {
          v12 = [(GEOComposedRoute *)self _signForTransitTripStep:v10];
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v12 = [(GEOComposedRoute *)self _signForTransitStationStep:v10];
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v12 = [(GEOComposedRoute *)self _signForWalkingStep:v10];
LABEL_12:
          v13 = v12;
          goto LABEL_14;
        }

        v13 = 0;
LABEL_14:
        if ([v13 hasValidInstructions])
        {
          v14 = [v4 lastObject];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 stepIndexRange];
            v18 = v17;
          }

          else
          {
            v16 = 0;
            v18 = 0;
          }

          if (([v13 stepIndexRange] - v16) != v18)
          {
            [v13 stepIndexRange];
            [v13 setStepIndexRange:?];
          }

          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_signForTransitTripStep:(id)a3
{
  v4 = a3;
  v5 = [v4 maneuver];
  if (v5 == 9 || v5 == 5)
  {
    if ([v4 maneuver] == 9)
    {
      v7 = [v4 getPreviousStep];
      v8 = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [v7 stepIndex]);
      v9 = [v8 startStepIndex];
    }

    else
    {
      v7 = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [v4 stepIndex]);
      v9 = [v7 startStepIndex] + 1;
    }

    v14 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", v4, v9, [v4 stepIndex] - v9 + 1);
  }

  else if (v5 == 3)
  {
    v10 = [v4 getPreviousStep];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      do
      {
        if ([v12 routeSegmentType] != 5)
        {
          break;
        }

        v13 = [v12 getPreviousStep];

        v12 = v13;
      }

      while (v13);
    }

    else
    {
      v12 = 0;
    }

    v15 = [v4 stepIndex];
    v16 = [v4 stepIndex];
    if (v11 && [v11 routeSegmentType] == 5)
    {
      v17 = v11;
      if ([v17 maneuver] == 6)
      {
        v18 = [v17 transitInstructionInContext:1];
        v19 = [v18 majorInstructionStrings];

        if (!v19)
        {
          v15 = [v17 stepIndex];
        }
      }
    }

    v14 = [[TransitSegmentSteppingModeSign alloc] initWithStep:v4 stepIndexRange:v15, v16 - v15 + 1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_signForTransitStationStep:(id)a3
{
  v3 = a3;
  if ([v3 maneuver] - 6 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", v3, [v3 stepIndex], 1);
  }

  return v4;
}

- (id)_signForWalkingStep:(id)a3
{
  v4 = a3;
  v5 = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [v4 stepIndex]);
  if ([v4 isArrivalStep])
  {
    v6 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", v4, [v4 stepIndex], 1);
  }

  else
  {
    v7 = [v5 steps];
    v8 = [v7 firstObject];

    if (v8 == v4)
    {
      v9 = [v5 steps];
      v10 = [v9 lastObject];

      if ([v10 isArrivalStep])
      {
        v11 = [v10 getPreviousStep];

        v10 = v11;
      }

      v12 = [v4 stepIndex];
      v13 = [v10 stepIndex];
      v14 = [v4 getPreviousStep];
      v15 = v14;
      if (v14 && [v14 routeSegmentType] == 5)
      {
        v16 = v15;
        if ([v16 maneuver] == 8)
        {
          v17 = [v16 transitInstructionInContext:1];
          v18 = [v17 majorInstructionStrings];

          if (!v18)
          {
            v12 = [v16 stepIndex];
          }
        }
      }

      v19 = [v10 getNextStep];
      v20 = v19;
      if (v19 && [v19 routeSegmentType] == 5)
      {
        v21 = v20;
        if ([v21 maneuver] == 7)
        {
          v22 = [v21 transitInstructionInContext:1];
          v23 = [v22 majorInstructionStrings];

          if (!v23)
          {
            v13 = [v21 stepIndex];
          }
        }
      }

      v6 = [[TransitSegmentSteppingModeSign alloc] initWithWalkingSegment:v5 stepIndexRange:v12, v13 - v12 + 1];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (GEOComposedRouteStep)startRouteStep
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(GEOComposedRoute *)self steps];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 geoStep];
        v8 = [v7 maneuverType];

        if (v8 == 17)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)combinedDescriptionForFont:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self routeDescriptions];
  if ([v5 count])
  {
    if (v4)
    {
      v19 = NSFontAttributeName;
      v20 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v5 firstObject];
    v9 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:v8 defaultAttributes:v6];

    v10 = [[NSMutableAttributedString alloc] initWithAttributedString:v9];
    v11 = [NSAttributedString alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@" · [Route description delimiter]" value:@"localized string not found" table:0];
    v14 = [v11 initWithString:v13];

    if ([v5 count] >= 2)
    {
      v15 = 1;
      do
      {
        [v10 appendAttributedString:v14];
        v16 = [v5 objectAtIndexedSubscript:v15];
        v17 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:v16 defaultAttributes:v6];
        [v10 appendAttributedString:v17];

        ++v15;
      }

      while (v15 < [v5 count]);
    }

    v7 = [v10 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)tollCurrencyType
{
  if (([(GEOComposedRoute *)self avoidsTolls]& 1) != 0)
  {
    return 0;
  }

  v3 = +[NSLocale currentLocale];
  v4 = [v3 objectForKey:NSLocaleCurrencySymbol];
  if (qword_10195DA90 != -1)
  {
    dispatch_once(&qword_10195DA90, &stru_10162C950);
  }

  v5 = [qword_10195DA88 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v2 = [v5 unsignedIntegerValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (id)_arrivalInstructionStringForStep:(id)a3
{
  v4 = a3;
  v5 = [v4 waypoint];
  v6 = [v5 findMyHandleID];
  if (v6)
  {

LABEL_4:
    v8 = [v5 arrivingDisplayName];
LABEL_5:
    v9 = v8;
    v10 = [(RouteStepManeuverItem *)v8 copy];
    goto LABEL_6;
  }

  v7 = [v5 addressBookAddress];

  if (v7)
  {
    goto LABEL_4;
  }

  if ([v4 maneuverType] - 33 > 1)
  {
    v8 = [v5 navDisplayName];
    goto LABEL_5;
  }

  v12 = [RouteStepManeuverItem alloc];
  v13 = objc_opt_class();
  v14 = +[RouteStepListMetrics navSignMetrics];
  LOBYTE(v17) = 0;
  v9 = [(RouteStepManeuverItem *)v12 initWithRouteStep:v4 cellClass:v13 state:1 metrics:v14 context:1 route:self scale:0.0 isMissedStep:v17];

  v15 = [(RouteStepManeuverItem *)v9 secondaryText];
  v16 = [v15 string];
  v10 = [v16 copy];

LABEL_6:

  return v10;
}

- (id)arrivalInstructionStringForLegIndex:(unint64_t)a3
{
  v5 = [(GEOComposedRoute *)self legs];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[GEOComposedRoute(NavExtras) arrivalInstructionStringForLegIndex:]";
      v18 = 2080;
      v19 = "GEOComposedRoute+NavExtras.m";
      v20 = 1024;
      v21 = 83;
      v22 = 2080;
      v23 = "legIndex < self.legs.count";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  v7 = [(GEOComposedRoute *)self legs];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(GEOComposedRoute *)self legs];
    v10 = [v9 objectAtIndex:a3];

    v11 = -[GEOComposedRoute arrivalInstructionStringForStepIndex:](self, "arrivalInstructionStringForStepIndex:", [v10 endStepIndex]);
  }

  return v11;
}

- (id)arrivalInstructionStringForStepIndex:(unint64_t)a3
{
  v5 = [(GEOComposedRoute *)self steps];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[GEOComposedRoute(NavExtras) arrivalInstructionStringForStepIndex:]";
      v18 = 2080;
      v19 = "GEOComposedRoute+NavExtras.m";
      v20 = 1024;
      v21 = 73;
      v22 = 2080;
      v23 = "stepIndex < self.steps.count";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  v7 = [(GEOComposedRoute *)self steps];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(GEOComposedRoute *)self steps];
    v10 = [v9 objectAtIndex:a3];

    v11 = [(GEOComposedRoute *)self _arrivalInstructionStringForStep:v10];
  }

  return v11;
}

- (NSDate)transitRouteArrivalDate
{
  v3 = [(GEOComposedRoute *)self startDate];
  v4 = [v3 dateByAddingTimeInterval:{-[GEOComposedRoute expectedTime](self, "expectedTime")}];

  return v4;
}

- (NSArray)transitLinesOnRoute
{
  v3 = objc_getAssociatedObject(self, off_10192F1C0);
  if (!v3)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{-[GEOComposedRoute stepsCount](self, "stepsCount")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(GEOComposedRoute *)self segments];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            if ([v10 rideOptionsCount])
            {
              v11 = 0;
              do
              {
                v12 = [v10 transitLineForRideOption:v11];
                [v3 addObject:v12];

                ++v11;
              }

              while (v11 < [v10 rideOptionsCount]);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    objc_setAssociatedObject(self, off_10192F1C0, v3, 1);
  }

  return v3;
}

- (unint64_t)_maps_routeIndex
{
  v3 = [(GEOComposedRoute *)self _maps_routeCollection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 indexOfRoute:self];
  }

  else
  {
    v5 = [(GEOComposedRoute *)self indexInResponse];
  }

  v6 = v5;

  return v6;
}

- (void)_maps_routeCollectionOnly_setRouteCollectionWhenNil:(id)a3
{
  value = a3;
  v4 = [(GEOComposedRoute *)self _maps_routeCollection];
  if (!v4)
  {
    objc_setAssociatedObject(self, &unk_10195E100, value, 0);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)arrivalStorefrontLocation
{
  v2 = [(GEOComposedRoute *)self legs];
  v3 = [v2 lastObject];

  v4 = [v3 destinationDisplayInfo];
  [v4 position];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (BOOL)hasArrivalStorefrontGeometry
{
  v2 = [(GEOComposedRoute *)self legs];
  v3 = [v2 lastObject];

  v4 = [v3 destinationDisplayInfo];
  v5 = [v4 arInfo];

  v6 = [v5 storefrontFaceGeometrys];
  v7 = [v6 count] != 0;

  return v7;
}

- (GEOComposedRouteAdvisory)clickableAdvisory
{
  v2 = [(GEOComposedRoute *)self advisories];
  v3 = sub_1000282CC(v2, &stru_10164D3F0);

  v4 = [v3 firstObject];

  return v4;
}

- (id)advisoriesStyleAttributes
{
  v2 = [(GEOComposedRoute *)self routeLabelArtwork];
  v3 = [v2 iconDataSource];
  v4 = [v3 styleAttributes];

  return v4;
}

- (CLLocationCoordinate2D)_mkCoordAt:(unsigned int)a3
{
  [(GEOComposedRoute *)self pointAt:a3];

  v7 = CLLocationCoordinate2DMake(v3, v4);
  longitude = v7.longitude;
  latitude = v7.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_getMapPoints:(id *)a3 count:(unint64_t *)a4 startIndex:(unint64_t)a5 limit:(unint64_t)a6
{
  if (!a3 || !a6 || (v8 = a5, [(GEOComposedRoute *)self pointCount]<= a5))
  {
    if (!a4)
    {
      return;
    }

    v14 = 0;
    goto LABEL_13;
  }

  v11 = a6 + v8;
  if (a6 + v8 >= [(GEOComposedRoute *)self pointCount])
  {
    v11 = [(GEOComposedRoute *)self pointCount];
  }

  v12 = malloc_type_malloc(16 * (v11 - v8), 0x1000040451B5BE8uLL);
  v13 = v12;
  v14 = v11 - v8;
  if (v11 > v8)
  {
    v15 = v12 + 8;
    do
    {
      [(GEOComposedRoute *)self _mkCoordAt:v8];
      *(v15 - 8) = MKMapPointForCoordinate(v16);
      ++v8;
      v15 += 16;
    }

    while (v11 != v8);
  }

  *a3 = v13;
  if (a4)
  {
LABEL_13:
    *a4 = v14;
  }
}

- (void)_maps_getMapPoints:(id *)a3 count:(unint64_t *)a4 forStep:(id)a5
{
  v8 = a5;
  v9 = [v8 startPointIndex];
  v10 = [v8 pointCount];

  [(GEOComposedRoute *)self _getMapPoints:a3 count:a4 startIndex:v9 limit:v10];
}

- (void)_maps_getMapPoints:(id *)a3 count:(unint64_t *)a4
{
  v7 = [(GEOComposedRoute *)self pointCount];

  [(GEOComposedRoute *)self _getMapPoints:a3 count:a4 startIndex:0 limit:v7];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_maps_closestMapPointToMapPoint:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v16 = 0;
  v17 = 0;
  [(GEOComposedRoute *)self _maps_getMapPoints:&v16 count:&v17];
  if (v17)
  {
    if (v17 == 1)
    {
      v5 = 9.22337204e18;
      v6 = 9.22337204e18;
    }

    else
    {
      v7 = 0;
      v8 = INFINITY;
      v6 = 9.22337204e18;
      v9 = 1;
      v5 = 9.22337204e18;
      do
      {
        MKClosestMapPointInLineSegmentFromMapPoint();
        v12 = (var1 - v11) * (var1 - v11) + (var0 - v10) * (var0 - v10);
        v13 = v12 < v8;
        v8 = fmin(v12, v8);
        if (v13)
        {
          v5 = v11;
          v6 = v10;
        }

        ++v9;
        v7 += 16;
      }

      while (v9 < v17);
    }

    free(v16);
  }

  else
  {
    v5 = -1.0;
    v6 = -1.0;
  }

  v14 = v6;
  v15 = v5;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)a3 fromPoint:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    NSLog(@"Error, Route:boundingRectForStep called with nil step");
LABEL_12:
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    goto LABEL_13;
  }

  if ([v6 stepIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if ([v7 startPointIndex] > a4 || objc_msgSend(v7, "endPointIndex") < a4)
  {
    NSLog(@"Error, Route:boundingRectForStep called with invalid startPointIndex");
    if ([v7 startPointIndex] >= a4)
    {
      a4 = [v7 startPointIndex];
    }

    if (a4 >= [v7 endPointIndex])
    {
      a4 = [v7 endPointIndex];
    }
  }

  v21 = 0;
  -[GEOComposedRoute _getMapPoints:count:startIndex:limit:](self, "_getMapPoints:count:startIndex:limit:", &v20, &v21, a4, [v7 pointCount] - a4 + objc_msgSend(v7, "startPointIndex"));
  if (!v21)
  {
    goto LABEL_12;
  }

  MKMapRectBoundingMapPoints();
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  free(v20);
LABEL_13:

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.var1.var1 = v19;
  result.var1.var0 = v18;
  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)a3
{
  v4 = a3;
  if ([v4 stepIndex] == 0x7FFFFFFFFFFFFFFFLL || (v17 = 0, v18 = 0, -[GEOComposedRoute _maps_getMapPoints:count:forStep:](self, "_maps_getMapPoints:count:forStep:", &v17, &v18, v4), !v18))
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  else
  {
    [v4 pointCount];
    MKMapRectBoundingMapPoints();
    x = v5;
    y = v7;
    width = v9;
    height = v11;
    free(v17);
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v14;
  result.var0.var0 = v13;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingMapRect
{
  v2 = [(GEOComposedRoute *)self boundingMapRegion];
  GEOMapRectForMapRegion();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.var1.var1 = v14;
  result.var1.var0 = v13;
  result.var0.var1 = v12;
  result.var0.var0 = v11;
  return result;
}

- (id)timeStringWithAttributes:(id)a3
{
  v4 = a3;
  [(GEOComposedRoute *)self expectedTime];
  v5 = v4;
  v6 = GEOStringForDuration();
  v7 = [[NSAttributedString alloc] initWithString:v6 attributes:v5];

  return v7;
}

- (id)timeAndElevationDescriptionStringWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(GEOComposedRoute *)self previewDurationString];
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v7 = v6;
  v8 = [(GEOComposedRoute *)self elevationProfile];
  v9 = sub_100C86368(v5, v8, v4, v7);

  return v9;
}

- (id)distanceAndElevationString
{
  [(GEOComposedRoute *)self distance];
  v3 = [(GEOComposedRoute *)self elevationProfile];
  v4 = sub_100C86990(v3);

  return v4;
}

- (id)bookmarkRepresentation
{
  v3 = objc_alloc_init(SyncedBookmarkRepr);
  [(SyncedBookmarkRepr *)v3 setType:4];
  v4 = [(GEOComposedRoute *)self transportType];
  if (v4 <= 4)
  {
    [(SyncedBookmarkRepr *)v3 setDirectionsMode:dword_101215AE4[v4]];
  }

  v5 = [(GEOComposedRoute *)self origin];
  v6 = [v5 isCurrentLocation];

  if (v6)
  {
    v7 = +[SearchResult currentLocationSearchResult];
    v8 = v7;
  }

  else
  {
    v9 = [SearchResult alloc];
    v10 = [(GEOComposedRoute *)self origin];
    v11 = [v10 geoMapItem];
    v8 = [(SearchResult *)v9 initWithGEOMapItem:v11];

    if (!v8)
    {
      goto LABEL_8;
    }

    v7 = v8;
  }

  v12 = [(SearchResult *)v7 bookmarkRepresentation];
  [(SyncedBookmarkRepr *)v3 addPlaces:v12];

LABEL_8:
  v13 = [(GEOComposedRoute *)self destination];
  v14 = [v13 isCurrentLocation];

  if (v14)
  {
    v15 = +[SearchResult currentLocationSearchResult];
    v16 = v15;
  }

  else
  {
    v17 = [SearchResult alloc];
    v18 = [(GEOComposedRoute *)self destination];
    v19 = [v18 geoMapItem];
    v16 = [(SearchResult *)v17 initWithGEOMapItem:v19];

    if (!v16)
    {
      goto LABEL_13;
    }

    v15 = v16;
  }

  v20 = [(SearchResult *)v15 bookmarkRepresentation];
  [(SyncedBookmarkRepr *)v3 addPlaces:v20];

LABEL_13:

  return v3;
}

- (id)_maps_convertToNavigableRouteWithTraits:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [GEORouteAttributes defaultRouteAttributesForTransportType:[(GEOComposedRoute *)self transportType]];
  if (+[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    v13 = objc_opt_new();
    [v13 setSupportsArMode:1];
    [v11 setCommonOptions:v13];
    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Marking route request with supportsArMode", buf, 0xCu);
    }
  }

  else
  {
    v13 = sub_100035E6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] NOT marking route request with supportsArMode", buf, 0xCu);
    }
  }

  [v11 setRouteAttributes:v12];
  if (v8)
  {
    [v11 setTraits:v8];
  }

  else
  {
    v15 = objc_opt_new();
    [v11 setTraits:v15];
  }

  v16 = objc_opt_new();
  [v11 setClientAttributes:v16];

  [v11 setCurrentRoute:self];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100CFB2C8;
  v21[3] = &unk_101650F80;
  v22 = v9;
  v23 = v10;
  v17 = v10;
  v18 = v9;
  v19 = [MNRouteEditor convertToNavigableRoute:v11 finishedHandler:v21];

  return v19;
}

+ (id)_maps_composedRouteWithPersistentData:(id)a3
{
  v3 = a3;
  v4 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v3];

  v5 = [v4 buildRoute];
  [v5 updateCustomRouteStartEndCaptions];

  return v5;
}

- (GuidanceETA)guidanceETA
{
  [(GEOComposedRoute *)self distance];
  v4 = v3;
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v6 = v5;
  v7 = [(GEOComposedRoute *)self destination];
  v8 = [v7 timezone];

  if ([(GEOComposedRoute *)self isEVRoute])
  {
    v9 = [(GEOComposedRoute *)self lastEVStep];
    v10 = [v9 evInfo];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 remainingBatteryPercentage]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [[GuidanceETA alloc] initWithRemainingTime:v11 remainingDistance:v8 arrivalBatteryCharge:[(GEOComposedRoute *)self transportType] destinationTimeZone:v6 transportType:v4];

  return v12;
}

- (unint64_t)suggestedNavigationModeForLocation:(id)a3 context:(unint64_t)a4 ignoreDeviceNavigability:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [[MNSuggestedNavigationModeFinder alloc] initWithRoute:self context:a4 ignoreDeviceNavigability:v5];
  v10 = [v9 suggestedNavigationModeForLocation:v8];

  return v10;
}

- (id)nextLaneGuidanceEventAfterEvent:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(GEOComposedRoute *)self composedGuidanceEvents];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          v11 = [*(*(&v14 + 1) + 8 * i) lanes];
          v12 = [v11 count];

          if (v12)
          {
            v6 = v10;
            goto LABEL_12;
          }
        }

        v7 |= v10 == v4;
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (NSArray)composedGuidanceEventsWithLaneGuidance
{
  v2 = [(GEOComposedRoute *)self composedGuidanceEvents];
  v3 = [NSPredicate predicateWithBlock:&stru_101656498];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)composedGuidanceEventsWithSignGuidance
{
  v2 = [(GEOComposedRoute *)self composedGuidanceEvents];
  v3 = [NSPredicate predicateWithBlock:&stru_101656478];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (BOOL)shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:(unint64_t)a3
{
  if (([(GEOComposedRoute *)self isWalkingOnlyTransitRoute]& 1) != 0)
  {
    return 1;
  }

  if ([(GEOComposedRoute *)self transportType]!= 1)
  {
    return 0;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v6 = +[MNNavigationService sharedService];
  v7 = [v6 isTrackingCurrentLocation];

  if (!v7)
  {
    return 1;
  }

  v8 = [(GEOComposedRoute *)self steps];
  v9 = [v8 firstObject];
  v10 = [v9 nextAlightingStep];

  v5 = [v10 stepIndex] >= a3;
  return v5;
}

- (NSString)clientPickingDescription
{
  v3 = [(GEOComposedRoute *)self abbreviatedDistance];
  v4 = [(GEOComposedRoute *)self name];
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WalkingDrivingRoute_SecondaryTextFormat" value:@"localized string not found" table:0];
    v7 = [NSString stringWithFormat:v6, v3, v4];
  }

  else
  {
    if ([v3 length])
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }

    v7 = v8;
  }

  return v7;
}

- (NSString)expandedDistance
{
  [(GEOComposedRoute *)self distance];
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(GEOComposedRoute *)self distance];
    v4 = [NSString _mapkit_localizedDistanceStringWithMeters:v5 abbreviated:0];
  }

  return v4;
}

- (NSString)accessibilityExpandedDistance
{
  [(GEOComposedRoute *)self distance];
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(GEOComposedRoute *)self distance];
    v4 = [NSString _mapkit_voiceOverLocalizedDistanceStringWithMeters:v5];
  }

  return v4;
}

- (NSString)expandedTravelTime
{
  [(GEOComposedRoute *)self travelAndChargingDuration];
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(GEOComposedRoute *)self travelAndChargingDuration];
    v4 = [NSString _navigation_stringWithSeconds:v5 abbreviated:0];
  }

  return v4;
}

- (NSString)abbreviatedDistance
{
  [(GEOComposedRoute *)self distance];
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(GEOComposedRoute *)self distance];
    v4 = [NSString _mapkit_localizedDistanceStringWithMeters:v5 abbreviated:1];
  }

  return v4;
}

- (id)advisoriesForAutoSharingContacts:(id)a3 scale:(double)a4
{
  v6 = a3;
  v7 = [(GEOComposedRoute *)self advisories];
  v8 = [RouteAdvisoryViewModel viewModelsForAdvisories:v7];

  if ([v6 count])
  {
    [(GEOComposedRoute *)self transportType];
    if (MSPSharedTripSharingSupportedForTransportType())
    {
      if (MSPSharedTripSharingAvailable())
      {
        v9 = [v8 mutableCopy];
        v10 = [RouteAdvisoryViewModel advisoryTextForAutomaticSharingContacts:v6];
        v11 = +[GEOFeatureStyleAttributes shareETAAdvisoryStyleAttributes];
        v12 = [MKIconManager imageForStyle:v11 size:0 forScale:0 format:a4];

        v13 = +[RouteAdvisoryViewModel viewModelWithText:buttonRange:image:handler:](RouteAdvisoryViewModel, "viewModelWithText:buttonRange:image:handler:", v10, 0, [v10 length], v12, 0);
        [v9 addObject:v13];

        v14 = [v9 copy];
        v8 = v14;
      }
    }
  }

  return v8;
}

- (id)tertiaryText
{
  v2 = [RouteOverviewStringProvider routeDescriptionTextForRoute:self font:0];
  v3 = [v2 attributedString];

  return v3;
}

- (id)secondaryText
{
  v2 = [RouteOverviewStringProvider secondaryMultiPartTextForRoute:self font:0];
  v3 = [v2 attributedString];

  return v3;
}

- (BOOL)_maps_isEqualToComposedRoute:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [v4 uniqueRouteID];
    v8 = [(GEOComposedRoute *)self uniqueRouteID];
    if ([v7 isEqual:v8])
    {
      v9 = [v4 rideSelections];
      v10 = [(GEOComposedRoute *)self rideSelections];
      v11 = v9;
      v12 = v10;
      if (!(v11 | v12))
      {
        v6 = 1;
LABEL_8:

        goto LABEL_9;
      }

      v14 = v12;
      v15 = [v11 isEqual:v12];

      if (v15)
      {
        v6 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v7 = [v4 segments];
    v8 = [(GEOComposedRoute *)self segments];
    v6 = [v7 isEqualToArray:v8];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (TransitDirectionsStepsListDataProvider)transitDirectionsStepsListDataProvider
{
  if ([(GEOComposedRoute *)self transportType]== 1 || [(GEOComposedRoute *)self isWalkingOnlyTransitRoute])
  {
    v3 = objc_getAssociatedObject(self, &unk_10195F8D0);
    if (!v3)
    {
      v3 = [[TransitDirectionsStepsListDataProvider alloc] initWithRoute:self forGuidance:0];
      objc_setAssociatedObject(self, &unk_10195F8D0, v3, 1);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)carplayDestinationHandoffRequired
{
  v3 = +[CarDisplayController sharedInstance];
  if ([v3 isCurrentlyConnectedToCarAppScene])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    if ([v4 isNavigationAidedDrivingEnabled])
    {
      v5 = [(GEOComposedRoute *)self transportType]== 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_maps_routeRequestStorage
{
  v3 = objc_alloc_init(GEOStorageRouteRequestStorage);
  v4 = [(GEOComposedRoute *)self waypoints];
  v5 = [v4 mutableCopy];
  [v3 setWaypoints:v5];

  v6 = [(GEOComposedRoute *)self persistentData];
  [v3 setDestinationRouteData:v6];

  [v3 setTransportType:{-[GEOComposedRoute transportType](self, "transportType")}];
  v7 = [(GEOComposedRoute *)self routeAttributes];
  v8 = [v7 automobileOptions];
  [v3 setAutomobileOptions:v8];

  v9 = [v7 walkingOptions];
  [v3 setWalkingOptions:v9];

  v10 = [v7 transitOptions];
  [v3 setTransitOptions:v10];

  v11 = [v7 cyclingOptions];
  [v3 setCyclingOptions:v11];

  return v3;
}

@end