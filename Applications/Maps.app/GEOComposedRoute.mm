@interface GEOComposedRoute
+ (id)_maps_composedRouteWithPersistentData:(id)data;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingMapRect;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)step;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)step fromPoint:(unint64_t)point;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_maps_closestMapPointToMapPoint:(id)point;
- ($F24F406B2B787EFB06265DBA3D28CBD5)arrivalStorefrontLocation;
- (BOOL)_isChargingWaypoint:(id)waypoint;
- (BOOL)_isStartWaypoint:(id)waypoint;
- (BOOL)_maps_isEqualToComposedRoute:(id)route;
- (BOOL)carplayDestinationHandoffRequired;
- (BOOL)hasArrivalStorefrontGeometry;
- (BOOL)isLegIndexOfLastLeg:(unint64_t)leg;
- (BOOL)shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:(unint64_t)index;
- (CLLocationCoordinate2D)_mkCoordAt:(unsigned int)at;
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
- (id)_arrivalInstructionStringForStep:(id)step;
- (id)_maps_convertToNavigableRouteWithTraits:(id)traits errorHandler:(id)handler completionHandler:(id)completionHandler;
- (id)_maps_routeRequestStorage;
- (id)_maps_trafficIncidentsObservers:(BOOL)observers;
- (id)_signForTransitStationStep:(id)step;
- (id)_signForTransitTripStep:(id)step;
- (id)_signForWalkingStep:(id)step;
- (id)advisoriesForAutoSharingContacts:(id)contacts scale:(double)scale;
- (id)advisoriesStyleAttributes;
- (id)arrivalInstructionStringForLegIndex:(unint64_t)index;
- (id)arrivalInstructionStringForStepIndex:(unint64_t)index;
- (id)batteryLevelForStepIndex:(unint64_t)index;
- (id)bookmarkRepresentation;
- (id)chargingStationInfos;
- (id)combinedDescriptionForFont:(id)font;
- (id)distanceAndElevationString;
- (id)nextLaneGuidanceEventAfterEvent:(id)event;
- (id)nextWaypoint;
- (id)rapDestinationTitle;
- (id)secondaryText;
- (id)tertiaryText;
- (id)timeAndElevationDescriptionStringWithAttributes:(id)attributes;
- (id)timeStringWithAttributes:(id)attributes;
- (id)waypointsAfterStepIndex:(unint64_t)index legIndex:(unint64_t *)legIndex;
- (unint64_t)_maps_routeIndex;
- (unint64_t)mapType;
- (unint64_t)suggestedNavigationModeForLocation:(id)location context:(unint64_t)context ignoreDeviceNavigability:(BOOL)navigability;
- (unsigned)tollCurrencyType;
- (void)_getMapPoints:(id *)points count:(unint64_t *)count startIndex:(unint64_t)index limit:(unint64_t)limit;
- (void)_maps_addTrafficIncidentsObserver:(id)observer;
- (void)_maps_getMapPoints:(id *)points count:(unint64_t *)count;
- (void)_maps_getMapPoints:(id *)points count:(unint64_t *)count forStep:(id)step;
- (void)_maps_refreshTrafficIncidentsOnRoute;
- (void)_maps_removeTrafficIncidentsObserver:(id)observer;
- (void)_maps_routeCollectionOnly_setRouteCollectionWhenNil:(id)nil;
- (void)updateCustomRouteStartEndCaptions;
- (void)updateMyLocationAnchorNames;
- (void)updateWaypointStyleAttributesWithItemSource:(id)source personalizedItemManager:(id)manager;
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
    suggestedContacts = [v4 suggestedContacts];

    v6 = [suggestedContacts countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(suggestedContacts);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          contact = [v10 contact];
          identifier = [contact identifier];
          [v3 setObject:v10 forKey:identifier];
        }

        v7 = [suggestedContacts countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    v13 = +[NSMutableArray array];
    v14 = +[AddressBookManager sharedManager];
    meCard = [v14 meCard];
    identifier2 = [meCard identifier];

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
          findMyHandle = [v20 findMyHandle];
          contact2 = [findMyHandle contact];

          if (contact2)
          {
            findMyHandle2 = [v20 findMyHandle];
            contact3 = [findMyHandle2 contact];

            findMyHandle3 = [v20 findMyHandle];
            identifier3 = [findMyHandle3 identifier];
          }

          else
          {
            addressBookAddress = [v20 addressBookAddress];
            identifier3 = [addressBookAddress contact];

            if (!identifier3)
            {
              contact3 = 0;
              goto LABEL_27;
            }

            findMyHandle3 = [v20 addressBookAddress];
            contact3 = [findMyHandle3 contact];
            identifier3 = 0;
          }

          if (contact3)
          {
            identifier4 = [contact3 identifier];
            v29 = [identifier4 isEqualToString:identifier2];

            if ((v29 & 1) == 0)
            {
              identifier5 = [contact3 identifier];
              firstObject = [v3 objectForKey:identifier5];

              if (firstObject)
              {
                goto LABEL_26;
              }

              if (!identifier3)
              {
                addressBookAddress2 = [v20 addressBookAddress];
                contact4 = [addressBookAddress2 contact];
                [MSPSharedTripContact contactsFromCNContact:contact4];
                v34 = v33 = v13;
                firstObject = [v34 firstObject];

                v13 = v33;
                if (!firstObject)
                {
                  goto LABEL_27;
                }

LABEL_26:
                [v13 addObject:firstObject];

                goto LABEL_27;
              }

              firstObject = [[MSPSharedTripContact alloc] initWithContact:contact3 handle:identifier3];
              if (firstObject)
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
  traffic = [(GEOComposedRoute *)self traffic];
  trafficIncidents = [traffic trafficIncidents];
  trafficIncidentOffsets = [traffic trafficIncidentOffsets];
  v5 = [trafficIncidents count];
  if (v5 == [trafficIncidentOffsets count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(trafficIncidents, "count")}];
    if ([trafficIncidents count])
    {
      v7 = 0;
      do
      {
        v8 = [trafficIncidents objectAtIndexedSubscript:v7];
        v9 = [trafficIncidentOffsets objectAtIndexedSubscript:v7];
        v10 = [[VKTrafficIncidentFeature alloc] initWithRouteIncident:v8 routeOffsetInMeters:objc_msgSend(v9 routeRelevance:"unsignedIntValue") onRoute:{3, self}];
        [v6 addObject:v10];

        ++v7;
      }

      while (v7 < [trafficIncidents count]);
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
    waypoints = [(GEOComposedRoute *)self waypoints];
    v3 = sub_100021DB0(waypoints, &stru_101623A00);

    objc_setAssociatedObject(self, &unk_10195CC30, v3, 1);
  }

  return v3;
}

- (BOOL)_isChargingWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  _maps_directionsWaypoints = [(GEOComposedRoute *)self _maps_directionsWaypoints];
  v6 = [_maps_directionsWaypoints indexOfObject:waypointCopy];

  waypoints = [(GEOComposedRoute *)self waypoints];
  if (v6 >= [waypoints count])
  {
    v9 = 0;
  }

  else
  {
    waypoints2 = [(GEOComposedRoute *)self waypoints];
    v9 = [waypoints2 objectAtIndexedSubscript:v6];
  }

  chargingInfo = [v9 chargingInfo];
  v11 = chargingInfo != 0;

  return v11;
}

- (BOOL)_isStartWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  _maps_directionsWaypoints = [(GEOComposedRoute *)self _maps_directionsWaypoints];
  firstObject = [_maps_directionsWaypoints firstObject];
  v7 = [firstObject isEqual:waypointCopy];

  return v7;
}

