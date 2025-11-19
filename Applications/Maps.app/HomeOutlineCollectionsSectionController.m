@interface HomeOutlineCollectionsSectionController
- (BOOL)_dataProviderContainsCollection:(id)a3;
- (BOOL)_isCopyOperationWithDropSession:(id)a3 destinationIndexPath:(id)a4;
- (BOOL)_isMoveOperationWithDropSession:(id)a3 destinationIndexPath:(id)a4;
- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)a3;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (HomeOutlineCollectionsSectionController)initWithConfiguration:(id)a3;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInCollection:(id)a3 excludeDeletions:(BOOL)a4;
- (id)_collectionContainingIdentifierPath:(id)a3;
- (id)_collectionContainingIndexPath:(id)a3;
- (id)_contextMenuForCollectionSnapshot:(id)a3;
- (id)_contextMenuForMapItemSnapshot:(id)a3;
- (id)_contextMenuForTransitLineSnapshot:(id)a3;
- (id)_identifierForItem:(id)a3;
- (id)_sortItemForCollection:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)contentInjectorForSnapshot:(id)a3;
- (id)contextMenuForSnapshot:(id)a3;
- (id)shareItemSourceForSnapshot:(id)a3;
- (id)sourceViewForProfileTipPopover;
- (int64_t)_accessoryVisibilityForCollection:(id)a3 withAccessoryType:(int64_t)a4;
- (void)_addMapItemSnapshotToFavorites:(id)a3;
- (void)_addPlacesToCollectionSnapshot:(id)a3;
- (void)_clearPendingCollection;
- (void)_createCollection;
- (void)_deleteCollectionItemSnapshot:(id)a3;
- (void)_deleteCollectionSnapshot:(id)a3;
- (void)_deleteSnapshot:(id)a3;
- (void)_didConfirmDeleteCollection:(id)a3 deletion:(id)a4;
- (void)_duplicateCollection:(id)a3;
- (void)_duplicateCollectionSnapshot:(id)a3;
- (void)_editCollection:(id)a3;
- (void)_editCollectionSnapshot:(id)a3;
- (void)_moveMapItem:(id)a3 fromCollection:(id)a4 toCollection:(id)a5;
- (void)_moveMapItemSnapshot:(id)a3 toCollection:(id)a4;
- (void)_openSnapshot:(id)a3 inNewTab:(BOOL)a4;
- (void)_performCopyWithDropCoordinator:(id)a3;
- (void)_performMoveWithDropCoordinator:(id)a3;
- (void)_performPendingCollectionOperationIfAvailable;
- (void)_removeMapItemSnapshotFromFavorites:(id)a3 shortcut:(id)a4;
- (void)_renameMapItemSnapshot:(id)a3;
- (void)_scrubSortItems;
- (void)_showAndEditCollection:(id)a3;
- (void)_showCollection:(id)a3 completion:(id)a4;
- (void)_waitForCollection:(id)a3 thenPerformOperation:(id)a4;
- (void)collectionSortItem:(id)a3 didSelectSortType:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)didApplyInitialSectionSnapshot;
- (void)editCollection:(id)a3;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4;
- (void)showCollection:(id)a3;
- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5;
@end

@implementation HomeOutlineCollectionsSectionController

- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5
{
  v34 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v34 cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v34 cellModel];
  v13 = v12;
  if (isKindOfClass)
  {
    v14 = [v12 transitLine];

    if (!v14)
    {
LABEL_6:

      goto LABEL_11;
    }

    v15 = [IncompleteTransitLineItem alloc];
    v16 = [v13 transitLine];
    v17 = [(IncompleteTransitLineItem *)v15 initWithTransitLine:v16];

    v18 = [(HomeOutlineSectionController *)self configuration];
    v19 = [v18 actionCoordinator];
    v20 = [(HomeOutlineSectionController *)self configuration];
    v21 = [v20 homeActionDelegate];
    v22 = [v21 homeContaineeViewController];
    [v8 bounds];
    [v19 viewController:v22 openTransitLineCard:v17 sourceView:v8 sourceRect:?];

    goto LABEL_4;
  }

  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v23)
  {
    v24 = [v9 accessoryType];
    v13 = [v34 cellModel];
    v17 = [v13 collection];
    v25 = [(IncompleteTransitLineItem *)v17 handlerType];
    if (v24 == 1)
    {
      if (v25 == 4)
      {
        goto LABEL_5;
      }

      v26 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      v27 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v17];
      v18 = [v26 identifierPathByAppendingIdentifier:v27];

      v28 = [(HomeOutlineSectionController *)self sectionSnapshot];
      v29 = [v18 identifierPathByRemovingFirstIdentifier];
      v30 = [v28 nodeSnapshotAtIdentifierPath:v29];

      v31 = [(HomeOutlineSectionController *)self delegate];
      [v31 sectionController:self setNeedsApplySnapshotAnimated:1];

      [(HomeOutlineCollectionsSectionController *)self _editCollectionSnapshot:v30];
    }

    else
    {
      if (v25 == 4)
      {
        goto LABEL_5;
      }

      v32 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      v33 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v17];
      v18 = [v32 identifierPathByAppendingIdentifier:v33];

      [(HomeOutlineSectionController *)self toggleElementAtIdentifierPath:v18];
    }

LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

