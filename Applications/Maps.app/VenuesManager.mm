@interface VenuesManager
- (BOOL)hasSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal;
- (BOOL)hasSearchResultsInVenue:(id)venue matching:(id)matching;
- (BOOL)isUserAtSameVenueAsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isUserAtSameVenueAsMapItem:(id)item;
- (BOOL)isUserAtVenueWithID:(unint64_t)d;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect;
- (MKMapView)mapView;
- (MapsUserLocationView)userLocationView;
- (NSNumber)userLocationFloorOrdinal;
- (VKVenueBuildingFeatureMarker)venueBuildingWithFocus;
- (VKVenueFeatureMarker)venueWithFocus;
- (VenueFloorViewControlling)venueFloorViewController;
- (VenuesManager)initWithDelegate:(id)delegate mapView:(id)view userLocationView:(id)locationView;
- (VenuesManagerDelegate)delegate;
- (VenuesStack)venueCardStack;
- (id)_userVenueMarker;
- (id)searchResultCountInVenueWithViewController:(id)controller;
- (id)sortedFloorOrdinalsForVenue:(id)venue;
- (id)userLocationFloorOrdinalInVenue:(id)venue;
- (id)venue:(id)venue buildingWithId:(unint64_t)id;
- (id)venueFeatureMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate;
- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)venue;
- (signed)firstAbovegroundFloorOrdinalForVenue:(id)venue;
- (signed)floorOrdinalWithFocus;
- (void)_containerWillPresentContainee:(id)containee;
- (void)addChangeObserver:(id)observer;
- (void)dismissLastPlaceCardViewControllerIfNecessary;
- (void)displayFloorForCurrentOrPendingSelection;
- (void)displayFloorForPendingSelection;
- (void)displayFloorForSelectedLabelMarker:(id)marker;
- (void)displayFloorForSelectedSearchResult:(id)result;
- (void)displayUserLocationFloorOrdinalIfNeededWithVenue:(id)venue asNewlyFocusedVenue:(BOOL)focusedVenue;
- (void)getMinZoom:(id *)zoom maxZoom:(id *)maxZoom forDisplayingLabelMarker:(id)marker;
- (void)getMinZoom:(id *)zoom maxZoom:(id *)maxZoom resultsForDeterminingRegion:(id *)region forDisplayingResults:(id)results fromSearch:(id)search;
- (void)mapView:(id)view didChangeDisplayedFloorOrdinal:(signed __int16)ordinal forVenue:(id)venue;
- (void)mapView:(id)view didChangeFocusedVenue:(id)venue focusedBuilding:(id)building;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)notifyChangeObservers;
- (void)presentPlaceCardForVenueWithFocusAndAddToHistory:(BOOL)history source:(unint64_t)source centeringOnVenue:(BOOL)venue;
- (void)recordVenueVisitWithIdentifier:(id)identifier;
- (void)scheduleEviction;
- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal forBuildingsInVenue:(id)venue;
- (void)setPendingValuesAndDisplayVenueID:(id)d floorOrdinal:(signed __int16)ordinal;
- (void)setSearchResultCountInVenue:(id)venue;
- (void)setVenueCardStack:(id)stack;
- (void)setVenueFloorViewController:(id)controller;
- (void)updateDimmingOutsideVenue;
- (void)updateFocusedVenueFloor;
- (void)updateSearchResultCountFromCurrentViewController;
- (void)updateSearchResultCountFromViewController:(id)controller;
- (void)updateUserLocation;
- (void)venueFloorViewControllerStateDidChange;
- (void)visitedVenuesEvictionTimerFired:(id)fired;
@end

@implementation VenuesManager

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (VKVenueFeatureMarker)venueWithFocus
{
  mapView = [(VenuesManager *)self mapView];
  venueWithFocus = [mapView venueWithFocus];

  return venueWithFocus;
}

- (VenueFloorViewControlling)venueFloorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_venueFloorViewController);

  return WeakRetained;
}

- (NSNumber)userLocationFloorOrdinal
{
  mapView = [(VenuesManager *)self mapView];
  userLocation = [mapView userLocation];
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  mapView2 = [(VenuesManager *)self mapView];
  v7 = [userLocation floorOrdinalInVenue:venueWithFocus forMapView:mapView2];

  return v7;
}

- (void)updateUserLocation
{
  userLocationFloorOrdinal = [(VenuesManager *)self userLocationFloorOrdinal];
  venueFloorViewController = [(VenuesManager *)self venueFloorViewController];
  [venueFloorViewController setUserLocationFloorOrdinal:userLocationFloorOrdinal];

  floorCard = [(VenuesManager *)self floorCard];
  [floorCard userLocationDidChange];

  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  v6 = 0;
  if (venueWithFocus && userLocationFloorOrdinal)
  {
    v7 = [(VenuesManager *)self displayedFloorOrdinalForBuildingsInVenue:venueWithFocus];
    v6 = v7 != [userLocationFloorOrdinal shortValue];
  }

  userLocationView = [(VenuesManager *)self userLocationView];
  [userLocationView _setIsOnAnotherFloorInVenue:v6];
}

