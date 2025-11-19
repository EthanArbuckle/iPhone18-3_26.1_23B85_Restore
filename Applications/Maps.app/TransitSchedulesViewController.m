@interface TransitSchedulesViewController
+ (BOOL)shouldShowScheduleForTransitMapItem:(id)a3 sequence:(id)a4;
+ (id)validDeparturesInDepartureSequence:(id)a3 withReferenceDate:(id)a4;
- (ActionCoordination)actionCoordinator;
- (BOOL)_shouldShowDepartureInfoSection;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)hasIncidents;
- (BOOL)isNetworkError:(id)a3;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (TransitSchedulesDepartureViewProviding)departureCellProvider;
- (TransitSchedulesHeadsignViewProviding)headsignCellProvider;
- (TransitSchedulesViewController)initWithDepartureSequence:(id)a3 timeZone:(id)a4 scheduleWindowStartDate:(id)a5 includeAllDirections:(BOOL)a6;
- (TransitSchedulesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TransitSchedulesViewController)initWithTransitMapItem:(id)a3 departureSequence:(id)a4;
- (TransitSchedulesViewController)initWithTransitRouteStep:(id)a3;
- (TransitSchedulesViewControllerDelegate)transitSchedulesDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (id)_collectionViewLayout;
- (id)_dedupeDepartureSequences:(id)a3;
- (id)_dedupeDepartures:(id)a3;
- (id)_firstVisibleDeparture;
- (id)_headerViewForSectionType:(unint64_t)a3;
- (id)_identifierForDeparture:(id)a3;
- (id)_startEndDatesForOperatingHoursTimeRanges:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)fetchSelectedTransitLineItem;
- (id)ticketForTransitMapItemUpdater:(id)a3;
- (id)titleForStopsHeader;
- (id)traits;
- (int64_t)_numberOfDeparturesInSnapshot;
- (int64_t)_sectionIndexForSectionType:(unint64_t)a3;
- (unint64_t)_departuresHeaderStyle;
- (unint64_t)_sectionTypeForSectionIndex:(unint64_t)a3;
- (void)_addSection:(unint64_t)a3 toSnapshot:(id)a4;
- (void)_checkIfPinnedLine;
- (void)_clearSection:(unint64_t)a3 inSnapshot:(id)a4;
- (void)_clearVehicles;
- (void)_expandStopsSection:(id)a3;
- (void)_fetchMapsSyncTransitLineItemWithCallback:(id)a3;
- (void)_rebuildStopsSection;
- (void)_removeSection:(unint64_t)a3 toSnapshot:(id)a4;
- (void)_startObservingDepartureProvider;
- (void)_stopObservingDepartureProvider;
- (void)_updateDeparturesHeaderTitles;
- (void)_updateDeparturesHeaderTitlesForHeaderView:(id)a3;
- (void)_updateStopsSectionHeader;
- (void)_updateStopsSectionHeader:(id)a3;
- (void)_updateVehicleUpdater;
- (void)changeDate;
- (void)changedDate:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)departureCellProvider:(id)a3 selectDeparture:(id)a4 withIndex:(unint64_t)a5;
- (void)departureDataProvider:(id)a3 selectedDeparture:(id)a4 withIndex:(unint64_t)a5;
- (void)departureDataProvider:(id)a3 selectedDepartureSequence:(id)a4 withIndex:(unint64_t)a5;
- (void)departureDataProvider:(id)a3 updatedDepartureSequences:(id)a4;
- (void)departureDataProvider:(id)a3 updatedDepartures:(id)a4;
- (void)fetchNewScheduleData;
- (void)handleDismissAction:(id)a3;
- (void)headerViewTapped:(id)a3;
- (void)loadSelectedTripDetails;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pinSelectedTransitLine;
- (void)processUpdatedDepartureSequencesFromMapItem:(id)a3;
- (void)restoreInitialMapState;
- (void)selectDeparture;
- (void)selectDeparture:(id)a3;
- (void)selectDepartureSequence:(id)a3;
- (void)setBoardingStationMapItem:(id)a3;
- (void)setDepartureDataProvider:(id)a3;
- (void)setIncidents:(id)a3;
- (void)setPinnedTransitLine:(BOOL)a3;
- (void)setScheduleWindowStartDate:(id)a3;
- (void)setSelectedDeparture:(id)a3;
- (void)setSelectedTransitLine:(id)a3;
- (void)setSelectedTripRoute:(id)a3;
- (void)setSelectedTripVehicleNumber:(id)a3;
- (void)showDirectionsToSelectedTransitStop;
- (void)showLineInfo;
- (void)showRouteOnMap;
- (void)timingViewController:(id)a3 didPickTiming:(id)a4;
- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4;
- (void)transitMapItemUpdater:(id)a3 updatedMapItem:(id)a4 error:(id)a5;
- (void)transitVehicleUpdater:(id)a3 didFailUpdateForTripIDs:(id)a4 withError:(id)a5;
- (void)transitVehicleUpdater:(id)a3 didTimeoutUpdateForTripIDs:(id)a4;
- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5;
- (void)unpinSelectedTransitLine;
- (void)updateDeparturesSectionForNetworkState:(unint64_t)a3;
- (void)updateStopsSectionForNetworkState:(unint64_t)a3;
- (void)updatedDepartureInfoProvider:(id)a3;
- (void)viewDidLoad;
- (void)viewLineOnMap;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TransitSchedulesViewController

- (ActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (TransitSchedulesViewControllerDelegate)transitSchedulesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitSchedulesDelegate);

  return WeakRetained;
}

- (id)_identifierForDeparture:(id)a3
{
  v3 = a3;
  if ([v3 liveStatus] - 1 > 1)
  {
    [v3 scheduledDepartureDate];
  }

  else
  {
    [v3 liveDepartureDate];
  }
  v4 = ;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100798DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = [v3 tripIdentifier];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Departure did not have a departure date: tripId %llu", buf, 0xCu);
    }

    v5 = @"NA";
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu_%@", [v3 tripIdentifier], v5);

  return v7;
}

- (id)_dedupeDepartures:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 138543362;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(TransitSchedulesViewController *)self _identifierForDeparture:v13, v17, v18];
        if ([v5 containsObject:v14])
        {
          v15 = sub_100798DBC();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Duplicate departure identifier found: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [v6 addObject:v13];
          [v5 addObject:v14];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)_dedupeDepartureSequences:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 138543362;
    v16 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 uniqueId];
        if ([v4 containsObject:v13])
        {
          v14 = sub_100798DBC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Duplicate departure sequence identifier found: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [v5 addObject:v12];
          [v4 addObject:v13];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)updatedDepartureInfoProvider:(id)a3
{
  if (![(TransitSchedulesViewController *)self _shouldShowDepartureInfoSection])
  {
    return;
  }

  v7 = [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider identifiers];
  if ([v7 count])
  {
    p_dataSource = &self->_dataSource;
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _clearSection:1 inSnapshot:v5];
    v6 = [NSNumber numberWithUnsignedInteger:1];
    [v5 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:v6];

LABEL_7:
    [(UICollectionViewDiffableDataSource *)*p_dataSource applySnapshot:v5 animatingDifferences:1];

    goto LABEL_8;
  }

  if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:1]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    p_dataSource = &self->_dataSource;
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:1 toSnapshot:v5];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_fetchMapsSyncTransitLineItemWithCallback:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(MSCollectionTransitItemRequest);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1006B7C48;
    v6[3] = &unk_10165E308;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [v5 fetchWithCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)unpinSelectedTransitLine
{
  [(TransitSchedulesViewController *)self _fetchMapsSyncTransitLineItemWithCallback:&stru_1016264B8];
  v3 = [(TransitSchedulesViewController *)self currentUITargetForAnalytics];

  [GEOAPPortal captureUserAction:252 target:v3 value:0];
}

- (void)pinSelectedTransitLine
{
  v3 = objc_alloc_init(MSCollectionTransitItem);
  v4 = [[MSPTransitStorageLine alloc] initWithLine:self->_selectedTransitLine];
  v5 = [v4 data];
  [v3 setTransitLineStorage:v5];

  [v3 setMuid:{-[GEOTransitLine muid](self->_selectedTransitLine, "muid")}];
  v6 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v8 = v3;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v6 saveWithObjects:v7 completionHandler:&stru_101626478];

  [GEOAPPortal captureUserAction:241 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
}

- (void)_checkIfPinnedLine
{
  if (!self->_isRoutingScheduleCard)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1006B8234;
    v3[3] = &unk_101626458;
    objc_copyWeak(&v4, &location);
    [(TransitSchedulesViewController *)self _fetchMapsSyncTransitLineItemWithCallback:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)setPinnedTransitLine:(BOOL)a3
{
  if (self->_pinnedTransitLine != a3)
  {
    self->_pinnedTransitLine = a3;
    if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:7]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
      v4 = [(TransitSchedulesLineOptionsProvider *)self->_lineOptionsProvider identifiers];
      [v5 reloadItemsWithIdentifiers:v4];
      [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v5 animatingDifferences:1];
    }
  }
}

- (void)showLineInfo
{
  if (self->_selectedTransitLineItem)
  {
    v3 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];

    if (v3)
    {
      v4 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
      [v4 transitSchedulesViewController:self wantsToShowInfoForLine:self->_selectedTransitLineItem];
    }
  }
}

- (void)showDirectionsToSelectedTransitStop
{
  v3 = sub_100798DBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    boardingStopMapItem = self->_boardingStopMapItem;
    *buf = 138412290;
    v18 = boardingStopMapItem;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Routing from current location to boarding stop: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(SearchFieldItem);
  v6 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v5 setSearchResult:v6];

  v7 = objc_alloc_init(SearchFieldItem);
  v8 = [[SearchResult alloc] initWithMapItem:self->_boardingStopMapItem];
  [(SearchFieldItem *)v7 setSearchResult:v8];

  v9 = [DirectionItem alloc];
  v16[0] = v5;
  v16[1] = v7;
  v10 = [NSArray arrayWithObjects:v16 count:2];
  v11 = [(DirectionItem *)v9 initWithItems:v10 transportType:3];

  v14 = @"DirectionsSessionInitiatorKey";
  v15 = &off_1016E67A0;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [(TransitSchedulesViewController *)self actionCoordinator];
  [v13 viewController:self doDirectionItem:v11 withUserInfo:v12];

  [GEOAPPortal captureUserAction:6003 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
}