LABEL_11:
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  dropDestinationIdentifierPath = self->_dropDestinationIdentifierPath;
  self->_dropDestinationIdentifierPath = 0;

  v6 = [(HomeOutlineSectionController *)self delegate];
  [v6 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  dropDestinationIdentifierPath = self->_dropDestinationIdentifierPath;
  self->_dropDestinationIdentifierPath = 0;

  v6 = [(HomeOutlineSectionController *)self delegate];
  [v6 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v11 = a4;
  v5 = [v11 session];
  v6 = [v11 destinationIndexPath];
  v7 = [(HomeOutlineCollectionsSectionController *)self _isMoveOperationWithDropSession:v5 destinationIndexPath:v6];

  if (v7)
  {
    [(HomeOutlineCollectionsSectionController *)self _performMoveWithDropCoordinator:v11];
  }

  else
  {
    v8 = [v11 session];
    v9 = [v11 destinationIndexPath];
    v10 = [(HomeOutlineCollectionsSectionController *)self _isCopyOperationWithDropSession:v8 destinationIndexPath:v9];

    if (v10)
    {
      [(HomeOutlineCollectionsSectionController *)self _performCopyWithDropCoordinator:v11];
    }
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(HomeOutlineCollectionsSectionController *)self _isMoveOperationWithDropSession:v7 destinationIndexPath:v8])
  {
    v9 = 3;
  }

  else
  {
    if (![(HomeOutlineCollectionsSectionController *)self _isCopyOperationWithDropSession:v7 destinationIndexPath:v8])
    {
      v12 = 0;
      v10 = 0;
      goto LABEL_11;
    }

    v9 = 2;
  }

  v10 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v9 intent:2];
  if (!v10)
  {
    v12 = 0;
LABEL_11:
    v11 = 0;
    v14 = 0;
    v15 = 1;
    goto LABEL_14;
  }

  v11 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:v8];
  if (!v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v11];
  if (!v12)
  {
LABEL_13:
    v15 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v13 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v14 = [v13 identifierPathByAppendingIdentifier:v12];

  v15 = 0;
LABEL_14:
  if (v14 != self->_dropDestinationIdentifierPath && ![(IdentifierPath *)v14 isEqual:?])
  {
    objc_storeStrong(&self->_dropDestinationIdentifierPath, v14);
    v16 = [(HomeOutlineSectionController *)self delegate];
    [v16 sectionController:self setNeedsApplySnapshotAnimated:1];
  }

  if (v15)
  {
    v17 = [[UICollectionViewDropProposal alloc] initWithDropOperation:0];
  }

  else
  {
    v17 = v10;
  }

  v18 = v17;

  return v18;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v5 = [(HomeOutlineSectionController *)self delegate:a3];
  [v5 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HomeOutlineSectionController *)self delegate];
  v12 = [v11 isCollectionViewFocusedWithSectionController:self];

  v15.receiver = self;
  v15.super_class = HomeOutlineCollectionsSectionController;
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
  v6.super_class = HomeOutlineCollectionsSectionController;
  [(HomeOutlineSectionController *)&v6 collectionView:a3 didDeselectItemAtIndexPath:a4];
  v5 = [(HomeOutlineSectionController *)self delegate];
  [v5 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HomeOutlineSectionController *)self delegate];
  v9 = [v8 sectionController:self nodeSnapshotAtIndexPath:v7];

  v10 = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v9 viewModel];
  v13 = v12;
  if (isKindOfClass)
  {
    v14 = [v12 collection];
    if ([v14 handlerType] == 4)
    {
      v15 = [(HomeOutlineSectionController *)self configuration];
      v16 = [v15 actionCoordinator];
      v17 = [v13 collection];
      [v16 viewController:0 showCollection:v17];

      +[HomeAnalyticsManager captureCuratedCollectionAction:withCollectionHandler:verticalIndex:](HomeAnalyticsManager, "captureCuratedCollectionAction:withCollectionHandler:verticalIndex:", 2099, v14, [v7 row]);
    }

    if (![v14 handlerType])
    {
      v18 = [v14 showAction];
      if ([v14 handlerType] == 3)
      {
        v19 = 256;
      }

      else
      {
        v19 = 8;
      }

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 bucketedNumberOfItems]);
      v21 = [NSString stringWithFormat:@"%@", v20];

      [GEOAPPortal captureUserAction:v18 target:v19 value:v21];
    }
  }

  else
  {
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 row]);
    v14 = [v13 stringValue];
    [GEOAPPortal captureUserAction:2068 target:252 value:v14];
  }

LABEL_12:
  v23 = [v9 viewModel];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  if ((v24 & 1) == 0)
  {
    v26.receiver = self;
    v26.super_class = HomeOutlineCollectionsSectionController;
    [(HomeOutlineSectionController *)&v26 collectionView:v6 didSelectItemAtIndexPath:v7];
  }

  v25 = [(HomeOutlineSectionController *)self delegate];
  [v25 sectionController:self setNeedsApplySnapshotAnimated:1];
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
    v14.super_class = HomeOutlineCollectionsSectionController;
    v12 = [(HomeOutlineSectionController *)&v14 collectionView:v6 shouldSelectItemAtIndexPath:v7];
  }

  return v12;
}

- (void)_deleteCollectionItemSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 identifierPath];
  v6 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v5];

  v7 = [v4 viewModel];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___HomeCollectionItemCellModel])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 homeCollectionItem];
  v11 = v10;
  if (v6 && v10)
  {
    v12 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v4];
    v13 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v6];
    [(CollectionEditSession *)v13 addSelectedObject:v11];
    [(NSMutableArray *)self->_deleteCollectionEditSessions addObject:v13];
    objc_initWeak(&location, self);
    v23 = v12;
    v14 = [NSArray arrayWithObjects:&v23 count:1];
    [(HomeOutlineSectionController *)self beginDeletions:v14];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100F1D4F4;
    v17[3] = &unk_10165D2B0;
    objc_copyWeak(&v21, &location);
    v18 = v6;
    v15 = v12;
    v19 = v15;
    v16 = v13;
    v20 = v16;
    [(CollectionAddOrRemoveSession *)v16 applyToCollection:v18 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_didConfirmDeleteCollection:(id)a3 deletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14 = v7;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  [(HomeOutlineSectionController *)self beginDeletions:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F1D798;
  v10[3] = &unk_10165D288;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v6 deleteCollection:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_deleteCollectionSnapshot:(id)a3
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

  v8 = [v7 collection];
  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v4];
    objc_initWeak(&location, self);
    v10 = [(HomeOutlineSectionController *)self configuration];
    v11 = [v10 actionCoordinator];
    v19 = v8;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100F1DA60;
    v14[3] = &unk_10165F3F0;
    objc_copyWeak(&v17, &location);
    v15 = v8;
    v13 = v9;
    v16 = v13;
    [v11 viewController:0 confirmDeleteCollections:v12 sourceItem:0 sourceRect:v14 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)_deleteSnapshot:(id)a3
{
  v11 = a3;
  v4 = [(HomeOutlineSectionController *)self deletions];
  v5 = [v11 identifierPath];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [v11 viewModel];
    v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___HomeCollectionItemCellModel];

    if (v7 && v8)
    {
      [(HomeOutlineCollectionsSectionController *)self _deleteCollectionItemSnapshot:v11];
    }

    else
    {
      v9 = [v11 viewModel];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && v9)
      {
        [(HomeOutlineCollectionsSectionController *)self _deleteCollectionSnapshot:v11];
      }
    }
  }
}