- (void)_maps_removeTrafficIncidentsObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(GEOComposedRoute *)self _maps_trafficIncidentsObservers:0];
  [v5 unregisterObserver:observerCopy];
}

- (void)_maps_addTrafficIncidentsObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(GEOComposedRoute *)self _maps_trafficIncidentsObservers:1];
  [v5 registerObserver:observerCopy];
}

- (id)_maps_trafficIncidentsObservers:(BOOL)observers
{
  observersCopy = observers;
  v5 = objc_getAssociatedObject(self, &unk_10195D0F2);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !observersCopy;
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
  waypoints = [(GEOComposedRoute *)self waypoints];
  v4 = [waypoints countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(waypoints);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isCurrentLocation])
        {
          v9 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:v8];
          [v9 _routeCreation_setMyLocationName];
        }
      }

      v5 = [waypoints countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateCustomRouteStartEndCaptions
{
  waypoints = [(GEOComposedRoute *)self waypoints];
  firstObject = [waypoints firstObject];

  waypoints2 = [(GEOComposedRoute *)self waypoints];
  lastObject = [waypoints2 lastObject];

  v6 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:firstObject];
  v7 = [(GEOComposedRoute *)self waypointDisplayInfoForWaypoint:lastObject];
  anchorPoints = [(GEOComposedRoute *)self anchorPoints];
  startAndEndAreTheSame = [anchorPoints startAndEndAreTheSame];

  if (startAndEndAreTheSame)
  {
    [v7 _routeCreation_setStartEndWaypointCaption];
  }

  else
  {
    [v6 _routeCreation_setStartWaypointCaption];
    [v7 _routeCreation_setEndWaypointCaption];
  }
}

- (void)updateWaypointStyleAttributesWithItemSource:(id)source personalizedItemManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  waypoints = [(GEOComposedRoute *)self waypoints];
  v8 = +[NSMapTable strongToStrongObjectsMapTable];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = waypoints;
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
        styleAttributesData = [v14 styleAttributesData];

        if (!styleAttributesData)
        {
          v16 = [[SearchResult alloc] initWithComposedWaypoint:v14];
          v17 = [sourceCopy itemMatchingLocation:v16];
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
      v36 = sourceCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will attempt to find custom style attributes for %lu waypoints from item source: %@", buf, 0x16u);
    }

    allItems = [sourceCopy allItems];
    if ([managerCopy updateInProgress])
    {
      [managerCopy previousItems];
    }

    else
    {
      [managerCopy allItems];
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
    [allItems enumerateObjectsUsingBlock:v26];
  }
}

