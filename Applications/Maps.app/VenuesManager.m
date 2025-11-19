@interface VenuesManager
- (BOOL)hasSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4;
- (BOOL)hasSearchResultsInVenue:(id)a3 matching:(id)a4;
- (BOOL)isUserAtSameVenueAsCoordinate:(CLLocationCoordinate2D)a3;
- (BOOL)isUserAtSameVenueAsMapItem:(id)a3;
- (BOOL)isUserAtVenueWithID:(unint64_t)a3;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3;
- (MKMapView)mapView;
- (MapsUserLocationView)userLocationView;
- (NSNumber)userLocationFloorOrdinal;
- (VKVenueBuildingFeatureMarker)venueBuildingWithFocus;
- (VKVenueFeatureMarker)venueWithFocus;
- (VenueFloorViewControlling)venueFloorViewController;
- (VenuesManager)initWithDelegate:(id)a3 mapView:(id)a4 userLocationView:(id)a5;
- (VenuesManagerDelegate)delegate;
- (VenuesStack)venueCardStack;
- (id)_userVenueMarker;
- (id)searchResultCountInVenueWithViewController:(id)a3;
- (id)sortedFloorOrdinalsForVenue:(id)a3;
- (id)userLocationFloorOrdinalInVenue:(id)a3;
- (id)venue:(id)a3 buildingWithId:(unint64_t)a4;
- (id)venueFeatureMarkerAtCoordinate:(CLLocationCoordinate2D)a3;
- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)a3;
- (signed)firstAbovegroundFloorOrdinalForVenue:(id)a3;
- (signed)floorOrdinalWithFocus;
- (void)_containerWillPresentContainee:(id)a3;
- (void)addChangeObserver:(id)a3;
- (void)dismissLastPlaceCardViewControllerIfNecessary;
- (void)displayFloorForCurrentOrPendingSelection;
- (void)displayFloorForPendingSelection;
- (void)displayFloorForSelectedLabelMarker:(id)a3;
- (void)displayFloorForSelectedSearchResult:(id)a3;
- (void)displayUserLocationFloorOrdinalIfNeededWithVenue:(id)a3 asNewlyFocusedVenue:(BOOL)a4;
- (void)getMinZoom:(id *)a3 maxZoom:(id *)a4 forDisplayingLabelMarker:(id)a5;
- (void)getMinZoom:(id *)a3 maxZoom:(id *)a4 resultsForDeterminingRegion:(id *)a5 forDisplayingResults:(id)a6 fromSearch:(id)a7;
- (void)mapView:(id)a3 didChangeDisplayedFloorOrdinal:(signed __int16)a4 forVenue:(id)a5;
- (void)mapView:(id)a3 didChangeFocusedVenue:(id)a4 focusedBuilding:(id)a5;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)notifyChangeObservers;
- (void)presentPlaceCardForVenueWithFocusAndAddToHistory:(BOOL)a3 source:(unint64_t)a4 centeringOnVenue:(BOOL)a5;
- (void)recordVenueVisitWithIdentifier:(id)a3;
- (void)scheduleEviction;
- (void)setDisplayedFloorOrdinal:(signed __int16)a3 forBuildingsInVenue:(id)a4;
- (void)setPendingValuesAndDisplayVenueID:(id)a3 floorOrdinal:(signed __int16)a4;
- (void)setSearchResultCountInVenue:(id)a3;
- (void)setVenueCardStack:(id)a3;
- (void)setVenueFloorViewController:(id)a3;
- (void)updateDimmingOutsideVenue;
- (void)updateFocusedVenueFloor;
- (void)updateSearchResultCountFromCurrentViewController;
- (void)updateSearchResultCountFromViewController:(id)a3;
- (void)updateUserLocation;
- (void)venueFloorViewControllerStateDidChange;
- (void)visitedVenuesEvictionTimerFired:(id)a3;
@end

@implementation VenuesManager

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (VKVenueFeatureMarker)venueWithFocus
{
  v2 = [(VenuesManager *)self mapView];
  v3 = [v2 venueWithFocus];

  return v3;
}