- (id)_collectionContainingIdentifierPath:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2)
  {
    v6 = [v4 identifiers];
    v7 = [v6 objectAtIndexedSubscript:1];

    v8 = [(HomeOutlineSectionController *)self sectionSnapshot];
    v9 = [v8 childSnapshotWithIdentifier:v7];

    v10 = [v9 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v5 = [v12 collection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_collectionContainingIndexPath:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HomeOutlineSectionController *)self delegate];
    v6 = [v5 sectionController:self nodeSnapshotAtIndexPath:v4];

    if (v6)
    {
      v7 = [v6 identifierPath];
      v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_performCopyWithDropCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:v5];

  v7 = [v4 destinationIndexPath];
  v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:v7];

  if (v6 && v8 && [v8 contentType] == 1 && (objc_msgSend(v8, "containsItem:", v6) & 1) == 0)
  {
    v9 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v8];
    [(CollectionEditSession *)v9 addSelectedObject:v6];
    [(NSMutableArray *)self->_dropCollectionEditSessions addObject:v9];
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F1DF3C;
    v11[3] = &unk_10165D238;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v10 = v9;
    v13 = v10;
    [(CollectionAddOrRemoveSession *)v10 applyToCollection:v12 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isCopyOperationWithDropSession:(id)a3 destinationIndexPath:(id)a4
{
  v8 = a4;
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:a3];
  v7 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:v8];

  LOBYTE(v8) = 0;
  if (v6 && v7)
  {
    if ([v7 contentType] == 1)
    {
      LODWORD(v8) = [v7 containsItem:v6] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (void)_performMoveWithDropCoordinator:(id)a3
{
  v17 = a3;
  v4 = [v17 items];
  v5 = [v4 firstObject];
  v6 = [v5 dragItem];
  v7 = [v6 localObject];

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

  if (v9)
  {
    v10 = [v17 session];
    v11 = [(HomeOutlineSectionController *)self mapItemForDropSession:v10];

    v12 = [v17 destinationIndexPath];
    v13 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:v12];

    v14 = [v9 itemSnapshot];
    v15 = [v14 identifierPath];
    v16 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v15];

    [(HomeOutlineCollectionsSectionController *)self _moveMapItem:v11 fromCollection:v16 toCollection:v13];
  }
}