- (MapsUserLocationView)userLocationView
{
  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);

  return WeakRetained;
}

- (VenuesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VenuesStack)venueCardStack
{
  WeakRetained = objc_loadWeakRetained(&self->_venueCardStack);

  return WeakRetained;
}

- (signed)firstAbovegroundFloorOrdinalForVenue:(id)venue
{
  venueCopy = venue;
  floorOrdinalWithFocus = [(VenuesManager *)self floorOrdinalWithFocus];
  [(VenuesManager *)self sortedFloorOrdinalsForVenue:venueCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if (([v11 shortValue] & 0x80000000) != 0)
      {
        break;
      }

      floorOrdinalWithFocus = [v11 shortValue];
      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return floorOrdinalWithFocus;
}

- (id)sortedFloorOrdinalsForVenue:(id)venue
{
  venueCopy = venue;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  buildings = [venueCopy buildings];
  v6 = [buildings countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(buildings);
        }

        floorOrdinals = [*(*(&v16 + 1) + 8 * i) floorOrdinals];
        [v4 addObjectsFromArray:floorOrdinals];
      }

      v7 = [buildings countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];
  v12 = [allObjects sortedArrayUsingSelector:"compare:"];
  reverseObjectEnumerator = [v12 reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator allObjects];

  return allObjects2;
}

- (void)dismissLastPlaceCardViewControllerIfNecessary
{
  delegate = [(VenuesManager *)self delegate];
  v10 = [delegate mapSelectionManagerForVenuesManager:self];

  labelMarker = [v10 labelMarker];
  if ([labelMarker venueLevelID])
  {
    venueFloorOrdinal = [labelMarker venueFloorOrdinal];
    if (venueFloorOrdinal != [(VenuesManager *)self floorOrdinalWithFocus])
    {
      venueID = [labelMarker venueID];
      venueWithFocus = [(VenuesManager *)self venueWithFocus];
      venueID2 = [venueWithFocus venueID];

      if (venueID == venueID2)
      {
        delegate2 = [(VenuesManager *)self delegate];
        [delegate2 dismissLastVenuesPlaceCardForVenuesManager:self];
      }
    }
  }
}

- (void)updateDimmingOutsideVenue
{
  if (GEOConfigGetBOOL())
  {
    venueWithFocus = [(VenuesManager *)self venueWithFocus];

    v5 = [(VenuesManager *)self floorOrdinalWithFocus]< 0 && venueWithFocus != 0;
    mapView = [(VenuesManager *)self mapView];
    [mapView setDimmingOutsideVenueWithFocus:v5];
  }
}

- (void)venueFloorViewControllerStateDidChange
{
  venueFloorViewController = [(VenuesManager *)self venueFloorViewController];
  if (![venueFloorViewController isOpen])
  {
    goto LABEL_4;
  }

  venueFloorViewController2 = [(VenuesManager *)self venueFloorViewController];
  if ([venueFloorViewController2 isHidden])
  {

LABEL_4:
    goto LABEL_5;
  }

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
LABEL_5:
    floorCard = [(VenuesManager *)self floorCard];

    if (floorCard)
    {
      delegate = [(VenuesManager *)self delegate];
      floorCard2 = [(VenuesManager *)self floorCard];
      [delegate venuesManager:self dismissFloorCardViewController:floorCard2];

      [(VenuesManager *)self setFloorCard:0];
    }

    goto LABEL_7;
  }

  floorCard3 = [(VenuesManager *)self floorCard];

  if (!floorCard3)
  {
    v11 = [[VenueFloorCardViewController alloc] initWithVenuesManager:self];
    [(VenuesManager *)self addChangeObserver:v11];
    [(VenuesManager *)self setFloorCard:v11];
    delegate2 = [(VenuesManager *)self delegate];
    [delegate2 venuesManager:self presentFloorCardViewController:v11];
  }

LABEL_7:

  [(VenuesManager *)self updateDimmingOutsideVenue];
}

- (id)searchResultCountInVenueWithViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___VenuesControlCoordinating] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    searchResultCountInVenue = [controllerCopy searchResultCountInVenue];
  }

  else
  {
    searchResultCountInVenue = 0;
  }

  return searchResultCountInVenue;
}

- (void)updateSearchResultCountFromViewController:(id)controller
{
  controllerCopy = controller;
  floorCard = [(VenuesManager *)self floorCard];

  v5 = controllerCopy;
  if (floorCard != controllerCopy)
  {
    v6 = [(VenuesManager *)self searchResultCountInVenueWithViewController:controllerCopy];
    [(VenuesManager *)self setSearchResultCountInVenue:v6];

    v5 = controllerCopy;
  }
}

- (void)updateSearchResultCountFromCurrentViewController
{
  delegate = [(VenuesManager *)self delegate];
  v4 = [delegate topmostContaineeForVenuesManager:self];

  [(VenuesManager *)self updateSearchResultCountFromViewController:v4];
}