- (void)viewLineOnMap
{
  v3 = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (v3)
  {
    v4 = [(TransitSchedulesViewController *)self selectedTripRoute];
    [(GEOLocation *)self->_boardingStopLocation coordinate];
    v5 = [v4 closestPointOnRoute:?];

    v6 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
    v9 = [v6 mapCameraControllerForTransitSchedulesViewController:self];

    v7 = [(TransitSchedulesViewController *)self selectedTripRoute];
    [v9 displayTransitRoute:v7 boardingStopCoord:v5 boardingStopIndex:self->_boardingStopIndex animated:1 completion:0];

    v8 = [(ContaineeViewController *)self cardPresentationController];
    [v8 wantsLayout:1];

    [GEOAPPortal captureUserAction:7018 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  }
}

- (void)selectDeparture:(id)a3
{
  departureDataProvider = self->_departureDataProvider;
  v4 = [a3 tripIdentifier];

  [(TransitSchedulesDepartureDataProvider *)departureDataProvider selectDepartureWithTripIdentifier:v4];
}

- (void)selectDepartureSequence:(id)a3
{
  departureDataProvider = self->_departureDataProvider;
  v5 = a3;
  [(TransitSchedulesDepartureDataProvider *)departureDataProvider selectDepartureSequence:v5];
  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:v5];
}

- (void)timingViewController:(id)a3 didPickTiming:(id)a4
{
  v5 = [a4 departureDate];
  v7 = v5;
  if (v5)
  {
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:v5];
  }

  else
  {
    v6 = objc_opt_new();
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:v6];
  }
}

- (void)_updateDeparturesHeaderTitlesForHeaderView:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v22 = [v5 localizedStringForKey:@"[Transit Schedules] Departures" value:@"localized string not found" table:0];

  v6 = [(TransitSchedulesViewController *)self _firstVisibleDeparture];
  if (sub_10000FA08(self) != 5)
  {
    if (v6)
    {
      [v6 departureDate];
    }

    else
    {
      [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
    }
    v7 = ;
    v8 = [(TransitSchedulesViewController *)self referenceDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    GEOTransitDepartureNearFuturePeriod();
    if (v10 <= v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Transit Schedules] Upcoming Departures" value:@"localized string not found" table:0];

      v22 = v13;
    }
  }

  v14 = [(TransitSchedulesViewController *)self _departuresHeaderStyle];
  if (v14 != 2)
  {
    if (v14 == 1)
    {
      v15 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider frequencyStringForDeparture:v6];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (sub_10000FA08(self) == 5)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v16 = +[NSDate date];
  v17 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
  [v16 timeIntervalSinceDate:v17];

  if (GEOTransitDepartureIsNearFutureDepartureTimeInterval())
  {
    v18 = +[NSBundle mainBundle];
    v15 = [v18 localizedStringForKey:@"[Transit Schedules] Now" value:@"localized string not found" table:0];
  }

  else
  {
    v19 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];

    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider timeZone];
    v21 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
    v15 = [NSDate _maps_dateDescriptionShort:0 timeZone:v20 bookingDate:v21];
  }

LABEL_13:
  [v4 setTitle:v22];
  [v4 setSecondaryText:v15];
}

- (void)_updateDeparturesHeaderTitles
{
  v3 = [(TransitSchedulesViewController *)self _headerViewForSectionType:3];
  [(TransitSchedulesViewController *)self _updateDeparturesHeaderTitlesForHeaderView:v3];
}

- (id)_firstVisibleDeparture
{
  if (sub_10000FA08(self) != 5)
  {
    v3 = [(TransitSchedulesViewController *)self collectionView];
    v4 = [v3 window];

    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = [(UICollectionView *)self->_collectionView visibleCells];
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v20;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v8)
              {
                [v11 frame];
                v13 = v12;
                [v8 frame];
                if (v13 < v14)
                {
                  v15 = v11;

                  v8 = v15;
                }
              }

              else
              {
                v8 = v11;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);

        if (v8)
        {
          v16 = [v8 departure];
          goto LABEL_19;
        }
      }

      else
      {
      }
    }
  }

  v8 = [(TransitSchedulesViewController *)self departureDataProvider];
  v16 = [v8 selectedDeparture];
LABEL_19:
  v17 = v16;

  return v17;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_10000FA08(self);
  v10 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v8 section]);
  v11 = v10;
  if (v9 == 5 && v10 == 3 && [(TransitSchedulesViewController *)self _departuresHeaderStyle]== 2)
  {
    v12 = +[(TransitStationLineScheduleSectionHeaderView *)TransitStationDatePickerHeaderView];
    v13 = [v7 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v12 forIndexPath:v8];

    v14 = [v13 datePicker];
    v15 = [(TransitSchedulesViewController *)self departureDataProvider];
    v16 = [v15 timeZone];
    [v14 setTimeZone:v16];

    v17 = [(TransitSchedulesViewController *)self departureDataProvider];
    v18 = [v17 scheduleWindowStartDate];
    [v14 setMinimumDate:v18];

    v19 = [(TransitSchedulesViewController *)self departureDataProvider];
    v20 = [v19 scheduleWindowStartDate];
    [v14 setDate:v20];

    [v14 setDatePickerMode:2];
    [v14 addTarget:self action:"changedDate:" forControlEvents:4096];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"[Transit Schedules] macOS Departures Title" value:@"localized string not found" table:0];
    [v13 setTitle:v22];

    goto LABEL_20;
  }

  v23 = +[TransitStationLineScheduleSectionHeaderView identifier];
  v14 = [v7 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v23 forIndexPath:v8];

  v13 = 0;
  if (v11 > 4)
  {
    if ((v11 - 5) < 2)
    {
      v24 = [(TransitSchedulesViewController *)self titleForStopsHeader];
      [v14 setBottomHairlineHidden:1];
      [v14 setTitle:v24];
      [(TransitSchedulesViewController *)self _updateStopsSectionHeader:v14];
    }

    else
    {
      if (v11 != 7)
      {
        if (v11 != 8)
        {
          goto LABEL_20;
        }

        [v14 setBottomHairlineHidden:v9 != 5];
        goto LABEL_14;
      }

      v26 = +[NSBundle mainBundle];
      v24 = [v26 localizedStringForKey:@"[Transit Schedules] Line Options" value:@"localized string not found" table:0];

      [v14 setTitle:v24];
      [v14 setBottomHairlineHidden:1];
    }

    goto LABEL_19;
  }

  if ((v11 - 2) < 2)
  {
    if ([(TransitSchedulesViewController *)self _departuresHeaderStyle]== 2)
    {
      [v14 addButtonWithTarget:self action:"changeDate"];
    }

    [(TransitSchedulesViewController *)self _updateDeparturesHeaderTitlesForHeaderView:v14];
LABEL_14:
    v14 = v14;
    v13 = v14;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v25 = +[NSBundle mainBundle];
    v24 = [v25 localizedStringForKey:@"[Transit Schedules] Departure Info" value:@"localized string not found" table:0];

    [v14 setTitle:v24];
LABEL_19:
    v14 = v14;

    v13 = v14;
  }

LABEL_20:

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v9 section]);
  v12 = 0;
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"TransitScheduleNetworkActivityTableViewCellIdentifier" forIndexPath:v9];
        departureDataProvider = self->_departureDataProvider;
        if (departureDataProvider)
        {
          initialRoutingSchedulesNetworkRequestState = [(TransitSchedulesDepartureDataProvider *)departureDataProvider remoteNetworkState];
        }

        else
        {
          initialRoutingSchedulesNetworkRequestState = self->_initialRoutingSchedulesNetworkRequestState;
        }

        if (initialRoutingSchedulesNetworkRequestState == 3)
        {
          v17 = +[NSBundle mainBundle];
          v18 = v17;
          v19 = @"[Transit Schedule] Departures unavailable message";
          goto LABEL_29;
        }

LABEL_30:
        [v12 setState:initialRoutingSchedulesNetworkRequestState];
        goto LABEL_31;
      }

      v14 = [(TransitSchedulesViewController *)self departureCellProvider];
      collectionView = self->_collectionView;
      v16 = [(TransitSchedulesViewController *)self referenceDate];
      v12 = [v14 collectionView:collectionView departureCellWithIdentifier:v10 indexPath:v9 referenceDate:v16 dataProvider:self->_departureDataProvider];

LABEL_22:
      goto LABEL_31;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_31;
      }

      v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"TransitLineDepartureInfoCellIdentifier" forIndexPath:v9];
      v13 = 296;
      goto LABEL_24;
    }

    v14 = [(TransitSchedulesViewController *)self headsignCellProvider];
    v20 = [v14 collectionView:self->_collectionView headsignCellWithIdentifier:v10 indexPath:v9 dataProvider:self->_departureDataProvider];
LABEL_21:
    v12 = v20;
    goto LABEL_22;
  }

  if (v11 <= 5)
  {
    if (v11 != 4)
    {
      v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"TransitScheduleNetworkActivityTableViewCellIdentifier" forIndexPath:v9];
      if ([(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState]== 3)
      {
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        v19 = @"[Transit Schedule] Stops unavailable message";
LABEL_29:
        v26 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:0];
        [v12 setErrorStateWithString:v26];

        goto LABEL_31;
      }

      initialRoutingSchedulesNetworkRequestState = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState];
      goto LABEL_30;
    }

    v23 = [v8 dequeueReusableCellWithReuseIdentifier:@"IncidentsCellIdentifier" forIndexPath:v9];
    objc_storeWeak(&self->_transitIncidentCell, v23);

    v14 = [(TransitSchedulesViewController *)self referenceDate];
    WeakRetained = objc_loadWeakRetained(&self->_transitIncidentCell);
    v25 = [(TransitSchedulesViewController *)self incidents];
    [WeakRetained configureWithIncidents:v25 referenceDate:v14];

    v20 = objc_loadWeakRetained(&self->_transitIncidentCell);
    goto LABEL_21;
  }

  switch(v11)
  {
    case 6:
      v12 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource collectionView:v8 cellForItemAtIndexPath:v9 itemIdentifier:v10];
      break;
    case 7:
      v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"TransitLineOptionsCellIdentifier" forIndexPath:v9];
      v13 = 312;
LABEL_24:
      [*(&self->super.super.super.super.super.super.isa + v13) configureCell:v12 forIndexPath:v9 withIdentifier:v10];
      break;
    case 8:
      v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"TransitAttributionCellIdentifier" forIndexPath:v9];
      [v12 setAttribution:self->_attribution];
      break;
  }