- (BOOL)_isMoveOperationWithDropSession:(id)a3 destinationIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 items];
  v9 = [v8 firstObject];
  v10 = [v9 localObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HomeOutlineSectionController *)self mapItemForDropSession:v6];
    v14 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:v7];
    v17 = [v12 itemSnapshot];
    v15 = [v17 identifierPath];
    v16 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v15];

    LOBYTE(v17) = 0;
    if (v13 && v14 && v16)
    {
      if ([v14 contentType] == 1)
      {
        LOBYTE(v17) = 0;
        if (([v14 containsItem:v13] & 1) == 0 && v14 != v16)
        {
          LODWORD(v17) = [v14 isEqual:v16] ^ 1;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4
{
  if (a4 == 2)
  {
    [(HomeOutlineCollectionsSectionController *)self _createCollection];
  }
}

- (void)_createCollection
{
  v3 = +[CollectionHandler collection];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Collections] New Guide" value:@"localized string not found" table:0];

  [v3 updateTitle:v5];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F1E544;
  v7[3] = &unk_10165D288;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [v6 createCollection:v7];
  [GEOAPPortal captureUserAction:2072 target:8 value:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_duplicateCollection:(id)a3
{
  v4 = a3;
  if ([v4 contentType] == 1 && !objc_msgSend(v4, "handlerType"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[Maps Home] Duplicated Collection Name" value:@"localized string not found" table:0];
    v7 = [v4 title];
    v8 = v7;
    v9 = &stru_1016631F0;
    if (v7)
    {
      v9 = v7;
    }

    v10 = [NSString stringWithFormat:v6, v9];

    v11 = +[CollectionHandler collection];
    [v11 updateTitle:v10];
    v12 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v4];
    v13 = [v4 content];
    [(CollectionEditSession *)v12 addSelectedObjects:v13];

    objc_initWeak(&location, self);
    [(NSMutableArray *)self->_duplicateCollectionEditSessions addObject:v12];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100F1E82C;
    v15[3] = &unk_10165D238;
    objc_copyWeak(&v18, &location);
    v16 = v4;
    v14 = v12;
    v17 = v14;
    [(CollectionAddOrRemoveSession *)v14 applyToCollection:v11 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)_moveMapItem:(id)a3 fromCollection:(id)a4 toCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v8 && v10 && [v10 contentType] == 1 && (objc_msgSend(v11, "containsItem:", v8) & 1) == 0 && v11 != v9 && (objc_msgSend(v11, "isEqual:", v9) & 1) == 0)
  {
    v12 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v11];
    v13 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v9];
    [(CollectionEditSession *)v12 addSelectedObject:v8];
    [(CollectionEditSession *)v13 addSelectedObject:v8];
    objc_initWeak(&location, self);
    [(NSMutableArray *)self->_moveCollectionEditSessions addObject:v12];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100F1EB30;
    v16[3] = &unk_10165D260;
    objc_copyWeak(&v21, &location);
    v17 = v11;
    v14 = v13;
    v18 = v14;
    v19 = v9;
    v15 = v12;
    v20 = v15;
    [(CollectionAddOrRemoveSession *)v15 applyToCollection:v17 completion:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_openSnapshot:(id)a3 inNewTab:(BOOL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(UISceneActivationRequestOptions);
  v7 = [v5 identifierPath];

  v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v7];

  v9 = [v8 handlerType];
  if (v9)
  {
    if (v9 != 4)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v10 = [[NSUserActivity alloc] initWithActivityType:NSUserActivityTypeBrowsingWeb];
    v11 = [v8 fullSharingURL];
    [v10 setWebpageURL:v11];
  }

  else
  {
    v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
    v12 = [(HomeOutlineSectionController *)self configuration];
    v13 = [v12 homeActionDelegate];
    v14 = [v13 homeContaineeViewController];
    v15 = [v14 _maps_mapsSceneDelegate];
    v11 = [v15 mapsActivityWithFidelity:2];

    v16 = [v8 identifier];
    [v11 setUserCreatedCollectionID:v16];

    v17 = [v11 data];
    v18 = [v17 bzip2CompressedData];

    if (v18)
    {
      v25 = @"bs";
      v26 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v10 setUserInfo:v19];
    }
  }

LABEL_9:
  [v10 setEligibleForHandoff:0];
  v20 = [(HomeOutlineSectionController *)self configuration];
  v21 = [v20 homeActionDelegate];
  v22 = [v21 homeContaineeViewController];
  v23 = [v22 _maps_uiScene];
  [v6 setRequestingScene:v23];

  v24 = +[UIApplication sharedApplication];
  [v24 requestSceneSessionActivation:0 userActivity:v10 options:v6 errorHandler:0];
}

- (void)_removeMapItemSnapshotFromFavorites:(id)a3 shortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 mapItem];
  if (v11)
  {
    v12 = [v6 identifierPath];
    v13 = [v12 lastIdentifier];

    shortcutEditSessions = self->_shortcutEditSessions;
    v15 = [v6 identifierPath];
    v16 = [v15 lastIdentifier];
    v17 = [(NSMutableDictionary *)shortcutEditSessions objectForKeyedSubscript:v16];

    if (!v17)
    {
      v18 = [ShortcutEditSession editSessionWithShortcut:v7];
      [(NSMutableDictionary *)self->_shortcutEditSessions setObject:v18 forKeyedSubscript:v13];
      objc_initWeak(&location, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100F1F2CC;
      v19[3] = &unk_10165FC50;
      objc_copyWeak(&v21, &location);
      v20 = v13;
      [v18 removeFromShortcutsWithCompletion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_addMapItemSnapshotToFavorites:(id)a3
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

  v8 = [v7 mapItem];
  if (v8)
  {
    v9 = [v4 identifierPath];
    v10 = [v9 lastIdentifier];

    v11 = [(NSMutableDictionary *)self->_shortcutEditSessions objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = [ShortcutEditSession addSessionWithType:1 mapItem:v8];
      [(NSMutableDictionary *)self->_shortcutEditSessions setObject:v12 forKeyedSubscript:v10];
      objc_initWeak(&location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100F1F530;
      v13[3] = &unk_10165FC50;
      objc_copyWeak(&v15, &location);
      v14 = v10;
      [v12 saveWithCompletion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_renameMapItemSnapshot:(id)a3
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

  v8 = [v7 mapItem];

  v9 = [v4 identifierPath];

  v10 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v9];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [(HomeOutlineSectionController *)self configuration];
    v13 = [v12 actionCoordinator];
    v14 = [(HomeOutlineSectionController *)self configuration];
    v15 = [v14 homeActionDelegate];
    v16 = [v15 homeContaineeViewController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100F1F780;
    v17[3] = &unk_10165D210;
    v18 = v10;
    v19 = v8;
    [v13 viewController:v16 editNameOfMapItem:v19 saveHandler:v17 cancelHandler:0];
  }
}

- (void)_moveMapItemSnapshot:(id)a3 toCollection:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [v6 viewModel];
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

  v10 = [v9 mapItem];

  v11 = [v6 identifierPath];

  v12 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v11];

  if (v10)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [(HomeOutlineCollectionsSectionController *)self _moveMapItem:v10 fromCollection:v12 toCollection:v14];
  }
}

- (void)_duplicateCollectionSnapshot:(id)a3
{
  v4 = [a3 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v8 = [v6 collection];

  v7 = v8;
  if (v8)
  {
    [(HomeOutlineCollectionsSectionController *)self _duplicateCollection:v8];
    v7 = v8;
  }
}

- (void)_addPlacesToCollectionSnapshot:(id)a3
{
  v4 = [a3 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v13 = [v6 collection];

  if (v13)
  {
    v7 = [(CollectionEditSession *)[CollectionSaveSession alloc] initWithCollection:v13];
    v8 = [(HomeOutlineSectionController *)self configuration];
    v9 = [v8 actionCoordinator];
    v10 = [(HomeOutlineSectionController *)self configuration];
    v11 = [v10 homeActionDelegate];
    v12 = [v11 homeContaineeViewController];
    [v9 viewController:v12 addItemsFromACToCollection:v7];
  }
}

- (id)_contextMenuForTransitLineSnapshot:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100F1FE8C;
  v24[3] = &unk_101661340;
  objc_copyWeak(&v26, &location);
  v6 = v4;
  v25 = v6;
  v17 = sub_100C64BD8(v24);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100F1FEE0;
  v21[3] = &unk_101661340;
  objc_copyWeak(&v23, &location);
  v7 = v6;
  v22 = v7;
  v8 = sub_100C64C6C(v21);
  v29[0] = v17;
  v29[1] = v8;
  v9 = [NSArray arrayWithObjects:v29 count:2];
  v10 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v9];

  [v5 addObject:v10];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100F1FF34;
  v18[3] = &unk_101661340;
  objc_copyWeak(&v20, &location);
  v11 = v7;
  v19 = v11;
  v12 = sub_100C64DB4(v18);
  v28 = v12;
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v14 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v13];

  [v5 addObject:v14];
  v15 = [UIMenu menuWithTitle:&stru_1016631F0 children:v5];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v15;
}

- (id)_contextMenuForMapItemSnapshot:(id)a3
{
  v64 = a3;
  v4 = [v64 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v59 = v6;
  v60 = [v6 mapItem];
  if (v60)
  {
    v61 = +[NSMutableArray array];
    objc_initWeak(&location, self);
    v7 = +[CollectionManager sharedManager];
    v8 = [v7 collectionsNotContainingMapItem:v60];

    v63 = +[NSMutableArray array];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (v9)
    {
      v10 = *v92;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v92 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v91 + 1) + 8 * i);
          v13 = [v12 title];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = &stru_1016631F0;
          }

          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_100F20AEC;
          v87[3] = &unk_10165D1C8;
          objc_copyWeak(&v90, &location);
          v88 = v64;
          v89 = v12;
          v16 = [UIAction actionWithTitle:v15 image:0 identifier:0 handler:v87];

          [v63 addObject:v16];
          objc_destroyWeak(&v90);
        }

        v9 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
      }

      while (v9);
    }

    v17 = +[NSBundle mainBundle];
    v58 = [v17 localizedStringForKey:@"[Maps Home] New Guide" value:@"localized string not found" table:0];

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100F20B3C;
    v84[3] = &unk_101660418;
    objc_copyWeak(&v86, &location);
    v18 = v64;
    v85 = v18;
    v52 = [UIAction actionWithTitle:v58 image:0 identifier:0 handler:v84];
    v100 = v52;
    v19 = [NSArray arrayWithObjects:&v100 count:1];
    v57 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v19];

    [v63 addObject:v57];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"[Maps Home] Move to" value:@"localized string not found" table:0];
    v56 = [UIMenu menuWithTitle:v21 children:v63];

    [v61 addObject:v56];
    if ([v60 _maps_canRenameCollectionItem])
    {
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100F20C10;
      v81[3] = &unk_101661340;
      objc_copyWeak(&v83, &location);
      v82 = v18;
      v22 = v81;
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"[Maps Home] Rename Place" value:@"localized string not found" table:0];
      v25 = sub_100C64A60(v24, v22);

      v99 = v25;
      v26 = [NSArray arrayWithObjects:&v99 count:1];
      v27 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v26];

      [v61 addObject:v27];
      objc_destroyWeak(&v83);
    }

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100F20C60;
    v78[3] = &unk_101661340;
    objc_copyWeak(&v80, &location);
    v28 = v18;
    v79 = v28;
    v55 = sub_100C64BD8(v78);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100F20CB4;
    v75[3] = &unk_101661340;
    objc_copyWeak(&v77, &location);
    v29 = v28;
    v76 = v29;
    v30 = sub_100C64C6C(v75);
    v98[0] = v55;
    v51 = v30;
    v98[1] = v30;
    v31 = [NSArray arrayWithObjects:v98 count:2];
    v54 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v31];

    [v61 addObject:v54];
    v32 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:0];
    [v61 addObject:v32];
    v33 = +[ShortcutManager sharedManager];
    v53 = [v33 meCard];

    v34 = [v53 _maps_shortcutForMapItem:v60];
    if (v34)
    {
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100F20D58;
      v68[3] = &unk_101661480;
      v35 = &v71;
      objc_copyWeak(&v71, &location);
      v69 = v29;
      v70 = v34;
      v36 = sub_100C64D00(v68);
      v37 = &v69;
      v38 = v70;
    }

    else
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100F20D08;
      v72[3] = &unk_101661340;
      v35 = &v74;
      objc_copyWeak(&v74, &location);
      v73 = v29;
      v40 = v72;
      v41 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
      v42 = +[NSBundle mainBundle];
      v38 = v42;
      if (v41)
      {
        v43 = @"[Maps Home] Pin";
      }

      else
      {
        v43 = @"[Maps Home] Add to Favorites";
      }

      v44 = [v42 localizedStringForKey:v43 value:@"localized string not found" table:0];
      v36 = sub_100C64A60(v44, v40);

      v37 = &v73;
    }

    objc_destroyWeak(v35);
    v97 = v36;
    v45 = [NSArray arrayWithObjects:&v97 count:1];
    v46 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v45];

    [v61 addObject:v46];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100F20DA8;
    v65[3] = &unk_101661340;
    objc_copyWeak(&v67, &location);
    v66 = v29;
    v47 = sub_100C64DB4(v65);
    v96 = v47;
    v48 = [NSArray arrayWithObjects:&v96 count:1];
    v49 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v48];

    [v61 addObject:v49];
    v39 = [UIMenu menuWithTitle:&stru_1016631F0 children:v61];

    objc_destroyWeak(&v67);
    objc_destroyWeak(&v77);

    objc_destroyWeak(&v80);
    objc_destroyWeak(&v86);

    objc_destroyWeak(&location);
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)_contextMenuForCollectionSnapshot:(id)a3
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

  v8 = [v7 collection];
  v9 = v8;
  if (v8 && ([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"__internal_CollectionSavedLinesIdentifier"), v10, (v11 & 1) == 0))
  {
    v45 = +[NSMutableArray array];
    objc_initWeak(&location, self);
    if (![v9 handlerType])
    {
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100F21698;
      v62[3] = &unk_101661340;
      objc_copyWeak(&v64, &location);
      v63 = v4;
      v13 = v62;
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"[Maps Home] Edit Guide" value:@"localized string not found" table:0];

      v16 = sub_100C64A60(v15, v13);

      v70 = v16;
      v17 = [NSArray arrayWithObjects:&v70 count:1];
      v18 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v17];

      [v45 addObject:v18];
      objc_destroyWeak(&v64);
    }

    if (![v9 handlerType])
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100F216E8;
      v59[3] = &unk_101661340;
      objc_copyWeak(&v61, &location);
      v60 = v4;
      v19 = v59;
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"[Maps Home] Add New Place" value:@"localized string not found" table:0];
      v22 = sub_100C64A60(v21, v19);

      v69 = v22;
      v23 = [NSArray arrayWithObjects:&v69 count:1];
      v24 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v23];

      [v46 addObject:v24];
      objc_destroyWeak(&v61);
    }

    if (![v9 handlerType])
    {
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100F21738;
      v56[3] = &unk_101661340;
      objc_copyWeak(&v58, &location);
      v57 = v4;
      v25 = v56;
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"[Maps Home] Duplicate Guide" value:@"localized string not found" table:0];

      v28 = sub_100C64A60(v27, v25);

      v68 = v28;
      v29 = [NSArray arrayWithObjects:&v68 count:1];
      v30 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v29];

      [v46 addObject:v30];
      objc_destroyWeak(&v58);
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100F21788;
    v53[3] = &unk_101661340;
    objc_copyWeak(&v55, &location);
    v31 = v4;
    v54 = v31;
    v32 = sub_100C64BD8(v53);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100F217DC;
    v50[3] = &unk_101661340;
    objc_copyWeak(&v52, &location);
    v33 = v31;
    v51 = v33;
    v34 = sub_100C64C6C(v50);
    v67[0] = v32;
    v67[1] = v34;
    v35 = [NSArray arrayWithObjects:v67 count:2];
    v36 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v35];

    [v46 addObject:v36];
    v37 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:0];
    [v46 addObject:v37];
    if ([v9 canDelete])
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100F21830;
      v47[3] = &unk_101661340;
      objc_copyWeak(&v49, &location);
      v48 = v33;
      v38 = v47;
      v39 = +[NSBundle mainBundle];
      v40 = [v39 localizedStringForKey:@"[Maps Home] Delete Guide" value:@"localized string not found" table:0];

      v41 = sub_100C64A60(v40, v38);

      v66 = v41;
      v42 = [NSArray arrayWithObjects:&v66 count:1];
      v43 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v42];

      [v46 addObject:v43];
      objc_destroyWeak(&v49);
    }

    v12 = [UIMenu menuWithTitle:&stru_1016631F0 children:v46];

    objc_destroyWeak(&v52);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contextMenuForSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && v5)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForCollectionSnapshot:v4];