- (void)_containerWillPresentContainee:(id)containee
{
  userInfo = [containee userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"ContainerContainee"];

  venueFloorViewController = [(VenuesManager *)self venueFloorViewController];
  if (venueFloorViewController)
  {
    v7 = venueFloorViewController;
    floorCard = [(VenuesManager *)self floorCard];

    if (v5 != floorCard)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100D79348;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  v9 = [(NSDictionary *)self->_searchResultCountInVenue copy];
  [(VenuesManager *)self updateSearchResultCountFromViewController:v5];
  floorCard2 = [(VenuesManager *)self floorCard];

  if (v5 != floorCard2)
  {
    v11 = [(VenuesManager *)self searchResultCountInVenueWithViewController:v5];
    if (![NSDictionary dictionary:v9 isEqualToDictionary:v11])
    {
      [(VenuesManager *)self updateFocusedVenueFloor];
    }
  }
}

- (void)updateFocusedVenueFloor
{
  selfCopy = self;
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  if (venueWithFocus)
  {
    v4 = [(VenuesManager *)selfCopy displayedFloorOrdinalForBuildingsInVenue:venueWithFocus];
    if ([(VenuesManager *)selfCopy hasSearchResultsInVenueForAnyFloorOrdinal:venueWithFocus])
    {
      if (!-[VenuesManager hasSearchResultsInVenue:forFloorOrdinal:](selfCopy, "hasSearchResultsInVenue:forFloorOrdinal:", venueWithFocus, v4) || (-[VenuesManager mapView](selfCopy, "mapView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 displayedFloorIsDefaultForBuildingsInVenue:venueWithFocus], v5, v6))
      {
        v7 = [(VenuesManager *)selfCopy userLocationFloorOrdinalInVenue:venueWithFocus];
        v8 = v7;
        if (v7 && -[VenuesManager hasSearchResultsInVenue:forFloorOrdinal:](selfCopy, "hasSearchResultsInVenue:forFloorOrdinal:", venueWithFocus, [v7 shortValue]))
        {
          shortValue = [v8 shortValue];
        }

        else
        {
          v25 = v8;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          obj = [(VenuesManager *)selfCopy searchResultCountInVenue];
          v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            v12 = *v30;
            v26 = v4;
            shortValue = v4;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v29 + 1) + 8 * i);
                venueID = [v14 venueID];
                if (venueID == [venueWithFocus venueID])
                {
                  floorOrdinal = [v14 floorOrdinal];

                  if (floorOrdinal)
                  {
                    [(VenuesManager *)selfCopy searchResultCountInVenue];
                    v18 = v17 = selfCopy;
                    v19 = [v18 objectForKeyedSubscript:v14];
                    unsignedIntegerValue = [v19 unsignedIntegerValue];

                    selfCopy = v17;
                    floorOrdinal2 = [v14 floorOrdinal];
                    shortValue2 = [floorOrdinal2 shortValue];

                    if (unsignedIntegerValue > v11)
                    {
                      goto LABEL_16;
                    }

                    if (unsignedIntegerValue == v11)
                    {
                      v23 = shortValue2 - v26;
                      if ((shortValue2 - v26) < 0)
                      {
                        v23 = v26 - shortValue2;
                      }

                      v24 = shortValue - v26;
                      if (v24 < 0)
                      {
                        v24 = v26 - shortValue;
                      }

                      if (v23 < v24)
                      {
LABEL_16:
                        shortValue = shortValue2;
                        v11 = unsignedIntegerValue;
                      }
                    }
                  }
                }
              }

              v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v10);
          }

          else
          {
            shortValue = v4;
          }

          v8 = v25;
        }

        [(VenuesManager *)selfCopy setDisplayedFloorOrdinal:shortValue forBuildingsInVenue:venueWithFocus];
      }
    }
  }
}

- (void)setSearchResultCountInVenue:(id)venue
{
  venueCopy = venue;
  if (![NSDictionary dictionary:self->_searchResultCountInVenue isEqualToDictionary:?])
  {
    v4 = [venueCopy copy];
    searchResultCountInVenue = self->_searchResultCountInVenue;
    self->_searchResultCountInVenue = v4;

    venueFloorViewController = [(VenuesManager *)self venueFloorViewController];
    [venueFloorViewController didChangeSearchResultsInVenue];
  }
}

- (id)venue:(id)venue buildingWithId:(unint64_t)id
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  buildings = [venue buildings];
  v6 = buildings;
  v7 = &__NSArray0__struct;
  if (buildings)
  {
    v7 = buildings;
  }

  v8 = v7;

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 buildingId] == id)
        {
          v14 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)mapView:(id)view didChangeDisplayedFloorOrdinal:(signed __int16)ordinal forVenue:(id)venue
{
  venueCopy = venue;
  [(VenuesManager *)self notifyChangeObservers];
  [(VenuesManager *)self updateUserLocation];
  pendingDisplayFloorForSelectionVenueID = [(VenuesManager *)self pendingDisplayFloorForSelectionVenueID];
  venueID = [venueCopy venueID];

  if (pendingDisplayFloorForSelectionVenueID == venueID)
  {
    [(VenuesManager *)self setPendingDisplayFloorForSelectionVenueID:0];
  }

  [(VenuesManager *)self dismissLastPlaceCardViewControllerIfNecessary];

  [(VenuesManager *)self updateDimmingOutsideVenue];
}