- (VenueFloorViewControlling)venueFloorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_venueFloorViewController);

  return WeakRetained;
}

- (NSNumber)userLocationFloorOrdinal
{
  v3 = [(VenuesManager *)self mapView];
  v4 = [v3 userLocation];
  v5 = [(VenuesManager *)self venueWithFocus];
  v6 = [(VenuesManager *)self mapView];
  v7 = [v4 floorOrdinalInVenue:v5 forMapView:v6];

  return v7;
}

- (void)updateUserLocation
{
  v9 = [(VenuesManager *)self userLocationFloorOrdinal];
  v3 = [(VenuesManager *)self venueFloorViewController];
  [v3 setUserLocationFloorOrdinal:v9];

  v4 = [(VenuesManager *)self floorCard];
  [v4 userLocationDidChange];

  v5 = [(VenuesManager *)self venueWithFocus];
  v6 = 0;
  if (v5 && v9)
  {
    v7 = [(VenuesManager *)self displayedFloorOrdinalForBuildingsInVenue:v5];
    v6 = v7 != [v9 shortValue];
  }

  v8 = [(VenuesManager *)self userLocationView];
  [v8 _setIsOnAnotherFloorInVenue:v6];
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

- (signed)firstAbovegroundFloorOrdinalForVenue:(id)a3
{
  v4 = a3;
  v5 = [(VenuesManager *)self floorOrdinalWithFocus];
  [(VenuesManager *)self sortedFloorOrdinalsForVenue:v4];
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

      v5 = [v11 shortValue];
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

  return v5;
}

- (id)sortedFloorOrdinalsForVenue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 buildings];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) floorOrdinals];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 allObjects];
  v12 = [v11 sortedArrayUsingSelector:"compare:"];
  v13 = [v12 reverseObjectEnumerator];
  v14 = [v13 allObjects];

  return v14;
}

- (void)dismissLastPlaceCardViewControllerIfNecessary
{
  v3 = [(VenuesManager *)self delegate];
  v10 = [v3 mapSelectionManagerForVenuesManager:self];

  v4 = [v10 labelMarker];
  if ([v4 venueLevelID])
  {
    v5 = [v4 venueFloorOrdinal];
    if (v5 != [(VenuesManager *)self floorOrdinalWithFocus])
    {
      v6 = [v4 venueID];
      v7 = [(VenuesManager *)self venueWithFocus];
      v8 = [v7 venueID];

      if (v6 == v8)
      {
        v9 = [(VenuesManager *)self delegate];
        [v9 dismissLastVenuesPlaceCardForVenuesManager:self];
      }
    }
  }
}

- (void)updateDimmingOutsideVenue
{
  if (GEOConfigGetBOOL())
  {
    v3 = [(VenuesManager *)self venueWithFocus];

    v5 = [(VenuesManager *)self floorOrdinalWithFocus]< 0 && v3 != 0;
    v6 = [(VenuesManager *)self mapView];
    [v6 setDimmingOutsideVenueWithFocus:v5];
  }
}

- (void)venueFloorViewControllerStateDidChange
{
  v3 = [(VenuesManager *)self venueFloorViewController];
  if (![v3 isOpen])
  {
    goto LABEL_4;
  }

  v4 = [(VenuesManager *)self venueFloorViewController];
  if ([v4 isHidden])
  {

LABEL_4:
    goto LABEL_5;
  }

  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 5)
  {
LABEL_5:
    v5 = [(VenuesManager *)self floorCard];

    if (v5)
    {
      v6 = [(VenuesManager *)self delegate];
      v7 = [(VenuesManager *)self floorCard];
      [v6 venuesManager:self dismissFloorCardViewController:v7];

      [(VenuesManager *)self setFloorCard:0];
    }

    goto LABEL_7;
  }

  v10 = [(VenuesManager *)self floorCard];

  if (!v10)
  {
    v11 = [[VenueFloorCardViewController alloc] initWithVenuesManager:self];
    [(VenuesManager *)self addChangeObserver:v11];
    [(VenuesManager *)self setFloorCard:v11];
    v12 = [(VenuesManager *)self delegate];
    [v12 venuesManager:self presentFloorCardViewController:v11];
  }