LABEL_31:

  return v12;
}

- (int64_t)_sectionIndexForSectionType:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  sectionIdentifiers = self->_sectionIdentifiers;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006B9680;
  v6[3] = &unk_101626430;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSArray *)sectionIdentifiers enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)_sectionTypeForSectionIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_sectionIdentifiers count]< a3)
  {
    return 9;
  }

  v6 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:a3];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (void)_clearVehicles
{
  v3 = +[NSSet set];
  v4 = [(TransitSchedulesViewController *)self vehicleUpdater];
  [v4 setTripIDs:v3];

  [(TransitSchedulesViewController *)self setLastReceivedVehiclePositions:0];
  v5 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [v5 transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
}

- (void)_updateVehicleUpdater
{
  if ([(TransitSchedulesViewController *)self hasSelectedTrip])
  {
    [NSSet setWithObject:self->_selectedTripIdentifier];
  }

  else
  {
    +[NSSet set];
  }
  v4 = ;
  v3 = [(TransitSchedulesViewController *)self vehicleUpdater];
  [v3 setTripIDs:v4];
}

- (void)transitVehicleUpdater:(id)a3 didFailUpdateForTripIDs:(id)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = sub_100798DBC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Vehicle position update error for trip ids %@. Error: %@", &v9, 0x16u);
  }
}

- (void)transitVehicleUpdater:(id)a3 didTimeoutUpdateForTripIDs:(id)a4
{
  v4 = a4;
  v5 = sub_100798DBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Vehicle position update timeout for trip ids %@", &v6, 0xCu);
  }
}

- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5
{
  v6 = a4;
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = sub_100798DBC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
      v10 = [v7 timestamp];
      v13 = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received vehicle position update for trip %llu with timestamp %@", &v13, 0x16u);
    }
  }

  v11 = [v6 allObjects];
  [(TransitSchedulesViewController *)self setLastReceivedVehiclePositions:v11];

  v12 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [v12 transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
}

- (void)transitMapItemUpdater:(id)a3 updatedMapItem:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = sub_100798DBC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v27 = 134218242;
      v28 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "The service encountered an error while updating trip id %llu. Error %@", &v27, 0x16u);
    }
  }

  else
  {
    v10 = [v7 _transitInfo];
    v11 = [v10 departureSequences];
    v12 = [v11 count];

    if (v12)
    {
      [(TransitSchedulesViewController *)self processUpdatedDepartureSequencesFromMapItem:v7];
    }

    else
    {
      v13 = sub_100798DBC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v27 = 134217984;
        v28 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "The service failed to return any departures for the requested trip id %llu while updating", &v27, 0xCu);
      }
    }

    v14 = [v7 _transitInfo];
    v15 = [v14 transitTripStops];
    v9 = [v15 copy];

    if ([v9 count])
    {
      [(TransitSchedulesViewController *)self updateStopsSectionForNetworkState:1];
      v16 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
      v17 = [v16 count];

      [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource buildTransitTripStopItemsWithTransitStops:v9 boardingStopDepartureDate:self->_selectedTripDepartureDate maintainingCollapsedState:1];
      v18 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
      v19 = [v18 count];

      if (v17 == v19)
      {
        v20 = sub_100798DBC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
          v22 = [v21 count];
          v23 = [v9 count];
          v24 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
          v27 = 134218496;
          v28 = v22;
          v29 = 2048;
          v30 = v23;
          v31 = 2048;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "The number of transit stops changed (from %lu to %lu) during the network refresh for trip id %llu", &v27, 0x20u);
        }
      }

      [(TransitSchedulesViewController *)self _rebuildStopsSection];
    }

    else
    {
      v25 = sub_100798DBC();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
        v27 = 134217984;
        v28 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "The service failed to return any transit stops when updating for the requested trip id %llu", &v27, 0xCu);
      }
    }
  }
}

- (id)ticketForTransitMapItemUpdater:(id)a3
{
  if ([(TransitSchedulesViewController *)self hasSelectedTrip])
  {
    v4 = [(TransitSchedulesViewController *)self selectedTransitLine];
    v5 = [v4 muid];

    v6 = +[MKMapService sharedService];
    boardingStopMuid = self->_boardingStopMuid;
    v8 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
    requestAllDirections = self->_requestAllDirections;
    routingParameters = self->_routingParameters;
    v11 = [(TransitSchedulesViewController *)self traits];
    v12 = [v6 ticketForUpdatedTransitScheduleDetailsAtStation:boardingStopMuid line:v5 referenceTripID:v8 includeAllDirectionNames:requestAllDirections routingParameters:routingParameters traits:v11];
  }

  else
  {
    v13 = sub_100798DBC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attempting to update the schedule card's mapItem, but there is no selected trip", v15, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4
{
  v5 = a4;
  [(TransitSchedulesViewController *)self setReferenceDate:v5];
  [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setReferenceDate:v5 dataSource:self->_dataSource];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 - 3 < 3)
  {
    v4 = [(ContaineeViewController *)self cardPresentationController];
    [v4 availableHeight];
    v6 = v5;

    return v6;
  }

  if (a3 != 2)
  {
    v6 = -1.0;
    if (a3 == 1)
    {
      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 bottomSafeOffset];
      v9 = v8;
      [(ContaineeViewController *)self headerHeight];
      v6 = v10 + v9;
    }

    return v6;
  }

  sub_100068BB8();
  return result;
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:34 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  v5.receiver = self;
  v5.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v5 handleDismissAction:v4];
}

- (void)departureCellProvider:(id)a3 selectDeparture:(id)a4 withIndex:(unint64_t)a5
{
  v7 = a4;
  v8 = [(TransitSchedulesViewController *)self _sectionIndexForSectionType:3];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(TransitSchedulesViewController *)self collectionView];
    v11 = [v10 indexPathsForSelectedItems];

    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 section] == v9)
          {
            v17 = [(TransitSchedulesViewController *)self collectionView];
            [v17 deselectItemAtIndexPath:v16 animated:0];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v18 = [NSIndexPath indexPathForRow:a5 inSection:v9];
    v19 = [(TransitSchedulesViewController *)self collectionView];
    [v19 selectItemAtIndexPath:v18 animated:0 scrollPosition:0];

    [(TransitSchedulesViewController *)self setSelectedDeparture:v7];
  }
}

- (void)setSelectedDeparture:(id)a3
{
  v15 = a3;
  v4 = [v15 tripIdentifier];
  if (v4 == [(TransitSchedulesViewController *)self selectedTripIdentifier])
  {
    v5 = [v15 scheduledDepartureDate];
    v6 = v5 != self->_selectedTripDepartureDate;
  }

  else
  {
    v6 = 1;
  }

  v7 = ![(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource hasStops]&& [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState]!= 2;
  v8 = v15;
  if (v6 || v7)
  {
    v9 = [(TransitSchedulesViewController *)self hasSelectedTrip];
    v10 = [v15 vehicleIdentifier];
    [(TransitSchedulesViewController *)self setSelectedTripVehicleNumber:v10];

    v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 tripIdentifier]);
    selectedTripIdentifier = self->_selectedTripIdentifier;
    self->_selectedTripIdentifier = v11;

    v13 = [v15 scheduledDepartureDate];
    selectedTripDepartureDate = self->_selectedTripDepartureDate;
    self->_selectedTripDepartureDate = v13;

    [(TransitSchedulesViewController *)self _clearVehicles];
    if (v9)
    {
      [(TransitSchedulesViewController *)self loadSelectedTripDetails];
    }

    else
    {
      [(TransitSchedulesViewController *)self fetchNewScheduleData];
    }

    [GEOAPPortal captureUserAction:3074 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
    v8 = v15;
  }
}

- (void)departureDataProvider:(id)a3 selectedDeparture:(id)a4 withIndex:(unint64_t)a5
{
  v7 = a4;
  v9 = [NSIndexPath indexPathForRow:a5 inSection:[(TransitSchedulesViewController *)self _sectionIndexForSectionType:3]];
  v8 = [(TransitSchedulesViewController *)self departureCellProvider];
  [v8 collectionView:self->_collectionView selectedDeparture:v7 atIndexPath:v9];

  [(TransitSchedulesViewController *)self setSelectedDeparture:v7];
}

- (void)departureDataProvider:(id)a3 updatedDepartureSequences:(id)a4
{
  v5 = a4;
  v6 = [(TransitSchedulesViewController *)self headsignCellProvider];
  v7 = [v6 identifiersForDepartureSequences:v5];

  v8 = [(TransitSchedulesViewController *)self _hasHeadsignSection];
  v9 = [v5 count];

  if (v9 >= 2 && [v7 count])
  {
    if ((v8 & 1) == 0)
    {
      v10 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
      [(TransitSchedulesViewController *)self _clearSection:0 inSnapshot:v10];
      [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:v10];
    }

    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _clearSection:0 inSnapshot:v11];
    [v11 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_1016E6848];
    v12 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider indexForSelectedDepartureSequence];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006BA720;
    v14[3] = &unk_101661650;
    v14[4] = self;
    v14[5] = v12;
    dispatch_async(&_dispatch_main_q, v14);
    goto LABEL_8;
  }

  if (v8)
  {
    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:0 toSnapshot:v11];
LABEL_8:
    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v11 animatingDifferences:1];
  }

  v13 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider selectedDepartureSequence];
  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:v13];
}

- (BOOL)_shouldShowDepartureInfoSection
{
  v3 = [(TransitSchedulesViewController *)self selectedTransitLine];
  if ([v3 departureTimeDisplayStyle] == 3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider departures];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)departureDataProvider:(id)a3 selectedDepartureSequence:(id)a4 withIndex:(unint64_t)a5
{
  v13 = a4;
  v7 = [NSIndexPath indexPathForRow:a5 inSection:[(TransitSchedulesViewController *)self _sectionIndexForSectionType:0]];
  v8 = [(TransitSchedulesViewController *)self headsignCellProvider];
  [v8 collectionView:self->_collectionView selectedHeadsignForDepartureSequence:v13 atIndexPath:v7];

  v9 = [v13 displayName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v13 displayName];
    v12 = [(TransitSchedulesViewController *)self headerTitleView];
    [v12 setSubtitle:v11];
  }
}