LABEL_10:
    v12 = v7;
    goto LABEL_11;
  }

  v8 = [v4 viewModel];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) != 0 && v8)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForMapItemSnapshot:v4];
    goto LABEL_10;
  }

  v10 = [v4 viewModel];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  v12 = 0;
  if ((v11 & 1) != 0 && v10)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForTransitLineSnapshot:v4];
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

- (void)collectionSortItem:(id)a3 didSelectSortType:(int64_t)a4
{
  collectionsDataProvider = self->_collectionsDataProvider;
  v7 = a3;
  [(CollectionsDataProvider *)collectionsDataProvider setActive:0];
  v8 = [v7 collection];

  [v8 setSortType:a4];
  [(CollectionsDataProvider *)self->_collectionsDataProvider setActive:1];
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
  v4 = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
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

- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(HomeOutlineSectionController *)self deletions];
        v11 = [v9 identifierPath];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)_childItemsInCollection:(id)a3 excludeDeletions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 content];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v10 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1016631F0;
    }

    v13 = [v9 identifierPathByAppendingIdentifier:v12];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = [v6 content];
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v42 = v4;
      v17 = v14;
      v41 = v6;
      v18 = *v49;
      v19 = &__NSArray0__struct;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:*(*(&v48 + 1) + 8 * i), v41];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = &stru_1016631F0;
          }

          v24 = [v13 identifierPathByAppendingIdentifier:v23];

          v25 = [(HomeOutlineSectionController *)self deletions];
          v26 = [v25 objectForKeyedSubscript:v24];

          if (!v26)
          {

            v6 = v41;
            v27 = [(HomeOutlineCollectionsSectionController *)self _sortItemForCollection:v41];
            v14 = [NSMutableArray arrayWithObject:v27];

            if (v42)
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v28 = [v41 content];
              v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v29)
              {
                v30 = v29;
                v43 = v14;
                v31 = *v45;
                do
                {
                  for (j = 0; j != v30; j = j + 1)
                  {
                    if (*v45 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v44 + 1) + 8 * j);
                    v34 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v33];
                    v35 = v34;
                    if (v34)
                    {
                      v36 = v34;
                    }

                    else
                    {
                      v36 = &stru_1016631F0;
                    }

                    v37 = [v13 identifierPathByAppendingIdentifier:v36];

                    v38 = [(HomeOutlineSectionController *)self deletions];
                    v39 = [v38 objectForKeyedSubscript:v37];

                    if (!v39)
                    {
                      [v43 addObject:v33];
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
                }

                while (v30);
                v6 = v41;
                v14 = v43;
              }
            }

            else
            {
              v28 = [v41 content];
              [v14 addObjectsFromArray:v28];
            }

            v19 = [v14 copy];
            goto LABEL_35;
          }
        }

        v16 = [v17 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v6 = v41;
      v14 = v17;
    }

    else
    {
      v19 = &__NSArray0__struct;
    }