- (void)mapView:(id)view didChangeFocusedVenue:(id)venue focusedBuilding:(id)building
{
  viewCopy = view;
  venueCopy = venue;
  buildingCopy = building;
  v10 = buildingCopy;
  if (venueCopy)
  {
    [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:venueCopy asNewlyFocusedVenue:1];
    [(VenuesManager *)self updateFocusedVenueFloor];
    [(VenuesManager *)self displayFloorForCurrentOrPendingSelection];
  }

  else if (!buildingCopy)
  {
    [(VenuesManager *)self setSearchVenueIdentifier:0];
    v14 = 0;
    v13 = 1057;
    goto LABEL_7;
  }

  v11 = +[GEOAPSharedStateData sharedData];
  venueExperienceShown = [v11 venueExperienceShown];

  if (venueExperienceShown)
  {
    goto LABEL_8;
  }

  v13 = 1056;
  v14 = 1;
LABEL_7:
  v15 = +[GEOAPSharedStateData sharedData];
  [v15 setVenueExperienceShown:v14];

  [GEOAPPortal captureUserAction:v13 target:0 value:0];
LABEL_8:
  [(VenuesManager *)self updateUserLocation];
  mapView = [(VenuesManager *)self mapView];
  v17 = [mapView displayedFloorIsDefaultForBuildingsInVenue:venueCopy];

  if (v17)
  {
    venueWithFocus = [(VenuesManager *)self venueWithFocus];

    floorOrdinalWithFocus = [(VenuesManager *)self floorOrdinalWithFocus];
    if (venueWithFocus)
    {
      searchVenueIdentifier = [(VenuesManager *)self searchVenueIdentifier];
      venueWithFocus2 = [(VenuesManager *)self venueWithFocus];
      v22 = searchVenueIdentifier == [venueWithFocus2 venueID];
    }

    else
    {
      v22 = 1;
    }

    mapIdentifier = [venueCopy mapIdentifier];
    visitedVenues = [(VenuesManager *)self visitedVenues];
    v25 = [visitedVenues objectForKeyedSubscript:mapIdentifier];

    if ((floorOrdinalWithFocus & 0x80000000) == 0 || v22 || v25)
    {
      v26 = [(VenuesManager *)self displayedFloorOrdinalForBuildingsInVenue:venueCopy];
    }

    else
    {
      v26 = [(VenuesManager *)self firstAbovegroundFloorOrdinalForVenue:venueCopy];
    }

    [(VenuesManager *)self setDisplayedFloorOrdinal:v26 forBuildingsInVenue:venueCopy];
  }

  [(VenuesManager *)self updateDimmingOutsideVenue];
  [(VenuesManager *)self notifyChangeObservers];
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect
{
  venueFloorViewController = [(VenuesManager *)self venueFloorViewController];
  isOpen = [venueFloorViewController isOpen];

  if (isOpen)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D79B6C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  return isOpen ^ 1;
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  v6 = [(VenuesManager *)self venueWithFocus:view];
  [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:v6 asNewlyFocusedVenue:0];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  [(VenuesManager *)self updateUserLocation:view];
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:venueWithFocus asNewlyFocusedVenue:0];
}

- (void)presentPlaceCardForVenueWithFocusAndAddToHistory:(BOOL)history source:(unint64_t)source centeringOnVenue:(BOOL)venue
{
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  v10 = venueWithFocus;
  if (venueWithFocus)
  {
    mapIdentifier = [venueWithFocus mapIdentifier];
    if (mapIdentifier)
    {
      v12 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:mapIdentifier];
      v13 = +[MKMapService sharedService];
      v21 = v12;
      v14 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = [v13 ticketForIdentifiers:v14 traits:0];

      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100D79E58;
      v16[3] = &unk_101653288;
      objc_copyWeak(v17, &location);
      venueCopy = venue;
      historyCopy = history;
      v17[1] = source;
      [v15 submitWithHandler:v16 networkActivity:0];
      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)displayFloorForPendingSelection
{
  if ([(VenuesManager *)self pendingDisplayFloorForSelectionVenueID])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v4 = [WeakRetained venueWithID:{-[VenuesManager pendingDisplayFloorForSelectionVenueID](self, "pendingDisplayFloorForSelectionVenueID")}];

    if (v4)
    {
      [(VenuesManager *)self setDisplayedFloorOrdinal:[(VenuesManager *)self pendingDisplayFloorForSelectionFloorOrdinal] forBuildingsInVenue:v4];
    }
  }
}

- (void)displayFloorForCurrentOrPendingSelection
{
  delegate = [(VenuesManager *)self delegate];
  v5 = [delegate mapSelectionManagerForVenuesManager:self];

  labelMarker = [v5 labelMarker];
  if (labelMarker)
  {
    [(VenuesManager *)self displayFloorForSelectedLabelMarker:labelMarker];
  }

  else
  {
    [(VenuesManager *)self displayFloorForPendingSelection];
  }
}