- (id)nextWaypoint
{
  waypoints = [(GEOComposedRoute *)self waypoints];
  v4 = [waypoints count];

  if (v4 > 2)
  {
    waypoints2 = [(GEOComposedRoute *)self waypoints];
    destination = [waypoints2 objectAtIndexedSubscript:1];
  }

  else
  {
    destination = [(GEOComposedRoute *)self destination];
  }

  return destination;
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
  rideSelections = [(GEOComposedRoute *)self rideSelections];
  v4 = 4 * [rideSelections count];

  v5 = malloc_type_malloc(v4, 0x97F847E2uLL);
  rideSelections2 = [(GEOComposedRoute *)self rideSelections];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007A38E0;
  v9[3] = &unk_101629CC8;
  v9[4] = v5;
  [rideSelections2 enumerateObjectsUsingBlock:v9];

  v7 = [NSData dataWithBytesNoCopy:v5 length:v4 freeWhenDone:1];

  return v7;
}

- (id)rapDestinationTitle
{
  destination = [(GEOComposedRoute *)self destination];
  hasFindMyHandleID = [destination hasFindMyHandleID];

  if (hasFindMyHandleID)
  {
    destination2 = [(GEOComposedRoute *)self destination];
    [destination2 arrivingDisplayName];
  }

  else
  {
    v6 = [MKMapItem alloc];
    destination3 = [(GEOComposedRoute *)self destination];
    mapItemStorage = [destination3 mapItemStorage];
    destination2 = [v6 initWithGeoMapItem:mapItemStorage isPlaceHolderPlace:0];

    [destination2 name];
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
    routeInitializerData = [(GEOComposedRoute *)self routeInitializerData];
    directionsRequest = [routeInitializerData directionsRequest];
    [v3 setInitialDirectionsRequest:directionsRequest];

    routeInitializerData2 = [(GEOComposedRoute *)self routeInitializerData];
    directionsResponse = [routeInitializerData2 directionsResponse];
    [v3 setInitialDirectionsResponse:directionsResponse];

    userRequestedWaypoints = [(GEOComposedRoute *)self userRequestedWaypoints];
    [v3 setWaypoints:userRequestedWaypoints];

    [(GEOComposedRoute *)self _maps_setTraceRecordingData:v3];
  }

  return v3;
}

