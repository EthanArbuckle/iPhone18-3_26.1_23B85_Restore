@interface TransitSchedulesViewController
+ (BOOL)shouldShowScheduleForTransitMapItem:(id)item sequence:(id)sequence;
+ (id)validDeparturesInDepartureSequence:(id)sequence withReferenceDate:(id)date;
- (ActionCoordination)actionCoordinator;
- (BOOL)_shouldShowDepartureInfoSection;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)hasIncidents;
- (BOOL)isNetworkError:(id)error;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (TransitSchedulesDepartureViewProviding)departureCellProvider;
- (TransitSchedulesHeadsignViewProviding)headsignCellProvider;
- (TransitSchedulesViewController)initWithDepartureSequence:(id)sequence timeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions;
- (TransitSchedulesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TransitSchedulesViewController)initWithTransitMapItem:(id)item departureSequence:(id)sequence;
- (TransitSchedulesViewController)initWithTransitRouteStep:(id)step;
- (TransitSchedulesViewControllerDelegate)transitSchedulesDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)_collectionViewLayout;
- (id)_dedupeDepartureSequences:(id)sequences;
- (id)_dedupeDepartures:(id)departures;
- (id)_firstVisibleDeparture;
- (id)_headerViewForSectionType:(unint64_t)type;
- (id)_identifierForDeparture:(id)departure;
- (id)_startEndDatesForOperatingHoursTimeRanges:(id)ranges;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)fetchSelectedTransitLineItem;
- (id)ticketForTransitMapItemUpdater:(id)updater;
- (id)titleForStopsHeader;
- (id)traits;
- (int64_t)_numberOfDeparturesInSnapshot;
- (int64_t)_sectionIndexForSectionType:(unint64_t)type;
- (unint64_t)_departuresHeaderStyle;
- (unint64_t)_sectionTypeForSectionIndex:(unint64_t)index;
- (void)_addSection:(unint64_t)section toSnapshot:(id)snapshot;
- (void)_checkIfPinnedLine;
- (void)_clearSection:(unint64_t)section inSnapshot:(id)snapshot;
- (void)_clearVehicles;
- (void)_expandStopsSection:(id)section;
- (void)_fetchMapsSyncTransitLineItemWithCallback:(id)callback;
- (void)_rebuildStopsSection;
- (void)_removeSection:(unint64_t)section toSnapshot:(id)snapshot;
- (void)_startObservingDepartureProvider;
- (void)_stopObservingDepartureProvider;
- (void)_updateDeparturesHeaderTitles;
- (void)_updateDeparturesHeaderTitlesForHeaderView:(id)view;
- (void)_updateStopsSectionHeader;
- (void)_updateStopsSectionHeader:(id)header;
- (void)_updateVehicleUpdater;
- (void)changeDate;
- (void)changedDate:(id)date;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)departureCellProvider:(id)provider selectDeparture:(id)departure withIndex:(unint64_t)index;
- (void)departureDataProvider:(id)provider selectedDeparture:(id)departure withIndex:(unint64_t)index;
- (void)departureDataProvider:(id)provider selectedDepartureSequence:(id)sequence withIndex:(unint64_t)index;
- (void)departureDataProvider:(id)provider updatedDepartureSequences:(id)sequences;
- (void)departureDataProvider:(id)provider updatedDepartures:(id)departures;
- (void)fetchNewScheduleData;
- (void)handleDismissAction:(id)action;
- (void)headerViewTapped:(id)tapped;
- (void)loadSelectedTripDetails;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pinSelectedTransitLine;
- (void)processUpdatedDepartureSequencesFromMapItem:(id)item;
- (void)restoreInitialMapState;
- (void)selectDeparture;
- (void)selectDeparture:(id)departure;
- (void)selectDepartureSequence:(id)sequence;
- (void)setBoardingStationMapItem:(id)item;
- (void)setDepartureDataProvider:(id)provider;
- (void)setIncidents:(id)incidents;
- (void)setPinnedTransitLine:(BOOL)line;
- (void)setScheduleWindowStartDate:(id)date;
- (void)setSelectedDeparture:(id)departure;
- (void)setSelectedTransitLine:(id)line;
- (void)setSelectedTripRoute:(id)route;
- (void)setSelectedTripVehicleNumber:(id)number;
- (void)showDirectionsToSelectedTransitStop;
- (void)showLineInfo;
- (void)showRouteOnMap;
- (void)timingViewController:(id)controller didPickTiming:(id)timing;
- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date;
- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error;
- (void)transitVehicleUpdater:(id)updater didFailUpdateForTripIDs:(id)ds withError:(id)error;
- (void)transitVehicleUpdater:(id)updater didTimeoutUpdateForTripIDs:(id)ds;
- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds;
- (void)unpinSelectedTransitLine;
- (void)updateDeparturesSectionForNetworkState:(unint64_t)state;
- (void)updateStopsSectionForNetworkState:(unint64_t)state;
- (void)updatedDepartureInfoProvider:(id)provider;
- (void)viewDidLoad;
- (void)viewLineOnMap;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (id)_identifierForDeparture:(id)departure
{
  departureCopy = departure;
  if ([departureCopy liveStatus] - 1 > 1)
  {
    [departureCopy scheduledDepartureDate];
  }

  else
  {
    [departureCopy liveDepartureDate];
  }
  v4 = ;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100798DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      tripIdentifier = [departureCopy tripIdentifier];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Departure did not have a departure date: tripId %llu", buf, 0xCu);
    }

    v5 = @"NA";
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu_%@", [departureCopy tripIdentifier], v5);

  return v7;
}

- (id)_dedupeDepartures:(id)departures
{
  departuresCopy = departures;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = departuresCopy;
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

- (id)_dedupeDepartureSequences:(id)sequences
{
  sequencesCopy = sequences;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = sequencesCopy;
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
        uniqueId = [v12 uniqueId];
        if ([v4 containsObject:uniqueId])
        {
          v14 = sub_100798DBC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = uniqueId;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Duplicate departure sequence identifier found: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [v5 addObject:v12];
          [v4 addObject:uniqueId];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)updatedDepartureInfoProvider:(id)provider
{
  if (![(TransitSchedulesViewController *)self _shouldShowDepartureInfoSection])
  {
    return;
  }

  identifiers = [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider identifiers];
  if ([identifiers count])
  {
    p_dataSource = &self->_dataSource;
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _clearSection:1 inSnapshot:snapshot];
    v6 = [NSNumber numberWithUnsignedInteger:1];
    [snapshot appendItemsWithIdentifiers:identifiers intoSectionWithIdentifier:v6];

LABEL_7:
    [(UICollectionViewDiffableDataSource *)*p_dataSource applySnapshot:snapshot animatingDifferences:1];

    goto LABEL_8;
  }

  if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:1]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    p_dataSource = &self->_dataSource;
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:1 toSnapshot:snapshot];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_fetchMapsSyncTransitLineItemWithCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(MSCollectionTransitItemRequest);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1006B7C48;
    v6[3] = &unk_10165E308;
    objc_copyWeak(&v8, &location);
    v7 = callbackCopy;
    [v5 fetchWithCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)unpinSelectedTransitLine
{
  [(TransitSchedulesViewController *)self _fetchMapsSyncTransitLineItemWithCallback:&stru_1016264B8];
  currentUITargetForAnalytics = [(TransitSchedulesViewController *)self currentUITargetForAnalytics];

  [GEOAPPortal captureUserAction:252 target:currentUITargetForAnalytics value:0];
}

- (void)pinSelectedTransitLine
{
  v3 = objc_alloc_init(MSCollectionTransitItem);
  v4 = [[MSPTransitStorageLine alloc] initWithLine:self->_selectedTransitLine];
  data = [v4 data];
  [v3 setTransitLineStorage:data];

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

- (void)setPinnedTransitLine:(BOOL)line
{
  if (self->_pinnedTransitLine != line)
  {
    self->_pinnedTransitLine = line;
    if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:7]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
      identifiers = [(TransitSchedulesLineOptionsProvider *)self->_lineOptionsProvider identifiers];
      [snapshot reloadItemsWithIdentifiers:identifiers];
      [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
    }
  }
}