- (void)setPendingValuesAndDisplayVenueID:(id)d floorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  -[VenuesManager setPendingDisplayFloorForSelectionVenueID:](self, "setPendingDisplayFloorForSelectionVenueID:", [d venueID]);
  [(VenuesManager *)self setPendingDisplayFloorForSelectionFloorOrdinal:ordinalCopy];

  [(VenuesManager *)self displayFloorForPendingSelection];
}

- (void)displayFloorForSelectedLabelMarker:(id)marker
{
  markerCopy = marker;
  featureAnnotation = [markerCopy featureAnnotation];
  v5 = [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation];

  if (v5)
  {
    featureAnnotation2 = [markerCopy featureAnnotation];
    searchResult = [featureAnnotation2 searchResult];
    v8 = [searchResult type] == 3;
  }

  else
  {
    v8 = 0;
  }

  if ([markerCopy hasVenueLookInsideFloorOrdinal])
  {
    venueLookInsideFloorOrdinal = [markerCopy venueLookInsideFloorOrdinal];
LABEL_8:
    [(VenuesManager *)self setPendingValuesAndDisplayVenueID:markerCopy floorOrdinal:venueLookInsideFloorOrdinal];
    goto LABEL_9;
  }

  if ([markerCopy venueLevelID] != 0 || v8)
  {
    venueLookInsideFloorOrdinal = [markerCopy venueFloorOrdinal];
    goto LABEL_8;
  }

  if ([markerCopy venueID])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v11 = [WeakRetained venueWithID:{objc_msgSend(markerCopy, "venueID")}];

    mapIdentifier = [v11 mapIdentifier];
    if (mapIdentifier)
    {
      [(VenuesManager *)self recordVenueVisitWithIdentifier:mapIdentifier];
      mapView = [(VenuesManager *)self mapView];
      v14 = [mapView defaultFloorForBuildingsInVenue:v11];

      [(VenuesManager *)self setPendingValuesAndDisplayVenueID:markerCopy floorOrdinal:v14];
    }
  }

LABEL_9:
}

- (void)displayFloorForSelectedSearchResult:(id)result
{
  mapItem = [result mapItem];
  _venueInfo = [mapItem _venueInfo];

  if (_venueInfo && ([_venueInfo venueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_hasVenueID"), v6, v7))
  {
    venueIdentifier = [_venueInfo venueIdentifier];
    venueID = [venueIdentifier venueID];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    venueIdentifier2 = [_venueInfo venueIdentifier];
    componentIdentifiers = [venueIdentifier2 componentIdentifiers];

    ordinal = [componentIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (ordinal)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != ordinal; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(componentIdentifiers);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          floorInfo = [v15 floorInfo];

          if (floorInfo)
          {
            floorInfo2 = [v15 floorInfo];
            ordinal = [floorInfo2 ordinal];

            goto LABEL_14;
          }
        }

        ordinal = [componentIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (ordinal)
        {
          continue;
        }

        break;
      }
    }

    venueID = 0;
LABEL_14:
  }

  else
  {
    ordinal = 0;
    venueID = 0;
  }

  [(VenuesManager *)self setPendingDisplayFloorForSelectionVenueID:venueID];
  [(VenuesManager *)self setPendingDisplayFloorForSelectionFloorOrdinal:ordinal];
  [(VenuesManager *)self displayFloorForPendingSelection];
}

- (void)setVenueCardStack:(id)stack
{
  obj = stack;
  WeakRetained = objc_loadWeakRetained(&self->_venueCardStack);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_venueCardStack);
    [v5 removeStackObserver:self];

    v6 = objc_storeWeak(&self->_venueCardStack, obj);
    [obj addStackObserver:self];

    [(VenuesManager *)self updateDimmingOutsideVenue];
  }
}

- (void)setVenueFloorViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_venueFloorViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    changeObservers = self->_changeObservers;
    v7 = objc_loadWeakRetained(&self->_venueFloorViewController);
    LODWORD(changeObservers) = [(NSHashTable *)changeObservers containsObject:v7];

    if (changeObservers)
    {
      v8 = self->_changeObservers;
      v9 = objc_loadWeakRetained(&self->_venueFloorViewController);
      [(NSHashTable *)v8 removeObject:v9];
    }

    objc_storeWeak(&self->_venueFloorViewController, obj);
    userLocationFloorOrdinal = [(VenuesManager *)self userLocationFloorOrdinal];
    [obj setUserLocationFloorOrdinal:userLocationFloorOrdinal];

    v11 = objc_loadWeakRetained(&self->_venueFloorViewController);
    [(VenuesManager *)self addChangeObserver:v11];

    [(VenuesManager *)self updateSearchResultCountFromCurrentViewController];
    [(VenuesManager *)self updateFocusedVenueFloor];
    [(VenuesManager *)self venueFloorViewControllerStateDidChange];
    v5 = obj;
  }
}

