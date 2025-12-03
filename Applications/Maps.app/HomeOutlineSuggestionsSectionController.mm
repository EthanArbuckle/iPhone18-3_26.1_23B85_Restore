@interface HomeOutlineSuggestionsSectionController
- (BOOL)_canDisplaySuggestionsEntry:(id)entry;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)shouldPersistExpandedIdentifierPath:(id)path;
- (HomeOutlineSuggestionsSectionController)initWithConfiguration:(id)configuration suggestionsDataProvider:(id)provider;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInCollection:(id)collection;
- (id)_sortItemForCollection:(id)collection;
- (id)contentInjectorForSnapshot:(id)snapshot;
- (id)contextMenuForSnapshot:(id)snapshot;
- (void)_deleteSnapshot:(id)snapshot;
- (void)_processDeletion:(id)deletion forMapsSuggestionsEntry:(id)entry;
- (void)_processDeletion:(id)deletion forSharedTripSummary:(id)summary;
- (void)_scrubSortItems;
- (void)collectionSortItem:(id)item didSelectSortType:(int64_t)type;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)showSharedCollection:(id)collection;
- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model;
- (void)twoLinesOutlineCell:(id)cell tappedActionButtonAtIndex:(int64_t)index;
@end

@implementation HomeOutlineSuggestionsSectionController

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v16 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v16 viewModel];
  objc_opt_class();
  LOBYTE(delegate) = objc_opt_isKindOfClass();

  viewModel2 = [v16 viewModel];
  viewModel3 = viewModel2;
  if ((delegate & 1) != 0 && viewModel)
  {
    entry = [viewModel2 entry];
    type = [entry type];

    if (type == 21)
    {
      [GEOAPPortal captureUserAction:339 target:8 value:0];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && viewModel3)
  {
    viewModel3 = [v16 viewModel];
    sharedTripSummary = [viewModel3 sharedTripSummary];
    _transportTypeStringForAnalytics = [sharedTripSummary _transportTypeStringForAnalytics];
    [GEOAPPortal captureUserAction:9002 target:737 value:_transportTypeStringForAnalytics];

LABEL_8:
  }
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  viewCopy = view;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v12 = [delegate isCollectionViewFocusedWithSectionController:self];

  v15.receiver = self;
  v15.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v15 collectionView:viewCopy didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];

  delegate2 = [(HomeOutlineSectionController *)self delegate];
  LODWORD(viewCopy) = [delegate2 isCollectionViewFocusedWithSectionController:self];

  if (v12 != viewCopy)
  {
    delegate3 = [(HomeOutlineSectionController *)self delegate];
    [delegate3 sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v6 collectionView:view didDeselectItemAtIndexPath:path];
  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v22 collectionView:view didSelectItemAtIndexPath:pathCopy];
  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

  delegate2 = [(HomeOutlineSectionController *)self delegate];
  v9 = [delegate2 sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  viewModel2 = [v9 viewModel];
  v13 = viewModel2;
  if ((isKindOfClass & 1) != 0 && viewModel)
  {
    entry = [viewModel2 entry];

    analyticsGrouping = [entry analyticsGrouping];
    v16 = 2039;
    v17 = 8;
LABEL_7:
    [GEOAPPortal captureUserAction:v16 target:v17 value:analyticsGrouping];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) != 0 && v13)
  {
    entry = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
    analyticsGrouping = [entry stringValue];
    v16 = 2068;
    v17 = 256;
    goto LABEL_7;
  }

  viewModel3 = [v9 viewModel];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) != 0 && viewModel3)
  {
    entry = [v9 viewModel];
    analyticsGrouping = [entry sharedTripSummary];
    _transportTypeStringForAnalytics = [analyticsGrouping _transportTypeStringForAnalytics];
    [GEOAPPortal captureUserAction:9003 target:737 value:_transportTypeStringForAnalytics];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v9 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && viewModel)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HomeOutlineSuggestionsSectionController;
    v12 = [(HomeOutlineSectionController *)&v14 collectionView:viewCopy shouldSelectItemAtIndexPath:pathCopy];
  }

  return v12;
}