- (void)showLineInfo
{
  if (self->_selectedTransitLineItem)
  {
    transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];

    if (transitSchedulesDelegate)
    {
      transitSchedulesDelegate2 = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
      [transitSchedulesDelegate2 transitSchedulesViewController:self wantsToShowInfoForLine:self->_selectedTransitLineItem];
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
  actionCoordinator = [(TransitSchedulesViewController *)self actionCoordinator];
  [actionCoordinator viewController:self doDirectionItem:v11 withUserInfo:v12];

  [GEOAPPortal captureUserAction:6003 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
}

- (void)viewLineOnMap
{
  selectedTripRoute = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (selectedTripRoute)
  {
    selectedTripRoute2 = [(TransitSchedulesViewController *)self selectedTripRoute];
    [(GEOLocation *)self->_boardingStopLocation coordinate];
    v5 = [selectedTripRoute2 closestPointOnRoute:?];

    transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
    v9 = [transitSchedulesDelegate mapCameraControllerForTransitSchedulesViewController:self];

    selectedTripRoute3 = [(TransitSchedulesViewController *)self selectedTripRoute];
    [v9 displayTransitRoute:selectedTripRoute3 boardingStopCoord:v5 boardingStopIndex:self->_boardingStopIndex animated:1 completion:0];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:1];

    [GEOAPPortal captureUserAction:7018 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  }
}

- (void)selectDeparture:(id)departure
{
  departureDataProvider = self->_departureDataProvider;
  tripIdentifier = [departure tripIdentifier];

  [(TransitSchedulesDepartureDataProvider *)departureDataProvider selectDepartureWithTripIdentifier:tripIdentifier];
}

- (void)selectDepartureSequence:(id)sequence
{
  departureDataProvider = self->_departureDataProvider;
  sequenceCopy = sequence;
  [(TransitSchedulesDepartureDataProvider *)departureDataProvider selectDepartureSequence:sequenceCopy];
  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:sequenceCopy];
}

- (void)timingViewController:(id)controller didPickTiming:(id)timing
{
  departureDate = [timing departureDate];
  v7 = departureDate;
  if (departureDate)
  {
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:departureDate];
  }

  else
  {
    v6 = objc_opt_new();
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:v6];
  }
}

- (void)_updateDeparturesHeaderTitlesForHeaderView:(id)view
{
  viewCopy = view;
  v5 = +[NSBundle mainBundle];
  v22 = [v5 localizedStringForKey:@"[Transit Schedules] Departures" value:@"localized string not found" table:0];

  _firstVisibleDeparture = [(TransitSchedulesViewController *)self _firstVisibleDeparture];
  if (sub_10000FA08(self) != 5)
  {
    if (_firstVisibleDeparture)
    {
      [_firstVisibleDeparture departureDate];
    }

    else
    {
      [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
    }
    v7 = ;
    referenceDate = [(TransitSchedulesViewController *)self referenceDate];
    [v7 timeIntervalSinceDate:referenceDate];
    v10 = v9;

    GEOTransitDepartureNearFuturePeriod();
    if (v10 <= v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Transit Schedules] Upcoming Departures" value:@"localized string not found" table:0];

      v22 = v13;
    }
  }

  _departuresHeaderStyle = [(TransitSchedulesViewController *)self _departuresHeaderStyle];
  if (_departuresHeaderStyle != 2)
  {
    if (_departuresHeaderStyle == 1)
    {
      v15 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider frequencyStringForDeparture:_firstVisibleDeparture];
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
  scheduleWindowStartDate = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
  [v16 timeIntervalSinceDate:scheduleWindowStartDate];

  if (GEOTransitDepartureIsNearFutureDepartureTimeInterval())
  {
    v18 = +[NSBundle mainBundle];
    v15 = [v18 localizedStringForKey:@"[Transit Schedules] Now" value:@"localized string not found" table:0];
  }

  else
  {
    scheduleWindowStartDate2 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];

    if (!scheduleWindowStartDate2)
    {
      goto LABEL_12;
    }

    timeZone = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider timeZone];
    scheduleWindowStartDate3 = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider scheduleWindowStartDate];
    v15 = [NSDate _maps_dateDescriptionShort:0 timeZone:timeZone bookingDate:scheduleWindowStartDate3];
  }

LABEL_13:
  [viewCopy setTitle:v22];
  [viewCopy setSecondaryText:v15];
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
    collectionView = [(TransitSchedulesViewController *)self collectionView];
    window = [collectionView window];

    if (window)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
      v6 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        departureDataProvider = 0;
        v9 = *v20;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(visibleCells);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (departureDataProvider)
              {
                [v11 frame];
                v13 = v12;
                [departureDataProvider frame];
                if (v13 < v14)
                {
                  v15 = v11;

                  departureDataProvider = v15;
                }
              }

              else
              {
                departureDataProvider = v11;
              }
            }
          }

          v7 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);

        if (departureDataProvider)
        {
          departure = [departureDataProvider departure];
          goto LABEL_19;
        }
      }

      else
      {
      }
    }
  }

  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  departure = [departureDataProvider selectedDeparture];
LABEL_19:
  v17 = departure;

  return v17;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = sub_10000FA08(self);
  v10 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  v11 = v10;
  if (v9 == 5 && v10 == 3 && [(TransitSchedulesViewController *)self _departuresHeaderStyle]== 2)
  {
    v12 = +[(TransitStationLineScheduleSectionHeaderView *)TransitStationDatePickerHeaderView];
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v12 forIndexPath:pathCopy];

    datePicker = [v13 datePicker];
    departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
    timeZone = [departureDataProvider timeZone];
    [datePicker setTimeZone:timeZone];

    departureDataProvider2 = [(TransitSchedulesViewController *)self departureDataProvider];
    scheduleWindowStartDate = [departureDataProvider2 scheduleWindowStartDate];
    [datePicker setMinimumDate:scheduleWindowStartDate];

    departureDataProvider3 = [(TransitSchedulesViewController *)self departureDataProvider];
    scheduleWindowStartDate2 = [departureDataProvider3 scheduleWindowStartDate];
    [datePicker setDate:scheduleWindowStartDate2];

    [datePicker setDatePickerMode:2];
    [datePicker addTarget:self action:"changedDate:" forControlEvents:4096];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"[Transit Schedules] macOS Departures Title" value:@"localized string not found" table:0];
    [v13 setTitle:v22];

    goto LABEL_20;
  }

  v23 = +[TransitStationLineScheduleSectionHeaderView identifier];
  datePicker = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v23 forIndexPath:pathCopy];

  v13 = 0;
  if (v11 > 4)
  {
    if ((v11 - 5) < 2)
    {
      titleForStopsHeader = [(TransitSchedulesViewController *)self titleForStopsHeader];
      [datePicker setBottomHairlineHidden:1];
      [datePicker setTitle:titleForStopsHeader];
      [(TransitSchedulesViewController *)self _updateStopsSectionHeader:datePicker];
    }

    else
    {
      if (v11 != 7)
      {
        if (v11 != 8)
        {
          goto LABEL_20;
        }

        [datePicker setBottomHairlineHidden:v9 != 5];
        goto LABEL_14;
      }

      v26 = +[NSBundle mainBundle];
      titleForStopsHeader = [v26 localizedStringForKey:@"[Transit Schedules] Line Options" value:@"localized string not found" table:0];

      [datePicker setTitle:titleForStopsHeader];
      [datePicker setBottomHairlineHidden:1];
    }

    goto LABEL_19;
  }

  if ((v11 - 2) < 2)
  {
    if ([(TransitSchedulesViewController *)self _departuresHeaderStyle]== 2)
    {
      [datePicker addButtonWithTarget:self action:"changeDate"];
    }

    [(TransitSchedulesViewController *)self _updateDeparturesHeaderTitlesForHeaderView:datePicker];
LABEL_14:
    datePicker = datePicker;
    v13 = datePicker;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v25 = +[NSBundle mainBundle];
    titleForStopsHeader = [v25 localizedStringForKey:@"[Transit Schedules] Departure Info" value:@"localized string not found" table:0];

    [datePicker setTitle:titleForStopsHeader];
LABEL_19:
    datePicker = datePicker;

    v13 = datePicker;
  }

LABEL_20:

  return v13;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  v11 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  v12 = 0;
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransitScheduleNetworkActivityTableViewCellIdentifier" forIndexPath:pathCopy];
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

      departureCellProvider = [(TransitSchedulesViewController *)self departureCellProvider];
      collectionView = self->_collectionView;
      referenceDate = [(TransitSchedulesViewController *)self referenceDate];
      v12 = [departureCellProvider collectionView:collectionView departureCellWithIdentifier:identifierCopy indexPath:pathCopy referenceDate:referenceDate dataProvider:self->_departureDataProvider];

LABEL_22:
      goto LABEL_31;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_31;
      }

      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransitLineDepartureInfoCellIdentifier" forIndexPath:pathCopy];
      v13 = 296;
      goto LABEL_24;
    }

    departureCellProvider = [(TransitSchedulesViewController *)self headsignCellProvider];
    v20 = [departureCellProvider collectionView:self->_collectionView headsignCellWithIdentifier:identifierCopy indexPath:pathCopy dataProvider:self->_departureDataProvider];
LABEL_21:
    v12 = v20;
    goto LABEL_22;
  }

  if (v11 <= 5)
  {
    if (v11 != 4)
    {
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransitScheduleNetworkActivityTableViewCellIdentifier" forIndexPath:pathCopy];
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

    v23 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"IncidentsCellIdentifier" forIndexPath:pathCopy];
    objc_storeWeak(&self->_transitIncidentCell, v23);

    departureCellProvider = [(TransitSchedulesViewController *)self referenceDate];
    WeakRetained = objc_loadWeakRetained(&self->_transitIncidentCell);
    incidents = [(TransitSchedulesViewController *)self incidents];
    [WeakRetained configureWithIncidents:incidents referenceDate:departureCellProvider];

    v20 = objc_loadWeakRetained(&self->_transitIncidentCell);
    goto LABEL_21;
  }

  switch(v11)
  {
    case 6:
      v12 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource collectionView:viewCopy cellForItemAtIndexPath:pathCopy itemIdentifier:identifierCopy];
      break;
    case 7:
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransitLineOptionsCellIdentifier" forIndexPath:pathCopy];
      v13 = 312;