LABEL_7:

  [(VenuesManager *)self updateDimmingOutsideVenue];
}

- (id)searchResultCountInVenueWithViewController:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___VenuesControlCoordinating] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 searchResultCountInVenue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateSearchResultCountFromViewController:(id)a3
{
  v7 = a3;
  v4 = [(VenuesManager *)self floorCard];

  v5 = v7;
  if (v4 != v7)
  {
    v6 = [(VenuesManager *)self searchResultCountInVenueWithViewController:v7];
    [(VenuesManager *)self setSearchResultCountInVenue:v6];

    v5 = v7;
  }
}

- (void)updateSearchResultCountFromCurrentViewController
{
  v3 = [(VenuesManager *)self delegate];
  v4 = [v3 topmostContaineeForVenuesManager:self];

  [(VenuesManager *)self updateSearchResultCountFromViewController:v4];
}

- (void)_containerWillPresentContainee:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"ContainerContainee"];

  v6 = [(VenuesManager *)self venueFloorViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [(VenuesManager *)self floorCard];

    if (v5 != v8)
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
  v10 = [(VenuesManager *)self floorCard];

  if (v5 != v10)
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
  v2 = self;
  v3 = [(VenuesManager *)self venueWithFocus];
  if (v3)
  {
    v4 = [(VenuesManager *)v2 displayedFloorOrdinalForBuildingsInVenue:v3];
    if ([(VenuesManager *)v2 hasSearchResultsInVenueForAnyFloorOrdinal:v3])
    {
      if (!-[VenuesManager hasSearchResultsInVenue:forFloorOrdinal:](v2, "hasSearchResultsInVenue:forFloorOrdinal:", v3, v4) || (-[VenuesManager mapView](v2, "mapView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 displayedFloorIsDefaultForBuildingsInVenue:v3], v5, v6))
      {
        v7 = [(VenuesManager *)v2 userLocationFloorOrdinalInVenue:v3];
        v8 = v7;
        if (v7 && -[VenuesManager hasSearchResultsInVenue:forFloorOrdinal:](v2, "hasSearchResultsInVenue:forFloorOrdinal:", v3, [v7 shortValue]))
        {
          v27 = [v8 shortValue];
        }

        else
        {
          v25 = v8;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          obj = [(VenuesManager *)v2 searchResultCountInVenue];
          v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            v12 = *v30;
            v26 = v4;
            v27 = v4;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v29 + 1) + 8 * i);
                v15 = [v14 venueID];
                if (v15 == [v3 venueID])
                {
                  v16 = [v14 floorOrdinal];

                  if (v16)
                  {
                    [(VenuesManager *)v2 searchResultCountInVenue];
                    v18 = v17 = v2;
                    v19 = [v18 objectForKeyedSubscript:v14];
                    v20 = [v19 unsignedIntegerValue];

                    v2 = v17;
                    v21 = [v14 floorOrdinal];
                    v22 = [v21 shortValue];

                    if (v20 > v11)
                    {
                      goto LABEL_16;
                    }

                    if (v20 == v11)
                    {
                      v23 = v22 - v26;
                      if ((v22 - v26) < 0)
                      {
                        v23 = v26 - v22;
                      }

                      v24 = v27 - v26;
                      if (v24 < 0)
                      {
                        v24 = v26 - v27;
                      }

                      if (v23 < v24)
                      {
LABEL_16:
                        v27 = v22;
                        v11 = v20;
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
            v27 = v4;
          }

          v8 = v25;
        }

        [(VenuesManager *)v2 setDisplayedFloorOrdinal:v27 forBuildingsInVenue:v3];
      }
    }
  }
}

- (void)setSearchResultCountInVenue:(id)a3
{
  v7 = a3;
  if (![NSDictionary dictionary:self->_searchResultCountInVenue isEqualToDictionary:?])
  {
    v4 = [v7 copy];
    searchResultCountInVenue = self->_searchResultCountInVenue;
    self->_searchResultCountInVenue = v4;

    v6 = [(VenuesManager *)self venueFloorViewController];
    [v6 didChangeSearchResultsInVenue];
  }
}

- (id)venue:(id)a3 buildingWithId:(unint64_t)a4
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 buildings];
  v6 = v5;
  v7 = &__NSArray0__struct;
  if (v5)
  {
    v7 = v5;
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
        if ([v13 buildingId] == a4)
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

- (void)mapView:(id)a3 didChangeDisplayedFloorOrdinal:(signed __int16)a4 forVenue:(id)a5
{
  v6 = a5;
  [(VenuesManager *)self notifyChangeObservers];
  [(VenuesManager *)self updateUserLocation];
  v7 = [(VenuesManager *)self pendingDisplayFloorForSelectionVenueID];
  v8 = [v6 venueID];

  if (v7 == v8)
  {
    [(VenuesManager *)self setPendingDisplayFloorForSelectionVenueID:0];
  }

  [(VenuesManager *)self dismissLastPlaceCardViewControllerIfNecessary];

  [(VenuesManager *)self updateDimmingOutsideVenue];
}

- (void)mapView:(id)a3 didChangeFocusedVenue:(id)a4 focusedBuilding:(id)a5
{
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:v8 asNewlyFocusedVenue:1];
    [(VenuesManager *)self updateFocusedVenueFloor];
    [(VenuesManager *)self displayFloorForCurrentOrPendingSelection];
  }

  else if (!v9)
  {
    [(VenuesManager *)self setSearchVenueIdentifier:0];
    v14 = 0;
    v13 = 1057;
    goto LABEL_7;
  }

  v11 = +[GEOAPSharedStateData sharedData];
  v12 = [v11 venueExperienceShown];

  if (v12)
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
  v16 = [(VenuesManager *)self mapView];
  v17 = [v16 displayedFloorIsDefaultForBuildingsInVenue:v8];

  if (v17)
  {
    v18 = [(VenuesManager *)self venueWithFocus];

    v19 = [(VenuesManager *)self floorOrdinalWithFocus];
    if (v18)
    {
      v20 = [(VenuesManager *)self searchVenueIdentifier];
      v21 = [(VenuesManager *)self venueWithFocus];
      v22 = v20 == [v21 venueID];
    }

    else
    {
      v22 = 1;
    }

    v23 = [v8 mapIdentifier];
    v24 = [(VenuesManager *)self visitedVenues];
    v25 = [v24 objectForKeyedSubscript:v23];

    if ((v19 & 0x80000000) == 0 || v22 || v25)
    {
      v26 = [(VenuesManager *)self displayedFloorOrdinalForBuildingsInVenue:v8];
    }

    else
    {
      v26 = [(VenuesManager *)self firstAbovegroundFloorOrdinalForVenue:v8];
    }

    [(VenuesManager *)self setDisplayedFloorOrdinal:v26 forBuildingsInVenue:v8];
  }

  [(VenuesManager *)self updateDimmingOutsideVenue];
  [(VenuesManager *)self notifyChangeObservers];
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3
{
  v4 = [(VenuesManager *)self venueFloorViewController];
  v5 = [v4 isOpen];

  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D79B6C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v5 ^ 1;
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  v6 = [(VenuesManager *)self venueWithFocus:a3];
  [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:v6 asNewlyFocusedVenue:0];
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  [(VenuesManager *)self updateUserLocation:a3];
  v5 = [(VenuesManager *)self venueWithFocus];
  [(VenuesManager *)self displayUserLocationFloorOrdinalIfNeededWithVenue:v5 asNewlyFocusedVenue:0];
}

- (void)presentPlaceCardForVenueWithFocusAndAddToHistory:(BOOL)a3 source:(unint64_t)a4 centeringOnVenue:(BOOL)a5
{
  v9 = [(VenuesManager *)self venueWithFocus];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 mapIdentifier];
    if (v11)
    {
      v12 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v11];
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
      v18 = a5;
      v19 = a3;
      v17[1] = a4;
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
  v3 = [(VenuesManager *)self delegate];
  v5 = [v3 mapSelectionManagerForVenuesManager:self];

  v4 = [v5 labelMarker];
  if (v4)
  {
    [(VenuesManager *)self displayFloorForSelectedLabelMarker:v4];
  }

  else
  {
    [(VenuesManager *)self displayFloorForPendingSelection];
  }
}

- (void)setPendingValuesAndDisplayVenueID:(id)a3 floorOrdinal:(signed __int16)a4
{
  v4 = a4;
  -[VenuesManager setPendingDisplayFloorForSelectionVenueID:](self, "setPendingDisplayFloorForSelectionVenueID:", [a3 venueID]);
  [(VenuesManager *)self setPendingDisplayFloorForSelectionFloorOrdinal:v4];

  [(VenuesManager *)self displayFloorForPendingSelection];
}

- (void)displayFloorForSelectedLabelMarker:(id)a3
{
  v15 = a3;
  v4 = [v15 featureAnnotation];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation];

  if (v5)
  {
    v6 = [v15 featureAnnotation];
    v7 = [v6 searchResult];
    v8 = [v7 type] == 3;
  }

  else
  {
    v8 = 0;
  }

  if ([v15 hasVenueLookInsideFloorOrdinal])
  {
    v9 = [v15 venueLookInsideFloorOrdinal];
LABEL_8:
    [(VenuesManager *)self setPendingValuesAndDisplayVenueID:v15 floorOrdinal:v9];
    goto LABEL_9;
  }

  if ([v15 venueLevelID] != 0 || v8)
  {
    v9 = [v15 venueFloorOrdinal];
    goto LABEL_8;
  }

  if ([v15 venueID])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v11 = [WeakRetained venueWithID:{objc_msgSend(v15, "venueID")}];

    v12 = [v11 mapIdentifier];
    if (v12)
    {
      [(VenuesManager *)self recordVenueVisitWithIdentifier:v12];
      v13 = [(VenuesManager *)self mapView];
      v14 = [v13 defaultFloorForBuildingsInVenue:v11];

      [(VenuesManager *)self setPendingValuesAndDisplayVenueID:v15 floorOrdinal:v14];
    }
  }

LABEL_9:
}