- (void)departureDataProvider:(id)a3 updatedDepartures:(id)a4
{
  v4 = self;
  v5 = [(TransitSchedulesViewController *)self _dedupeDepartures:a4];
  v6 = [(UICollectionViewDiffableDataSource *)v4->_dataSource snapshot];
  v7 = [(TransitSchedulesViewController *)v4 departureCellProvider];
  v8 = [v7 identifiersForDepartures:v5];

  if ([v8 count])
  {
    v9 = sub_100798DBC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      v11 = v10;
      if (v10)
      {
        if ([v10 count])
        {
          v28 = v9;
          v29 = v6;
          v30 = v4;
          v31 = v5;
          v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v27 = v11;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v33 objects:buf count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          v15 = v14;
          v16 = *v34;
          while (1)
          {
            v17 = 0;
            do
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v33 + 1) + 8 * v17);
              if (v18)
              {
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_15;
                }

                v21 = [v18 performSelector:"accessibilityIdentifier"];
                v22 = v21;
                if (v21 && ![v21 isEqualToString:v20])
                {
                  v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
                }

                else
                {

LABEL_15:
                  v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
                }

                goto LABEL_18;
              }

              v23 = @"<nil>";
LABEL_18:

              [v12 addObject:v23];
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v24 = [v13 countByEnumeratingWithState:&v33 objects:buf count:16];
            v15 = v24;
            if (!v24)
            {
LABEL_22:

              v25 = [v13 componentsJoinedByString:{@", "}];
              v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

              v4 = v30;
              v5 = v31;
              v6 = v29;
              v9 = v28;
              v11 = v27;
              goto LABEL_26;
            }
          }
        }

        v26 = [NSString stringWithFormat:@"<%p> (empty)", v11];
      }

      else
      {
        v26 = @"<nil>";
      }

LABEL_26:

      *buf = 138543362;
      v38 = v26;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating departures section with identifiers: %{public}@", buf, 0xCu);
    }

    [(TransitSchedulesViewController *)v4 _clearSection:3 inSnapshot:v6];
    [v6 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:&off_1016E67E8];
    [v6 reloadItemsWithIdentifiers:v8];
  }

  else
  {
    [(TransitSchedulesViewController *)v4 _removeSection:3 toSnapshot:v6];
  }

  [(UICollectionViewDiffableDataSource *)v4->_dataSource applySnapshot:v6 animatingDifferences:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006BAD3C;
  block[3] = &unk_101661B18;
  block[4] = v4;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeSection:(unint64_t)a3 toSnapshot:(id)a4
{
  v6 = a4;
  if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [v6 deleteSectionsWithIdentifiers:v8];

    v9 = [v6 sectionIdentifiers];
    sectionIdentifiers = self->_sectionIdentifiers;
    self->_sectionIdentifiers = v9;
  }
}

- (void)_clearSection:(unint64_t)a3 inSnapshot:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v6 deleteSectionsWithIdentifiers:v8];

  [(TransitSchedulesViewController *)self _addSection:a3 toSnapshot:v6];
}

- (void)_addSection:(unint64_t)a3 toSnapshot:(id)a4
{
  v6 = a4;
  v7 = [v6 sectionIdentifiers];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006BB0E4;
  v13[3] = &unk_101626408;
  v15 = &v17;
  v16 = a3;
  v8 = v6;
  v14 = v8;
  [v7 enumerateObjectsUsingBlock:v13];
  if ((v18[3] & 1) == 0)
  {
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v21 = v9;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    [v8 appendSectionsWithIdentifiers:v10];
  }

  v11 = [v8 sectionIdentifiers];
  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = v11;

  _Block_object_dispose(&v17, 8);
}

- (void)_expandStopsSection:(id)a3
{
  [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource expandTransitTripStops];
  [(TransitSchedulesViewController *)self _rebuildStopsSection];
  [(TransitSchedulesViewController *)self _updateStopsSectionHeader];
  v4 = [(TransitSchedulesViewController *)self currentUITargetForAnalytics];

  [GEOAPPortal captureUserAction:9040 target:v4 value:0];
}

- (void)_updateStopsSectionHeader:(id)a3
{
  v6 = a3;
  if ([(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource canShowMoreStops])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Transit Schedules] More" value:@"localized string not found" table:0];

    [v6 addButtonWithText:v5 buttonTarget:self buttonAction:"_expandStopsSection:"];
  }

  else
  {
    [v6 removeSecondaryText];
  }
}

- (void)_updateStopsSectionHeader
{
  v3 = [(TransitSchedulesViewController *)self _headerViewForSectionType:6];
  [(TransitSchedulesViewController *)self _updateStopsSectionHeader:v3];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [a4 section]);
  result = 1;
  if (v5 <= 9)
  {
    if (((1 << v5) & 0x264) != 0)
    {
      return 0;
    }

    if (v5 == 1)
    {
      v7 = 296;
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      v7 = 312;
    }

    v8 = *(&self->super.super.super.super.super.super.isa + v7);

    return [v8 allowsCellSelection];
  }

  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v6 section]);
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        WeakRetained = objc_loadWeakRetained(&self->_transitIncidentCell);
        v26 = WeakRetained;
        if (WeakRetained)
        {
          v27 = WeakRetained;
        }

        else
        {
          v27 = [(TransitSchedulesViewController *)self collectionView:v30 cellForItemAtIndexPath:v6 itemIdentifier:@"IncidentsCellIdentifier"];
        }

        v14 = v27;

        v15 = [(TransitSchedulesViewController *)self actionCoordinator];
        v16 = [(TransitSchedulesViewController *)self incidents];
        [v15 viewController:self openTransitIncidents:v16 fromView:v14 withUserInfo:0];
        v18 = 7008;
        break;
      case 7:
        v28 = &OBJC_IVAR___TransitSchedulesViewController__lineOptionsProvider;
LABEL_16:
        v29 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];
        [*(&self->super.super.super.super.super.super.isa + *v28) selectedCellAtIndexPath:v6 withIdentifier:v29];

        goto LABEL_17;
      case 8:
        v11 = +[GEOResourceManifestManager modernManager];
        v12 = [v11 activeTileGroup];
        v13 = [v12 attributions];
        v14 = [v13 firstObject];

        v15 = [v14 url];
        if (!v15)
        {
          v18 = 7021;
          goto LABEL_21;
        }

        v16 = [NSURL URLWithString:v15];
        v17 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
        [v17 transitSchedulesViewController:self wantsToOpenURL:v16];

        v18 = 7021;
        break;
      default:
LABEL_17:
        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:v6 animated:1];
        goto LABEL_23;
    }

LABEL_21:
    [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:v6 animated:1];
    v24 = 0;
    goto LABEL_22;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 3)
      {
        v8 = [v6 row];
        v9 = [(TransitSchedulesViewController *)self departureDataProvider];
        v10 = [v9 selectDepartureAtIndex:v8];

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v28 = &OBJC_IVAR___TransitSchedulesViewController__departureInfoProvider;
    goto LABEL_16;
  }

  v19 = [v6 row];
  v20 = [(TransitSchedulesViewController *)self departureDataProvider];
  [v20 selectDepartureSequenceAtIndex:v19];

  v21 = [(TransitSchedulesViewController *)self departureDataProvider];
  v22 = [v21 selectedDepartureSequence];
  v23 = [v22 displayName];

  v24 = [NSString stringWithFormat:@"%lu, %@", v19, v23];

  v18 = 49;
LABEL_22:
  [GEOAPPortal captureUserAction:v18 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:v24];

LABEL_23:
}

- (void)headerViewTapped:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsExpandLayout];
}

- (void)restoreInitialMapState
{
  v12 = [(ControlContaineeViewController *)self delegate];
  if ([v12 displayedViewMode] != 3)
  {
LABEL_8:

    return;
  }

  v3 = [(ControlContaineeViewController *)self delegate];
  v4 = [v3 mapApplicationState];

  if (v4 == 7)
  {
    initialViewMode = self->_initialViewMode;
    v6 = [(ControlContaineeViewController *)self delegate];
    v7 = [v6 displayedViewMode];

    if (initialViewMode != v7)
    {
      v8 = [(ControlContaineeViewController *)self delegate];
      [v8 updateViewMode:self->_initialViewMode animated:1];
    }

    initialMapApplicationState = self->_initialMapApplicationState;
    v10 = [(ControlContaineeViewController *)self delegate];
    v11 = [v10 mapApplicationState];

    if (initialMapApplicationState != v11)
    {
      v12 = [(ControlContaineeViewController *)self delegate];
      [v12 updateMapApplicationState:self->_initialMapApplicationState];
      goto LABEL_8;
    }
  }
}

- (int64_t)_numberOfDeparturesInSnapshot
{
  v3 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v4 = [v3 indexOfSectionIdentifier:&off_1016E67E8];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v7 = [v6 numberOfItemsInSection:&off_1016E67E8];

  return v7;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(TransitSchedulesViewController *)self selectedTripRoute];
  if (v5)
  {
    v6 = [(TransitSchedulesViewController *)self selectedTripRoute];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [v4 setRoutes:v7];
  }

  else
  {
    [v4 setRoutes:0];
  }

  v8 = [(TransitSchedulesViewController *)self lastReceivedVehiclePositions];
  [v4 setTransitVehiclePositions:v8];

  return 1;
}

- (void)showRouteOnMap
{
  v3 = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (v3)
  {
    v4 = [(ControlContaineeViewController *)self delegate];
    v5 = [v4 displayedViewMode];

    if (v5 != 3)
    {
      v6 = [(ControlContaineeViewController *)self delegate];
      [v6 updateViewMode:3 animated:1];
    }

    v7 = [(ControlContaineeViewController *)self delegate];
    v8 = [v7 mapApplicationState];

    if (v8 != 7)
    {
      v9 = [(ControlContaineeViewController *)self delegate];
      [v9 updateMapApplicationState:7];
    }
  }

  v10 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [v10 transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
}

- (void)changeDate
{
  v3 = [(TransitSchedulesViewController *)self departureDataProvider];
  v10 = [v3 timeZone];

  v4 = [(TransitSchedulesViewController *)self departureDataProvider];
  v5 = [v4 scheduleWindowStartDate];

  v6 = [RoutePlanningTimingViewController alloc];
  v7 = [RoutePlanningTiming timingWithDepartureDate:v5 departureTimeZone:v10 arrivalTimeZone:0];
  v8 = [(RoutePlanningTimingViewController *)v6 initWithCurrentTiming:v7 shouldShowArriveBy:0 pickerDelegate:self];

  v9 = [(ContaineeViewController *)self cardPresentationController];
  [v9 presentViewController:v8 animated:1 completion:0];

  [GEOAPPortal captureUserAction:7015 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
}

- (void)changedDate:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 date];
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:v4];

    [GEOAPPortal captureUserAction:7015 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  }
}