LABEL_35:
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  return v19;
}

- (id)_identifierForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine];
  v6 = [(HomeOutlineSectionController *)self identifierCache];
  if (v5)
  {
    v7 = MKMapItemIdentifierFromGEOTransitLine();

    v4 = v7;
  }

  v8 = [v6 identifierForObject:v4];

  return v8;
}

- (BOOL)_dataProviderContainsCollection:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * i) == v4 || ([v4 isEqual:?] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (void)_editCollectionSnapshot:(id)a3
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

  v8 = [v7 collection];
  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self delegate];
    v10 = [v4 identifierPath];
    v11 = [v9 sectionController:self indexPathForIdentifierPath:v10];

    if (v11)
    {
      v12 = [(HomeOutlineSectionController *)self configuration];
      v13 = [v12 collectionView];
      v14 = [v13 cellForItemAtIndexPath:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        v17 = [v16 trailingAccessoryConfigurations];
        v18 = [v17 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          objc_storeStrong(&self->_editingCollection, v8);
          v21 = [(HomeOutlineSectionController *)self delegate];
          [v21 sectionController:self setNeedsApplySnapshotAnimated:1];

          objc_initWeak(&location, self);
          v22 = [(HomeOutlineSectionController *)self configuration];
          v34 = [v22 actionCoordinator];
          v36 = [(HomeOutlineSectionController *)self configuration];
          v35 = [v36 homeActionDelegate];
          v23 = [v35 homeContaineeViewController];
          v24 = [v20 customView];
          v25 = [v20 customView];
          [v25 bounds];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100F226F8;
          v37[3] = &unk_101661340;
          objc_copyWeak(&v39, &location);
          v38 = v8;
          [v34 viewController:v23 editCollection:v38 sourceView:v24 sourceRect:v37 completion:{v27, v29, v31, v33}];

          objc_destroyWeak(&v39);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)_editCollection:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_editingCollection, a3);
  v5 = [(HomeOutlineSectionController *)self delegate];
  [v5 sectionController:self setNeedsApplySnapshotAnimated:1];

  v6 = [(HomeOutlineSectionController *)self delegate];
  [v6 applySnapshotIfNeededWithSectionController:self];

  editingCollection = self->_editingCollection;
  self->_editingCollection = 0;

  v8 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:v11];
  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self sectionSnapshot];
    v10 = [v9 childSnapshotWithIdentifier:v8];

    if (v10)
    {
      [(HomeOutlineCollectionsSectionController *)self _editCollectionSnapshot:v10];
    }
  }
}