LABEL_24:
      [*(&self->super.super.super.super.super.super.isa + v13) configureCell:v12 forIndexPath:pathCopy withIdentifier:identifierCopy];
      break;
    case 8:
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransitAttributionCellIdentifier" forIndexPath:pathCopy];
      [v12 setAttribution:self->_attribution];
      break;
  }

LABEL_31:

  return v12;
}

- (int64_t)_sectionIndexForSectionType:(unint64_t)type
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
  v6[5] = type;
  [(NSArray *)sectionIdentifiers enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)_sectionTypeForSectionIndex:(unint64_t)index
{
  if ([(NSArray *)self->_sectionIdentifiers count]< index)
  {
    return 9;
  }

  v6 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_clearVehicles
{
  v3 = +[NSSet set];
  vehicleUpdater = [(TransitSchedulesViewController *)self vehicleUpdater];
  [vehicleUpdater setTripIDs:v3];

  [(TransitSchedulesViewController *)self setLastReceivedVehiclePositions:0];
  transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [transitSchedulesDelegate transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
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
  vehicleUpdater = [(TransitSchedulesViewController *)self vehicleUpdater];
  [vehicleUpdater setTripIDs:v4];
}

- (void)transitVehicleUpdater:(id)updater didFailUpdateForTripIDs:(id)ds withError:(id)error
{
  dsCopy = ds;
  errorCopy = error;
  v8 = sub_100798DBC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = dsCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Vehicle position update error for trip ids %@. Error: %@", &v9, 0x16u);
  }
}

- (void)transitVehicleUpdater:(id)updater didTimeoutUpdateForTripIDs:(id)ds
{
  dsCopy = ds;
  v5 = sub_100798DBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Vehicle position update timeout for trip ids %@", &v6, 0xCu);
  }
}

- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds
{
  positionsCopy = positions;
  if ([positionsCopy count] == 1)
  {
    anyObject = [positionsCopy anyObject];
    v8 = sub_100798DBC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
      timestamp = [anyObject timestamp];
      v13 = 134218242;
      v14 = selectedTripIdentifier;
      v15 = 2112;
      v16 = timestamp;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received vehicle position update for trip %llu with timestamp %@", &v13, 0x16u);
    }
  }

  allObjects = [positionsCopy allObjects];
  [(TransitSchedulesViewController *)self setLastReceivedVehiclePositions:allObjects];

  transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [transitSchedulesDelegate transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
}

- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error
{
  itemCopy = item;
  errorCopy = error;
  if (errorCopy)
  {
    v9 = sub_100798DBC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v27 = 134218242;
      selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "The service encountered an error while updating trip id %llu. Error %@", &v27, 0x16u);
    }
  }

  else
  {
    _transitInfo = [itemCopy _transitInfo];
    departureSequences = [_transitInfo departureSequences];
    v12 = [departureSequences count];

    if (v12)
    {
      [(TransitSchedulesViewController *)self processUpdatedDepartureSequencesFromMapItem:itemCopy];
    }

    else
    {
      v13 = sub_100798DBC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v27 = 134217984;
        selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "The service failed to return any departures for the requested trip id %llu while updating", &v27, 0xCu);
      }
    }

    _transitInfo2 = [itemCopy _transitInfo];
    transitTripStops = [_transitInfo2 transitTripStops];
    v9 = [transitTripStops copy];

    if ([v9 count])
    {
      [(TransitSchedulesViewController *)self updateStopsSectionForNetworkState:1];
      stopIdentifiers = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
      v17 = [stopIdentifiers count];

      [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource buildTransitTripStopItemsWithTransitStops:v9 boardingStopDepartureDate:self->_selectedTripDepartureDate maintainingCollapsedState:1];
      stopIdentifiers2 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
      v19 = [stopIdentifiers2 count];

      if (v17 == v19)
      {
        v20 = sub_100798DBC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          stopIdentifiers3 = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
          v22 = [stopIdentifiers3 count];
          v23 = [v9 count];
          selectedTripIdentifier2 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
          v27 = 134218496;
          selectedTripIdentifier = v22;
          v29 = 2048;
          v30 = v23;
          v31 = 2048;
          v32 = selectedTripIdentifier2;
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
        selectedTripIdentifier3 = [(TransitSchedulesViewController *)self selectedTripIdentifier];
        v27 = 134217984;
        selectedTripIdentifier = selectedTripIdentifier3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "The service failed to return any transit stops when updating for the requested trip id %llu", &v27, 0xCu);
      }
    }
  }
}

- (id)ticketForTransitMapItemUpdater:(id)updater
{
  if ([(TransitSchedulesViewController *)self hasSelectedTrip])
  {
    selectedTransitLine = [(TransitSchedulesViewController *)self selectedTransitLine];
    muid = [selectedTransitLine muid];

    v6 = +[MKMapService sharedService];
    boardingStopMuid = self->_boardingStopMuid;
    selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
    requestAllDirections = self->_requestAllDirections;
    routingParameters = self->_routingParameters;
    traits = [(TransitSchedulesViewController *)self traits];
    v12 = [v6 ticketForUpdatedTransitScheduleDetailsAtStation:boardingStopMuid line:muid referenceTripID:selectedTripIdentifier includeAllDirectionNames:requestAllDirections routingParameters:routingParameters traits:traits];
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

- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date
{
  dateCopy = date;
  [(TransitSchedulesViewController *)self setReferenceDate:dateCopy];
  [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setReferenceDate:dateCopy dataSource:self->_dataSource];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout - 3 < 3)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v6 = v5;

    return v6;
  }

  if (layout != 2)
  {
    v6 = -1.0;
    if (layout == 1)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
      v9 = v8;
      [(ContaineeViewController *)self headerHeight];
      v6 = v10 + v9;
    }

    return v6;
  }

  sub_100068BB8();
  return result;
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  [GEOAPPortal captureUserAction:34 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  v5.receiver = self;
  v5.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v5 handleDismissAction:actionCopy];
}

- (void)departureCellProvider:(id)provider selectDeparture:(id)departure withIndex:(unint64_t)index
{
  departureCopy = departure;
  v8 = [(TransitSchedulesViewController *)self _sectionIndexForSectionType:3];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    collectionView = [(TransitSchedulesViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

    v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(indexPathsForSelectedItems);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 section] == v9)
          {
            collectionView2 = [(TransitSchedulesViewController *)self collectionView];
            [collectionView2 deselectItemAtIndexPath:v16 animated:0];
          }
        }

        v13 = [indexPathsForSelectedItems countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v18 = [NSIndexPath indexPathForRow:index inSection:v9];
    collectionView3 = [(TransitSchedulesViewController *)self collectionView];
    [collectionView3 selectItemAtIndexPath:v18 animated:0 scrollPosition:0];

    [(TransitSchedulesViewController *)self setSelectedDeparture:departureCopy];
  }
}

- (void)setSelectedDeparture:(id)departure
{
  departureCopy = departure;
  tripIdentifier = [departureCopy tripIdentifier];
  if (tripIdentifier == [(TransitSchedulesViewController *)self selectedTripIdentifier])
  {
    scheduledDepartureDate = [departureCopy scheduledDepartureDate];
    v6 = scheduledDepartureDate != self->_selectedTripDepartureDate;
  }

  else
  {
    v6 = 1;
  }

  v7 = ![(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource hasStops]&& [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState]!= 2;
  v8 = departureCopy;
  if (v6 || v7)
  {
    hasSelectedTrip = [(TransitSchedulesViewController *)self hasSelectedTrip];
    vehicleIdentifier = [departureCopy vehicleIdentifier];
    [(TransitSchedulesViewController *)self setSelectedTripVehicleNumber:vehicleIdentifier];

    v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [departureCopy tripIdentifier]);
    selectedTripIdentifier = self->_selectedTripIdentifier;
    self->_selectedTripIdentifier = v11;

    scheduledDepartureDate2 = [departureCopy scheduledDepartureDate];
    selectedTripDepartureDate = self->_selectedTripDepartureDate;
    self->_selectedTripDepartureDate = scheduledDepartureDate2;

    [(TransitSchedulesViewController *)self _clearVehicles];
    if (hasSelectedTrip)
    {
      [(TransitSchedulesViewController *)self loadSelectedTripDetails];
    }

    else
    {
      [(TransitSchedulesViewController *)self fetchNewScheduleData];
    }

    [GEOAPPortal captureUserAction:3074 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
    v8 = departureCopy;
  }
}

- (void)departureDataProvider:(id)provider selectedDeparture:(id)departure withIndex:(unint64_t)index
{
  departureCopy = departure;
  v9 = [NSIndexPath indexPathForRow:index inSection:[(TransitSchedulesViewController *)self _sectionIndexForSectionType:3]];
  departureCellProvider = [(TransitSchedulesViewController *)self departureCellProvider];
  [departureCellProvider collectionView:self->_collectionView selectedDeparture:departureCopy atIndexPath:v9];

  [(TransitSchedulesViewController *)self setSelectedDeparture:departureCopy];
}

- (void)departureDataProvider:(id)provider updatedDepartureSequences:(id)sequences
{
  sequencesCopy = sequences;
  headsignCellProvider = [(TransitSchedulesViewController *)self headsignCellProvider];
  v7 = [headsignCellProvider identifiersForDepartureSequences:sequencesCopy];

  _hasHeadsignSection = [(TransitSchedulesViewController *)self _hasHeadsignSection];
  v9 = [sequencesCopy count];

  if (v9 >= 2 && [v7 count])
  {
    if ((_hasHeadsignSection & 1) == 0)
    {
      snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
      [(TransitSchedulesViewController *)self _clearSection:0 inSnapshot:snapshot];
      [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:snapshot];
    }

    snapshot2 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _clearSection:0 inSnapshot:snapshot2];
    [snapshot2 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_1016E6848];
    indexForSelectedDepartureSequence = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider indexForSelectedDepartureSequence];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006BA720;
    v14[3] = &unk_101661650;
    v14[4] = self;
    v14[5] = indexForSelectedDepartureSequence;
    dispatch_async(&_dispatch_main_q, v14);
    goto LABEL_8;
  }

  if (_hasHeadsignSection)
  {
    snapshot2 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:0 toSnapshot:snapshot2];