- (void)setScheduleWindowStartDate:(id)a3
{
  v4 = a3;
  v5 = [(TransitSchedulesViewController *)self departureDataProvider];
  [v5 setScheduleWindowStartDate:v4];

  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDate:v4];
  scheduleWindowStartDate = self->_scheduleWindowStartDate;
  self->_scheduleWindowStartDate = v4;
}

- (void)setSelectedTripRoute:(id)a3
{
  v5 = a3;
  if (([(GEOComposedRoute *)self->_selectedTripRoute isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedTripRoute, a3);
    [(TransitSchedulesViewController *)self showRouteOnMap];
  }
}

- (void)loadSelectedTripDetails
{
  objc_initWeak(&location, self);
  [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource removeAllStops];
  [(TransitSchedulesViewController *)self updateStopsSectionForNetworkState:2];
  [(TransitSchedulesViewController *)self updateCollectionViewOffset];
  [(TransitSchedulesViewController *)self _updateVehicleUpdater];
  boardingStopMuid = self->_boardingStopMuid;
  transitLineIdentifier = self->_transitLineIdentifier;
  v5 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
  v6 = [(TransitSchedulesViewController *)self traits];
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForTransitTripDetailsAtStation:boardingStopMuid line:transitLineIdentifier referenceTripID:v5 includeAllDirectionNames:self->_requestAllDirections routingParameters:self->_routingParameters traits:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BBFE4;
  v9[3] = &unk_1016263E0;
  objc_copyWeak(v10, &location);
  v10[1] = boardingStopMuid;
  v10[2] = transitLineIdentifier;
  v10[3] = v5;
  [v8 submitWithHandler:v9 networkActivity:0];
  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

- (void)selectDeparture
{
  if ([(TransitSchedulesViewController *)self _numberOfDeparturesInSnapshot])
  {
    if (!-[TransitSchedulesViewController hasSelectedTrip](self, "hasSelectedTrip") || (-[TransitSchedulesViewController departureDataProvider](self, "departureDataProvider"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 selectDepartureWithTripIdentifier:{-[TransitSchedulesViewController selectedTripIdentifier](self, "selectedTripIdentifier")}], v3, (v4 & 1) == 0))
    {
      v5 = [(TransitSchedulesViewController *)self departureDataProvider];
      [v5 selectNextIncomingDeparture];
    }
  }
}

- (void)processUpdatedDepartureSequencesFromMapItem:(id)a3
{
  v17 = a3;
  v4 = [v17 _transitInfo];
  v5 = [v4 departureSequences];
  v6 = [v5 copy];

  v7 = [(TransitSchedulesViewController *)self _dedupeDepartureSequences:v6];

  v8 = [(TransitSchedulesViewController *)self departureDataProvider];
  if (v8)
  {
    v9 = v8;
    [v8 processDeparturesFromDepartureSequences:v7 animatingDifferences:0];

    goto LABEL_17;
  }

  if (![v7 count])
  {
    [(TransitSchedulesViewController *)self updateDeparturesSectionForNetworkState:0];
    goto LABEL_17;
  }

  if (![(TransitSchedulesViewController *)self hasSelectedTrip])
  {
    goto LABEL_9;
  }

  v10 = [TransitSchedulesDepartureDataProvider departureSequenceContainingTripIdentifier:[(TransitSchedulesViewController *)self selectedTripIdentifier] departureSequences:v7];
  if (!v10)
  {
    if ([v7 count] == 1)
    {
      v10 = [v7 firstObject];
      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
  }

LABEL_10:
  v11 = [v10 departures];
  v12 = [v11 firstObject];
  v13 = [v12 departureDate];

  departureInfoProvider = self->_departureInfoProvider;
  if (v13)
  {
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:v10];
    v15 = [[TransitSchedulesDepartureDataProvider alloc] initWithTransitMapItem:v17 selectedDepartureSequence:v10 departureSequences:v7 timeZone:self->_boardingStopTimeZone initialScheduleDate:self->_scheduleWindowStartDate];
    [(TransitSchedulesViewController *)self setDepartureDataProvider:v15];
    [(TransitSchedulesDepartureDataProvider *)v15 setRequestAllDirections:self->_requestAllDirections];
    [(TransitSchedulesDepartureDataProvider *)v15 setDelegate:self];
    [(TransitSchedulesViewController *)self selectDeparture];
  }

  else
  {
    if (v10)
    {
      [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:v10];
    }

    else
    {
      v16 = [v7 firstObject];
      [(TransitSchedulesDepartureInfoProvider *)departureInfoProvider setDepartureSequence:v16];
    }

    v15 = 0;
  }

  [(TransitSchedulesViewController *)self updateDeparturesSectionForNetworkState:[(TransitSchedulesDepartureDataProvider *)v15 remoteNetworkState]];

LABEL_17:
}

- (void)fetchNewScheduleData
{
  boardingStopMuid = self->_boardingStopMuid;
  transitLineIdentifier = self->_transitLineIdentifier;
  v5 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
  v6 = [(TransitSchedulesViewController *)self traits];
  objc_initWeak(&location, self);
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForTransitScheduleAtStation:boardingStopMuid line:transitLineIdentifier referenceTripID:v5 includeAllDirectionNames:self->_requestAllDirections routingParameters:self->_routingParameters traits:v6];

  if (!self->_departureDataProvider)
  {
    [(TransitSchedulesViewController *)self updateDeparturesSectionForNetworkState:2];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BC8CC;
  v9[3] = &unk_1016263E0;
  objc_copyWeak(v10, &location);
  v10[1] = boardingStopMuid;
  v10[2] = transitLineIdentifier;
  v10[3] = v5;
  [v8 submitWithHandler:v9 networkActivity:0];
  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

- (BOOL)isNetworkError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:kCFErrorDomainCFNetwork])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    v5 = [v6 isEqual:NSURLErrorDomain];
  }

  return v5;
}

- (id)traits
{
  v3 = [(TransitSchedulesViewController *)self departureDataProvider];
  v4 = [v3 scheduleWindowStartDate];
  scheduleWindowStartDate = v4;
  if (!v4)
  {
    scheduleWindowStartDate = self->_scheduleWindowStartDate;
  }

  v6 = scheduleWindowStartDate;

  v7 = [TransitSchedulesDepartureDataProvider serviceTraitsForScheduleDate:v6 timeZone:self->_boardingStopTimeZone];
  if ([(TransitSchedulesViewController *)self hasSelectedTrip])
  {
    v8 = objc_alloc_init(GEOTraitsTransitScheduleModeFilter);
    v9 = objc_alloc_init(GEOTraitsTransitScheduleTimeRange);
    [v8 setTimeRange:v9];

    [(NSDate *)self->_scheduleWindowStartDate timeIntervalSinceReferenceDate];
    v11 = v10 + -1.0;
    v12 = [v8 timeRange];
    [v12 setStartTime:v11];

    v13 = [v8 timeRange];
    [v13 setDuration:2.0];

    v14 = objc_alloc_init(GEOTraitsTransitScheduleFilter);
    [v14 setHighFrequencyFilter:v8];
    [v14 setLowFrequencyFilter:v8];
    [v7 setTransitTripStopTimeFilter:v14];
  }

  return v7;
}

- (unint64_t)_departuresHeaderStyle
{
  v3 = [(TransitSchedulesViewController *)self selectedTransitLine];
  v4 = [v3 departureTimeDisplayStyle];

  if (v4 != 4 && v4 != 2)
  {
    return 1;
  }

  if (self->_isRoutingScheduleCard)
  {
    return 0;
  }

  return 2;
}

- (void)setSelectedTransitLine:(id)a3
{
  v5 = a3;
  if (([(GEOTransitLine *)self->_selectedTransitLine isEqual:?]& 1) == 0)
  {
    [(TransitSchedulesViewController *)self _checkIfPinnedLine];
    objc_storeStrong(&self->_selectedTransitLine, a3);
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setTransitLine:self->_selectedTransitLine];
    [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setTransitLine:self->_selectedTransitLine];
  }
}