- (void)twoLinesOutlineCell:(id)cell tappedActionButtonAtIndex:(int64_t)index
{
  cellModel = [cell cellModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellModel;
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;

  v8 = v11;
  if (v11)
  {
    collection = [v11 collection];
    v10 = collection;
    if (!index)
    {
      [collection createCollection:&stru_101624B38];
      [GEOAPPortal captureUserAction:2071 target:256 value:0];
    }

    [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider removeSharedCollection:v10];

    v8 = v11;
  }
}

- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model
{
  cellCopy = cell;
  tappedCopy = tapped;
  cellModel = [cellCopy cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  cellModel2 = [cellCopy cellModel];
  cellModel4 = cellModel2;
  if (isKindOfClass)
  {
    entry = [cellModel2 entry];
    if ([entry type] != 21 && !GEOConfigGetBOOL())
    {
      goto LABEL_9;
    }

    [HomeAnalyticsManager captureTapActionWithEntry:entry];
    +[HomeAnalyticsManager captureRatingSuggestionTapAction];
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    geoMapItem = [entry geoMapItem];
    [actionCoordinator addRatingsForMapItem:geoMapItem];
    goto LABEL_7;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  cellModel3 = [cellCopy cellModel];
  cellModel4 = cellModel3;
  if (v16)
  {
    entry = [cellModel3 sharedTripSummary];
    sharedTrips = [entry sharedTrips];
    configuration = [sharedTrips firstObject];

    actionCoordinator = [(HomeOutlineSectionController *)self configuration];
    geoMapItem = [actionCoordinator actionCoordinator];
    [geoMapItem presentSharedTrip:configuration inPopoverFromView:tappedCopy];
LABEL_7:

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    cellModel4 = [cellCopy cellModel];
    entry = [cellModel4 collection];
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    identifierCache = [(HomeOutlineSectionController *)self identifierCache];
    v22 = [identifierCache identifierForObject:entry];
    configuration = [sectionIdentifierPath identifierPathByAppendingIdentifier:v22];

    [(HomeOutlineSectionController *)self toggleElementAtIdentifierPath:configuration];
    goto LABEL_8;
  }

LABEL_10:
}

- (void)_processDeletion:(id)deletion forSharedTripSummary:(id)summary
{
  deletionCopy = deletion;
  summaryCopy = summary;
  sharedTrips = [summaryCopy sharedTrips];
  if ([sharedTrips count] == 1)
  {
    sharedTrips2 = [summaryCopy sharedTrips];
    lastObject = [sharedTrips2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  groupIdentifier = [lastObject groupIdentifier];
  if (groupIdentifier)
  {
    objc_initWeak(&location, self);
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10064C950;
    v14[3] = &unk_10165F3F0;
    objc_copyWeak(&v17, &location);
    v15 = deletionCopy;
    v16 = groupIdentifier;
    [actionCoordinator confirmDeleteSharedTripWithSummary:summaryCopy sourceView:0 sourceRect:v14 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)_processDeletion:(id)deletion forMapsSuggestionsEntry:(id)entry
{
  deletionCopy = deletion;
  entryCopy = entry;
  objc_initWeak(&location, self);
  configuration = [(HomeOutlineSectionController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10064CBD4;
  v15[3] = &unk_101661340;
  objc_copyWeak(&v17, &location);
  v10 = deletionCopy;
  v16 = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10064CC70;
  v12[3] = &unk_101624B18;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [actionCoordinator viewController:0 removeMapsSuggestionsEntry:entryCopy sourceView:0 sourceRect:v15 startBlock:v12 completionBlock:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_deleteSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  deletions = [(HomeOutlineSectionController *)self deletions];
  identifierPath = [snapshotCopy identifierPath];
  v6 = [deletions objectForKeyedSubscript:identifierPath];

  if (!v6)
  {
    viewModel = [snapshotCopy viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = viewModel;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    sharedTripSummary = [v9 sharedTripSummary];

    viewModel2 = [snapshotCopy viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = viewModel2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    entry = [v13 entry];

    if (entry)
    {
      v15 = [(HomeOutlineSectionController *)self deletionWithSnapshot:snapshotCopy];
      [(HomeOutlineSuggestionsSectionController *)self _processDeletion:v15 forMapsSuggestionsEntry:entry];
    }

    else
    {
      if (!sharedTripSummary)
      {
        goto LABEL_11;
      }

      sharedTrips = [sharedTripSummary sharedTrips];
      v17 = [sharedTrips count];

      if (v17 > 1)
      {
        goto LABEL_11;
      }

      v15 = [(HomeOutlineSectionController *)self deletionWithSnapshot:snapshotCopy];
      [(HomeOutlineSuggestionsSectionController *)self _processDeletion:v15 forSharedTripSummary:sharedTripSummary];
    }

LABEL_11:
  }
}

- (void)collectionSortItem:(id)item didSelectSortType:(int64_t)type
{
  sharedCollectionsDataProvider = self->_sharedCollectionsDataProvider;
  itemCopy = item;
  [(SharedCollectionsDataProvider *)sharedCollectionsDataProvider setActive:0];
  collection = [itemCopy collection];

  [collection setSortType:type];
  [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider setActive:1];
  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:0];
}

- (void)_scrubSortItems
{
  v3 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sharedCollections = [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider sharedCollections];
  v5 = [sharedCollections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sharedCollections);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sortItems = self->_sortItems;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)sortItems objectForKeyedSubscript:identifier];
        identifier2 = [v9 identifier];
        [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:identifier2];
      }

      v6 = [sharedCollections countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = self->_sortItems;
  self->_sortItems = v3;
}

- (id)_sortItemForCollection:(id)collection
{
  collectionCopy = collection;
  sortItems = self->_sortItems;
  identifier = [collectionCopy identifier];
  v7 = [(NSMutableDictionary *)sortItems objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v7 = [[HomeCollectionSortItem alloc] initWithCollection:collectionCopy delegate:self];
    v8 = self->_sortItems;
    identifier2 = [collectionCopy identifier];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:identifier2];
  }

  return v7;
}

- (id)_childItemsInCollection:(id)collection
{
  collectionCopy = collection;
  content = [collectionCopy content];
  v6 = [content count];

  if (v6)
  {
    v7 = +[NSMutableArray array];
    v8 = [(HomeOutlineSuggestionsSectionController *)self _sortItemForCollection:collectionCopy];
    [v7 addObject:v8];

    content2 = [collectionCopy content];
    [v7 addObjectsFromArray:content2];

    v10 = [v7 copy];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)contentInjectorForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  viewModel = [snapshotCopy viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if ((isKindOfClass & 1) != 0 && viewModel)
  {
    viewModel2 = [snapshotCopy viewModel];
    collection = [viewModel2 collection];
    v7 = [[HomeCollectionContentInjector alloc] initWithCollection:collection];
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    [(HomeCollectionContentInjector *)v7 setActionCoordinator:actionCoordinator];
  }

  return v7;
}

- (void)showSharedCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy handlerType] == 3)
  {
    [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider addSharedCollection:collectionCopy];
  }
}

- (BOOL)shouldPersistExpandedIdentifierPath:(id)path
{
  pathCopy = path;
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v6 = [pathCopy isEqual:sectionIdentifierPath];

  return v6;
}

- (id)contextMenuForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  objc_initWeak(&location, self);
  viewModel = [snapshotCopy viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = viewModel;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {

LABEL_7:
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10064D6AC;
    v14[3] = &unk_101661340;
    objc_copyWeak(&v16, &location);
    v15 = snapshotCopy;
    v10 = sub_100C64B44(v14);
    v18 = v10;
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [UIMenu menuWithTitle:&stru_1016631F0 children:v11];

    objc_destroyWeak(&v16);
    goto LABEL_8;
  }

  viewModel2 = [snapshotCopy viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & (viewModel2 != 0)) == 1)
  {
    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:
  objc_destroyWeak(&location);

  return v12;
}

- (NSArray)itemSnapshots
{
  currentLocation = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  distanceUnit = [(DistanceUnitDataProvider *)self->_distanceUnitDataProvider distanceUnit];
  selectedIdentifierPaths = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  v6 = +[NSMutableArray array];
  sharedCollections = [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider sharedCollections];
  [v6 addObjectsFromArray:sharedCollections];

  sharedTripSummaries = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
  [v6 addObjectsFromArray:sharedTripSummaries];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  suggestions = [(SuggestionsDataProvider *)self->_suggestionsDataProvider suggestions];
  v10 = [suggestions countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(suggestions);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if ([(HomeOutlineSuggestionsSectionController *)self _canDisplaySuggestionsEntry:v14])
        {
          [v6 addObject:v14];
        }
      }

      v11 = [suggestions countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  configuration = [(HomeOutlineSectionController *)self configuration];
  sectionIdentifier = [configuration sectionIdentifier];
  expanded = [(HomeOutlineSectionController *)self expanded];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10064DA78;
  v28[3] = &unk_10165D100;
  v28[4] = self;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10064DAE4;
  v24[3] = &unk_10165D128;
  v24[4] = self;
  v25 = selectedIdentifierPaths;
  v26 = currentLocation;
  v27 = distanceUnit;
  v22[4] = self;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10064E3D4;
  v23[3] = &unk_10165D150;
  v23[4] = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10064E450;
  v22[3] = &unk_10165D178;
  v18 = currentLocation;
  v19 = selectedIdentifierPaths;
  v20 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v6 sectionIdentifier:sectionIdentifier sectionExpanded:expanded itemIdentifierBlock:v28 viewModelBlock:v24 childItemsBlock:v23 expandedBlock:v22];

  [(HomeOutlineSuggestionsSectionController *)self _scrubSortItems];

  return v20;
}

- (BOOL)_canDisplaySuggestionsEntry:(id)entry
{
  if ([entry type] != 21)
  {
    return 1;
  }

  return +[RatingRequestHomeAvailability shouldShowRatingRequestSuggestionsOnProactiveTray];
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v2 = +[MapsSuggestionsSiri isEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"[Proactive Tray] Suggestion Section";
  }

  else
  {
    v5 = @"[Proactive Tray] Shared with Me Section";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  v7 = [[SectionHeaderBasicOutlineCellModel alloc] initWithTitle:v6];

  return v7;
}

- (NSArray)dataProviders
{
  distanceUnitDataProvider = self->_distanceUnitDataProvider;
  v6[0] = self->_currentLocationDataProvider;
  v6[1] = distanceUnitDataProvider;
  sharedTripsDataProvider = self->_sharedTripsDataProvider;
  v6[2] = self->_sharedCollectionsDataProvider;
  v6[3] = sharedTripsDataProvider;
  v6[4] = self->_suggestionsDataProvider;
  v4 = [NSArray arrayWithObjects:v6 count:5];

  return v4;
}

- (HomeOutlineSuggestionsSectionController)initWithConfiguration:(id)configuration suggestionsDataProvider:(id)provider
{
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = HomeOutlineSuggestionsSectionController;
  v8 = [(HomeOutlineSectionController *)&v20 initWithConfiguration:configuration];
  if (v8)
  {
    v9 = objc_alloc_init(CurrentLocationDataProvider);
    currentLocationDataProvider = v8->_currentLocationDataProvider;
    v8->_currentLocationDataProvider = v9;

    v11 = objc_alloc_init(DistanceUnitDataProvider);
    distanceUnitDataProvider = v8->_distanceUnitDataProvider;
    v8->_distanceUnitDataProvider = v11;

    v13 = objc_alloc_init(SharedCollectionsDataProvider);
    sharedCollectionsDataProvider = v8->_sharedCollectionsDataProvider;
    v8->_sharedCollectionsDataProvider = v13;

    v15 = [[SharedTripsDataProvider alloc] initWithCombineAllTrips:0];
    sharedTripsDataProvider = v8->_sharedTripsDataProvider;
    v8->_sharedTripsDataProvider = v15;

    objc_storeStrong(&v8->_suggestionsDataProvider, provider);
    v17 = +[NSMutableDictionary dictionary];
    sortItems = v8->_sortItems;
    v8->_sortItems = v17;
  }

  return v8;
}

@end