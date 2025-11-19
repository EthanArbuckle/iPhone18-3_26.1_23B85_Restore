@interface HomeOutlineSuggestionsSectionController
- (BOOL)_canDisplaySuggestionsEntry:(id)a3;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)shouldPersistExpandedIdentifierPath:(id)a3;
- (HomeOutlineSuggestionsSectionController)initWithConfiguration:(id)a3 suggestionsDataProvider:(id)a4;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInCollection:(id)a3;
- (id)_sortItemForCollection:(id)a3;
- (id)contentInjectorForSnapshot:(id)a3;
- (id)contextMenuForSnapshot:(id)a3;
- (void)_deleteSnapshot:(id)a3;
- (void)_processDeletion:(id)a3 forMapsSuggestionsEntry:(id)a4;
- (void)_processDeletion:(id)a3 forSharedTripSummary:(id)a4;
- (void)_scrubSortItems;
- (void)collectionSortItem:(id)a3 didSelectSortType:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)showSharedCollection:(id)a3;
- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5;
- (void)twoLinesOutlineCell:(id)a3 tappedActionButtonAtIndex:(int64_t)a4;
@end

@implementation HomeOutlineSuggestionsSectionController

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(HomeOutlineSectionController *)self delegate];
  v16 = [v7 sectionController:self nodeSnapshotAtIndexPath:v6];

  v8 = [v16 viewModel];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  v9 = [v16 viewModel];
  v10 = v9;
  if ((v7 & 1) != 0 && v8)
  {
    v11 = [v9 entry];
    v12 = [v11 type];

    if (v12 == 21)
    {
      [GEOAPPortal captureUserAction:339 target:8 value:0];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && v10)
  {
    v10 = [v16 viewModel];
    v14 = [v10 sharedTripSummary];
    v15 = [v14 _transportTypeStringForAnalytics];
    [GEOAPPortal captureUserAction:9002 target:737 value:v15];

LABEL_8:
  }
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HomeOutlineSectionController *)self delegate];
  v12 = [v11 isCollectionViewFocusedWithSectionController:self];

  v15.receiver = self;
  v15.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v15 collectionView:v10 didUpdateFocusInContext:v9 withAnimationCoordinator:v8];

  v13 = [(HomeOutlineSectionController *)self delegate];
  LODWORD(v10) = [v13 isCollectionViewFocusedWithSectionController:self];

  if (v12 != v10)
  {
    v14 = [(HomeOutlineSectionController *)self delegate];
    [v14 sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v6 collectionView:a3 didDeselectItemAtIndexPath:a4];
  v5 = [(HomeOutlineSectionController *)self delegate];
  [v5 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = HomeOutlineSuggestionsSectionController;
  [(HomeOutlineSectionController *)&v22 collectionView:a3 didSelectItemAtIndexPath:v6];
  v7 = [(HomeOutlineSectionController *)self delegate];
  [v7 sectionController:self setNeedsApplySnapshotAnimated:1];

  v8 = [(HomeOutlineSectionController *)self delegate];
  v9 = [v8 sectionController:self nodeSnapshotAtIndexPath:v6];

  v10 = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v9 viewModel];
  v13 = v12;
  if ((isKindOfClass & 1) != 0 && v10)
  {
    v14 = [v12 entry];

    v15 = [v14 analyticsGrouping];
    v16 = 2039;
    v17 = 8;
LABEL_7:
    [GEOAPPortal captureUserAction:v16 target:v17 value:v15];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) != 0 && v13)
  {
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 row]);
    v15 = [v14 stringValue];
    v16 = 2068;
    v17 = 256;
    goto LABEL_7;
  }

  v19 = [v9 viewModel];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) != 0 && v19)
  {
    v14 = [v9 viewModel];
    v15 = [v14 sharedTripSummary];
    v21 = [v15 _transportTypeStringForAnalytics];
    [GEOAPPortal captureUserAction:9003 target:737 value:v21];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HomeOutlineSectionController *)self delegate];
  v9 = [v8 sectionController:self nodeSnapshotAtIndexPath:v7];

  v10 = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && v10)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HomeOutlineSuggestionsSectionController;
    v12 = [(HomeOutlineSectionController *)&v14 collectionView:v6 shouldSelectItemAtIndexPath:v7];
  }

  return v12;
}