- (id)_startEndDatesForOperatingHoursTimeRanges:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 startDate];
        [v4 addObject:v11];

        v12 = [v10 endDate];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)titleForStopsHeader
{
  v3 = [(NSString *)self->_selectedTripVehicleNumber length];
  v4 = [(GEOTransitLine *)self->_selectedTransitLine isBus];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
  {
    if (v4)
    {
      v7 = @"[Transit Schedules] (Bus) Stops for <vehicle number>";
    }

    else
    {
      v7 = @"[Transit Schedules] (Non-Bus) Stops for <vehicle number>";
    }

    v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    v9 = [NSString stringWithFormat:v8, self->_selectedTripVehicleNumber];
    v6 = v8;
  }

  else
  {
    if (v4)
    {
      v10 = @"[Transit Schedules] (Bus) Stops";
    }

    else
    {
      v10 = @"[Transit Schedules] (Non-Bus) Stops";
    }

    v9 = [v5 localizedStringForKey:v10 value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_headerViewForSectionType:(unint64_t)a3
{
  v4 = [(TransitSchedulesViewController *)self _sectionIndexForSectionType:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NSIndexPath indexPathForRow:0 inSection:v4];
    v7 = [(UICollectionView *)self->_collectionView supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:v6];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }
  }

  return v5;
}

- (void)setSelectedTripVehicleNumber:(id)a3
{
  v8 = a3;
  if (([(NSString *)self->_selectedTripVehicleNumber isEqual:?]& 1) == 0)
  {
    v4 = [v8 copy];
    selectedTripVehicleNumber = self->_selectedTripVehicleNumber;
    self->_selectedTripVehicleNumber = v4;

    v6 = [(TransitSchedulesViewController *)self _headerViewForSectionType:6];
    v7 = [(TransitSchedulesViewController *)self titleForStopsHeader];
    [v6 setTitle:v7];
  }
}

- (void)setBoardingStationMapItem:(id)a3
{
  v5 = a3;
  if (!self->_mapItemUpdater)
  {
    v6 = [MKMapItem alloc];
    v7 = [v5 _geoMapItem];
    v8 = [v6 initWithGeoMapItem:v7 isPlaceHolderPlace:0];

    v9 = [[MKTransitMapItemUpdater alloc] initWithMapItem:v8 delegate:self];
    mapItemUpdater = self->_mapItemUpdater;
    self->_mapItemUpdater = v9;

    if ([(TransitSchedulesViewController *)self isViewLoaded])
    {
      [(MKTransitMapItemUpdater *)self->_mapItemUpdater setActive:1];
    }
  }

  if (!self->_attribution)
  {
    v26 = [v5 _transitAttribution];

    if (v26)
    {
      v27 = [v5 _transitAttribution];
      attribution = self->_attribution;
      self->_attribution = v27;

      if ([(TransitSchedulesViewController *)self isViewLoaded])
      {
        v29 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
        [(TransitSchedulesViewController *)self _addSection:8 toSnapshot:v29];
        v33 = @"AttributionCellIdentifier";
        v30 = [NSArray arrayWithObjects:&v33 count:1];
        [v29 appendItemsWithIdentifiers:v30 intoSectionWithIdentifier:&off_1016E67D0];

        [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v29 animatingDifferences:0];
      }
    }
  }

  objc_storeStrong(&self->_boardingStopMapItem, a3);
  v11 = [v5 _transitInfo];
  v12 = [v11 title];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v11 title];
    v15 = [(TransitSchedulesViewController *)self headerTitleView];
    [v15 setTitle:v14];
  }

  v16 = [v11 subtitle];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v11 subtitle];
    v19 = [(TransitSchedulesViewController *)self headerTitleView];
    [v19 setSubtitle:v18];
  }

  v20 = [v11 lines];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1006BD7DC;
  v32[3] = &unk_101626368;
  v32[4] = self;
  [v20 enumerateObjectsUsingBlock:v32];

  v21 = [v11 transitTripStops];
  v22 = [v21 firstObject];
  if (v22)
  {
    v23 = [v11 composedRoute];
    [(TransitSchedulesViewController *)self setSelectedTripRoute:v23];
    v24 = [v5 _transitInfo];
    v25 = [v24 incidents];
    [(TransitSchedulesViewController *)self setIncidents:v25];

    [(TransitSchedulesViewController *)self _updateVehicleUpdater];
    if ([v21 count])
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1006BD8AC;
      v31[3] = &unk_101626390;
      v31[4] = self;
      [v21 enumerateObjectsUsingBlock:v31];
      [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource buildTransitTripStopItemsWithTransitStops:v21 boardingStopDepartureDate:self->_selectedTripDepartureDate maintainingCollapsedState:0];
      if ([(TransitSchedulesViewController *)self isViewLoaded])
      {
        [(TransitSchedulesViewController *)self _rebuildStopsSection];
        [(TransitSchedulesViewController *)self updateCollectionViewOffset];
      }
    }
  }
}

- (void)_rebuildStopsSection
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  [(TransitSchedulesViewController *)self _clearSection:6 inSnapshot:v4];
  v3 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
  [v4 appendItemsWithIdentifiers:v3 intoSectionWithIdentifier:&off_1016E6830];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v4 animatingDifferences:1];
  [(TransitSchedulesViewController *)self _updateStopsSectionHeader];
}

- (TransitSchedulesHeadsignViewProviding)headsignCellProvider
{
  headsignCellProvider = self->_headsignCellProvider;
  if (!headsignCellProvider)
  {
    if (sub_10000FA08(self) == 5)
    {
      v4 = objc_alloc_init(TransitSchedulesHeadsignPickerProvider);
      [(TransitSchedulesHeadsignPickerProvider *)v4 setDelegate:self];
    }

    else
    {
      v4 = objc_alloc_init(TransitSchedulesHeadsignCellProvider);
    }

    v5 = self->_headsignCellProvider;
    self->_headsignCellProvider = v4;

    headsignCellProvider = self->_headsignCellProvider;
  }

  return headsignCellProvider;
}

- (TransitSchedulesDepartureViewProviding)departureCellProvider
{
  departureCellProvider = self->_departureCellProvider;
  if (!departureCellProvider)
  {
    if (sub_10000FA08(self) == 5)
    {
      v4 = objc_alloc_init(TransitSchedulesDeparturePickerProvider);
      [(TransitSchedulesDeparturePickerProvider *)v4 setDelegate:self];
    }

    else
    {
      v4 = objc_alloc_init(TransitSchedulesDepartureCellProvider);
    }

    v5 = self->_departureCellProvider;
    self->_departureCellProvider = v4;

    departureCellProvider = self->_departureCellProvider;
  }

  return departureCellProvider;
}

- (void)setDepartureDataProvider:(id)a3
{
  v4 = a3;
  departureDataProvider = self->_departureDataProvider;
  if (departureDataProvider)
  {
    [(TransitSchedulesViewController *)self _stopObservingDepartureProvider];
    departureDataProvider = self->_departureDataProvider;
  }

  self->_departureDataProvider = v4;

  if (v4)
  {

    [(TransitSchedulesViewController *)self _startObservingDepartureProvider];
  }
}

- (void)setIncidents:(id)a3
{
  v4 = a3;
  incidents = self->_incidents;
  if (incidents != v4 && ([(NSArray *)incidents isEqual:v4]& 1) == 0)
  {
    v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:4 toSnapshot:v6];
    if ([(NSArray *)v4 count])
    {
      [(TransitSchedulesViewController *)self _addSection:4 toSnapshot:v6];
      v12 = @"IncidentsCellIdentifier";
      v7 = [NSArray arrayWithObjects:&v12 count:1];
      [v6 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_1016E6788];
    }

    v8 = [(NSArray *)v4 copy];
    v9 = self->_incidents;
    self->_incidents = v8;

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v6 animatingDifferences:1];
    v10 = [(NSArray *)self->_incidents count]!= 0;
    v11 = +[GEOAPSharedStateData sharedData];
    [v11 setPlaceCardTransitAdvisoryBanner:v10];
  }
}

- (void)updateStopsSectionForNetworkState:(unint64_t)a3
{
  if ([(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState]!= a3)
  {
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setRemoteNetworkState:a3];
    if (a3 - 2 >= 3)
    {
      if (a3 == 1 && [v5 indexOfSectionIdentifier:&off_1016E6830] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 deleteSectionsWithIdentifiers:&off_1016EC8D8];
        [(TransitSchedulesViewController *)self _addSection:6 toSnapshot:v5];
      }
    }

    else
    {
      if ([v5 indexOfSectionIdentifier:&off_1016E6818] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 deleteSectionsWithIdentifiers:&off_1016EC8F0];
        [(TransitSchedulesViewController *)self _addSection:5 toSnapshot:v5];
        v8 = @"StopsNetworkStateViewCellIdentifier";
        v6 = [NSArray arrayWithObjects:&v8 count:1];
        [v5 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:&off_1016E6818];
      }

      else
      {
        v7 = @"StopsNetworkStateViewCellIdentifier";
        v6 = [NSArray arrayWithObjects:&v7 count:1];
        [v5 reloadItemsWithIdentifiers:v6];
      }
    }

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v5 animatingDifferences:1];
  }
}

- (void)updateDeparturesSectionForNetworkState:(unint64_t)a3
{
  if (!self->_departureDataProvider)
  {
    self->_initialRoutingSchedulesNetworkRequestState = a3;
  }

  v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v6 = v5;
  if (a3 - 2 >= 3)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [(TransitSchedulesViewController *)self _removeSection:1 toSnapshot:v5];
        if ([v6 indexOfSectionIdentifier:&off_1016E67E8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(TransitSchedulesViewController *)self _clearSection:3 inSnapshot:v6];
          [v6 deleteSectionsWithIdentifiers:&off_1016EC8A8];
          [(TransitSchedulesViewController *)self _addSection:3 toSnapshot:v6];
        }
      }
    }

    else
    {
      [(TransitSchedulesViewController *)self _removeSection:3 toSnapshot:v5];
      [(TransitSchedulesViewController *)self _removeSection:2 toSnapshot:v6];
    }
  }

  else
  {
    if ([v5 indexOfSectionIdentifier:&off_1016E6800] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 deleteSectionsWithIdentifiers:&off_1016EC8C0];
      [(TransitSchedulesViewController *)self _addSection:2 toSnapshot:v6];
      v9 = @"DeparturesNetworkStateViewCellIdentifier";
      v7 = [NSArray arrayWithObjects:&v9 count:1];
      [v6 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_1016E6800];
    }

    else
    {
      v8 = @"DeparturesNetworkStateViewCellIdentifier";
      v7 = [NSArray arrayWithObjects:&v8 count:1];
      [v6 reloadItemsWithIdentifiers:v7];
    }
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v6 animatingDifferences:0];
}