LABEL_8:
    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot2 animatingDifferences:1];
  }

  selectedDepartureSequence = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider selectedDepartureSequence];
  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:selectedDepartureSequence];
}

- (BOOL)_shouldShowDepartureInfoSection
{
  selectedTransitLine = [(TransitSchedulesViewController *)self selectedTransitLine];
  if ([selectedTransitLine departureTimeDisplayStyle] == 3)
  {
    v4 = 1;
  }

  else
  {
    departures = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider departures];
    v4 = [departures count] == 0;
  }

  return v4;
}

- (void)departureDataProvider:(id)provider selectedDepartureSequence:(id)sequence withIndex:(unint64_t)index
{
  sequenceCopy = sequence;
  v7 = [NSIndexPath indexPathForRow:index inSection:[(TransitSchedulesViewController *)self _sectionIndexForSectionType:0]];
  headsignCellProvider = [(TransitSchedulesViewController *)self headsignCellProvider];
  [headsignCellProvider collectionView:self->_collectionView selectedHeadsignForDepartureSequence:sequenceCopy atIndexPath:v7];

  displayName = [sequenceCopy displayName];
  v10 = [displayName length];

  if (v10)
  {
    displayName2 = [sequenceCopy displayName];
    headerTitleView = [(TransitSchedulesViewController *)self headerTitleView];
    [headerTitleView setSubtitle:displayName2];
  }
}

- (void)departureDataProvider:(id)provider updatedDepartures:(id)departures
{
  selfCopy = self;
  v5 = [(TransitSchedulesViewController *)self _dedupeDepartures:departures];
  snapshot = [(UICollectionViewDiffableDataSource *)selfCopy->_dataSource snapshot];
  departureCellProvider = [(TransitSchedulesViewController *)selfCopy departureCellProvider];
  v8 = [departureCellProvider identifiersForDepartures:v5];

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
          v29 = snapshot;
          v30 = selfCopy;
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

              selfCopy = v30;
              v5 = v31;
              snapshot = v29;
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

    [(TransitSchedulesViewController *)selfCopy _clearSection:3 inSnapshot:snapshot];
    [snapshot appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:&off_1016E67E8];
    [snapshot reloadItemsWithIdentifiers:v8];
  }

  else
  {
    [(TransitSchedulesViewController *)selfCopy _removeSection:3 toSnapshot:snapshot];
  }

  [(UICollectionViewDiffableDataSource *)selfCopy->_dataSource applySnapshot:snapshot animatingDifferences:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006BAD3C;
  block[3] = &unk_101661B18;
  block[4] = selfCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeSection:(unint64_t)section toSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([(TransitSchedulesViewController *)self _sectionIndexForSectionType:section]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSNumber numberWithUnsignedInteger:section];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [snapshotCopy deleteSectionsWithIdentifiers:v8];

    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    sectionIdentifiers = self->_sectionIdentifiers;
    self->_sectionIdentifiers = sectionIdentifiers;
  }
}

- (void)_clearSection:(unint64_t)section inSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v7 = [NSNumber numberWithUnsignedInteger:section];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [snapshotCopy deleteSectionsWithIdentifiers:v8];

  [(TransitSchedulesViewController *)self _addSection:section toSnapshot:snapshotCopy];
}

- (void)_addSection:(unint64_t)section toSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sectionIdentifiers = [snapshotCopy sectionIdentifiers];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006BB0E4;
  v13[3] = &unk_101626408;
  v15 = &v17;
  sectionCopy = section;
  v8 = snapshotCopy;
  v14 = v8;
  [sectionIdentifiers enumerateObjectsUsingBlock:v13];
  if ((v18[3] & 1) == 0)
  {
    v9 = [NSNumber numberWithUnsignedInteger:section];
    v21 = v9;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    [v8 appendSectionsWithIdentifiers:v10];
  }

  sectionIdentifiers2 = [v8 sectionIdentifiers];
  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = sectionIdentifiers2;

  _Block_object_dispose(&v17, 8);
}

- (void)_expandStopsSection:(id)section
{
  [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource expandTransitTripStops];
  [(TransitSchedulesViewController *)self _rebuildStopsSection];
  [(TransitSchedulesViewController *)self _updateStopsSectionHeader];
  currentUITargetForAnalytics = [(TransitSchedulesViewController *)self currentUITargetForAnalytics];

  [GEOAPPortal captureUserAction:9040 target:currentUITargetForAnalytics value:0];
}

- (void)_updateStopsSectionHeader:(id)header
{
  headerCopy = header;
  if ([(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource canShowMoreStops])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Transit Schedules] More" value:@"localized string not found" table:0];

    [headerCopy addButtonWithText:v5 buttonTarget:self buttonAction:"_expandStopsSection:"];
  }

  else
  {
    [headerCopy removeSecondaryText];
  }
}

- (void)_updateStopsSectionHeader
{
  v3 = [(TransitSchedulesViewController *)self _headerViewForSectionType:6];
  [(TransitSchedulesViewController *)self _updateStopsSectionHeader:v3];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v5 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [path section]);
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[TransitSchedulesViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
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
          v27 = [(TransitSchedulesViewController *)self collectionView:viewCopy cellForItemAtIndexPath:pathCopy itemIdentifier:@"IncidentsCellIdentifier"];
        }

        firstObject = v27;

        actionCoordinator = [(TransitSchedulesViewController *)self actionCoordinator];
        incidents = [(TransitSchedulesViewController *)self incidents];
        [actionCoordinator viewController:self openTransitIncidents:incidents fromView:firstObject withUserInfo:0];
        v18 = 7008;
        break;
      case 7:
        v28 = &OBJC_IVAR___TransitSchedulesViewController__lineOptionsProvider;
LABEL_16:
        v29 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
        [*(&self->super.super.super.super.super.super.isa + *v28) selectedCellAtIndexPath:pathCopy withIdentifier:v29];

        goto LABEL_17;
      case 8:
        v11 = +[GEOResourceManifestManager modernManager];
        activeTileGroup = [v11 activeTileGroup];
        attributions = [activeTileGroup attributions];
        firstObject = [attributions firstObject];

        actionCoordinator = [firstObject url];
        if (!actionCoordinator)
        {
          v18 = 7021;
          goto LABEL_21;
        }

        incidents = [NSURL URLWithString:actionCoordinator];
        transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
        [transitSchedulesDelegate transitSchedulesViewController:self wantsToOpenURL:incidents];

        v18 = 7021;
        break;
      default:
LABEL_17:
        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:pathCopy animated:1];
        goto LABEL_23;
    }

LABEL_21:
    [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:pathCopy animated:1];
    v24 = 0;
    goto LABEL_22;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 3)
      {
        v8 = [pathCopy row];
        departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
        v10 = [departureDataProvider selectDepartureAtIndex:v8];

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v28 = &OBJC_IVAR___TransitSchedulesViewController__departureInfoProvider;
    goto LABEL_16;
  }

  v19 = [pathCopy row];
  departureDataProvider2 = [(TransitSchedulesViewController *)self departureDataProvider];
  [departureDataProvider2 selectDepartureSequenceAtIndex:v19];

  departureDataProvider3 = [(TransitSchedulesViewController *)self departureDataProvider];
  selectedDepartureSequence = [departureDataProvider3 selectedDepartureSequence];
  displayName = [selectedDepartureSequence displayName];

  v24 = [NSString stringWithFormat:@"%lu, %@", v19, displayName];

  v18 = 49;