- (void)twoLinesOutlineCell:(id)a3 tappedActionButtonAtIndex:(int64_t)a4
{
  v6 = [a3 cellModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;

  v8 = v11;
  if (v11)
  {
    v9 = [v11 collection];
    v10 = v9;
    if (!a4)
    {
      [v9 createCollection:&stru_101624B38];
      [GEOAPPortal captureUserAction:2071 target:256 value:0];
    }

    [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider removeSharedCollection:v10];

    v8 = v11;
  }
}

- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5
{
  v23 = a3;
  v7 = a4;
  v8 = [v23 cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = [v23 cellModel];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 entry];
    if ([v12 type] != 21 && !GEOConfigGetBOOL())
    {
      goto LABEL_9;
    }

    [HomeAnalyticsManager captureTapActionWithEntry:v12];
    +[HomeAnalyticsManager captureRatingSuggestionTapAction];
    v13 = [(HomeOutlineSectionController *)self configuration];
    v14 = [v13 actionCoordinator];
    v15 = [v12 geoMapItem];
    [v14 addRatingsForMapItem:v15];
    goto LABEL_7;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  v17 = [v23 cellModel];
  v11 = v17;
  if (v16)
  {
    v12 = [v17 sharedTripSummary];
    v18 = [v12 sharedTrips];
    v13 = [v18 firstObject];

    v14 = [(HomeOutlineSectionController *)self configuration];
    v15 = [v14 actionCoordinator];
    [v15 presentSharedTrip:v13 inPopoverFromView:v7];
LABEL_7:

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v11 = [v23 cellModel];
    v12 = [v11 collection];
    v20 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v21 = [(HomeOutlineSectionController *)self identifierCache];
    v22 = [v21 identifierForObject:v12];
    v13 = [v20 identifierPathByAppendingIdentifier:v22];

    [(HomeOutlineSectionController *)self toggleElementAtIdentifierPath:v13];
    goto LABEL_8;
  }

LABEL_10:
}

- (void)_processDeletion:(id)a3 forSharedTripSummary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 sharedTrips];
  if ([v8 count] == 1)
  {
    v9 = [v7 sharedTrips];
    v10 = [v9 lastObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 groupIdentifier];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = [(HomeOutlineSectionController *)self configuration];
    v13 = [v12 actionCoordinator];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10064C950;
    v14[3] = &unk_10165F3F0;
    objc_copyWeak(&v17, &location);
    v15 = v6;
    v16 = v11;
    [v13 confirmDeleteSharedTripWithSummary:v7 sourceView:0 sourceRect:v14 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)_processDeletion:(id)a3 forMapsSuggestionsEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HomeOutlineSectionController *)self configuration];
  v9 = [v8 actionCoordinator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10064CBD4;
  v15[3] = &unk_101661340;
  objc_copyWeak(&v17, &location);
  v10 = v6;
  v16 = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10064CC70;
  v12[3] = &unk_101624B18;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [v9 viewController:0 removeMapsSuggestionsEntry:v7 sourceView:0 sourceRect:v15 startBlock:v12 completionBlock:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_deleteSnapshot:(id)a3
{
  v18 = a3;
  v4 = [(HomeOutlineSectionController *)self deletions];
  v5 = [v18 identifierPath];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [v18 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 sharedTripSummary];

    v11 = [v18 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 entry];

    if (v14)
    {
      v15 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v18];
      [(HomeOutlineSuggestionsSectionController *)self _processDeletion:v15 forMapsSuggestionsEntry:v14];
    }

    else
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      v16 = [v10 sharedTrips];
      v17 = [v16 count];

      if (v17 > 1)
      {
        goto LABEL_11;
      }

      v15 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v18];
      [(HomeOutlineSuggestionsSectionController *)self _processDeletion:v15 forSharedTripSummary:v10];
    }

LABEL_11:
  }
}