- (id)fetchSelectedTransitLineItem
{
  selectedTransitLineItem = self->_selectedTransitLineItem;
  if (selectedTransitLineItem && !sub_1005B1B14(selectedTransitLineItem))
  {
LABEL_7:
    v12 = self->_selectedTransitLineItem;
    goto LABEL_9;
  }

  v4 = [(TransitSchedulesViewController *)self selectedTransitLine];

  if (v4)
  {
    v5 = [(TransitSchedulesViewController *)self selectedTransitLine];
    v6 = [[IncompleteTransitLineItem alloc] initWithTransitLine:v5];
    v7 = self->_selectedTransitLineItem;
    self->_selectedTransitLineItem = v6;

    if (sub_1005B1B14(self->_selectedTransitLineItem))
    {
      v8 = MKMapItemIdentifierFromGEOTransitLine();
      v9 = +[MKMapService sharedService];
      v18 = v8;
      v10 = [NSArray arrayWithObjects:&v18 count:1];
      v11 = [v9 ticketForTransitLines:v10 traits:0];

      objc_initWeak(&location, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1006BE33C;
      v14[3] = &unk_10165DCC8;
      v15 = v5;
      objc_copyWeak(&v16, &location);
      [v11 submitWithHandler:v14 networkActivity:0];
      objc_destroyWeak(&v16);

      objc_destroyWeak(&location);
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)hasIncidents
{
  v2 = [(TransitSchedulesViewController *)self incidents];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_stopObservingDepartureProvider
{
  v4 = [(TransitSchedulesViewController *)self departureDataProvider];
  v3 = NSStringFromSelector("remoteNetworkState");
  [v4 removeObserver:self forKeyPath:v3];
}

- (void)_startObservingDepartureProvider
{
  v4 = [(TransitSchedulesViewController *)self departureDataProvider];
  v3 = NSStringFromSelector("remoteNetworkState");
  [v4 addObserver:self forKeyPath:v3 options:4 context:off_101929D58];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_101929D58 == a6)
  {
    if (self->_departureDataProvider == v11)
    {
      v13 = NSStringFromSelector("remoteNetworkState");
      v14 = [v10 isEqualToString:v13];

      if (v14)
      {
        [(TransitSchedulesViewController *)self updateDeparturesSectionForNetworkState:[(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider remoteNetworkState]];
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TransitSchedulesViewController;
    [(TransitSchedulesViewController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(TransitSchedulesViewController *)self vehicleUpdater];
  [v5 setActive:0];

  v6 = [(TransitSchedulesViewController *)self mapItemUpdater];
  [v6 setActive:0];

  [(TransitSchedulesViewController *)self _stopObservingDepartureProvider];
  [(TransitSchedulesViewController *)self restoreInitialMapState];
  v7.receiver = self;
  v7.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(TransitSchedulesViewController *)self mapItemUpdater];
  [v5 setActive:1];

  v6 = [(TransitSchedulesViewController *)self vehicleUpdater];
  [v6 setActive:1];

  [(TransitSchedulesViewController *)self _startObservingDepartureProvider];
  if (![(TransitSchedulesViewController *)self hasSelectedTrip]&& [(TransitSchedulesViewController *)self _numberOfDeparturesInSnapshot]>= 1)
  {
    v7 = [(TransitSchedulesViewController *)self departureDataProvider];
    [v7 selectNextIncomingDeparture];
  }

  v8 = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (v8)
  {
    [(TransitSchedulesViewController *)self showRouteOnMap];
  }

  v9.receiver = self;
  v9.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v83.receiver = self;
  v83.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v83 viewDidLoad];
  v3 = [(TransitSchedulesViewController *)self view];
  [v3 setAccessibilityIdentifier:@"TransitSchedulesDepartureView"];

  v4 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v4;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [(ContainerHeaderView *)self->_containerHeaderView setContentCompressionResistancePriority:1 forAxis:v6];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  v7 = [(ContaineeViewController *)self headerView];
  [v7 addSubview:self->_containerHeaderView];

  v8 = [TransitSchedulesHeaderView alloc];
  v9 = [(TransitSchedulesViewController *)self selectedTransitLine];
  v10 = [(TransitSchedulesHeaderView *)v8 initWithTransitLine:v9];
  headerTitleView = self->_headerTitleView;
  self->_headerTitleView = v10;

  [(TransitSchedulesHeaderView *)self->_headerTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_headerTitleView];
  LODWORD(v12) = 1148846080;
  [(TransitSchedulesHeaderView *)self->_headerTitleView setContentCompressionResistancePriority:1 forAxis:v12];
  v79 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  v80 = [(ContaineeViewController *)self headerView];
  v77 = [v80 leadingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v87[0] = v75;
  v71 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  v73 = [(ContaineeViewController *)self headerView];
  v69 = [v73 trailingAnchor];
  v66 = [v71 constraintEqualToAnchor:v69];
  v87[1] = v66;
  v13 = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  v14 = [(ContaineeViewController *)self headerView];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v87[2] = v16;
  v17 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v18 = [(ContaineeViewController *)self headerView];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v87[3] = v20;
  v21 = [NSArray arrayWithObjects:v87 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  v81 = [(TransitSchedulesViewController *)self _collectionViewLayout];
  v22 = [[UICollectionView alloc] initWithFrame:v81 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v22 setAccessibilityIdentifier:@"TransitSchedulesDepartureCollectionView"];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setDelegate:self];
  [v22 setShowsHorizontalScrollIndicator:0];
  [v22 setAllowsMultipleSelection:1];
  [v22 setAllowsSelection:1];
  [v22 setAlwaysBounceVertical:1];
  [v22 setPreservesSuperviewLayoutMargins:1];
  v23 = +[UIColor clearColor];
  [v22 setBackgroundColor:v23];

  [v22 setContentInset:{8.0, 0.0, 0.0, 0.0}];
  v24 = [UICollectionViewDiffableDataSource alloc];
  v25 = sub_1007CDFC8(self);
  v26 = [v24 initWithCollectionView:v22 cellProvider:v25];
  dataSource = self->_dataSource;
  self->_dataSource = v26;

  v28 = sub_1007CE178(self);
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v28];

  v29 = [(ContaineeViewController *)self contentView];
  [v29 addSubview:v22];

  [(TransitSchedulesViewController *)self setCollectionView:v22];
  [TransitScheduleStopsTableViewDataSource registerCellsForCollectionView:v22];
  v30 = objc_opt_class();
  v31 = +[TransitStationLineScheduleSectionHeaderView identifier];
  [v22 registerClass:v30 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v31];

  v32 = objc_opt_class();
  v33 = +[(TransitStationLineScheduleSectionHeaderView *)TransitStationDatePickerHeaderView];
  [v22 registerClass:v32 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v33];

  [v22 registerClass:+[TransitSchedulesLineOptionsProvider cellClass](TransitSchedulesLineOptionsProvider forCellWithReuseIdentifier:{"cellClass"), @"TransitLineOptionsCellIdentifier"}];
  [v22 registerClass:+[TransitSchedulesDepartureInfoProvider cellClass](TransitSchedulesDepartureInfoProvider forCellWithReuseIdentifier:{"cellClass"), @"TransitLineDepartureInfoCellIdentifier"}];
  [v22 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitAttributionCellIdentifier"];
  [v22 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"IncidentsCellIdentifier"];
  v34 = [(TransitSchedulesViewController *)self departureCellProvider];
  v35 = [(TransitSchedulesViewController *)self collectionView];
  [v34 registerCellsForCollectionView:v35];

  v36 = [(TransitSchedulesViewController *)self headsignCellProvider];
  v37 = [(TransitSchedulesViewController *)self collectionView];
  [v36 registerCellsForCollectionView:v37];

  v76 = [v22 topAnchor];
  v78 = [(ContaineeViewController *)self contentView];
  v74 = [v78 safeAreaLayoutGuide];
  v72 = [v74 topAnchor];
  v70 = [v76 constraintEqualToAnchor:v72];
  v86[0] = v70;
  v68 = [(ContaineeViewController *)self contentView];
  v67 = [v68 bottomAnchor];
  v65 = [v22 bottomAnchor];
  v64 = [v67 constraintEqualToAnchor:v65];
  v86[1] = v64;
  v62 = [v22 leadingAnchor];
  v63 = [(ContaineeViewController *)self contentView];
  v61 = [v63 safeAreaLayoutGuide];
  v38 = [v61 leadingAnchor];
  v39 = [v62 constraintEqualToAnchor:v38];
  v86[2] = v39;
  v40 = [v22 trailingAnchor];
  v41 = [(ContaineeViewController *)self contentView];
  v42 = [v41 safeAreaLayoutGuide];
  v43 = [v42 trailingAnchor];
  v44 = [v40 constraintEqualToAnchor:v43];
  v86[3] = v44;
  v45 = [NSArray arrayWithObjects:v86 count:4];
  [NSLayoutConstraint activateConstraints:v45];

  v46 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  if (self->_departureDataProvider)
  {
    [(TransitSchedulesViewController *)self _addSection:3 toSnapshot:v46];
    v47 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider departures];
    v48 = [v47 count];

    if (v48)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006BF47C;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  if ([(TransitSchedulesViewController *)self hasIncidents])
  {
    [(TransitSchedulesViewController *)self _addSection:4 toSnapshot:v46];
    v85 = @"IncidentsCellIdentifier";
    v49 = [NSArray arrayWithObjects:&v85 count:1];
    [v46 appendItemsWithIdentifiers:v49 intoSectionWithIdentifier:&off_1016E6788];
  }

  if ([(TransitSchedulesViewController *)self _shouldShowDepartureInfoSection])
  {
    v50 = [[TransitSchedulesDepartureInfoProvider alloc] initWithTransitLine:self->_selectedTransitLine timeZone:self->_boardingStopTimeZone referenceDate:self->_scheduleWindowStartDate];
    departureInfoProvider = self->_departureInfoProvider;
    self->_departureInfoProvider = v50;

    v52 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider selectedDepartureSequence];
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:v52];

    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDelegate:self];
    v53 = [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider identifiers];
    if ([v53 count])
    {
      [(TransitSchedulesViewController *)self _addSection:1 toSnapshot:v46];
      [v46 appendItemsWithIdentifiers:v53 intoSectionWithIdentifier:&off_1016E67A0];
    }
  }

  if (!self->_isRoutingScheduleCard)
  {
    [(TransitSchedulesViewController *)self _addSection:7 toSnapshot:v46];
    v54 = [(TransitSchedulesLineOptionsProvider *)self->_lineOptionsProvider identifiers];
    [v46 appendItemsWithIdentifiers:v54 intoSectionWithIdentifier:&off_1016E67B8];

    v55 = [(TransitSchedulesViewController *)self fetchSelectedTransitLineItem];
  }

  v56 = [(GEOTransitAttribution *)self->_attribution _providerNames];
  v57 = [v56 count];

  if (v57)
  {
    [(TransitSchedulesViewController *)self _addSection:8 toSnapshot:v46];
    v84 = @"AttributionCellIdentifier";
    v58 = [NSArray arrayWithObjects:&v84 count:1];
    [v46 appendItemsWithIdentifiers:v58 intoSectionWithIdentifier:&off_1016E67D0];
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v46 animatingDifferences:0];
  if ([(TransitSchedulesViewController *)self hasSelectedTrip]&& ![(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource hasStops])
  {
    [(TransitSchedulesViewController *)self fetchNewScheduleData];
  }

  v59 = [(ControlContaineeViewController *)self delegate];
  self->_initialViewMode = [v59 displayedViewMode];

  v60 = [(ControlContaineeViewController *)self delegate];
  self->_initialMapApplicationState = [v60 mapApplicationState];

  [(ContaineeViewController *)self setContentScrollView:self->_collectionView forEdge:1];
}

- (id)_collectionViewLayout
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1006BF5F8;
  v9 = &unk_10165E4F0;
  objc_copyWeak(&v10, &location);
  v2 = objc_retainBlock(&v6);
  v3 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  [v3 setInterSectionSpacing:{8.0, v6, v7, v8, v9}];
  v4 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v2 configuration:v3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

- (TransitSchedulesViewController)initWithTransitRouteStep:(id)a3
{
  v5 = a3;
  v6 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [v5 nextBoardingStep];
    v8 = [v5 transitStep];
    v9 = [v8 scheduleInfo];

    if (v9 && [v9 tripID] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 tripID]);
      v12 = 0;
      v11 = 1;
    }

    else
    {
      v3 = [v7 transitVehicle];
      v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 tripMuid]);
      v11 = 0;
      v12 = 1;
    }

    objc_storeStrong(&v6->_selectedTripIdentifier, v10);
    if (v12)
    {
    }

    if (v11)
    {
    }

    v13 = [v9 staticDepartureDate];
    v14 = v13;
    if (!v13)
    {
      v14 = [v7 arrivalTime];
    }

    objc_storeStrong(&v6->_selectedTripDepartureDate, v14);
    if (!v13)
    {
    }

    v15 = [v9 windowStartDate];
    selectedTripDepartureDate = v15;
    if (!v15)
    {
      selectedTripDepartureDate = v6->_selectedTripDepartureDate;
    }

    objc_storeStrong(&v6->_scheduleWindowStartDate, selectedTripDepartureDate);

    if (v9 && [v9 lineID] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6->_transitLineIdentifier = [v9 lineID];
      v54 = [v7 transitLine];
      v55 = [v54 muid];
      transitLineIdentifier = v6->_transitLineIdentifier;

      if (v55 == transitLineIdentifier)
      {
        v57 = [v7 transitLine];
        selectedTransitLine = v6->_selectedTransitLine;
        v6->_selectedTransitLine = v57;
      }
    }

    else
    {
      v17 = [v7 transitLine];
      v18 = v6->_selectedTransitLine;
      v6->_selectedTransitLine = v17;

      v6->_transitLineIdentifier = [(GEOTransitLine *)v6->_selectedTransitLine muid];
    }

    v19 = [v9 routingParameters];
    routingParameters = v6->_routingParameters;
    v6->_routingParameters = v19;

    v21 = [v7 transitVehicle];
    v22 = [v21 vehicleNumber];
    selectedTripVehicleNumber = v6->_selectedTripVehicleNumber;
    v6->_selectedTripVehicleNumber = v22;

    v24 = [v7 transitIncidents];
    v25 = [v24 copy];
    incidents = v6->_incidents;
    v6->_incidents = v25;

    v6->_isRoutingScheduleCard = 1;
    v27 = [(ContaineeViewController *)v6 cardPresentationController];
    [v27 setPresentedModally:1];

    v28 = [v7 originStop];
    v6->_boardingStopMuid = [v28 muid];
    v29 = [v7 originStop];
    v30 = [v29 nameDisplayString];
    v31 = [v30 copy];
    boardingStopName = v6->_boardingStopName;
    v6->_boardingStopName = v31;

    v33 = [v7 departureTimeZone];
    boardingStopTimeZone = v6->_boardingStopTimeZone;
    v6->_boardingStopTimeZone = v33;

    v35 = [GEOLocation alloc];
    v36 = [v28 latLng];
    [v36 lat];
    v38 = v37;
    v39 = [v28 latLng];
    [v39 lng];
    v41 = [v35 initWithLatitude:v38 longitude:v40];
    boardingStopLocation = v6->_boardingStopLocation;
    v6->_boardingStopLocation = v41;

    v43 = [v5 nextAlightingStep];
    v44 = [v43 destinationStop];

    v45 = [v5 nextAlightingStep];
    v46 = [v45 destinationHall];

    v47 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v6->_referenceDate;
    v6->_referenceDate = v47;

    if (!(v44 | v46))
    {
      v53 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v6->_boardingStopMuid transitLine:v6->_selectedTransitLine referenceDate:v6->_referenceDate];
      stopsDataSource = v6->_stopsDataSource;
      v6->_stopsDataSource = v53;
LABEL_29:

      goto LABEL_30;
    }

    v63 = v5;
    v49 = [v5 composedRoute];
    stopsDataSource = [v49 getStationForHall:v46];

    v62 = [v44 muid];
    if (v46)
    {
      v51 = [v46 muid];
      if (stopsDataSource)
      {
LABEL_22:
        v52 = [stopsDataSource muid];
LABEL_28:
        v59 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v6->_boardingStopMuid alightStopMuid:v62 alightHallMuid:v51 alightStationMuid:v52 transitLine:v6->_selectedTransitLine referenceDate:v6->_referenceDate];
        v60 = v6->_stopsDataSource;
        v6->_stopsDataSource = v59;

        v5 = v63;
        goto LABEL_29;
      }
    }

    else
    {
      v51 = 0x7FFFFFFFFFFFFFFFLL;
      if (stopsDataSource)
      {
        goto LABEL_22;
      }
    }

    v52 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