- (void)displayFloorForSelectedSearchResult:(id)a3
{
  v4 = [a3 mapItem];
  v5 = [v4 _venueInfo];

  if (v5 && ([v5 venueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_hasVenueID"), v6, v7))
  {
    v8 = [v5 venueIdentifier];
    v9 = [v8 venueID];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v5 venueIdentifier];
    v11 = [v10 componentIdentifiers];

    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 floorInfo];

          if (v16)
          {
            v17 = [v15 floorInfo];
            v12 = [v17 ordinal];

            goto LABEL_14;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  [(VenuesManager *)self setPendingDisplayFloorForSelectionVenueID:v9];
  [(VenuesManager *)self setPendingDisplayFloorForSelectionFloorOrdinal:v12];
  [(VenuesManager *)self displayFloorForPendingSelection];
}

- (void)setVenueCardStack:(id)a3
{
  obj = a3;
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

- (void)setVenueFloorViewController:(id)a3
{
  obj = a3;
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
    v10 = [(VenuesManager *)self userLocationFloorOrdinal];
    [obj setUserLocationFloorOrdinal:v10];

    v11 = objc_loadWeakRetained(&self->_venueFloorViewController);
    [(VenuesManager *)self addChangeObserver:v11];

    [(VenuesManager *)self updateSearchResultCountFromCurrentViewController];
    [(VenuesManager *)self updateFocusedVenueFloor];
    [(VenuesManager *)self venueFloorViewControllerStateDidChange];
    v5 = obj;
  }
}

- (void)getMinZoom:(id *)a3 maxZoom:(id *)a4 forDisplayingLabelMarker:(id)a5
{
  v15 = a5;
  v8 = [(VenuesManager *)self venueWithFocus];
  v9 = [(VenuesManager *)self venueBuildingWithFocus];
  if ([v15 venueID] && (v10 = objc_msgSend(v15, "venueID"), v10 == objc_msgSend(v8, "venueID")))
  {
    if ([v15 venueLevelID])
    {
      v11 = [(VenuesManager *)self mapView];
      [v11 _zoomLevel];
      *a3 = [NSNumber numberWithDouble:?];

      v12 = *a3;
    }

    else
    {
      if ([v15 venueBuildingID] && (v13 = objc_msgSend(v15, "venueBuildingID"), v13 == objc_msgSend(v9, "buildingId")))
      {
        v14 = [(VenuesManager *)self mapView];
        [v14 zoomToFocusVenueBuilding:v9];
      }

      else
      {
        v14 = [(VenuesManager *)self mapView];
        [v14 zoomToFocusVenue:v8];
      }

      *a3 = [NSNumber numberWithDouble:?];

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    *a3 = 0;
  }

  *a4 = v12;
}

- (void)getMinZoom:(id *)a3 maxZoom:(id *)a4 resultsForDeterminingRegion:(id *)a5 forDisplayingResults:(id)a6 fromSearch:(id)a7
{
  v11 = a6;
  v12 = [a7 venueCategoryItem];
  v13 = [v12 venueIdentifier];

  if (v13 && [v13 venueID])
  {
    v14 = [(VenuesManager *)self mapView];
    v15 = [v14 venueWithID:{objc_msgSend(v13, "venueID")}];

    v69 = v15;
    if (v15)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v16 = [v13 componentIdentifiers];
      v17 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = a3;
        v20 = *v77;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v77 != v20)
            {
              objc_enumerationMutation(v16);
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

          v18 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_17:
        a3 = v19;
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

  v71 = [(VenuesManager *)self venueWithFocus];
  v26 = [(VenuesManager *)self venueBuildingWithFocus];
  v65 = self;
  v66 = v26;
  v67 = v15;
  if (v15)
  {
    v27 = [(VenuesManager *)self mapView];
    [v27 zoomToFocusVenueBuilding:v15];
LABEL_24:
    v29 = v28;
    v30 = 0;
LABEL_25:
    v31 = v71;
    goto LABEL_26;
  }

  if (v25)
  {
    v27 = [(VenuesManager *)self mapView];
    [v27 zoomToFocusVenue:v69];
    goto LABEL_24;
  }

  if (v26)
  {
    v49 = v26;
    v27 = [(VenuesManager *)self mapView];
    [v27 zoomToFocusVenueBuilding:v49];
    v29 = v50;
    v30 = 1;
    goto LABEL_25;
  }

  v31 = v71;
  if (!v71)
  {
    *a3 = 0;
    *a4 = 0;
    goto LABEL_51;
  }

  v27 = [(VenuesManager *)self mapView];
  [v27 zoomToFocusVenue:v71];
  v29 = v51;
  v30 = 1;
LABEL_26:

  if (v29 <= 0.0)
  {
    *a3 = 0;
    *a4 = 0;
    if (v30)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v32 = [NSNumber numberWithDouble:v29];
  *a3 = v32;

  v33 = [(VenuesManager *)self mapView];
  [v33 _zoomLevel];
  if (v34 < v29)
  {

    goto LABEL_34;
  }

  if (!v71)
  {
LABEL_34:
    *a4 = 0;
    v31 = v71;
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_51:
    v48 = a5;
    *a5 = [v11 copy];
    if (!v31)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v35 = [(VenuesManager *)self mapView];
  [v35 _zoomLevel];
  *a4 = [NSNumber numberWithDouble:?];

  v31 = v71;
  if (!v30)
  {
    goto LABEL_51;
  }

LABEL_35:
  v63 = a3;
  v60 = a4;
  v61 = v13;
  v70 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v62 = v11;
  v36 = v11;
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
        v42 = [v41 mapItem];
        v43 = [v42 _venueInfo];
        v44 = [v43 venueIdentifier];
        v45 = [v44 venueID];
        v46 = [v71 venueID];

        if (v45 == v46)
        {
          [v70 addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v38);
  }

  v47 = v70;
  v48 = a5;
  *a5 = v47;

  v13 = v61;
  v11 = v62;
  a4 = v60;
  a3 = v63;
  v31 = v71;
  if (v71)
  {
LABEL_52:
    if ([*v48 count] == 1)
    {
      v52 = [*v48 firstObject];
      v53 = [v52 mapItem];
      if ([v53 _venueFeatureType] == 4)
      {
        v64 = a3;
        v54 = [v52 mapItem];
        v55 = [v54 _venueInfo];
        v56 = [v55 venueIdentifier];
        v57 = [v56 venueID];
        v58 = [v71 venueID];

        if (v57 == v58)
        {
          v59 = [(VenuesManager *)v65 mapView];
          [v59 _zoomLevel];
          *v64 = [NSNumber numberWithDouble:?];

          *a4 = *v64;
        }
      }

      else
      {
      }

      v31 = v71;
    }
  }

LABEL_58:
}

- (BOOL)hasSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7AE1C;
  v5[3] = &unk_101653200;
  v6 = a4;
  return [(VenuesManager *)self hasSearchResultsInVenue:a3 matching:v5];
}

- (BOOL)hasSearchResultsInVenue:(id)a3 matching:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(VenuesManager *)self searchResultCountInVenue];
    v9 = v8;
    v10 = &__NSArray0__struct;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = self;
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
          v17 = [v16 venueID];
          if (v17 == [v6 venueID])
          {
            if (v7[2](v7, v16))
            {
              v18 = [(VenuesManager *)v23 searchResultCountInVenue];
              v19 = [v18 objectForKeyedSubscript:v16];
              v20 = [v19 shortValue];

              if (v20)
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

- (void)displayUserLocationFloorOrdinalIfNeededWithVenue:(id)a3 asNewlyFocusedVenue:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(VenuesManager *)self mapView];
  v7 = [v6 userTrackingMode];

  if (v7 || v4)
  {
    if (!v4 || (-[VenuesManager mapView](self, "mapView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 displayedFloorIsDefaultForBuildingsInVenue:v15], v8, v9))
    {
      v10 = [(VenuesManager *)self userLocationFloorOrdinalInVenue:v15];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 shortValue];
        v13 = [(VenuesManager *)self mapView];
        v14 = [v13 displayedFloorOrdinalForBuildingsInVenue:v15];

        if (v12 != v14)
        {
          -[VenuesManager setDisplayedFloorOrdinal:forBuildingsInVenue:](self, "setDisplayedFloorOrdinal:forBuildingsInVenue:", [v11 shortValue], v15);
        }
      }
    }
  }
}

- (id)userLocationFloorOrdinalInVenue:(id)a3
{
  v4 = a3;
  v5 = [(VenuesManager *)self userLocationFloorOrdinal];
  if (v5)
  {
    v6 = [(VenuesManager *)self mapView];
    v7 = [v6 userLocation];
    [v7 coordinate];

    v8 = [(VenuesManager *)self mapView];
    v9 = [v8 _mapLayer];
    VKLocationCoordinate2DMake();
    v10 = [v9 venueAtLocation:?];

    v11 = [v10 venueID];
    if (v11 == [v4 venueID])
    {
      v12 = v5;
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
  v4 = [v3 lastGoodLocation];

  if (v4 || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAuthorizedForPreciseLocation], v5, v6))
  {
    [v4 coordinate];
    v7 = [(VenuesManager *)self venueFeatureMarkerAtCoordinate:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isUserAtVenueWithID:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [(VenuesManager *)self _userVenueMarker];
    LOBYTE(v3) = [v4 venueID] == v3;
  }

  return v3;
}

- (BOOL)isUserAtSameVenueAsCoordinate:(CLLocationCoordinate2D)a3
{
  v3 = self;
  v4 = [(VenuesManager *)self venueFeatureMarkerAtCoordinate:a3.latitude, a3.longitude];
  LOBYTE(v3) = -[VenuesManager isUserAtVenueWithID:](v3, "isUserAtVenueWithID:", [v4 venueID]);

  return v3;
}

- (BOOL)isUserAtSameVenueAsMapItem:(id)a3
{
  v4 = [a3 _venueInfo];
  v5 = [v4 venueIdentifier];
  LOBYTE(self) = -[VenuesManager isUserAtVenueWithID:](self, "isUserAtVenueWithID:", [v5 venueID]);

  return self;
}

- (id)venueFeatureMarkerAtCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(VenuesManager *)self mapView];
  v6 = [v5 _mapLayer];
  v7 = [v6 venueAtLocation:0 withMarginForError:{latitude, longitude}];

  return v7;
}

- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)a3
{
  v4 = a3;
  v5 = [(VenuesManager *)self mapView];
  v6 = [v5 displayedFloorOrdinalForBuildingsInVenue:v4];

  return v6;
}

- (void)setDisplayedFloorOrdinal:(signed __int16)a3 forBuildingsInVenue:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(VenuesManager *)self mapView];
  [v7 setDisplayedFloorOrdinal:v4 forBuildingsInVenue:v6];
}

- (signed)floorOrdinalWithFocus
{
  v2 = self;
  v3 = [(VenuesManager *)self venueWithFocus];
  LOWORD(v2) = [(VenuesManager *)v2 displayedFloorOrdinalForBuildingsInVenue:v3];

  return v2;
}

- (VKVenueBuildingFeatureMarker)venueBuildingWithFocus
{
  v2 = [(VenuesManager *)self mapView];
  v3 = [v2 venueBuildingWithFocus];

  return v3;
}

- (void)visitedVenuesEvictionTimerFired:(id)a3
{
  v4 = [(VenuesManager *)self visitedVenues];
  v5 = [v4 keysOfEntriesPassingTest:&stru_1016531E0];

  if ([v5 count])
  {
    v6 = [(VenuesManager *)self visitedVenues];
    v7 = [v5 allObjects];
    [v6 removeObjectsForKeys:v7];
  }

  v8 = [(VenuesManager *)self visitedVenues];
  v9 = [v8 count];

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

- (void)recordVenueVisitWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = [(VenuesManager *)self visitedVenues];
  [v6 setObject:v5 forKeyedSubscript:v4];

  [(VenuesManager *)self scheduleEviction];
}

- (void)scheduleEviction
{
  v3 = [(VenuesManager *)self visitedVenuesEvictionTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
  {
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"visitedVenuesEvictionTimerFired:" selector:0 userInfo:0 repeats:86400.0];
    [(VenuesManager *)self setVisitedVenuesEvictionTimer:v5];

    v6 = [(VenuesManager *)self visitedVenuesEvictionTimer];
    [v6 setTolerance:8640.0];
  }
}

- (void)notifyChangeObservers
{
  v3 = [(VenuesManager *)self venueWithFocus];
  v4 = [(VenuesManager *)self venueBuildingWithFocus];
  v5 = [(VenuesManager *)self floorOrdinalWithFocus];
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

        [*(*(&v11 + 1) + 8 * v10) didChangeFocusedVenue:v3 focusedBuilding:v4 displayedFloorOrdinal:v5];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addChangeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_changeObservers containsObject:v4];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [(NSHashTable *)self->_changeObservers addObject:v6];
      v4 = v6;
    }
  }
}

- (VenuesManager)initWithDelegate:(id)a3 mapView:(id)a4 userLocationView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = VenuesManager;
  v11 = [(VenuesManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeWeak(&v12->_mapView, v9);
    objc_storeWeak(&v12->_userLocationView, v10);
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