- (void)getMinZoom:(id *)zoom maxZoom:(id *)maxZoom forDisplayingLabelMarker:(id)marker
{
  markerCopy = marker;
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  venueBuildingWithFocus = [(VenuesManager *)self venueBuildingWithFocus];
  if ([markerCopy venueID] && (v10 = objc_msgSend(markerCopy, "venueID"), v10 == objc_msgSend(venueWithFocus, "venueID")))
  {
    if ([markerCopy venueLevelID])
    {
      mapView = [(VenuesManager *)self mapView];
      [mapView _zoomLevel];
      *zoom = [NSNumber numberWithDouble:?];

      v12 = *zoom;
    }

    else
    {
      if ([markerCopy venueBuildingID] && (v13 = objc_msgSend(markerCopy, "venueBuildingID"), v13 == objc_msgSend(venueBuildingWithFocus, "buildingId")))
      {
        mapView2 = [(VenuesManager *)self mapView];
        [mapView2 zoomToFocusVenueBuilding:venueBuildingWithFocus];
      }

      else
      {
        mapView2 = [(VenuesManager *)self mapView];
        [mapView2 zoomToFocusVenue:venueWithFocus];
      }

      *zoom = [NSNumber numberWithDouble:?];

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    *zoom = 0;
  }

  *maxZoom = v12;
}

- (void)getMinZoom:(id *)zoom maxZoom:(id *)maxZoom resultsForDeterminingRegion:(id *)region forDisplayingResults:(id)results fromSearch:(id)search
{
  resultsCopy = results;
  venueCategoryItem = [search venueCategoryItem];
  venueIdentifier = [venueCategoryItem venueIdentifier];

  if (venueIdentifier && [venueIdentifier venueID])
  {
    mapView = [(VenuesManager *)self mapView];
    v15 = [mapView venueWithID:{objc_msgSend(venueIdentifier, "venueID")}];

    v69 = v15;
    if (v15)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      componentIdentifiers = [venueIdentifier componentIdentifiers];
      v17 = [componentIdentifiers countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v17)
      {
        v18 = v17;
        zoomCopy = zoom;
        v20 = *v77;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v77 != v20)
            {
              objc_enumerationMutation(componentIdentifiers);
            }

            v22 = *(*(&v76 + 1) + 8 * i);
            if ([v22 _hasBuildingID])
            {
              v23 = -[VenuesManager venue:buildingWithId:](self, "venue:buildingWithId:", v69, [v22 buildingID]);
              if (v23)
              {
                v24 = v23;
                goto LABEL_17;
              }
            }
          }

          v18 = [componentIdentifiers countByEnumeratingWithState:&v76 objects:v81 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_17:
        zoom = zoomCopy;
      }

      else
      {
        v24 = 0;
      }

      v25 = 1;
      v15 = v24;
    }

    else
    {
      v25 = 0;
      v69 = 0;
    }
  }

  else
  {
    v25 = 0;
    v69 = 0;
    v15 = 0;
  }

  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  venueBuildingWithFocus = [(VenuesManager *)self venueBuildingWithFocus];
  selfCopy = self;
  v66 = venueBuildingWithFocus;
  v67 = v15;
  if (v15)
  {
    mapView2 = [(VenuesManager *)self mapView];
    [mapView2 zoomToFocusVenueBuilding:v15];
LABEL_24:
    v29 = v28;
    v30 = 0;
LABEL_25:
    v31 = venueWithFocus;
    goto LABEL_26;
  }

  if (v25)
  {
    mapView2 = [(VenuesManager *)self mapView];
    [mapView2 zoomToFocusVenue:v69];
    goto LABEL_24;
  }

  if (venueBuildingWithFocus)
  {
    v49 = venueBuildingWithFocus;
    mapView2 = [(VenuesManager *)self mapView];
    [mapView2 zoomToFocusVenueBuilding:v49];
    v29 = v50;
    v30 = 1;
    goto LABEL_25;
  }

  v31 = venueWithFocus;
  if (!venueWithFocus)
  {
    *zoom = 0;
    *maxZoom = 0;
    goto LABEL_51;
  }

  mapView2 = [(VenuesManager *)self mapView];
  [mapView2 zoomToFocusVenue:venueWithFocus];
  v29 = v51;
  v30 = 1;