LABEL_22:
  [GEOAPPortal captureUserAction:v18 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:v24];

LABEL_23:
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (void)restoreInitialMapState
{
  delegate = [(ControlContaineeViewController *)self delegate];
  if ([delegate displayedViewMode] != 3)
  {
LABEL_8:

    return;
  }

  delegate2 = [(ControlContaineeViewController *)self delegate];
  mapApplicationState = [delegate2 mapApplicationState];

  if (mapApplicationState == 7)
  {
    initialViewMode = self->_initialViewMode;
    delegate3 = [(ControlContaineeViewController *)self delegate];
    displayedViewMode = [delegate3 displayedViewMode];

    if (initialViewMode != displayedViewMode)
    {
      delegate4 = [(ControlContaineeViewController *)self delegate];
      [delegate4 updateViewMode:self->_initialViewMode animated:1];
    }

    initialMapApplicationState = self->_initialMapApplicationState;
    delegate5 = [(ControlContaineeViewController *)self delegate];
    mapApplicationState2 = [delegate5 mapApplicationState];

    if (initialMapApplicationState != mapApplicationState2)
    {
      delegate = [(ControlContaineeViewController *)self delegate];
      [delegate updateMapApplicationState:self->_initialMapApplicationState];
      goto LABEL_8;
    }
  }
}

- (int64_t)_numberOfDeparturesInSnapshot
{
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v4 = [snapshot indexOfSectionIdentifier:&off_1016E67E8];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  snapshot2 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v7 = [snapshot2 numberOfItemsInSection:&off_1016E67E8];

  return v7;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selectedTripRoute = [(TransitSchedulesViewController *)self selectedTripRoute];
  if (selectedTripRoute)
  {
    selectedTripRoute2 = [(TransitSchedulesViewController *)self selectedTripRoute];
    v10 = selectedTripRoute2;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [configurationCopy setRoutes:v7];
  }

  else
  {
    [configurationCopy setRoutes:0];
  }

  lastReceivedVehiclePositions = [(TransitSchedulesViewController *)self lastReceivedVehiclePositions];
  [configurationCopy setTransitVehiclePositions:lastReceivedVehiclePositions];

  return 1;
}

- (void)showRouteOnMap
{
  selectedTripRoute = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (selectedTripRoute)
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    displayedViewMode = [delegate displayedViewMode];

    if (displayedViewMode != 3)
    {
      delegate2 = [(ControlContaineeViewController *)self delegate];
      [delegate2 updateViewMode:3 animated:1];
    }

    delegate3 = [(ControlContaineeViewController *)self delegate];
    mapApplicationState = [delegate3 mapApplicationState];

    if (mapApplicationState != 7)
    {
      delegate4 = [(ControlContaineeViewController *)self delegate];
      [delegate4 updateMapApplicationState:7];
    }
  }

  transitSchedulesDelegate = [(TransitSchedulesViewController *)self transitSchedulesDelegate];
  [transitSchedulesDelegate transitSchedulesViewControllerWantsToUpdateRouteAnnotations:self];
}

- (void)changeDate
{
  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  timeZone = [departureDataProvider timeZone];

  departureDataProvider2 = [(TransitSchedulesViewController *)self departureDataProvider];
  scheduleWindowStartDate = [departureDataProvider2 scheduleWindowStartDate];

  v6 = [RoutePlanningTimingViewController alloc];
  v7 = [RoutePlanningTiming timingWithDepartureDate:scheduleWindowStartDate departureTimeZone:timeZone arrivalTimeZone:0];
  v8 = [(RoutePlanningTimingViewController *)v6 initWithCurrentTiming:v7 shouldShowArriveBy:0 pickerDelegate:self];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController presentViewController:v8 animated:1 completion:0];

  [GEOAPPortal captureUserAction:7015 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
}

- (void)changedDate:(id)date
{
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [dateCopy date];
    [(TransitSchedulesViewController *)self setScheduleWindowStartDate:date];

    [GEOAPPortal captureUserAction:7015 target:[(TransitSchedulesViewController *)self currentUITargetForAnalytics] value:0];
  }
}

- (void)setScheduleWindowStartDate:(id)date
{
  dateCopy = date;
  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  [departureDataProvider setScheduleWindowStartDate:dateCopy];

  [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDate:dateCopy];
  scheduleWindowStartDate = self->_scheduleWindowStartDate;
  self->_scheduleWindowStartDate = dateCopy;
}

- (void)setSelectedTripRoute:(id)route
{
  routeCopy = route;
  if (([(GEOComposedRoute *)self->_selectedTripRoute isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedTripRoute, route);
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
  selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
  traits = [(TransitSchedulesViewController *)self traits];
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForTransitTripDetailsAtStation:boardingStopMuid line:transitLineIdentifier referenceTripID:selectedTripIdentifier includeAllDirectionNames:self->_requestAllDirections routingParameters:self->_routingParameters traits:traits];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BBFE4;
  v9[3] = &unk_1016263E0;
  objc_copyWeak(v10, &location);
  v10[1] = boardingStopMuid;
  v10[2] = transitLineIdentifier;
  v10[3] = selectedTripIdentifier;
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
      departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
      [departureDataProvider selectNextIncomingDeparture];
    }
  }
}

- (void)processUpdatedDepartureSequencesFromMapItem:(id)item
{
  itemCopy = item;
  _transitInfo = [itemCopy _transitInfo];
  departureSequences = [_transitInfo departureSequences];
  v6 = [departureSequences copy];

  v7 = [(TransitSchedulesViewController *)self _dedupeDepartureSequences:v6];

  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  if (departureDataProvider)
  {
    v9 = departureDataProvider;
    [departureDataProvider processDeparturesFromDepartureSequences:v7 animatingDifferences:0];

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

  firstObject = [TransitSchedulesDepartureDataProvider departureSequenceContainingTripIdentifier:[(TransitSchedulesViewController *)self selectedTripIdentifier] departureSequences:v7];
  if (!firstObject)
  {
    if ([v7 count] == 1)
    {
      firstObject = [v7 firstObject];
      goto LABEL_10;
    }

LABEL_9:
    firstObject = 0;
  }

LABEL_10:
  departures = [firstObject departures];
  firstObject2 = [departures firstObject];
  departureDate = [firstObject2 departureDate];

  departureInfoProvider = self->_departureInfoProvider;
  if (departureDate)
  {
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:firstObject];
    v15 = [[TransitSchedulesDepartureDataProvider alloc] initWithTransitMapItem:itemCopy selectedDepartureSequence:firstObject departureSequences:v7 timeZone:self->_boardingStopTimeZone initialScheduleDate:self->_scheduleWindowStartDate];
    [(TransitSchedulesViewController *)self setDepartureDataProvider:v15];
    [(TransitSchedulesDepartureDataProvider *)v15 setRequestAllDirections:self->_requestAllDirections];
    [(TransitSchedulesDepartureDataProvider *)v15 setDelegate:self];
    [(TransitSchedulesViewController *)self selectDeparture];
  }

  else
  {
    if (firstObject)
    {
      [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:firstObject];
    }

    else
    {
      firstObject3 = [v7 firstObject];
      [(TransitSchedulesDepartureInfoProvider *)departureInfoProvider setDepartureSequence:firstObject3];
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
  selectedTripIdentifier = [(TransitSchedulesViewController *)self selectedTripIdentifier];
  traits = [(TransitSchedulesViewController *)self traits];
  objc_initWeak(&location, self);
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForTransitScheduleAtStation:boardingStopMuid line:transitLineIdentifier referenceTripID:selectedTripIdentifier includeAllDirectionNames:self->_requestAllDirections routingParameters:self->_routingParameters traits:traits];

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
  v10[3] = selectedTripIdentifier;
  [v8 submitWithHandler:v9 networkActivity:0];
  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

- (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:kCFErrorDomainCFNetwork])
  {
    v5 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    v5 = [domain2 isEqual:NSURLErrorDomain];
  }

  return v5;
}

- (id)traits
{
  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  scheduleWindowStartDate = [departureDataProvider scheduleWindowStartDate];
  scheduleWindowStartDate = scheduleWindowStartDate;
  if (!scheduleWindowStartDate)
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
    timeRange = [v8 timeRange];
    [timeRange setStartTime:v11];

    timeRange2 = [v8 timeRange];
    [timeRange2 setDuration:2.0];

    v14 = objc_alloc_init(GEOTraitsTransitScheduleFilter);
    [v14 setHighFrequencyFilter:v8];
    [v14 setLowFrequencyFilter:v8];
    [v7 setTransitTripStopTimeFilter:v14];
  }

  return v7;
}

- (unint64_t)_departuresHeaderStyle
{
  selectedTransitLine = [(TransitSchedulesViewController *)self selectedTransitLine];
  departureTimeDisplayStyle = [selectedTransitLine departureTimeDisplayStyle];

  if (departureTimeDisplayStyle != 4 && departureTimeDisplayStyle != 2)
  {
    return 1;
  }

  if (self->_isRoutingScheduleCard)
  {
    return 0;
  }

  return 2;
}