- (void)collectionSortItem:(id)a3 didSelectSortType:(int64_t)a4
{
  sharedCollectionsDataProvider = self->_sharedCollectionsDataProvider;
  v7 = a3;
  [(SharedCollectionsDataProvider *)sharedCollectionsDataProvider setActive:0];
  v8 = [v7 collection];

  [v8 setSortType:a4];
  [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider setActive:1];
  v9 = [(HomeOutlineSectionController *)self delegate];
  [v9 sectionController:self setNeedsApplySnapshotAnimated:0];
}

- (void)_scrubSortItems
{
  v3 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider sharedCollections];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sortItems = self->_sortItems;
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)sortItems objectForKeyedSubscript:v11];
        v13 = [v9 identifier];
        [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = self->_sortItems;
  self->_sortItems = v3;
}

- (id)_sortItemForCollection:(id)a3
{
  v4 = a3;
  sortItems = self->_sortItems;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)sortItems objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [[HomeCollectionSortItem alloc] initWithCollection:v4 delegate:self];
    v8 = self->_sortItems;
    v9 = [v4 identifier];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)_childItemsInCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 content];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[NSMutableArray array];
    v8 = [(HomeOutlineSuggestionsSectionController *)self _sortItemForCollection:v4];
    [v7 addObject:v8];

    v9 = [v4 content];
    [v7 addObjectsFromArray:v9];

    v10 = [v7 copy];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)contentInjectorForSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if ((isKindOfClass & 1) != 0 && v5)
  {
    v8 = [v4 viewModel];
    v9 = [v8 collection];
    v7 = [[HomeCollectionContentInjector alloc] initWithCollection:v9];
    v10 = [(HomeOutlineSectionController *)self configuration];
    v11 = [v10 actionCoordinator];
    [(HomeCollectionContentInjector *)v7 setActionCoordinator:v11];
  }

  return v7;
}

- (void)showSharedCollection:(id)a3
{
  v4 = a3;
  if ([v4 handlerType] == 3)
  {
    [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider addSharedCollection:v4];
  }
}

- (BOOL)shouldPersistExpandedIdentifierPath:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)contextMenuForSnapshot:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    v15 = v4;
    v10 = sub_100C64B44(v14);
    v18 = v10;
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [UIMenu menuWithTitle:&stru_1016631F0 children:v11];

    objc_destroyWeak(&v16);
    goto LABEL_8;
  }

  v8 = [v4 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & (v8 != 0)) == 1)
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
  v3 = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  v4 = [(DistanceUnitDataProvider *)self->_distanceUnitDataProvider distanceUnit];
  v5 = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  v6 = +[NSMutableArray array];
  v7 = [(SharedCollectionsDataProvider *)self->_sharedCollectionsDataProvider sharedCollections];
  [v6 addObjectsFromArray:v7];

  v8 = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
  [v6 addObjectsFromArray:v8];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider suggestions];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        if ([(HomeOutlineSuggestionsSectionController *)self _canDisplaySuggestionsEntry:v14])
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  v15 = [(HomeOutlineSectionController *)self configuration];
  v16 = [v15 sectionIdentifier];
  v17 = [(HomeOutlineSectionController *)self expanded];
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
  v25 = v5;
  v26 = v3;
  v27 = v4;
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
  v18 = v3;
  v19 = v5;
  v20 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v6 sectionIdentifier:v16 sectionExpanded:v17 itemIdentifierBlock:v28 viewModelBlock:v24 childItemsBlock:v23 expandedBlock:v22];

  [(HomeOutlineSuggestionsSectionController *)self _scrubSortItems];

  return v20;
}

- (BOOL)_canDisplaySuggestionsEntry:(id)a3
{
  if ([a3 type] != 21)
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

- (HomeOutlineSuggestionsSectionController)initWithConfiguration:(id)a3 suggestionsDataProvider:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HomeOutlineSuggestionsSectionController;
  v8 = [(HomeOutlineSectionController *)&v20 initWithConfiguration:a3];
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

    objc_storeStrong(&v8->_suggestionsDataProvider, a4);
    v17 = +[NSMutableDictionary dictionary];
    sortItems = v8->_sortItems;
    v8->_sortItems = v17;
  }

  return v8;
}

@end