LABEL_26:

  if (v29 <= 0.0)
  {
    *zoom = 0;
    *maxZoom = 0;
    if (v30)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v32 = [NSNumber numberWithDouble:v29];
  *zoom = v32;

  mapView3 = [(VenuesManager *)self mapView];
  [mapView3 _zoomLevel];
  if (v34 < v29)
  {

    goto LABEL_34;
  }

  if (!venueWithFocus)
  {
LABEL_34:
    *maxZoom = 0;
    v31 = venueWithFocus;
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_51:
    regionCopy2 = region;
    *region = [resultsCopy copy];
    if (!v31)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  mapView4 = [(VenuesManager *)self mapView];
  [mapView4 _zoomLevel];
  *maxZoom = [NSNumber numberWithDouble:?];

  v31 = venueWithFocus;
  if (!v30)
  {
    goto LABEL_51;
  }

LABEL_35:
  zoomCopy2 = zoom;
  maxZoomCopy = maxZoom;
  v61 = venueIdentifier;
  v70 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v62 = resultsCopy;
  v36 = resultsCopy;
  v37 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v73;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v72 + 1) + 8 * j);
        mapItem = [v41 mapItem];
        _venueInfo = [mapItem _venueInfo];
        venueIdentifier2 = [_venueInfo venueIdentifier];
        venueID = [venueIdentifier2 venueID];
        venueID2 = [venueWithFocus venueID];

        if (venueID == venueID2)
        {
          [v70 addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v38);
  }

  v47 = v70;
  regionCopy2 = region;
  *region = v47;

  venueIdentifier = v61;
  resultsCopy = v62;
  maxZoom = maxZoomCopy;
  zoom = zoomCopy2;
  v31 = venueWithFocus;
  if (venueWithFocus)
  {
LABEL_52:
    if ([*regionCopy2 count] == 1)
    {
      firstObject = [*regionCopy2 firstObject];
      mapItem2 = [firstObject mapItem];
      if ([mapItem2 _venueFeatureType] == 4)
      {
        zoomCopy3 = zoom;
        mapItem3 = [firstObject mapItem];
        _venueInfo2 = [mapItem3 _venueInfo];
        venueIdentifier3 = [_venueInfo2 venueIdentifier];
        venueID3 = [venueIdentifier3 venueID];
        venueID4 = [venueWithFocus venueID];

        if (venueID3 == venueID4)
        {
          mapView5 = [(VenuesManager *)selfCopy mapView];
          [mapView5 _zoomLevel];
          *zoomCopy3 = [NSNumber numberWithDouble:?];

          *maxZoom = *zoomCopy3;
        }
      }

      else
      {
      }

      v31 = venueWithFocus;
    }
  }

LABEL_58:
}

- (BOOL)hasSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7AE1C;
  v5[3] = &unk_101653200;
  ordinalCopy = ordinal;
  return [(VenuesManager *)self hasSearchResultsInVenue:venue matching:v5];
}