- (void)setSelectedTransitLine:(id)line
{
  lineCopy = line;
  if (([(GEOTransitLine *)self->_selectedTransitLine isEqual:?]& 1) == 0)
  {
    [(TransitSchedulesViewController *)self _checkIfPinnedLine];
    objc_storeStrong(&self->_selectedTransitLine, line);
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setTransitLine:self->_selectedTransitLine];
    [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setTransitLine:self->_selectedTransitLine];
  }
}

- (id)_startEndDatesForOperatingHoursTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = rangesCopy;
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
        startDate = [v10 startDate];
        [v4 addObject:startDate];

        endDate = [v10 endDate];
        [v4 addObject:endDate];
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
  isBus = [(GEOTransitLine *)self->_selectedTransitLine isBus];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
  {
    if (isBus)
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
    if (isBus)
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

- (id)_headerViewForSectionType:(unint64_t)type
{
  v4 = [(TransitSchedulesViewController *)self _sectionIndexForSectionType:type];
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

- (void)setSelectedTripVehicleNumber:(id)number
{
  numberCopy = number;
  if (([(NSString *)self->_selectedTripVehicleNumber isEqual:?]& 1) == 0)
  {
    v4 = [numberCopy copy];
    selectedTripVehicleNumber = self->_selectedTripVehicleNumber;
    self->_selectedTripVehicleNumber = v4;

    v6 = [(TransitSchedulesViewController *)self _headerViewForSectionType:6];
    titleForStopsHeader = [(TransitSchedulesViewController *)self titleForStopsHeader];
    [v6 setTitle:titleForStopsHeader];
  }
}

- (void)setBoardingStationMapItem:(id)item
{
  itemCopy = item;
  if (!self->_mapItemUpdater)
  {
    v6 = [MKMapItem alloc];
    _geoMapItem = [itemCopy _geoMapItem];
    v8 = [v6 initWithGeoMapItem:_geoMapItem isPlaceHolderPlace:0];

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
    _transitAttribution = [itemCopy _transitAttribution];

    if (_transitAttribution)
    {
      _transitAttribution2 = [itemCopy _transitAttribution];
      attribution = self->_attribution;
      self->_attribution = _transitAttribution2;

      if ([(TransitSchedulesViewController *)self isViewLoaded])
      {
        snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
        [(TransitSchedulesViewController *)self _addSection:8 toSnapshot:snapshot];
        v33 = @"AttributionCellIdentifier";
        v30 = [NSArray arrayWithObjects:&v33 count:1];
        [snapshot appendItemsWithIdentifiers:v30 intoSectionWithIdentifier:&off_1016E67D0];

        [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
      }
    }
  }

  objc_storeStrong(&self->_boardingStopMapItem, item);
  _transitInfo = [itemCopy _transitInfo];
  title = [_transitInfo title];
  v13 = [title length];

  if (v13)
  {
    title2 = [_transitInfo title];
    headerTitleView = [(TransitSchedulesViewController *)self headerTitleView];
    [headerTitleView setTitle:title2];
  }

  subtitle = [_transitInfo subtitle];
  v17 = [subtitle length];

  if (v17)
  {
    subtitle2 = [_transitInfo subtitle];
    headerTitleView2 = [(TransitSchedulesViewController *)self headerTitleView];
    [headerTitleView2 setSubtitle:subtitle2];
  }

  lines = [_transitInfo lines];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1006BD7DC;
  v32[3] = &unk_101626368;
  v32[4] = self;
  [lines enumerateObjectsUsingBlock:v32];

  transitTripStops = [_transitInfo transitTripStops];
  firstObject = [transitTripStops firstObject];
  if (firstObject)
  {
    composedRoute = [_transitInfo composedRoute];
    [(TransitSchedulesViewController *)self setSelectedTripRoute:composedRoute];
    _transitInfo2 = [itemCopy _transitInfo];
    incidents = [_transitInfo2 incidents];
    [(TransitSchedulesViewController *)self setIncidents:incidents];

    [(TransitSchedulesViewController *)self _updateVehicleUpdater];
    if ([transitTripStops count])
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1006BD8AC;
      v31[3] = &unk_101626390;
      v31[4] = self;
      [transitTripStops enumerateObjectsUsingBlock:v31];
      [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource buildTransitTripStopItemsWithTransitStops:transitTripStops boardingStopDepartureDate:self->_selectedTripDepartureDate maintainingCollapsedState:0];
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
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  [(TransitSchedulesViewController *)self _clearSection:6 inSnapshot:snapshot];
  stopIdentifiers = [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource stopIdentifiers];
  [snapshot appendItemsWithIdentifiers:stopIdentifiers intoSectionWithIdentifier:&off_1016E6830];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
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

- (void)setDepartureDataProvider:(id)provider
{
  providerCopy = provider;
  departureDataProvider = self->_departureDataProvider;
  if (departureDataProvider)
  {
    [(TransitSchedulesViewController *)self _stopObservingDepartureProvider];
    departureDataProvider = self->_departureDataProvider;
  }

  self->_departureDataProvider = providerCopy;

  if (providerCopy)
  {

    [(TransitSchedulesViewController *)self _startObservingDepartureProvider];
  }
}

- (void)setIncidents:(id)incidents
{
  incidentsCopy = incidents;
  incidents = self->_incidents;
  if (incidents != incidentsCopy && ([(NSArray *)incidents isEqual:incidentsCopy]& 1) == 0)
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitSchedulesViewController *)self _removeSection:4 toSnapshot:snapshot];
    if ([(NSArray *)incidentsCopy count])
    {
      [(TransitSchedulesViewController *)self _addSection:4 toSnapshot:snapshot];
      v12 = @"IncidentsCellIdentifier";
      v7 = [NSArray arrayWithObjects:&v12 count:1];
      [snapshot appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_1016E6788];
    }

    v8 = [(NSArray *)incidentsCopy copy];
    v9 = self->_incidents;
    self->_incidents = v8;

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
    v10 = [(NSArray *)self->_incidents count]!= 0;
    v11 = +[GEOAPSharedStateData sharedData];
    [v11 setPlaceCardTransitAdvisoryBanner:v10];
  }
}

- (void)updateStopsSectionForNetworkState:(unint64_t)state
{
  if ([(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource remoteNetworkState]!= state)
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource setRemoteNetworkState:state];
    if (state - 2 >= 3)
    {
      if (state == 1 && [snapshot indexOfSectionIdentifier:&off_1016E6830] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [snapshot deleteSectionsWithIdentifiers:&off_1016EC8D8];
        [(TransitSchedulesViewController *)self _addSection:6 toSnapshot:snapshot];
      }
    }

    else
    {
      if ([snapshot indexOfSectionIdentifier:&off_1016E6818] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [snapshot deleteSectionsWithIdentifiers:&off_1016EC8F0];
        [(TransitSchedulesViewController *)self _addSection:5 toSnapshot:snapshot];
        v8 = @"StopsNetworkStateViewCellIdentifier";
        v6 = [NSArray arrayWithObjects:&v8 count:1];
        [snapshot appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:&off_1016E6818];
      }

      else
      {
        v7 = @"StopsNetworkStateViewCellIdentifier";
        v6 = [NSArray arrayWithObjects:&v7 count:1];
        [snapshot reloadItemsWithIdentifiers:v6];
      }
    }

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
  }
}

- (void)updateDeparturesSectionForNetworkState:(unint64_t)state
{
  if (!self->_departureDataProvider)
  {
    self->_initialRoutingSchedulesNetworkRequestState = state;
  }

  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v6 = snapshot;
  if (state - 2 >= 3)
  {
    if (state)
    {
      if (state == 1)
      {
        [(TransitSchedulesViewController *)self _removeSection:1 toSnapshot:snapshot];
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
      [(TransitSchedulesViewController *)self _removeSection:3 toSnapshot:snapshot];
      [(TransitSchedulesViewController *)self _removeSection:2 toSnapshot:v6];
    }
  }

  else
  {
    if ([snapshot indexOfSectionIdentifier:&off_1016E6800] == 0x7FFFFFFFFFFFFFFFLL)
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

  selectedTransitLine = [(TransitSchedulesViewController *)self selectedTransitLine];

  if (selectedTransitLine)
  {
    selectedTransitLine2 = [(TransitSchedulesViewController *)self selectedTransitLine];
    v6 = [[IncompleteTransitLineItem alloc] initWithTransitLine:selectedTransitLine2];
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
      v15 = selectedTransitLine2;
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
  incidents = [(TransitSchedulesViewController *)self incidents];
  v3 = [incidents count] != 0;

  return v3;
}

- (void)_stopObservingDepartureProvider
{
  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  v3 = NSStringFromSelector("remoteNetworkState");
  [departureDataProvider removeObserver:self forKeyPath:v3];
}

- (void)_startObservingDepartureProvider
{
  departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
  v3 = NSStringFromSelector("remoteNetworkState");
  [departureDataProvider addObserver:self forKeyPath:v3 options:4 context:off_101929D58];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_101929D58 == context)
  {
    if (self->_departureDataProvider == objectCopy)
    {
      v13 = NSStringFromSelector("remoteNetworkState");
      v14 = [pathCopy isEqualToString:v13];

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
    [(TransitSchedulesViewController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  vehicleUpdater = [(TransitSchedulesViewController *)self vehicleUpdater];
  [vehicleUpdater setActive:0];

  mapItemUpdater = [(TransitSchedulesViewController *)self mapItemUpdater];
  [mapItemUpdater setActive:0];

  [(TransitSchedulesViewController *)self _stopObservingDepartureProvider];
  [(TransitSchedulesViewController *)self restoreInitialMapState];
  v7.receiver = self;
  v7.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  mapItemUpdater = [(TransitSchedulesViewController *)self mapItemUpdater];
  [mapItemUpdater setActive:1];

  vehicleUpdater = [(TransitSchedulesViewController *)self vehicleUpdater];
  [vehicleUpdater setActive:1];

  [(TransitSchedulesViewController *)self _startObservingDepartureProvider];
  if (![(TransitSchedulesViewController *)self hasSelectedTrip]&& [(TransitSchedulesViewController *)self _numberOfDeparturesInSnapshot]>= 1)
  {
    departureDataProvider = [(TransitSchedulesViewController *)self departureDataProvider];
    [departureDataProvider selectNextIncomingDeparture];
  }

  selectedTripRoute = [(TransitSchedulesViewController *)self selectedTripRoute];

  if (selectedTripRoute)
  {
    [(TransitSchedulesViewController *)self showRouteOnMap];
  }

  v9.receiver = self;
  v9.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  v83.receiver = self;
  v83.super_class = TransitSchedulesViewController;
  [(ContaineeViewController *)&v83 viewDidLoad];
  view = [(TransitSchedulesViewController *)self view];
  [view setAccessibilityIdentifier:@"TransitSchedulesDepartureView"];

  v4 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v4;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [(ContainerHeaderView *)self->_containerHeaderView setContentCompressionResistancePriority:1 forAxis:v6];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:self->_containerHeaderView];

  v8 = [TransitSchedulesHeaderView alloc];
  selectedTransitLine = [(TransitSchedulesViewController *)self selectedTransitLine];
  v10 = [(TransitSchedulesHeaderView *)v8 initWithTransitLine:selectedTransitLine];
  headerTitleView = self->_headerTitleView;
  self->_headerTitleView = v10;

  [(TransitSchedulesHeaderView *)self->_headerTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_headerTitleView];
  LODWORD(v12) = 1148846080;
  [(TransitSchedulesHeaderView *)self->_headerTitleView setContentCompressionResistancePriority:1 forAxis:v12];
  leadingAnchor = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v87[0] = v75;
  trailingAnchor = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v87[1] = v66;
  topAnchor = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView4 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v87[2] = v16;
  bottomAnchor = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v87[3] = v20;
  v21 = [NSArray arrayWithObjects:v87 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  _collectionViewLayout = [(TransitSchedulesViewController *)self _collectionViewLayout];
  v22 = [[UICollectionView alloc] initWithFrame:_collectionViewLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
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

  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:v22];

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
  departureCellProvider = [(TransitSchedulesViewController *)self departureCellProvider];
  collectionView = [(TransitSchedulesViewController *)self collectionView];
  [departureCellProvider registerCellsForCollectionView:collectionView];

  headsignCellProvider = [(TransitSchedulesViewController *)self headsignCellProvider];
  collectionView2 = [(TransitSchedulesViewController *)self collectionView];
  [headsignCellProvider registerCellsForCollectionView:collectionView2];

  topAnchor3 = [v22 topAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v86[0] = v70;
  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  bottomAnchor4 = [v22 bottomAnchor];
  v64 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v86[1] = v64;
  leadingAnchor3 = [v22 leadingAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide2 = [contentView4 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v86[2] = v39;
  trailingAnchor3 = [v22 trailingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide3 = [contentView5 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v44 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v86[3] = v44;
  v45 = [NSArray arrayWithObjects:v86 count:4];
  [NSLayoutConstraint activateConstraints:v45];

  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  if (self->_departureDataProvider)
  {
    [(TransitSchedulesViewController *)self _addSection:3 toSnapshot:snapshot];
    departures = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider departures];
    v48 = [departures count];

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
    [(TransitSchedulesViewController *)self _addSection:4 toSnapshot:snapshot];
    v85 = @"IncidentsCellIdentifier";
    v49 = [NSArray arrayWithObjects:&v85 count:1];
    [snapshot appendItemsWithIdentifiers:v49 intoSectionWithIdentifier:&off_1016E6788];
  }

  if ([(TransitSchedulesViewController *)self _shouldShowDepartureInfoSection])
  {
    v50 = [[TransitSchedulesDepartureInfoProvider alloc] initWithTransitLine:self->_selectedTransitLine timeZone:self->_boardingStopTimeZone referenceDate:self->_scheduleWindowStartDate];
    departureInfoProvider = self->_departureInfoProvider;
    self->_departureInfoProvider = v50;

    selectedDepartureSequence = [(TransitSchedulesDepartureDataProvider *)self->_departureDataProvider selectedDepartureSequence];
    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDepartureSequence:selectedDepartureSequence];

    [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider setDelegate:self];
    identifiers = [(TransitSchedulesDepartureInfoProvider *)self->_departureInfoProvider identifiers];
    if ([identifiers count])
    {
      [(TransitSchedulesViewController *)self _addSection:1 toSnapshot:snapshot];
      [snapshot appendItemsWithIdentifiers:identifiers intoSectionWithIdentifier:&off_1016E67A0];
    }
  }

  if (!self->_isRoutingScheduleCard)
  {
    [(TransitSchedulesViewController *)self _addSection:7 toSnapshot:snapshot];
    identifiers2 = [(TransitSchedulesLineOptionsProvider *)self->_lineOptionsProvider identifiers];
    [snapshot appendItemsWithIdentifiers:identifiers2 intoSectionWithIdentifier:&off_1016E67B8];

    fetchSelectedTransitLineItem = [(TransitSchedulesViewController *)self fetchSelectedTransitLineItem];
  }

  _providerNames = [(GEOTransitAttribution *)self->_attribution _providerNames];
  v57 = [_providerNames count];

  if (v57)
  {
    [(TransitSchedulesViewController *)self _addSection:8 toSnapshot:snapshot];
    v84 = @"AttributionCellIdentifier";
    v58 = [NSArray arrayWithObjects:&v84 count:1];
    [snapshot appendItemsWithIdentifiers:v58 intoSectionWithIdentifier:&off_1016E67D0];
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
  if ([(TransitSchedulesViewController *)self hasSelectedTrip]&& ![(TransitScheduleStopsTableViewDataSource *)self->_stopsDataSource hasStops])
  {
    [(TransitSchedulesViewController *)self fetchNewScheduleData];
  }

  delegate = [(ControlContaineeViewController *)self delegate];
  self->_initialViewMode = [delegate displayedViewMode];

  delegate2 = [(ControlContaineeViewController *)self delegate];
  self->_initialMapApplicationState = [delegate2 mapApplicationState];

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

- (TransitSchedulesViewController)initWithTransitRouteStep:(id)step
{
  stepCopy = step;
  v6 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v6)
  {
    nextBoardingStep = [stepCopy nextBoardingStep];
    transitStep = [stepCopy transitStep];
    scheduleInfo = [transitStep scheduleInfo];

    if (scheduleInfo && [scheduleInfo tripID] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [scheduleInfo tripID]);
      v12 = 0;
      v11 = 1;
    }

    else
    {
      transitVehicle = [nextBoardingStep transitVehicle];
      v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [transitVehicle tripMuid]);
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

    staticDepartureDate = [scheduleInfo staticDepartureDate];
    arrivalTime = staticDepartureDate;
    if (!staticDepartureDate)
    {
      arrivalTime = [nextBoardingStep arrivalTime];
    }

    objc_storeStrong(&v6->_selectedTripDepartureDate, arrivalTime);
    if (!staticDepartureDate)
    {
    }

    windowStartDate = [scheduleInfo windowStartDate];
    selectedTripDepartureDate = windowStartDate;
    if (!windowStartDate)
    {
      selectedTripDepartureDate = v6->_selectedTripDepartureDate;
    }

    objc_storeStrong(&v6->_scheduleWindowStartDate, selectedTripDepartureDate);

    if (scheduleInfo && [scheduleInfo lineID] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6->_transitLineIdentifier = [scheduleInfo lineID];
      transitLine = [nextBoardingStep transitLine];
      muid = [transitLine muid];
      transitLineIdentifier = v6->_transitLineIdentifier;

      if (muid == transitLineIdentifier)
      {
        transitLine2 = [nextBoardingStep transitLine];
        selectedTransitLine = v6->_selectedTransitLine;
        v6->_selectedTransitLine = transitLine2;
      }
    }

    else
    {
      transitLine3 = [nextBoardingStep transitLine];
      v18 = v6->_selectedTransitLine;
      v6->_selectedTransitLine = transitLine3;

      v6->_transitLineIdentifier = [(GEOTransitLine *)v6->_selectedTransitLine muid];
    }

    routingParameters = [scheduleInfo routingParameters];
    routingParameters = v6->_routingParameters;
    v6->_routingParameters = routingParameters;

    transitVehicle2 = [nextBoardingStep transitVehicle];
    vehicleNumber = [transitVehicle2 vehicleNumber];
    selectedTripVehicleNumber = v6->_selectedTripVehicleNumber;
    v6->_selectedTripVehicleNumber = vehicleNumber;

    transitIncidents = [nextBoardingStep transitIncidents];
    v25 = [transitIncidents copy];
    incidents = v6->_incidents;
    v6->_incidents = v25;

    v6->_isRoutingScheduleCard = 1;
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    originStop = [nextBoardingStep originStop];
    v6->_boardingStopMuid = [originStop muid];
    originStop2 = [nextBoardingStep originStop];
    nameDisplayString = [originStop2 nameDisplayString];
    v31 = [nameDisplayString copy];
    boardingStopName = v6->_boardingStopName;
    v6->_boardingStopName = v31;

    departureTimeZone = [nextBoardingStep departureTimeZone];
    boardingStopTimeZone = v6->_boardingStopTimeZone;
    v6->_boardingStopTimeZone = departureTimeZone;

    v35 = [GEOLocation alloc];
    latLng = [originStop latLng];
    [latLng lat];
    v38 = v37;
    latLng2 = [originStop latLng];
    [latLng2 lng];
    v41 = [v35 initWithLatitude:v38 longitude:v40];
    boardingStopLocation = v6->_boardingStopLocation;
    v6->_boardingStopLocation = v41;

    nextAlightingStep = [stepCopy nextAlightingStep];
    destinationStop = [nextAlightingStep destinationStop];

    nextAlightingStep2 = [stepCopy nextAlightingStep];
    destinationHall = [nextAlightingStep2 destinationHall];

    v47 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v6->_referenceDate;
    v6->_referenceDate = v47;

    if (!(destinationStop | destinationHall))
    {
      v53 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v6->_boardingStopMuid transitLine:v6->_selectedTransitLine referenceDate:v6->_referenceDate];
      stopsDataSource = v6->_stopsDataSource;
      v6->_stopsDataSource = v53;
LABEL_29:

      goto LABEL_30;
    }

    v63 = stepCopy;
    composedRoute = [stepCopy composedRoute];
    stopsDataSource = [composedRoute getStationForHall:destinationHall];

    muid2 = [destinationStop muid];
    if (destinationHall)
    {
      muid3 = [destinationHall muid];
      if (stopsDataSource)
      {
LABEL_22:
        muid4 = [stopsDataSource muid];
LABEL_28:
        v59 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v6->_boardingStopMuid alightStopMuid:muid2 alightHallMuid:muid3 alightStationMuid:muid4 transitLine:v6->_selectedTransitLine referenceDate:v6->_referenceDate];
        v60 = v6->_stopsDataSource;
        v6->_stopsDataSource = v59;

        stepCopy = v63;
        goto LABEL_29;
      }
    }

    else
    {
      muid3 = 0x7FFFFFFFFFFFFFFFLL;
      if (stopsDataSource)
      {
        goto LABEL_22;
      }
    }

    muid4 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

LABEL_30:

  return v6;
}

- (TransitSchedulesViewController)initWithTransitMapItem:(id)item departureSequence:(id)sequence
{
  itemCopy = item;
  sequenceCopy = sequence;
  v9 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v9)
  {
    line = [sequenceCopy line];
    selectedTransitLine = v9->_selectedTransitLine;
    v9->_selectedTransitLine = line;

    v9->_transitLineIdentifier = [(GEOTransitLine *)v9->_selectedTransitLine muid];
    _geoMapItem = [itemCopy _geoMapItem];
    transitStationIdentifier = [_geoMapItem transitStationIdentifier];
    v9->_boardingStopMuid = [transitStationIdentifier muid];

    _transitInfo = [itemCopy _transitInfo];
    displayName = [_transitInfo displayName];
    v16 = [displayName copy];
    boardingStopName = v9->_boardingStopName;
    v9->_boardingStopName = v16;

    timeZone = [itemCopy timeZone];
    boardingStopTimeZone = v9->_boardingStopTimeZone;
    v9->_boardingStopTimeZone = timeZone;

    v9->_isRoutingScheduleCard = 0;
    objc_storeStrong(&v9->_boardingStopMapItem, item);
    v20 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v9->_referenceDate;
    v9->_referenceDate = v20;

    objc_storeStrong(&v9->_scheduleWindowStartDate, v9->_referenceDate);
    departures = [sequenceCopy departures];
    firstObject = [departures firstObject];

    if (firstObject && ([firstObject departureDate], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
    {
      v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [firstObject tripIdentifier]);
      selectedTripIdentifier = v9->_selectedTripIdentifier;
      v9->_selectedTripIdentifier = v28;
    }

    else
    {
      v25 = [TransitSchedulesDepartureDataProvider alloc];
      v35 = sequenceCopy;
      v26 = [NSArray arrayWithObjects:&v35 count:1];
      v27 = [(TransitSchedulesDepartureDataProvider *)v25 initWithTransitMapItem:itemCopy selectedDepartureSequence:sequenceCopy departureSequences:v26 timeZone:v9->_boardingStopTimeZone initialScheduleDate:v9->_scheduleWindowStartDate];
      [(TransitSchedulesViewController *)v9 setDepartureDataProvider:v27];

      [(TransitSchedulesDepartureDataProvider *)v9->_departureDataProvider setRequestAllDirections:v9->_requestAllDirections];
      [(TransitSchedulesDepartureDataProvider *)v9->_departureDataProvider setDelegate:v9];
    }

    _transitAttribution = [itemCopy _transitAttribution];
    attribution = v9->_attribution;
    v9->_attribution = _transitAttribution;

    v32 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v9->_boardingStopMuid transitLine:v9->_selectedTransitLine referenceDate:v9->_referenceDate];
    stopsDataSource = v9->_stopsDataSource;
    v9->_stopsDataSource = v32;
  }

  return v9;
}

- (TransitSchedulesViewController)initWithDepartureSequence:(id)sequence timeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions
{
  sequenceCopy = sequence;
  zoneCopy = zone;
  dateCopy = date;
  v13 = [(TransitSchedulesViewController *)self initWithNibName:0 bundle:0];
  if (v13)
  {
    line = [sequenceCopy line];
    selectedTransitLine = v13->_selectedTransitLine;
    v13->_selectedTransitLine = line;

    v13->_transitLineIdentifier = [(GEOTransitLine *)v13->_selectedTransitLine muid];
    v13->_boardingStopMuid = [sequenceCopy transitId];
    boardingStopName = v13->_boardingStopName;
    v13->_boardingStopName = 0;

    objc_storeStrong(&v13->_boardingStopTimeZone, zone);
    v13->_isRoutingScheduleCard = 0;
    v13->_requestAllDirections = directions;
    v17 = +[MKTransitItemReferenceDateUpdater referenceDate];
    referenceDate = v13->_referenceDate;
    v13->_referenceDate = v17;

    v19 = dateCopy;
    if (!dateCopy)
    {
      v19 = v13->_referenceDate;
    }

    objc_storeStrong(&v13->_scheduleWindowStartDate, v19);
    departures = [sequenceCopy departures];
    firstObject = [departures firstObject];

    if (firstObject)
    {
      v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [firstObject tripIdentifier]);
      selectedTripIdentifier = v13->_selectedTripIdentifier;
      v13->_selectedTripIdentifier = v22;
    }

    v24 = [[TransitScheduleStopsTableViewDataSource alloc] initWithBoardingStopMuid:v13->_boardingStopMuid transitLine:v13->_selectedTransitLine referenceDate:v13->_referenceDate];
    stopsDataSource = v13->_stopsDataSource;
    v13->_stopsDataSource = v24;
  }

  return v13;
}

- (TransitSchedulesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = TransitSchedulesViewController;
  v4 = [(TransitSchedulesViewController *)&v13 initWithNibName:name bundle:bundle];
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

+ (id)validDeparturesInDepartureSequence:(id)sequence withReferenceDate:(id)date
{
  dateCopy = date;
  departures = [sequence departures];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006C0950;
  v11[3] = &unk_101626318;
  v12 = dateCopy;
  v7 = dateCopy;
  v8 = [NSPredicate predicateWithBlock:v11];
  v9 = [departures filteredArrayUsingPredicate:v8];

  return v9;
}

+ (BOOL)shouldShowScheduleForTransitMapItem:(id)item sequence:(id)sequence
{
  sequenceCopy = sequence;
  v6 = +[MKTransitItemReferenceDateUpdater referenceDate];
  v7 = [self validDeparturesInDepartureSequence:sequenceCopy withReferenceDate:v6];

  LOBYTE(sequenceCopy) = [v7 count] != 0;
  return sequenceCopy;
}

@end