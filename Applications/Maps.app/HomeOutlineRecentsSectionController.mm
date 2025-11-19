@interface HomeOutlineRecentsSectionController
- (BOOL)_shouldShowClearButtonForItemSnapshots:(id)a3;
- (HomeOutlineRecentsSectionController)initWithConfiguration:(id)a3;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)contextMenuForSnapshot:(id)a3;
- (void)_deleteMarkedLocationSnapshot:(id)a3;
- (void)_deleteRecentsSnapshots:(id)a3 deleteAll:(BOOL)a4;
- (void)_deleteSnapshot:(id)a3;
- (void)_presentAllRecents;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4;
- (void)smallButtonOutlineCellTapped:(id)a3;
- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5;
@end

@implementation HomeOutlineRecentsSectionController

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [GEOAPPortal captureUserAction:2064 target:8 value:0];
  v8.receiver = self;
  v8.super_class = HomeOutlineRecentsSectionController;
  [(HomeOutlineSectionController *)&v8 collectionView:v7 didSelectItemAtIndexPath:v6];
}

- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5
{
  v26 = a4;
  v7 = [a3 cellModel];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___HomeRecentsItemCellModel])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 homeRecentsItem];
    v11 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
    objc_opt_class();
    v12 = v10;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && ([v14 historyEntry], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "conformsToProtocol:", v11), v15, v16))
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = [v17 historyEntry];
      v19 = [v18 lineItem];

      v20 = [[IncompleteTransitLineItem alloc] initWithTransitLine:v19];
      v21 = [(HomeOutlineSectionController *)self configuration];
      v22 = [v21 actionCoordinator];
      v23 = [(HomeOutlineSectionController *)self configuration];
      v24 = [v23 homeActionDelegate];
      v25 = [v24 homeContaineeViewController];
      [v26 bounds];
      [v22 viewController:v25 openTransitLineCard:v20 sourceView:v26 sourceRect:?];
    }
  }
}

- (void)_presentAllRecents
{
  v3 = [(HomeOutlineSectionController *)self configuration];
  v2 = [v3 actionCoordinator];
  [v2 toggleTopLevelRecents];
}

- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4
{
  if (a4 == 3)
  {
    [(HomeOutlineRecentsSectionController *)self _presentAllRecents];
  }
}

- (void)smallButtonOutlineCellTapped:(id)a3
{
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HomeOutlineSectionController *)self sectionSnapshot];
  v6 = [v5 childSnapshots];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 viewModel];
        v13 = [v12 conformsToProtocol:&OBJC_PROTOCOL___HomeRecentsItemCellModel];

        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(HomeOutlineRecentsSectionController *)self _deleteRecentsSnapshots:v4 deleteAll:1];
}

- (void)_deleteRecentsSnapshots:(id)a3 deleteAll:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100DB4288;
  v17[3] = &unk_101654508;
  v17[4] = self;
  v7 = sub_100021DB0(v6, v17);
  v8 = sub_100021DB0(v7, &stru_101654548);
  objc_initWeak(&location, self);
  [(HomeOutlineSectionController *)self beginDeletions:v7];
  recentsDataProvider = self->_recentsDataProvider;
  if (v4)
  {
    v10 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100DB4338;
    v14[3] = &unk_10165D288;
    v11 = &v15;
    objc_copyWeak(&v15, &location);
    v14[4] = v7;
    [(RecentsDataProvider *)recentsDataProvider deleteAllRecentsWithCompletion:v14];
  }

  else
  {
    v10 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100DB43A8;
    v12[3] = &unk_10165D288;
    v11 = &v13;
    objc_copyWeak(&v13, &location);
    v12[4] = v7;
    [(RecentsDataProvider *)recentsDataProvider deleteRecents:v8 completion:v12];
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_deleteMarkedLocationSnapshot:(id)a3
{
  v4 = a3;
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

  v8 = [v7 searchResult];

  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v4];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [(HomeOutlineSectionController *)self beginDeletions:v10];

    v11 = [(HomeOutlineSectionController *)self configuration];
    v12 = [v11 actionCoordinator];
    [v12 deleteMarkedLocation:v8];
  }
}