- (void)_showAndEditCollection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F22980;
  v6[3] = &unk_10165FC50;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _showCollection:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_showCollection:(id)a3 completion:(id)a4
{
  v14 = a4;
  v6 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:a3];
  if (v6)
  {
    v7 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v8 = [v7 identifierPathByAppendingIdentifier:v6];

    v9 = [(HomeOutlineSectionController *)self sectionSnapshot];
    v10 = [v8 identifierPathByRemovingFirstIdentifier];
    v11 = [v9 nodeSnapshotAtIdentifierPath:v10];

    if (v11)
    {
      v12 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v12];

      [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v8];
      v13 = [(HomeOutlineSectionController *)self delegate];
      [v13 sectionController:self selectItemAtIdentifierPath:v8 completion:v14];
    }
  }
}

- (void)_performPendingCollectionOperationIfAvailable
{
  if (self->_pendingCollection)
  {
    if ([(HomeOutlineCollectionsSectionController *)self _dataProviderContainsCollection:?])
    {
      v3 = [(HomeOutlineSectionController *)self delegate];
      v4 = [v3 applySnapshotIfNeededWithSectionController:self];

      if (v4)
      {
        v6 = objc_retainBlock(self->_pendingCollectionOperation);
        [(HomeOutlineCollectionsSectionController *)self _clearPendingCollection];
        v5 = v6;
        if (v6)
        {
          (*(v6 + 2))(v6);
          v5 = v6;
        }
      }
    }
  }
}

- (void)_waitForCollection:(id)a3 thenPerformOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(HomeOutlineCollectionsSectionController *)self _clearPendingCollection];
  if (-[HomeOutlineCollectionsSectionController _dataProviderContainsCollection:](self, "_dataProviderContainsCollection:", v7) && (-[HomeOutlineSectionController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 applySnapshotIfNeededWithSectionController:self], v9, v10))
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    objc_storeStrong(&self->_pendingCollection, a3);
    v11 = objc_retainBlock(v8);
    pendingCollectionOperation = self->_pendingCollectionOperation;
    self->_pendingCollectionOperation = v11;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100F22D74;
    v15[3] = &unk_10165D1A0;
    v16 = v7;
    objc_copyWeak(&v17, &location);
    v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v15 block:10.0];
    pendingCollectionTimer = self->_pendingCollectionTimer;
    self->_pendingCollectionTimer = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)_clearPendingCollection
{
  pendingCollection = self->_pendingCollection;
  self->_pendingCollection = 0;

  pendingCollectionOperation = self->_pendingCollectionOperation;
  self->_pendingCollectionOperation = 0;

  [(NSTimer *)self->_pendingCollectionTimer invalidate];
  pendingCollectionTimer = self->_pendingCollectionTimer;
  self->_pendingCollectionTimer = 0;
}

- (id)sourceViewForProfileTipPopover
{
  v3 = [(HomeOutlineSectionController *)self delegate];
  v4 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [v3 sectionController:self indexPathForIdentifierPath:v4];

  v6 = [(HomeOutlineSectionController *)self configuration];
  v7 = [v6 collectionView];
  v8 = [v7 cellForItemAtIndexPath:v5];

  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v9];

    v10 = v8;
  }

  return v8;
}