- (BOOL)hasSearchResultsInVenue:(id)venue matching:(id)matching
{
  venueCopy = venue;
  matchingCopy = matching;
  if (venueCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    searchResultCountInVenue = [(VenuesManager *)self searchResultCountInVenue];
    v9 = searchResultCountInVenue;
    v10 = &__NSArray0__struct;
    if (searchResultCountInVenue)
    {
      v10 = searchResultCountInVenue;
    }

    v11 = v10;

    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      selfCopy = self;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          venueID = [v16 venueID];
          if (venueID == [venueCopy venueID])
          {
            if (matchingCopy[2](matchingCopy, v16))
            {
              searchResultCountInVenue2 = [(VenuesManager *)selfCopy searchResultCountInVenue];
              v19 = [searchResultCountInVenue2 objectForKeyedSubscript:v16];
              shortValue = [v19 shortValue];

              if (shortValue)
              {
                v21 = 1;
                goto LABEL_17;
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_17:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)displayUserLocationFloorOrdinalIfNeededWithVenue:(id)venue asNewlyFocusedVenue:(BOOL)focusedVenue
{
  focusedVenueCopy = focusedVenue;
  venueCopy = venue;
  mapView = [(VenuesManager *)self mapView];
  userTrackingMode = [mapView userTrackingMode];

  if (userTrackingMode || focusedVenueCopy)
  {
    if (!focusedVenueCopy || (-[VenuesManager mapView](self, "mapView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 displayedFloorIsDefaultForBuildingsInVenue:venueCopy], v8, v9))
    {
      v10 = [(VenuesManager *)self userLocationFloorOrdinalInVenue:venueCopy];
      v11 = v10;
      if (v10)
      {
        shortValue = [v10 shortValue];
        mapView2 = [(VenuesManager *)self mapView];
        v14 = [mapView2 displayedFloorOrdinalForBuildingsInVenue:venueCopy];

        if (shortValue != v14)
        {
          -[VenuesManager setDisplayedFloorOrdinal:forBuildingsInVenue:](self, "setDisplayedFloorOrdinal:forBuildingsInVenue:", [v11 shortValue], venueCopy);
        }
      }
    }
  }
}

- (id)userLocationFloorOrdinalInVenue:(id)venue
{
  venueCopy = venue;
  userLocationFloorOrdinal = [(VenuesManager *)self userLocationFloorOrdinal];
  if (userLocationFloorOrdinal)
  {
    mapView = [(VenuesManager *)self mapView];
    userLocation = [mapView userLocation];
    [userLocation coordinate];

    mapView2 = [(VenuesManager *)self mapView];
    _mapLayer = [mapView2 _mapLayer];
    VKLocationCoordinate2DMake();
    v10 = [_mapLayer venueAtLocation:?];

    venueID = [v10 venueID];
    if (venueID == [venueCopy venueID])
    {
      v12 = userLocationFloorOrdinal;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_userVenueMarker
{
  v3 = +[MKLocationManager sharedLocationManager];
  lastGoodLocation = [v3 lastGoodLocation];

  if (lastGoodLocation || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAuthorizedForPreciseLocation], v5, v6))
  {
    [lastGoodLocation coordinate];
    v7 = [(VenuesManager *)self venueFeatureMarkerAtCoordinate:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isUserAtVenueWithID:(unint64_t)d
{
  dCopy = d;
  if (d)
  {
    _userVenueMarker = [(VenuesManager *)self _userVenueMarker];
    LOBYTE(dCopy) = [_userVenueMarker venueID] == dCopy;
  }

  return dCopy;
}

- (BOOL)isUserAtSameVenueAsCoordinate:(CLLocationCoordinate2D)coordinate
{
  selfCopy = self;
  v4 = [(VenuesManager *)self venueFeatureMarkerAtCoordinate:coordinate.latitude, coordinate.longitude];
  LOBYTE(selfCopy) = -[VenuesManager isUserAtVenueWithID:](selfCopy, "isUserAtVenueWithID:", [v4 venueID]);

  return selfCopy;
}

- (BOOL)isUserAtSameVenueAsMapItem:(id)item
{
  _venueInfo = [item _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];
  LOBYTE(self) = -[VenuesManager isUserAtVenueWithID:](self, "isUserAtVenueWithID:", [venueIdentifier venueID]);

  return self;
}

- (id)venueFeatureMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = [(VenuesManager *)self mapView];
  _mapLayer = [mapView _mapLayer];
  v7 = [_mapLayer venueAtLocation:0 withMarginForError:{latitude, longitude}];

  return v7;
}

- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)venue
{
  venueCopy = venue;
  mapView = [(VenuesManager *)self mapView];
  v6 = [mapView displayedFloorOrdinalForBuildingsInVenue:venueCopy];

  return v6;
}

- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal forBuildingsInVenue:(id)venue
{
  ordinalCopy = ordinal;
  venueCopy = venue;
  mapView = [(VenuesManager *)self mapView];
  [mapView setDisplayedFloorOrdinal:ordinalCopy forBuildingsInVenue:venueCopy];
}

- (signed)floorOrdinalWithFocus
{
  selfCopy = self;
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  LOWORD(selfCopy) = [(VenuesManager *)selfCopy displayedFloorOrdinalForBuildingsInVenue:venueWithFocus];

  return selfCopy;
}

- (VKVenueBuildingFeatureMarker)venueBuildingWithFocus
{
  mapView = [(VenuesManager *)self mapView];
  venueBuildingWithFocus = [mapView venueBuildingWithFocus];

  return venueBuildingWithFocus;
}

- (void)visitedVenuesEvictionTimerFired:(id)fired
{
  visitedVenues = [(VenuesManager *)self visitedVenues];
  v5 = [visitedVenues keysOfEntriesPassingTest:&stru_1016531E0];

  if ([v5 count])
  {
    visitedVenues2 = [(VenuesManager *)self visitedVenues];
    allObjects = [v5 allObjects];
    [visitedVenues2 removeObjectsForKeys:allObjects];
  }

  visitedVenues3 = [(VenuesManager *)self visitedVenues];
  v9 = [visitedVenues3 count];

  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D7B6FC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)recordVenueVisitWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSDate date];
  visitedVenues = [(VenuesManager *)self visitedVenues];
  [visitedVenues setObject:v5 forKeyedSubscript:identifierCopy];

  [(VenuesManager *)self scheduleEviction];
}

- (void)scheduleEviction
{
  visitedVenuesEvictionTimer = [(VenuesManager *)self visitedVenuesEvictionTimer];
  isValid = [visitedVenuesEvictionTimer isValid];

  if ((isValid & 1) == 0)
  {
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"visitedVenuesEvictionTimerFired:" selector:0 userInfo:0 repeats:86400.0];
    [(VenuesManager *)self setVisitedVenuesEvictionTimer:v5];

    visitedVenuesEvictionTimer2 = [(VenuesManager *)self visitedVenuesEvictionTimer];
    [visitedVenuesEvictionTimer2 setTolerance:8640.0];
  }
}

- (void)notifyChangeObservers
{
  venueWithFocus = [(VenuesManager *)self venueWithFocus];
  venueBuildingWithFocus = [(VenuesManager *)self venueBuildingWithFocus];
  floorOrdinalWithFocus = [(VenuesManager *)self floorOrdinalWithFocus];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSHashTable *)self->_changeObservers copy];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) didChangeFocusedVenue:venueWithFocus focusedBuilding:venueBuildingWithFocus displayedFloorOrdinal:floorOrdinalWithFocus];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addChangeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = [(NSHashTable *)self->_changeObservers containsObject:observerCopy];
    observerCopy = v6;
    if ((v5 & 1) == 0)
    {
      [(NSHashTable *)self->_changeObservers addObject:v6];
      observerCopy = v6;
    }
  }
}

- (VenuesManager)initWithDelegate:(id)delegate mapView:(id)view userLocationView:(id)locationView
{
  delegateCopy = delegate;
  viewCopy = view;
  locationViewCopy = locationView;
  v19.receiver = self;
  v19.super_class = VenuesManager;
  v11 = [(VenuesManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_mapView, viewCopy);
    objc_storeWeak(&v12->_userLocationView, locationViewCopy);
    v13 = objc_alloc_init(NSMutableDictionary);
    visitedVenues = v12->_visitedVenues;
    v12->_visitedVenues = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    changeObservers = v12->_changeObservers;
    v12->_changeObservers = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"_containerWillPresentContainee:" name:@"ContainerWillPresentContaineeNotification" object:0];
  }

  return v12;
}

@end