- (void)_deleteSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineSectionController *)self deletions];
  v6 = [v4 identifierPath];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [v4 viewModel];
    v9 = [v8 conformsToProtocol:&OBJC_PROTOCOL___HomeRecentsItemCellModel];

    if (v8 && v9)
    {
      v13 = v4;
      v10 = [NSArray arrayWithObjects:&v13 count:1];
      [(HomeOutlineRecentsSectionController *)self _deleteRecentsSnapshots:v10 deleteAll:0];
    }

    else
    {
      v11 = [v4 viewModel];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && v11)
      {
        [(HomeOutlineRecentsSectionController *)self _deleteMarkedLocationSnapshot:v4];
      }
    }
  }
}

- (BOOL)_shouldShowClearButtonForItemSnapshots:(id)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 viewModel];
        v11 = [v10 conformsToProtocol:&OBJC_PROTOCOL___HomeRecentsItemCellModel];

        if (v10)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = [(HomeOutlineSectionController *)self deletions];
          v14 = [v9 identifierPath];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (!v15)
          {
            v16 = 1;
            goto LABEL_15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (id)contextMenuForSnapshot:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 viewModel];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___TwoLinesOutlineCellModel];

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100DB4AD0;
    v12[3] = &unk_101661340;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v8 = sub_100C64B44(v12);
    v16 = v8;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    v10 = [UIMenu menuWithTitle:&stru_1016631F0 children:v9];

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = 0;
  }

  objc_destroyWeak(&location);

  return v10;
}

- (NSArray)itemSnapshots
{
  v3 = +[NSMutableArray array];
  v4 = [(MarkedLocationDataProvider *)self->_markedLocationDataProvider markedLocation];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(RecentsDataProvider *)self->_recentsDataProvider recents];
  [v3 addObjectsFromArray:v5];

  v6 = [(RecentsDataFilter *)self->_recentsDataFilter filteredRecents:v3 excludingDuplicatesOfEntries:&__NSArray0__struct];
  UInteger = GEOConfigGetUInteger();
  if ([v6 count] > UInteger)
  {
    v8 = [v6 subarrayWithRange:{0, UInteger}];

    v6 = v8;
  }

  v9 = [(HomeOutlineSectionController *)self configuration];
  v10 = [v9 sectionIdentifier];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DB4E3C;
  v23[3] = &unk_10165D100;
  v23[4] = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100DB4EA8;
  v22[3] = &unk_101654460;
  v22[4] = self;
  v11 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v6 sectionIdentifier:v10 sectionExpanded:[(HomeOutlineSectionController *)self expanded] itemIdentifierBlock:v23 viewModelBlock:v22 childItemsBlock:&stru_1016544A0 expandedBlock:&stru_1016544E0];

  if ([(HomeOutlineRecentsSectionController *)self _shouldShowClearButtonForItemSnapshots:v11])
  {
    v12 = [SmallButtonOutlineCellModel alloc];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Proactive Tray] Clear Recents" value:@"localized string not found" table:0];
    v15 = [(SmallButtonOutlineCellModel *)v12 initWithStyle:0 title:v14 image:0 hoverImage:0 delegate:self];

    v16 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    v17 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v18 = [v17 identifierPathByAppendingIdentifier:@"ClearRecents"];
    v19 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v16 initWithIdentifierPath:v18 viewModel:v15 childSnapshots:&__NSArray0__struct expanded:0];

    v20 = [v11 arrayByAddingObject:v19];

    v11 = v20;
  }

  return v11;
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v3 = [SectionHeaderDisclosureOutlineCellModel alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Proactive Tray] Recents Section" value:@"localized string not found" table:0];
  v6 = [(SectionHeaderDisclosureOutlineCellModel *)v3 initWithTitle:v5 accessoryDelegate:self];

  return v6;
}

- (NSArray)dataProviders
{
  recentsDataProvider = self->_recentsDataProvider;
  v5[0] = self->_markedLocationDataProvider;
  v5[1] = recentsDataProvider;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (HomeOutlineRecentsSectionController)initWithConfiguration:(id)a3
{
  v11.receiver = self;
  v11.super_class = HomeOutlineRecentsSectionController;
  v3 = [(HomeOutlineSectionController *)&v11 initWithConfiguration:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MarkedLocationDataProvider);
    markedLocationDataProvider = v3->_markedLocationDataProvider;
    v3->_markedLocationDataProvider = v4;

    v6 = objc_alloc_init(RecentsDataProvider);
    recentsDataProvider = v3->_recentsDataProvider;
    v3->_recentsDataProvider = v6;

    v8 = [[RecentsDataFilter alloc] initWithSearchMode:1 filterPredicate:0];
    recentsDataFilter = v3->_recentsDataFilter;
    v3->_recentsDataFilter = v8;
  }

  return v3;
}

@end