LABEL_30:

  return v6;
}

- (TransitSchedulesViewController)initWithTransitMapItem:(id)a3 departureSequence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [v8 line];
    selectedTransitLine = v9->_selectedTransitLine;
    v9->_selectedTransitLine = v10;

    v9->_transitLineIdentifier = [(GEOTransitLine *)v9->_selectedTransitLine muid];
    v12 = [v7 _geoMapItem];
    v13 = [v12 transitStationIdentifier];
    v9->_boardingStopMuid = [v13 muid];

    v14 = [v7 _transitInfo];
    v15 = [v14 displayName];
    v16 = [v15 copy];
    boardingStopName = v9->_boardingStopName;
    v9->_boardingStopName = v16;

    v18 = [v7 timeZone];
    boardingStopTimeZone = v9->_boardingStopTimeZone;
    v9->_boardingStopTimeZone = v18;

    v9->_isRoutingScheduleCard = 0;
    objc_storeStrong(&v9->_boardingStopMapItem, a3);
    v20 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v9->_referenceDate;
    v9->_referenceDate = v20;

    objc_storeStrong(&v9->_scheduleWindowStartDate, v9->_referenceDate);
    v22 = [v8 departures];
    v23 = [v22 firstObject];

    if (v23 && ([v23 departureDate], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
    {
      v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 tripIdentifier]);
      selectedTripIdentifier = v9->_selectedTripIdentifier;
      v9->_selectedTripIdentifier = v28;
    }

    else
    {
      v25 = [TransitSchedulesDepartureDataProvider alloc];
      v35 = v8;
      v26 = [NSArray arrayWithObjects:&v35 count:1];
      v27 = [(TransitSchedulesDepartureDataProvider *)v25 initWithTransitMapItem:v7 selectedDepartureSequence:v8 departureSequences:v26 timeZone:v9->_boardingStopTimeZone initialScheduleDate:v9->_scheduleWindowStartDate];
      [(TransitSchedulesViewController *)v9 setDepartureDataProvider:v27];

      [(TransitSchedulesDepartureDataProvider *)v9->_departureDataProvider setRequestAllDirections:v9->_requestAllDirections];
      [(TransitSchedulesDepartureDataProvider *)v9->_departureDataProvider setDelegate:v9];
    }

    v30 = [v7 _transitAttribution];
    attribution = v9->_attribution;
    v9->_attribution = v30;

    v32 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v9->_boardingStopMuid transitLine:v9->_selectedTransitLine referenceDate:v9->_referenceDate];
    stopsDataSource = v9->_stopsDataSource;
    v9->_stopsDataSource = v32;
  }

  return v9;
}

- (TransitSchedulesViewController)initWithDepartureSequence:(id)a3 timeZone:(id)a4 scheduleWindowStartDate:(id)a5 includeAllDirections:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [v10 line];
    selectedTransitLine = v13->_selectedTransitLine;
    v13->_selectedTransitLine = v14;

    v13->_transitLineIdentifier = [(GEOTransitLine *)v13->_selectedTransitLine muid];
    v13->_boardingStopMuid = [v10 transitId];
    boardingStopName = v13->_boardingStopName;
    v13->_boardingStopName = 0;

    objc_storeStrong(&v13->_boardingStopTimeZone, a4);
    v13->_isRoutingScheduleCard = 0;
    v13->_requestAllDirections = a6;
    v17 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v13->_referenceDate;
    v13->_referenceDate = v17;

    v19 = v12;
    if (!v12)
    {
      v19 = v13->_referenceDate;
    }

    objc_storeStrong(&v13->_scheduleWindowStartDate, v19);
    v20 = [v10 departures];
    v21 = [v20 firstObject];

    if (v21)
    {
      v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 tripIdentifier]);
      selectedTripIdentifier = v13->_selectedTripIdentifier;
      v13->_selectedTripIdentifier = v22;
    }

    v24 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v13->_boardingStopMuid transitLine:v13->_selectedTransitLine referenceDate:v13->_referenceDate];
    stopsDataSource = v13->_stopsDataSource;
    v13->_stopsDataSource = v24;
  }

  return v13;
}

- (TransitSchedulesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = TransitSchedulesViewController;
  v4 = [(TransitSchedulesViewController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[GEOTransitVehicleUpdater alloc] initWithDelegate:v4];
    vehicleUpdater = v4->_vehicleUpdater;
    v4->_vehicleUpdater = v5;

    v7 = objc_alloc_init(TransitSchedulesLineOptionsProvider);
    lineOptionsProvider = v4->_lineOptionsProvider;
    v4->_lineOptionsProvider = v7;

    [(TransitSchedulesLineOptionsProvider *)v4->_lineOptionsProvider setDelegate:v4];
    v9 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v9 subscribe:v4];

    v14 = objc_opt_class();
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    storeSubscriptionTypes = v4->storeSubscriptionTypes;
    v4->storeSubscriptionTypes = v10;

    [(TransitSchedulesViewController *)v4 storeDidChange:&__NSArray0__struct];
  }

  return v4;
}

+ (id)validDeparturesInDepartureSequence:(id)a3 withReferenceDate:(id)a4
{
  v5 = a4;
  v6 = [a3 departures];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006C0950;
  v11[3] = &unk_101626318;
  v12 = v5;
  v7 = v5;
  v8 = [NSPredicate predicateWithBlock:v11];
  v9 = [v6 filteredArrayUsingPredicate:v8];

  return v9;
}

+ (BOOL)shouldShowScheduleForTransitMapItem:(id)a3 sequence:(id)a4
{
  v5 = a4;
  v6 = +[MKTransitItemReferenceDateUpdater referenceDate];
  v7 = [a1 validDeparturesInDepartureSequence:v5 withReferenceDate:v6];

  LOBYTE(v5) = [v7 count] != 0;
  return v5;
}

@end