- (id)batteryLevelForStepIndex:(unint64_t)index
{
  steps = [(GEOComposedRoute *)self steps];
  v6 = [steps count];

  if (v6 <= index)
  {
    v13 = 0;
  }

  else
  {
    steps2 = [(GEOComposedRoute *)self steps];
    v8 = [steps2 objectAtIndexedSubscript:index];

    evInfo = [v8 evInfo];
    if (evInfo)
    {
      v10 = [NSMeasurement alloc];
      remainingBatteryCharge = [evInfo remainingBatteryCharge];
      v12 = +[NSUnitEnergy wattHours];
      v13 = [v10 initWithDoubleValue:v12 unit:remainingBatteryCharge];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)isLegIndexOfLastLeg:(unint64_t)leg
{
  legs = [(GEOComposedRoute *)self legs];
  LOBYTE(leg) = [legs count] - 1 == leg;

  return leg;
}

- (id)chargingStationInfos
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  legs = [(GEOComposedRoute *)self legs];
  v5 = [legs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(legs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        chargingStationInfo = [v9 chargingStationInfo];

        if (chargingStationInfo)
        {
          chargingStationInfo2 = [v9 chargingStationInfo];
          [v3 addObject:chargingStationInfo2];
        }
      }

      v6 = [legs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)waypointsAfterStepIndex:(unint64_t)index legIndex:(unint64_t *)legIndex
{
  v7 = objc_opt_new();
  v8 = [(GEOComposedRoute *)self legIndexForStepIndex:index];
  legs = [(GEOComposedRoute *)self legs];
  v10 = [legs count];

  if (v8 < v10)
  {
    v11 = v8;
    do
    {
      legs2 = [(GEOComposedRoute *)self legs];
      v13 = [legs2 objectAtIndexedSubscript:v11];

      destination = [v13 destination];
      [v7 addObject:destination];

      ++v11;
      legs3 = [(GEOComposedRoute *)self legs];
      v16 = [legs3 count];
    }

    while (v11 < v16);
  }

  if (legIndex)
  {
    *legIndex = v8;
  }

  return v7;
}

- (NSArray)steppingSigns
{
  segments = [(GEOComposedRoute *)self segments];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [segments count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  steps = [(GEOComposedRoute *)self steps];
  v6 = [steps countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(steps);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        routeSegmentType = [v10 routeSegmentType];
        if (routeSegmentType == 6)
        {
          v12 = [(GEOComposedRoute *)self _signForTransitTripStep:v10];
          goto LABEL_12;
        }

        if (routeSegmentType == 5)
        {
          v12 = [(GEOComposedRoute *)self _signForTransitStationStep:v10];
          goto LABEL_12;
        }

        if (routeSegmentType == 2)
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
          lastObject = [v4 lastObject];
          v15 = lastObject;
          if (lastObject)
          {
            stepIndexRange = [lastObject stepIndexRange];
            v18 = v17;
          }

          else
          {
            stepIndexRange = 0;
            v18 = 0;
          }

          if (([v13 stepIndexRange] - stepIndexRange) != v18)
          {
            [v13 stepIndexRange];
            [v13 setStepIndexRange:?];
          }

          [v4 addObject:v13];
        }
      }

      v7 = [steps countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_signForTransitTripStep:(id)step
{
  stepCopy = step;
  maneuver = [stepCopy maneuver];
  if (maneuver == 9 || maneuver == 5)
  {
    if ([stepCopy maneuver] == 9)
    {
      getPreviousStep = [stepCopy getPreviousStep];
      v8 = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [getPreviousStep stepIndex]);
      startStepIndex = [v8 startStepIndex];
    }

    else
    {
      getPreviousStep = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [stepCopy stepIndex]);
      startStepIndex = [getPreviousStep startStepIndex] + 1;
    }

    v14 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", stepCopy, startStepIndex, [stepCopy stepIndex] - startStepIndex + 1);
  }

  else if (maneuver == 3)
  {
    getPreviousStep2 = [stepCopy getPreviousStep];
    v11 = getPreviousStep2;
    if (getPreviousStep2)
    {
      v12 = getPreviousStep2;
      do
      {
        if ([v12 routeSegmentType] != 5)
        {
          break;
        }

        getPreviousStep3 = [v12 getPreviousStep];

        v12 = getPreviousStep3;
      }

      while (getPreviousStep3);
    }

    else
    {
      v12 = 0;
    }

    stepIndex = [stepCopy stepIndex];
    stepIndex2 = [stepCopy stepIndex];
    if (v11 && [v11 routeSegmentType] == 5)
    {
      v17 = v11;
      if ([v17 maneuver] == 6)
      {
        v18 = [v17 transitInstructionInContext:1];
        majorInstructionStrings = [v18 majorInstructionStrings];

        if (!majorInstructionStrings)
        {
          stepIndex = [v17 stepIndex];
        }
      }
    }

    v14 = [[TransitSegmentSteppingModeSign alloc] initWithStep:stepCopy stepIndexRange:stepIndex, stepIndex2 - stepIndex + 1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_signForTransitStationStep:(id)step
{
  stepCopy = step;
  if ([stepCopy maneuver] - 6 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", stepCopy, [stepCopy stepIndex], 1);
  }

  return v4;
}

- (id)_signForWalkingStep:(id)step
{
  stepCopy = step;
  v5 = -[GEOComposedRoute segmentForStepIndex:](self, "segmentForStepIndex:", [stepCopy stepIndex]);
  if ([stepCopy isArrivalStep])
  {
    v6 = -[TransitSegmentSteppingModeSign initWithStep:stepIndexRange:]([TransitSegmentSteppingModeSign alloc], "initWithStep:stepIndexRange:", stepCopy, [stepCopy stepIndex], 1);
  }

  else
  {
    steps = [v5 steps];
    firstObject = [steps firstObject];

    if (firstObject == stepCopy)
    {
      steps2 = [v5 steps];
      lastObject = [steps2 lastObject];

      if ([lastObject isArrivalStep])
      {
        getPreviousStep = [lastObject getPreviousStep];

        lastObject = getPreviousStep;
      }

      stepIndex = [stepCopy stepIndex];
      stepIndex2 = [lastObject stepIndex];
      getPreviousStep2 = [stepCopy getPreviousStep];
      v15 = getPreviousStep2;
      if (getPreviousStep2 && [getPreviousStep2 routeSegmentType] == 5)
      {
        v16 = v15;
        if ([v16 maneuver] == 8)
        {
          v17 = [v16 transitInstructionInContext:1];
          majorInstructionStrings = [v17 majorInstructionStrings];

          if (!majorInstructionStrings)
          {
            stepIndex = [v16 stepIndex];
          }
        }
      }

      getNextStep = [lastObject getNextStep];
      v20 = getNextStep;
      if (getNextStep && [getNextStep routeSegmentType] == 5)
      {
        v21 = v20;
        if ([v21 maneuver] == 7)
        {
          v22 = [v21 transitInstructionInContext:1];
          majorInstructionStrings2 = [v22 majorInstructionStrings];

          if (!majorInstructionStrings2)
          {
            stepIndex2 = [v21 stepIndex];
          }
        }
      }

      v6 = [[TransitSegmentSteppingModeSign alloc] initWithWalkingSegment:v5 stepIndexRange:stepIndex, stepIndex2 - stepIndex + 1];
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
  steps = [(GEOComposedRoute *)self steps];
  v3 = [steps countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(steps);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        geoStep = [v6 geoStep];
        maneuverType = [geoStep maneuverType];

        if (maneuverType == 17)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [steps countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)combinedDescriptionForFont:(id)font
{
  fontCopy = font;
  routeDescriptions = [(GEOComposedRoute *)self routeDescriptions];
  if ([routeDescriptions count])
  {
    if (fontCopy)
    {
      v19 = NSFontAttributeName;
      v20 = fontCopy;
      v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v6 = 0;
    }

    firstObject = [routeDescriptions firstObject];
    v9 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:firstObject defaultAttributes:v6];

    v10 = [[NSMutableAttributedString alloc] initWithAttributedString:v9];
    v11 = [NSAttributedString alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@" · [Route description delimiter]" value:@"localized string not found" table:0];
    v14 = [v11 initWithString:v13];

    if ([routeDescriptions count] >= 2)
    {
      v15 = 1;
      do
      {
        [v10 appendAttributedString:v14];
        v16 = [routeDescriptions objectAtIndexedSubscript:v15];
        v17 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:v16 defaultAttributes:v6];
        [v10 appendAttributedString:v17];

        ++v15;
      }

      while (v15 < [routeDescriptions count]);
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
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (id)_arrivalInstructionStringForStep:(id)step
{
  stepCopy = step;
  waypoint = [stepCopy waypoint];
  findMyHandleID = [waypoint findMyHandleID];
  if (findMyHandleID)
  {

LABEL_4:
    arrivingDisplayName = [waypoint arrivingDisplayName];
LABEL_5:
    v9 = arrivingDisplayName;
    v10 = [(RouteStepManeuverItem *)arrivingDisplayName copy];
    goto LABEL_6;
  }

  addressBookAddress = [waypoint addressBookAddress];

  if (addressBookAddress)
  {
    goto LABEL_4;
  }

  if ([stepCopy maneuverType] - 33 > 1)
  {
    arrivingDisplayName = [waypoint navDisplayName];
    goto LABEL_5;
  }

  v12 = [RouteStepManeuverItem alloc];
  v13 = objc_opt_class();
  v14 = +[RouteStepListMetrics navSignMetrics];
  LOBYTE(v17) = 0;
  v9 = [(RouteStepManeuverItem *)v12 initWithRouteStep:stepCopy cellClass:v13 state:1 metrics:v14 context:1 route:self scale:0.0 isMissedStep:v17];

  secondaryText = [(RouteStepManeuverItem *)v9 secondaryText];
  string = [secondaryText string];
  v10 = [string copy];

LABEL_6:

  return v10;
}

- (id)arrivalInstructionStringForLegIndex:(unint64_t)index
{
  legs = [(GEOComposedRoute *)self legs];
  v6 = [legs count];

  if (v6 <= index)
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

  legs2 = [(GEOComposedRoute *)self legs];
  v8 = [legs2 count];

  if (v8 <= index)
  {
    v11 = 0;
  }

  else
  {
    legs3 = [(GEOComposedRoute *)self legs];
    v10 = [legs3 objectAtIndex:index];

    v11 = -[GEOComposedRoute arrivalInstructionStringForStepIndex:](self, "arrivalInstructionStringForStepIndex:", [v10 endStepIndex]);
  }

  return v11;
}

- (id)arrivalInstructionStringForStepIndex:(unint64_t)index
{
  steps = [(GEOComposedRoute *)self steps];
  v6 = [steps count];

  if (v6 <= index)
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

  steps2 = [(GEOComposedRoute *)self steps];
  v8 = [steps2 count];

  if (v8 <= index)
  {
    v11 = 0;
  }

  else
  {
    steps3 = [(GEOComposedRoute *)self steps];
    v10 = [steps3 objectAtIndex:index];

    v11 = [(GEOComposedRoute *)self _arrivalInstructionStringForStep:v10];
  }

  return v11;
}

- (NSDate)transitRouteArrivalDate
{
  startDate = [(GEOComposedRoute *)self startDate];
  v4 = [startDate dateByAddingTimeInterval:{-[GEOComposedRoute expectedTime](self, "expectedTime")}];

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
    segments = [(GEOComposedRoute *)self segments];
    v5 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(segments);
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

        v6 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    objc_setAssociatedObject(self, off_10192F1C0, v3, 1);
  }

  return v3;
}

- (unint64_t)_maps_routeIndex
{
  _maps_routeCollection = [(GEOComposedRoute *)self _maps_routeCollection];
  v4 = _maps_routeCollection;
  if (_maps_routeCollection)
  {
    indexInResponse = [_maps_routeCollection indexOfRoute:self];
  }

  else
  {
    indexInResponse = [(GEOComposedRoute *)self indexInResponse];
  }

  v6 = indexInResponse;

  return v6;
}

- (void)_maps_routeCollectionOnly_setRouteCollectionWhenNil:(id)nil
{
  value = nil;
  _maps_routeCollection = [(GEOComposedRoute *)self _maps_routeCollection];
  if (!_maps_routeCollection)
  {
    objc_setAssociatedObject(self, &unk_10195E100, value, 0);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)arrivalStorefrontLocation
{
  legs = [(GEOComposedRoute *)self legs];
  lastObject = [legs lastObject];

  destinationDisplayInfo = [lastObject destinationDisplayInfo];
  [destinationDisplayInfo position];
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
  legs = [(GEOComposedRoute *)self legs];
  lastObject = [legs lastObject];

  destinationDisplayInfo = [lastObject destinationDisplayInfo];
  arInfo = [destinationDisplayInfo arInfo];

  storefrontFaceGeometrys = [arInfo storefrontFaceGeometrys];
  v7 = [storefrontFaceGeometrys count] != 0;

  return v7;
}

- (GEOComposedRouteAdvisory)clickableAdvisory
{
  advisories = [(GEOComposedRoute *)self advisories];
  v3 = sub_1000282CC(advisories, &stru_10164D3F0);

  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)advisoriesStyleAttributes
{
  routeLabelArtwork = [(GEOComposedRoute *)self routeLabelArtwork];
  iconDataSource = [routeLabelArtwork iconDataSource];
  styleAttributes = [iconDataSource styleAttributes];

  return styleAttributes;
}

- (CLLocationCoordinate2D)_mkCoordAt:(unsigned int)at
{
  [(GEOComposedRoute *)self pointAt:at];

  v7 = CLLocationCoordinate2DMake(v3, v4);
  longitude = v7.longitude;
  latitude = v7.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_getMapPoints:(id *)points count:(unint64_t *)count startIndex:(unint64_t)index limit:(unint64_t)limit
{
  if (!points || !limit || (v8 = index, [(GEOComposedRoute *)self pointCount]<= index))
  {
    if (!count)
    {
      return;
    }

    v14 = 0;
    goto LABEL_13;
  }

  pointCount = limit + v8;
  if (limit + v8 >= [(GEOComposedRoute *)self pointCount])
  {
    pointCount = [(GEOComposedRoute *)self pointCount];
  }

  v12 = malloc_type_malloc(16 * (pointCount - v8), 0x1000040451B5BE8uLL);
  v13 = v12;
  v14 = pointCount - v8;
  if (pointCount > v8)
  {
    v15 = v12 + 8;
    do
    {
      [(GEOComposedRoute *)self _mkCoordAt:v8];
      *(v15 - 8) = MKMapPointForCoordinate(v16);
      ++v8;
      v15 += 16;
    }

    while (pointCount != v8);
  }

  *points = v13;
  if (count)
  {
LABEL_13:
    *count = v14;
  }
}

- (void)_maps_getMapPoints:(id *)points count:(unint64_t *)count forStep:(id)step
{
  stepCopy = step;
  startPointIndex = [stepCopy startPointIndex];
  pointCount = [stepCopy pointCount];

  [(GEOComposedRoute *)self _getMapPoints:points count:count startIndex:startPointIndex limit:pointCount];
}

- (void)_maps_getMapPoints:(id *)points count:(unint64_t *)count
{
  pointCount = [(GEOComposedRoute *)self pointCount];

  [(GEOComposedRoute *)self _getMapPoints:points count:count startIndex:0 limit:pointCount];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_maps_closestMapPointToMapPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
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

- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)step fromPoint:(unint64_t)point
{
  stepCopy = step;
  v7 = stepCopy;
  if (!stepCopy)
  {
    NSLog(@"Error, Route:boundingRectForStep called with nil step");
LABEL_12:
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    goto LABEL_13;
  }

  if ([stepCopy stepIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if ([v7 startPointIndex] > point || objc_msgSend(v7, "endPointIndex") < point)
  {
    NSLog(@"Error, Route:boundingRectForStep called with invalid startPointIndex");
    if ([v7 startPointIndex] >= point)
    {
      point = [v7 startPointIndex];
    }

    if (point >= [v7 endPointIndex])
    {
      point = [v7 endPointIndex];
    }
  }

  v21 = 0;
  -[GEOComposedRoute _getMapPoints:count:startIndex:limit:](self, "_getMapPoints:count:startIndex:limit:", &v20, &v21, point, [v7 pointCount] - point + objc_msgSend(v7, "startPointIndex"));
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

- ($873BFAB23BBB6E2F0B0288ED2F935688)_maps_boundingRectForStep:(id)step
{
  stepCopy = step;
  if ([stepCopy stepIndex] == 0x7FFFFFFFFFFFFFFFLL || (v17 = 0, v18 = 0, -[GEOComposedRoute _maps_getMapPoints:count:forStep:](self, "_maps_getMapPoints:count:forStep:", &v17, &v18, stepCopy), !v18))
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  else
  {
    [stepCopy pointCount];
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
  boundingMapRegion = [(GEOComposedRoute *)self boundingMapRegion];
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

- (id)timeStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(GEOComposedRoute *)self expectedTime];
  v5 = attributesCopy;
  v6 = GEOStringForDuration();
  v7 = [[NSAttributedString alloc] initWithString:v6 attributes:v5];

  return v7;
}

- (id)timeAndElevationDescriptionStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  previewDurationString = [(GEOComposedRoute *)self previewDurationString];
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v7 = v6;
  elevationProfile = [(GEOComposedRoute *)self elevationProfile];
  v9 = sub_100C86368(previewDurationString, elevationProfile, attributesCopy, v7);

  return v9;
}

- (id)distanceAndElevationString
{
  [(GEOComposedRoute *)self distance];
  elevationProfile = [(GEOComposedRoute *)self elevationProfile];
  v4 = sub_100C86990(elevationProfile);

  return v4;
}

- (id)bookmarkRepresentation
{
  v3 = objc_alloc_init(SyncedBookmarkRepr);
  [(SyncedBookmarkRepr *)v3 setType:4];
  transportType = [(GEOComposedRoute *)self transportType];
  if (transportType <= 4)
  {
    [(SyncedBookmarkRepr *)v3 setDirectionsMode:dword_101215AE4[transportType]];
  }

  origin = [(GEOComposedRoute *)self origin];
  isCurrentLocation = [origin isCurrentLocation];

  if (isCurrentLocation)
  {
    v7 = +[SearchResult currentLocationSearchResult];
    v8 = v7;
  }

  else
  {
    v9 = [SearchResult alloc];
    origin2 = [(GEOComposedRoute *)self origin];
    geoMapItem = [origin2 geoMapItem];
    v8 = [(SearchResult *)v9 initWithGEOMapItem:geoMapItem];

    if (!v8)
    {
      goto LABEL_8;
    }

    v7 = v8;
  }

  bookmarkRepresentation = [(SearchResult *)v7 bookmarkRepresentation];
  [(SyncedBookmarkRepr *)v3 addPlaces:bookmarkRepresentation];

LABEL_8:
  destination = [(GEOComposedRoute *)self destination];
  isCurrentLocation2 = [destination isCurrentLocation];

  if (isCurrentLocation2)
  {
    v15 = +[SearchResult currentLocationSearchResult];
    v16 = v15;
  }

  else
  {
    v17 = [SearchResult alloc];
    destination2 = [(GEOComposedRoute *)self destination];
    geoMapItem2 = [destination2 geoMapItem];
    v16 = [(SearchResult *)v17 initWithGEOMapItem:geoMapItem2];

    if (!v16)
    {
      goto LABEL_13;
    }

    v15 = v16;
  }

  bookmarkRepresentation2 = [(SearchResult *)v15 bookmarkRepresentation];
  [(SyncedBookmarkRepr *)v3 addPlaces:bookmarkRepresentation2];

LABEL_13:

  return v3;
}

- (id)_maps_convertToNavigableRouteWithTraits:(id)traits errorHandler:(id)handler completionHandler:(id)completionHandler
{
  traitsCopy = traits;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Marking route request with supportsArMode", buf, 0xCu);
    }
  }

  else
  {
    v13 = sub_100035E6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] NOT marking route request with supportsArMode", buf, 0xCu);
    }
  }

  [v11 setRouteAttributes:v12];
  if (traitsCopy)
  {
    [v11 setTraits:traitsCopy];
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
  v22 = handlerCopy;
  v23 = completionHandlerCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  v19 = [MNRouteEditor convertToNavigableRoute:v11 finishedHandler:v21];

  return v19;
}

+ (id)_maps_composedRouteWithPersistentData:(id)data
{
  dataCopy = data;
  v4 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:dataCopy];

  buildRoute = [v4 buildRoute];
  [buildRoute updateCustomRouteStartEndCaptions];

  return buildRoute;
}

- (GuidanceETA)guidanceETA
{
  [(GEOComposedRoute *)self distance];
  v4 = v3;
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v6 = v5;
  destination = [(GEOComposedRoute *)self destination];
  timezone = [destination timezone];

  if ([(GEOComposedRoute *)self isEVRoute])
  {
    lastEVStep = [(GEOComposedRoute *)self lastEVStep];
    evInfo = [lastEVStep evInfo];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [evInfo remainingBatteryPercentage]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [[GuidanceETA alloc] initWithRemainingTime:v11 remainingDistance:timezone arrivalBatteryCharge:[(GEOComposedRoute *)self transportType] destinationTimeZone:v6 transportType:v4];

  return v12;
}

- (unint64_t)suggestedNavigationModeForLocation:(id)location context:(unint64_t)context ignoreDeviceNavigability:(BOOL)navigability
{
  navigabilityCopy = navigability;
  locationCopy = location;
  v9 = [[MNSuggestedNavigationModeFinder alloc] initWithRoute:self context:context ignoreDeviceNavigability:navigabilityCopy];
  v10 = [v9 suggestedNavigationModeForLocation:locationCopy];

  return v10;
}

- (id)nextLaneGuidanceEventAfterEvent:(id)event
{
  eventCopy = event;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  composedGuidanceEvents = [(GEOComposedRoute *)self composedGuidanceEvents];
  v6 = [composedGuidanceEvents countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(composedGuidanceEvents);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          lanes = [*(*(&v14 + 1) + 8 * i) lanes];
          v12 = [lanes count];

          if (v12)
          {
            v6 = v10;
            goto LABEL_12;
          }
        }

        v7 |= v10 == eventCopy;
      }

      v6 = [composedGuidanceEvents countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  composedGuidanceEvents = [(GEOComposedRoute *)self composedGuidanceEvents];
  v3 = [NSPredicate predicateWithBlock:&stru_101656498];
  v4 = [composedGuidanceEvents filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)composedGuidanceEventsWithSignGuidance
{
  composedGuidanceEvents = [(GEOComposedRoute *)self composedGuidanceEvents];
  v3 = [NSPredicate predicateWithBlock:&stru_101656478];
  v4 = [composedGuidanceEvents filteredArrayUsingPredicate:v3];

  return v4;
}

- (BOOL)shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:(unint64_t)index
{
  if (([(GEOComposedRoute *)self isWalkingOnlyTransitRoute]& 1) != 0)
  {
    return 1;
  }

  if ([(GEOComposedRoute *)self transportType]!= 1)
  {
    return 0;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v6 = +[MNNavigationService sharedService];
  isTrackingCurrentLocation = [v6 isTrackingCurrentLocation];

  if (!isTrackingCurrentLocation)
  {
    return 1;
  }

  steps = [(GEOComposedRoute *)self steps];
  firstObject = [steps firstObject];
  nextAlightingStep = [firstObject nextAlightingStep];

  v5 = [nextAlightingStep stepIndex] >= index;
  return v5;
}

- (NSString)clientPickingDescription
{
  abbreviatedDistance = [(GEOComposedRoute *)self abbreviatedDistance];
  name = [(GEOComposedRoute *)self name];
  if ([abbreviatedDistance length] && objc_msgSend(name, "length"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WalkingDrivingRoute_SecondaryTextFormat" value:@"localized string not found" table:0];
    v7 = [NSString stringWithFormat:v6, abbreviatedDistance, name];
  }

  else
  {
    if ([abbreviatedDistance length])
    {
      v8 = abbreviatedDistance;
    }

    else
    {
      v8 = name;
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

- (id)advisoriesForAutoSharingContacts:(id)contacts scale:(double)scale
{
  contactsCopy = contacts;
  advisories = [(GEOComposedRoute *)self advisories];
  v8 = [RouteAdvisoryViewModel viewModelsForAdvisories:advisories];

  if ([contactsCopy count])
  {
    [(GEOComposedRoute *)self transportType];
    if (MSPSharedTripSharingSupportedForTransportType())
    {
      if (MSPSharedTripSharingAvailable())
      {
        v9 = [v8 mutableCopy];
        v10 = [RouteAdvisoryViewModel advisoryTextForAutomaticSharingContacts:contactsCopy];
        v11 = +[GEOFeatureStyleAttributes shareETAAdvisoryStyleAttributes];
        v12 = [MKIconManager imageForStyle:v11 size:0 forScale:0 format:scale];

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
  attributedString = [v2 attributedString];

  return attributedString;
}

- (id)secondaryText
{
  v2 = [RouteOverviewStringProvider secondaryMultiPartTextForRoute:self font:0];
  attributedString = [v2 attributedString];

  return attributedString;
}

- (BOOL)_maps_isEqualToComposedRoute:(id)route
{
  routeCopy = route;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    uniqueRouteID2 = [(GEOComposedRoute *)self uniqueRouteID];
    if ([uniqueRouteID isEqual:uniqueRouteID2])
    {
      rideSelections = [routeCopy rideSelections];
      rideSelections2 = [(GEOComposedRoute *)self rideSelections];
      v11 = rideSelections;
      v12 = rideSelections2;
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

    uniqueRouteID = [routeCopy segments];
    uniqueRouteID2 = [(GEOComposedRoute *)self segments];
    v6 = [uniqueRouteID isEqualToArray:uniqueRouteID2];
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
  waypoints = [(GEOComposedRoute *)self waypoints];
  v5 = [waypoints mutableCopy];
  [v3 setWaypoints:v5];

  persistentData = [(GEOComposedRoute *)self persistentData];
  [v3 setDestinationRouteData:persistentData];

  [v3 setTransportType:{-[GEOComposedRoute transportType](self, "transportType")}];
  routeAttributes = [(GEOComposedRoute *)self routeAttributes];
  automobileOptions = [routeAttributes automobileOptions];
  [v3 setAutomobileOptions:automobileOptions];

  walkingOptions = [routeAttributes walkingOptions];
  [v3 setWalkingOptions:walkingOptions];

  transitOptions = [routeAttributes transitOptions];
  [v3 setTransitOptions:transitOptions];

  cyclingOptions = [routeAttributes cyclingOptions];
  [v3 setCyclingOptions:cyclingOptions];

  return v3;
}

@end