- (void)editCollection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F2309C;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _waitForCollection:v5 thenPerformOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)showCollection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F231D4;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _waitForCollection:v5 thenPerformOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)shareItemSourceForSnapshot:(id)a3
{
  v4 = [a3 identifierPath];
  v5 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v4];

  if (v5)
  {
    v6 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentInjectorForSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 viewModel];
  v8 = v7;
  if ((isKindOfClass & 1) != 0 && v5)
  {
    v9 = [v7 collection];
    v10 = 0;
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    v9 = 0;
    if ((v11 & 1) == 0)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_11;
    }

    v10 = 0;
    v12 = 0;
    if (!v8)
    {
      goto LABEL_11;
    }

    v13 = [v4 identifierPath];
    v9 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:v13];

    v8 = [v4 viewModel];
    v10 = [v8 mapItem];
  }

  if (v9)
  {
    v12 = [[HomeCollectionContentInjector alloc] initWithCollection:v9 selectedMapItem:v10];
    v14 = [(HomeOutlineSectionController *)self configuration];
    v15 = [v14 actionCoordinator];
    [(HomeCollectionContentInjector *)v12 setActionCoordinator:v15];
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (int64_t)_accessoryVisibilityForCollection:(id)a3 withAccessoryType:(int64_t)a4
{
  if ((a4 - 1) > 1)
  {
    return 0;
  }

  editingCollection = self->_editingCollection;
  if (editingCollection == a3)
  {
    return 0;
  }

  else
  {
    return [a3 isEqual:{editingCollection, v4, v5}] ^ 1;
  }
}

- (NSArray)itemSnapshots
{
  v3 = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  v4 = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
  v5 = [(DistanceUnitDataProvider *)self->_distanceUnitDataProvider distanceUnit];
  v6 = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  v7 = [(HomeOutlineSectionController *)self configuration];
  v8 = [v7 sectionIdentifier];
  v9 = [(HomeOutlineSectionController *)self expanded];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100F23820;
  v32[3] = &unk_10165D100;
  v32[4] = self;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100F2382C;
  v27[3] = &unk_10165D128;
  v10 = v6;
  v28 = v10;
  v29 = self;
  v11 = v3;
  v30 = v11;
  v31 = v5;
  v25[4] = self;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100F2409C;
  v26[3] = &unk_10165D150;
  v26[4] = self;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100F2411C;
  v25[3] = &unk_10165D178;
  v12 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v4 sectionIdentifier:v8 sectionExpanded:v9 itemIdentifierBlock:v32 viewModelBlock:v27 childItemsBlock:v26 expandedBlock:v25];

  if ([(HomeOutlineCollectionsSectionController *)self _shouldShowAddButtonForItemSnapshots:v12])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Proactive Tray] Add Guide" value:@"localized string not found" table:0];

    v15 = [SmallButtonOutlineCellModel alloc];
    v16 = [UIImage systemImageNamed:@"plus.circle"];
    v17 = [UIImage systemImageNamed:@"plus.circle.fill"];
    v18 = [(SmallButtonOutlineCellModel *)v15 initWithStyle:1 title:v14 image:v16 hoverImage:v17 delegate:self];

    v19 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    v20 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v21 = [v20 identifierPathByAppendingIdentifier:@"AddButtonIdentifier"];
    v22 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v19 initWithIdentifierPath:v21 viewModel:v18 childSnapshots:&__NSArray0__struct expanded:0];

    v23 = [v12 arrayByAddingObject:v22];

    v12 = v23;
  }

  [(HomeOutlineCollectionsSectionController *)self _scrubSortItems];

  return v12;
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v3 = [SectionHeaderAddOutlineCellModel alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Proactive Tray] Guides Section" value:@"localized string not found" table:0];
  v6 = [(SectionHeaderAddOutlineCellModel *)v3 initWithTitle:v5 accessoryDelegate:self];

  return v6;
}

- (void)didApplyInitialSectionSnapshot
{
  v3.receiver = self;
  v3.super_class = HomeOutlineCollectionsSectionController;
  [(HomeOutlineSectionController *)&v3 didApplyInitialSectionSnapshot];
  [(HomeOutlineCollectionsSectionController *)self _performPendingCollectionOperationIfAvailable];
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = HomeOutlineCollectionsSectionController;
  v4 = a3;
  [(HomeOutlineSectionController *)&v6 homeDataProvidingObjectDidUpdate:v4];
  collectionsDataProvider = self->_collectionsDataProvider;

  if (collectionsDataProvider == v4)
  {
    [(HomeOutlineCollectionsSectionController *)self _performPendingCollectionOperationIfAvailable:v6.receiver];
  }
}

- (NSArray)dataProviders
{
  collectionsDataProvider = self->_collectionsDataProvider;
  v5[0] = self->_currentLocationDataProvider;
  v5[1] = collectionsDataProvider;
  v5[2] = self->_distanceUnitDataProvider;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (HomeOutlineCollectionsSectionController)initWithConfiguration:(id)a3
{
  v23.receiver = self;
  v23.super_class = HomeOutlineCollectionsSectionController;
  v3 = [(HomeOutlineSectionController *)&v23 initWithConfiguration:a3];
  if (v3)
  {
    v4 = objc_alloc_init(CurrentLocationDataProvider);
    currentLocationDataProvider = v3->_currentLocationDataProvider;
    v3->_currentLocationDataProvider = v4;

    v6 = [[CollectionsDataProvider alloc] initWithContext:1 observeInfo:0 observeContents:1];
    collectionsDataProvider = v3->_collectionsDataProvider;
    v3->_collectionsDataProvider = v6;

    v8 = objc_alloc_init(DistanceUnitDataProvider);
    distanceUnitDataProvider = v3->_distanceUnitDataProvider;
    v3->_distanceUnitDataProvider = v8;

    v10 = +[NSMutableDictionary dictionary];
    sortItems = v3->_sortItems;
    v3->_sortItems = v10;

    v12 = +[NSMutableArray array];
    dropCollectionEditSessions = v3->_dropCollectionEditSessions;
    v3->_dropCollectionEditSessions = v12;

    v14 = +[NSMutableArray array];
    deleteCollectionEditSessions = v3->_deleteCollectionEditSessions;
    v3->_deleteCollectionEditSessions = v14;

    v16 = +[NSMutableArray array];
    moveCollectionEditSessions = v3->_moveCollectionEditSessions;
    v3->_moveCollectionEditSessions = v16;

    v18 = +[NSMutableArray array];
    duplicateCollectionEditSessions = v3->_duplicateCollectionEditSessions;
    v3->_duplicateCollectionEditSessions = v18;

    v20 = +[NSMutableDictionary dictionary];
    shortcutEditSessions = v3->_shortcutEditSessions;
    v3->_shortcutEditSessions = v20;
  }

  return v3;
}

@end