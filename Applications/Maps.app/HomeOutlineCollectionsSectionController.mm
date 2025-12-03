@interface HomeOutlineCollectionsSectionController
- (BOOL)_dataProviderContainsCollection:(id)collection;
- (BOOL)_isCopyOperationWithDropSession:(id)session destinationIndexPath:(id)path;
- (BOOL)_isMoveOperationWithDropSession:(id)session destinationIndexPath:(id)path;
- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)snapshots;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (HomeOutlineCollectionsSectionController)initWithConfiguration:(id)configuration;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInCollection:(id)collection excludeDeletions:(BOOL)deletions;
- (id)_collectionContainingIdentifierPath:(id)path;
- (id)_collectionContainingIndexPath:(id)path;
- (id)_contextMenuForCollectionSnapshot:(id)snapshot;
- (id)_contextMenuForMapItemSnapshot:(id)snapshot;
- (id)_contextMenuForTransitLineSnapshot:(id)snapshot;
- (id)_identifierForItem:(id)item;
- (id)_sortItemForCollection:(id)collection;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)contentInjectorForSnapshot:(id)snapshot;
- (id)contextMenuForSnapshot:(id)snapshot;
- (id)shareItemSourceForSnapshot:(id)snapshot;
- (id)sourceViewForProfileTipPopover;
- (int64_t)_accessoryVisibilityForCollection:(id)collection withAccessoryType:(int64_t)type;
- (void)_addMapItemSnapshotToFavorites:(id)favorites;
- (void)_addPlacesToCollectionSnapshot:(id)snapshot;
- (void)_clearPendingCollection;
- (void)_createCollection;
- (void)_deleteCollectionItemSnapshot:(id)snapshot;
- (void)_deleteCollectionSnapshot:(id)snapshot;
- (void)_deleteSnapshot:(id)snapshot;
- (void)_didConfirmDeleteCollection:(id)collection deletion:(id)deletion;
- (void)_duplicateCollection:(id)collection;
- (void)_duplicateCollectionSnapshot:(id)snapshot;
- (void)_editCollection:(id)collection;
- (void)_editCollectionSnapshot:(id)snapshot;
- (void)_moveMapItem:(id)item fromCollection:(id)collection toCollection:(id)toCollection;
- (void)_moveMapItemSnapshot:(id)snapshot toCollection:(id)collection;
- (void)_openSnapshot:(id)snapshot inNewTab:(BOOL)tab;
- (void)_performCopyWithDropCoordinator:(id)coordinator;
- (void)_performMoveWithDropCoordinator:(id)coordinator;
- (void)_performPendingCollectionOperationIfAvailable;
- (void)_removeMapItemSnapshotFromFavorites:(id)favorites shortcut:(id)shortcut;
- (void)_renameMapItemSnapshot:(id)snapshot;
- (void)_scrubSortItems;
- (void)_showAndEditCollection:(id)collection;
- (void)_showCollection:(id)collection completion:(id)completion;
- (void)_waitForCollection:(id)collection thenPerformOperation:(id)operation;
- (void)collectionSortItem:(id)item didSelectSortType:(int64_t)type;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)didApplyInitialSectionSnapshot;
- (void)editCollection:(id)collection;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)sectionHeaderOutlineCell:(id)cell accessoryTypeTapped:(int64_t)tapped;
- (void)showCollection:(id)collection;
- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model;
@end

@implementation HomeOutlineCollectionsSectionController

- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model
{
  cellCopy = cell;
  tappedCopy = tapped;
  modelCopy = model;
  cellModel = [cellCopy cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  cellModel2 = [cellCopy cellModel];
  cellModel3 = cellModel2;
  if (isKindOfClass)
  {
    transitLine = [cellModel2 transitLine];

    if (!transitLine)
    {
LABEL_6:

      goto LABEL_11;
    }

    v15 = [IncompleteTransitLineItem alloc];
    transitLine2 = [cellModel3 transitLine];
    collection = [(IncompleteTransitLineItem *)v15 initWithTransitLine:transitLine2];

    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    homeActionDelegate = [configuration2 homeActionDelegate];
    homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
    [tappedCopy bounds];
    [actionCoordinator viewController:homeContaineeViewController openTransitLineCard:collection sourceView:tappedCopy sourceRect:?];

    goto LABEL_4;
  }

  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v23)
  {
    accessoryType = [modelCopy accessoryType];
    cellModel3 = [cellCopy cellModel];
    collection = [cellModel3 collection];
    handlerType = [(IncompleteTransitLineItem *)collection handlerType];
    if (accessoryType == 1)
    {
      if (handlerType == 4)
      {
        goto LABEL_5;
      }

      sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      v27 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:collection];
      configuration = [sectionIdentifierPath identifierPathByAppendingIdentifier:v27];

      sectionSnapshot = [(HomeOutlineSectionController *)self sectionSnapshot];
      identifierPathByRemovingFirstIdentifier = [configuration identifierPathByRemovingFirstIdentifier];
      v30 = [sectionSnapshot nodeSnapshotAtIdentifierPath:identifierPathByRemovingFirstIdentifier];

      delegate = [(HomeOutlineSectionController *)self delegate];
      [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

      [(HomeOutlineCollectionsSectionController *)self _editCollectionSnapshot:v30];
    }

    else
    {
      if (handlerType == 4)
      {
        goto LABEL_5;
      }

      sectionIdentifierPath2 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      v33 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:collection];
      configuration = [sectionIdentifierPath2 identifierPathByAppendingIdentifier:v33];

      [(HomeOutlineSectionController *)self toggleElementAtIdentifierPath:configuration];
    }

LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

LABEL_11:
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  dropDestinationIdentifierPath = self->_dropDestinationIdentifierPath;
  self->_dropDestinationIdentifierPath = 0;

  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  dropDestinationIdentifierPath = self->_dropDestinationIdentifierPath;
  self->_dropDestinationIdentifierPath = 0;

  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  v7 = [(HomeOutlineCollectionsSectionController *)self _isMoveOperationWithDropSession:session destinationIndexPath:destinationIndexPath];

  if (v7)
  {
    [(HomeOutlineCollectionsSectionController *)self _performMoveWithDropCoordinator:coordinatorCopy];
  }

  else
  {
    session2 = [coordinatorCopy session];
    destinationIndexPath2 = [coordinatorCopy destinationIndexPath];
    v10 = [(HomeOutlineCollectionsSectionController *)self _isCopyOperationWithDropSession:session2 destinationIndexPath:destinationIndexPath2];

    if (v10)
    {
      [(HomeOutlineCollectionsSectionController *)self _performCopyWithDropCoordinator:coordinatorCopy];
    }
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  if ([(HomeOutlineCollectionsSectionController *)self _isMoveOperationWithDropSession:updateCopy destinationIndexPath:pathCopy])
  {
    v9 = 3;
  }

  else
  {
    if (![(HomeOutlineCollectionsSectionController *)self _isCopyOperationWithDropSession:updateCopy destinationIndexPath:pathCopy])
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

  v11 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:pathCopy];
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

  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v14 = [sectionIdentifierPath identifierPathByAppendingIdentifier:v12];

  v15 = 0;
LABEL_14:
  if (v14 != self->_dropDestinationIdentifierPath && ![(IdentifierPath *)v14 isEqual:?])
  {
    objc_storeStrong(&self->_dropDestinationIdentifierPath, v14);
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
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

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  v5 = [(HomeOutlineSectionController *)self delegate:view];
  [v5 sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  viewCopy = view;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v12 = [delegate isCollectionViewFocusedWithSectionController:self];

  v15.receiver = self;
  v15.super_class = HomeOutlineCollectionsSectionController;
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
  v6.super_class = HomeOutlineCollectionsSectionController;
  [(HomeOutlineSectionController *)&v6 collectionView:view didDeselectItemAtIndexPath:path];
  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v9 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  viewModel2 = [v9 viewModel];
  v13 = viewModel2;
  if (isKindOfClass)
  {
    collection = [viewModel2 collection];
    if ([collection handlerType] == 4)
    {
      configuration = [(HomeOutlineSectionController *)self configuration];
      actionCoordinator = [configuration actionCoordinator];
      collection2 = [v13 collection];
      [actionCoordinator viewController:0 showCollection:collection2];

      +[HomeAnalyticsManager captureCuratedCollectionAction:withCollectionHandler:verticalIndex:](HomeAnalyticsManager, "captureCuratedCollectionAction:withCollectionHandler:verticalIndex:", 2099, collection, [pathCopy row]);
    }

    if (![collection handlerType])
    {
      showAction = [collection showAction];
      if ([collection handlerType] == 3)
      {
        v19 = 256;
      }

      else
      {
        v19 = 8;
      }

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [collection bucketedNumberOfItems]);
      v21 = [NSString stringWithFormat:@"%@", v20];

      [GEOAPPortal captureUserAction:showAction target:v19 value:v21];
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

    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
    collection = [v13 stringValue];
    [GEOAPPortal captureUserAction:2068 target:252 value:collection];
  }

LABEL_12:
  viewModel3 = [v9 viewModel];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  if ((v24 & 1) == 0)
  {
    v26.receiver = self;
    v26.super_class = HomeOutlineCollectionsSectionController;
    [(HomeOutlineSectionController *)&v26 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }

  delegate2 = [(HomeOutlineSectionController *)self delegate];
  [delegate2 sectionController:self setNeedsApplySnapshotAnimated:1];
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
    v14.super_class = HomeOutlineCollectionsSectionController;
    v12 = [(HomeOutlineSectionController *)&v14 collectionView:viewCopy shouldSelectItemAtIndexPath:pathCopy];
  }

  return v12;
}

- (void)_deleteCollectionItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  identifierPath = [snapshotCopy identifierPath];
  v6 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

  viewModel = [snapshotCopy viewModel];
  if ([viewModel conformsToProtocol:&OBJC_PROTOCOL___HomeCollectionItemCellModel])
  {
    v8 = viewModel;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  homeCollectionItem = [v9 homeCollectionItem];
  v11 = homeCollectionItem;
  if (v6 && homeCollectionItem)
  {
    v12 = [(HomeOutlineSectionController *)self deletionWithSnapshot:snapshotCopy];
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

- (void)_didConfirmDeleteCollection:(id)collection deletion:(id)deletion
{
  collectionCopy = collection;
  deletionCopy = deletion;
  objc_initWeak(&location, self);
  v14 = deletionCopy;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  [(HomeOutlineSectionController *)self beginDeletions:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F1D798;
  v10[3] = &unk_10165D288;
  objc_copyWeak(&v12, &location);
  v9 = deletionCopy;
  v11 = v9;
  [collectionCopy deleteCollection:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_deleteCollectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
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

  collection = [v7 collection];
  if (collection)
  {
    v9 = [(HomeOutlineSectionController *)self deletionWithSnapshot:snapshotCopy];
    objc_initWeak(&location, self);
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    v19 = collection;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100F1DA60;
    v14[3] = &unk_10165F3F0;
    objc_copyWeak(&v17, &location);
    v15 = collection;
    v13 = v9;
    v16 = v13;
    [actionCoordinator viewController:0 confirmDeleteCollections:v12 sourceItem:0 sourceRect:v14 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
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
    v8 = [viewModel conformsToProtocol:&OBJC_PROTOCOL___HomeCollectionItemCellModel];

    if (viewModel && v8)
    {
      [(HomeOutlineCollectionsSectionController *)self _deleteCollectionItemSnapshot:snapshotCopy];
    }

    else
    {
      viewModel2 = [snapshotCopy viewModel];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && viewModel2)
      {
        [(HomeOutlineCollectionsSectionController *)self _deleteCollectionSnapshot:snapshotCopy];
      }
    }
  }
}

- (id)_collectionContainingIdentifierPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] >= 2)
  {
    identifiers = [pathCopy identifiers];
    v7 = [identifiers objectAtIndexedSubscript:1];

    sectionSnapshot = [(HomeOutlineSectionController *)self sectionSnapshot];
    v9 = [sectionSnapshot childSnapshotWithIdentifier:v7];

    viewModel = [v9 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = viewModel;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    collection = [v12 collection];
  }

  else
  {
    collection = 0;
  }

  return collection;
}

- (id)_collectionContainingIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    delegate = [(HomeOutlineSectionController *)self delegate];
    v6 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

    if (v6)
    {
      identifierPath = [v6 identifierPath];
      v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];
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

- (void)_performCopyWithDropCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:session];

  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:destinationIndexPath];

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

- (BOOL)_isCopyOperationWithDropSession:(id)session destinationIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:session];
  v7 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:pathCopy];

  LOBYTE(pathCopy) = 0;
  if (v6 && v7)
  {
    if ([v7 contentType] == 1)
    {
      LODWORD(pathCopy) = [v7 containsItem:v6] ^ 1;
    }

    else
    {
      LOBYTE(pathCopy) = 0;
    }
  }

  return pathCopy;
}

- (void)_performMoveWithDropCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  items = [coordinatorCopy items];
  firstObject = [items firstObject];
  dragItem = [firstObject dragItem];
  localObject = [dragItem localObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = localObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    session = [coordinatorCopy session];
    v11 = [(HomeOutlineSectionController *)self mapItemForDropSession:session];

    destinationIndexPath = [coordinatorCopy destinationIndexPath];
    v13 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:destinationIndexPath];

    itemSnapshot = [v9 itemSnapshot];
    identifierPath = [itemSnapshot identifierPath];
    v16 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

    [(HomeOutlineCollectionsSectionController *)self _moveMapItem:v11 fromCollection:v16 toCollection:v13];
  }
}

- (BOOL)_isMoveOperationWithDropSession:(id)session destinationIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  items = [sessionCopy items];
  firstObject = [items firstObject];
  localObject = [firstObject localObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = localObject;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HomeOutlineSectionController *)self mapItemForDropSession:sessionCopy];
    v14 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIndexPath:pathCopy];
    itemSnapshot = [v12 itemSnapshot];
    identifierPath = [itemSnapshot identifierPath];
    v16 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

    LOBYTE(itemSnapshot) = 0;
    if (v13 && v14 && v16)
    {
      if ([v14 contentType] == 1)
      {
        LOBYTE(itemSnapshot) = 0;
        if (([v14 containsItem:v13] & 1) == 0 && v14 != v16)
        {
          LODWORD(itemSnapshot) = [v14 isEqual:v16] ^ 1;
        }
      }

      else
      {
        LOBYTE(itemSnapshot) = 0;
      }
    }
  }

  else
  {
    LOBYTE(itemSnapshot) = 0;
  }

  return itemSnapshot;
}

- (void)sectionHeaderOutlineCell:(id)cell accessoryTypeTapped:(int64_t)tapped
{
  if (tapped == 2)
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

- (void)_duplicateCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy contentType] == 1 && !objc_msgSend(collectionCopy, "handlerType"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[Maps Home] Duplicated Collection Name" value:@"localized string not found" table:0];
    title = [collectionCopy title];
    v8 = title;
    v9 = &stru_1016631F0;
    if (title)
    {
      v9 = title;
    }

    v10 = [NSString stringWithFormat:v6, v9];

    v11 = +[CollectionHandler collection];
    [v11 updateTitle:v10];
    v12 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:collectionCopy];
    content = [collectionCopy content];
    [(CollectionEditSession *)v12 addSelectedObjects:content];

    objc_initWeak(&location, self);
    [(NSMutableArray *)self->_duplicateCollectionEditSessions addObject:v12];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100F1E82C;
    v15[3] = &unk_10165D238;
    objc_copyWeak(&v18, &location);
    v16 = collectionCopy;
    v14 = v12;
    v17 = v14;
    [(CollectionAddOrRemoveSession *)v14 applyToCollection:v11 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)_moveMapItem:(id)item fromCollection:(id)collection toCollection:(id)toCollection
{
  itemCopy = item;
  collectionCopy = collection;
  toCollectionCopy = toCollection;
  v11 = toCollectionCopy;
  if (collectionCopy && itemCopy && toCollectionCopy && [toCollectionCopy contentType] == 1 && (objc_msgSend(v11, "containsItem:", itemCopy) & 1) == 0 && v11 != collectionCopy && (objc_msgSend(v11, "isEqual:", collectionCopy) & 1) == 0)
  {
    v12 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:v11];
    v13 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:collectionCopy];
    [(CollectionEditSession *)v12 addSelectedObject:itemCopy];
    [(CollectionEditSession *)v13 addSelectedObject:itemCopy];
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
    v19 = collectionCopy;
    v15 = v12;
    v20 = v15;
    [(CollectionAddOrRemoveSession *)v15 applyToCollection:v17 completion:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_openSnapshot:(id)snapshot inNewTab:(BOOL)tab
{
  snapshotCopy = snapshot;
  v6 = objc_alloc_init(UISceneActivationRequestOptions);
  identifierPath = [snapshotCopy identifierPath];

  v8 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

  handlerType = [v8 handlerType];
  if (handlerType)
  {
    if (handlerType != 4)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v10 = [[NSUserActivity alloc] initWithActivityType:NSUserActivityTypeBrowsingWeb];
    fullSharingURL = [v8 fullSharingURL];
    [v10 setWebpageURL:fullSharingURL];
  }

  else
  {
    v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
    configuration = [(HomeOutlineSectionController *)self configuration];
    homeActionDelegate = [configuration homeActionDelegate];
    homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
    _maps_mapsSceneDelegate = [homeContaineeViewController _maps_mapsSceneDelegate];
    fullSharingURL = [_maps_mapsSceneDelegate mapsActivityWithFidelity:2];

    identifier = [v8 identifier];
    [fullSharingURL setUserCreatedCollectionID:identifier];

    data = [fullSharingURL data];
    bzip2CompressedData = [data bzip2CompressedData];

    if (bzip2CompressedData)
    {
      v25 = @"bs";
      v26 = bzip2CompressedData;
      v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v10 setUserInfo:v19];
    }
  }

LABEL_9:
  [v10 setEligibleForHandoff:0];
  configuration2 = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate2 = [configuration2 homeActionDelegate];
  homeContaineeViewController2 = [homeActionDelegate2 homeContaineeViewController];
  _maps_uiScene = [homeContaineeViewController2 _maps_uiScene];
  [v6 setRequestingScene:_maps_uiScene];

  v24 = +[UIApplication sharedApplication];
  [v24 requestSceneSessionActivation:0 userActivity:v10 options:v6 errorHandler:0];
}

- (void)_removeMapItemSnapshotFromFavorites:(id)favorites shortcut:(id)shortcut
{
  favoritesCopy = favorites;
  shortcutCopy = shortcut;
  viewModel = [favoritesCopy viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewModel;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  mapItem = [v10 mapItem];
  if (mapItem)
  {
    identifierPath = [favoritesCopy identifierPath];
    lastIdentifier = [identifierPath lastIdentifier];

    shortcutEditSessions = self->_shortcutEditSessions;
    identifierPath2 = [favoritesCopy identifierPath];
    lastIdentifier2 = [identifierPath2 lastIdentifier];
    v17 = [(NSMutableDictionary *)shortcutEditSessions objectForKeyedSubscript:lastIdentifier2];

    if (!v17)
    {
      v18 = [ShortcutEditSession editSessionWithShortcut:shortcutCopy];
      [(NSMutableDictionary *)self->_shortcutEditSessions setObject:v18 forKeyedSubscript:lastIdentifier];
      objc_initWeak(&location, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100F1F2CC;
      v19[3] = &unk_10165FC50;
      objc_copyWeak(&v21, &location);
      v20 = lastIdentifier;
      [v18 removeFromShortcutsWithCompletion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_addMapItemSnapshotToFavorites:(id)favorites
{
  favoritesCopy = favorites;
  viewModel = [favoritesCopy viewModel];
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

  mapItem = [v7 mapItem];
  if (mapItem)
  {
    identifierPath = [favoritesCopy identifierPath];
    lastIdentifier = [identifierPath lastIdentifier];

    v11 = [(NSMutableDictionary *)self->_shortcutEditSessions objectForKeyedSubscript:lastIdentifier];

    if (!v11)
    {
      v12 = [ShortcutEditSession addSessionWithType:1 mapItem:mapItem];
      [(NSMutableDictionary *)self->_shortcutEditSessions setObject:v12 forKeyedSubscript:lastIdentifier];
      objc_initWeak(&location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100F1F530;
      v13[3] = &unk_10165FC50;
      objc_copyWeak(&v15, &location);
      v14 = lastIdentifier;
      [v12 saveWithCompletion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_renameMapItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
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

  mapItem = [v7 mapItem];

  identifierPath = [snapshotCopy identifierPath];

  v10 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

  if (mapItem)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    homeActionDelegate = [configuration2 homeActionDelegate];
    homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100F1F780;
    v17[3] = &unk_10165D210;
    v18 = v10;
    v19 = mapItem;
    [actionCoordinator viewController:homeContaineeViewController editNameOfMapItem:v19 saveHandler:v17 cancelHandler:0];
  }
}

- (void)_moveMapItemSnapshot:(id)snapshot toCollection:(id)collection
{
  collectionCopy = collection;
  snapshotCopy = snapshot;
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

  mapItem = [v9 mapItem];

  identifierPath = [snapshotCopy identifierPath];

  v12 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

  if (mapItem)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [(HomeOutlineCollectionsSectionController *)self _moveMapItem:mapItem fromCollection:v12 toCollection:collectionCopy];
  }
}

- (void)_duplicateCollectionSnapshot:(id)snapshot
{
  viewModel = [snapshot viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewModel;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  collection = [v6 collection];

  v7 = collection;
  if (collection)
  {
    [(HomeOutlineCollectionsSectionController *)self _duplicateCollection:collection];
    v7 = collection;
  }
}

- (void)_addPlacesToCollectionSnapshot:(id)snapshot
{
  viewModel = [snapshot viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewModel;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  collection = [v6 collection];

  if (collection)
  {
    v7 = [(CollectionEditSession *)[CollectionSaveSession alloc] initWithCollection:collection];
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    homeActionDelegate = [configuration2 homeActionDelegate];
    homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
    [actionCoordinator viewController:homeContaineeViewController addItemsFromACToCollection:v7];
  }
}

- (id)_contextMenuForTransitLineSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100F1FE8C;
  v24[3] = &unk_101661340;
  objc_copyWeak(&v26, &location);
  v6 = snapshotCopy;
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

- (id)_contextMenuForMapItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  viewModel = [snapshotCopy viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewModel;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v59 = v6;
  mapItem = [v6 mapItem];
  if (mapItem)
  {
    v61 = +[NSMutableArray array];
    objc_initWeak(&location, self);
    v7 = +[CollectionManager sharedManager];
    v8 = [v7 collectionsNotContainingMapItem:mapItem];

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
          title = [v12 title];
          v14 = title;
          if (title)
          {
            v15 = title;
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
          v88 = snapshotCopy;
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
    v18 = snapshotCopy;
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
    if ([mapItem _maps_canRenameCollectionItem])
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
    meCard = [v33 meCard];

    v34 = [meCard _maps_shortcutForMapItem:mapItem];
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

- (id)_contextMenuForCollectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
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

  collection = [v7 collection];
  v9 = collection;
  if (collection && ([collection identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"__internal_CollectionSavedLinesIdentifier"), v10, (v11 & 1) == 0))
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
      v63 = snapshotCopy;
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
      v60 = snapshotCopy;
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
      v57 = snapshotCopy;
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
    v31 = snapshotCopy;
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

- (id)contextMenuForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  viewModel = [snapshotCopy viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && viewModel)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForCollectionSnapshot:snapshotCopy];
LABEL_10:
    v12 = v7;
    goto LABEL_11;
  }

  viewModel2 = [snapshotCopy viewModel];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) != 0 && viewModel2)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForMapItemSnapshot:snapshotCopy];
    goto LABEL_10;
  }

  viewModel3 = [snapshotCopy viewModel];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  v12 = 0;
  if ((v11 & 1) != 0 && viewModel3)
  {
    v7 = [(HomeOutlineCollectionsSectionController *)self _contextMenuForTransitLineSnapshot:snapshotCopy];
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

- (void)collectionSortItem:(id)item didSelectSortType:(int64_t)type
{
  collectionsDataProvider = self->_collectionsDataProvider;
  itemCopy = item;
  [(CollectionsDataProvider *)collectionsDataProvider setActive:0];
  collection = [itemCopy collection];

  [collection setSortType:type];
  [(CollectionsDataProvider *)self->_collectionsDataProvider setActive:1];
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
  collections = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
  v5 = [collections countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(collections);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sortItems = self->_sortItems;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)sortItems objectForKeyedSubscript:identifier];
        identifier2 = [v9 identifier];
        [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:identifier2];
      }

      v6 = [collections countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)snapshots
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  snapshotsCopy = snapshots;
  v5 = [snapshotsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(snapshotsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        deletions = [(HomeOutlineSectionController *)self deletions];
        identifierPath = [v9 identifierPath];
        v12 = [deletions objectForKeyedSubscript:identifierPath];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v6 = [snapshotsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_childItemsInCollection:(id)collection excludeDeletions:(BOOL)deletions
{
  deletionsCopy = deletions;
  collectionCopy = collection;
  content = [collectionCopy content];
  v8 = [content count];

  if (v8)
  {
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v10 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:collectionCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1016631F0;
    }

    v13 = [sectionIdentifierPath identifierPathByAppendingIdentifier:v12];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    content2 = [collectionCopy content];
    v15 = [content2 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v42 = deletionsCopy;
      v17 = content2;
      v41 = collectionCopy;
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

          deletions = [(HomeOutlineSectionController *)self deletions];
          v26 = [deletions objectForKeyedSubscript:v24];

          if (!v26)
          {

            collectionCopy = v41;
            v27 = [(HomeOutlineCollectionsSectionController *)self _sortItemForCollection:v41];
            content2 = [NSMutableArray arrayWithObject:v27];

            if (v42)
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              content3 = [v41 content];
              v29 = [content3 countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v29)
              {
                v30 = v29;
                v43 = content2;
                v31 = *v45;
                do
                {
                  for (j = 0; j != v30; j = j + 1)
                  {
                    if (*v45 != v31)
                    {
                      objc_enumerationMutation(content3);
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

                    deletions2 = [(HomeOutlineSectionController *)self deletions];
                    v39 = [deletions2 objectForKeyedSubscript:v37];

                    if (!v39)
                    {
                      [v43 addObject:v33];
                    }
                  }

                  v30 = [content3 countByEnumeratingWithState:&v44 objects:v52 count:16];
                }

                while (v30);
                collectionCopy = v41;
                content2 = v43;
              }
            }

            else
            {
              content3 = [v41 content];
              [content2 addObjectsFromArray:content3];
            }

            v19 = [content2 copy];
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

      collectionCopy = v41;
      content2 = v17;
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

- (id)_identifierForItem:(id)item
{
  itemCopy = item;
  v5 = [itemCopy conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine];
  identifierCache = [(HomeOutlineSectionController *)self identifierCache];
  if (v5)
  {
    v7 = MKMapItemIdentifierFromGEOTransitLine();

    itemCopy = v7;
  }

  v8 = [identifierCache identifierForObject:itemCopy];

  return v8;
}

- (BOOL)_dataProviderContainsCollection:(id)collection
{
  collectionCopy = collection;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  collections = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
  v6 = [collections countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(collections);
        }

        if (*(*(&v12 + 1) + 8 * i) == collectionCopy || ([collectionCopy isEqual:?] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [collections countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_editCollectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
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

  collection = [v7 collection];
  if (collection)
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    identifierPath = [snapshotCopy identifierPath];
    v11 = [delegate sectionController:self indexPathForIdentifierPath:identifierPath];

    if (v11)
    {
      configuration = [(HomeOutlineSectionController *)self configuration];
      collectionView = [configuration collectionView];
      v14 = [collectionView cellForItemAtIndexPath:v11];

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
        trailingAccessoryConfigurations = [v16 trailingAccessoryConfigurations];
        firstObject = [trailingAccessoryConfigurations firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = firstObject;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          objc_storeStrong(&self->_editingCollection, collection);
          delegate2 = [(HomeOutlineSectionController *)self delegate];
          [delegate2 sectionController:self setNeedsApplySnapshotAnimated:1];

          objc_initWeak(&location, self);
          configuration2 = [(HomeOutlineSectionController *)self configuration];
          actionCoordinator = [configuration2 actionCoordinator];
          configuration3 = [(HomeOutlineSectionController *)self configuration];
          homeActionDelegate = [configuration3 homeActionDelegate];
          homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
          customView = [v20 customView];
          customView2 = [v20 customView];
          [customView2 bounds];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100F226F8;
          v37[3] = &unk_101661340;
          objc_copyWeak(&v39, &location);
          v38 = collection;
          [actionCoordinator viewController:homeContaineeViewController editCollection:v38 sourceView:customView sourceRect:v37 completion:{v27, v29, v31, v33}];

          objc_destroyWeak(&v39);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)_editCollection:(id)collection
{
  collectionCopy = collection;
  objc_storeStrong(&self->_editingCollection, collection);
  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

  delegate2 = [(HomeOutlineSectionController *)self delegate];
  [delegate2 applySnapshotIfNeededWithSectionController:self];

  editingCollection = self->_editingCollection;
  self->_editingCollection = 0;

  v8 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:collectionCopy];
  if (v8)
  {
    sectionSnapshot = [(HomeOutlineSectionController *)self sectionSnapshot];
    v10 = [sectionSnapshot childSnapshotWithIdentifier:v8];

    if (v10)
    {
      [(HomeOutlineCollectionsSectionController *)self _editCollectionSnapshot:v10];
    }
  }
}

- (void)_showAndEditCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F22980;
  v6[3] = &unk_10165FC50;
  objc_copyWeak(&v8, &location);
  v5 = collectionCopy;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _showCollection:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_showCollection:(id)collection completion:(id)completion
{
  completionCopy = completion;
  v6 = [(HomeOutlineCollectionsSectionController *)self _identifierForItem:collection];
  if (v6)
  {
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v8 = [sectionIdentifierPath identifierPathByAppendingIdentifier:v6];

    sectionSnapshot = [(HomeOutlineSectionController *)self sectionSnapshot];
    identifierPathByRemovingFirstIdentifier = [v8 identifierPathByRemovingFirstIdentifier];
    v11 = [sectionSnapshot nodeSnapshotAtIdentifierPath:identifierPathByRemovingFirstIdentifier];

    if (v11)
    {
      sectionIdentifierPath2 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
      [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:sectionIdentifierPath2];

      [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v8];
      delegate = [(HomeOutlineSectionController *)self delegate];
      [delegate sectionController:self selectItemAtIdentifierPath:v8 completion:completionCopy];
    }
  }
}

- (void)_performPendingCollectionOperationIfAvailable
{
  if (self->_pendingCollection)
  {
    if ([(HomeOutlineCollectionsSectionController *)self _dataProviderContainsCollection:?])
    {
      delegate = [(HomeOutlineSectionController *)self delegate];
      v4 = [delegate applySnapshotIfNeededWithSectionController:self];

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

- (void)_waitForCollection:(id)collection thenPerformOperation:(id)operation
{
  collectionCopy = collection;
  operationCopy = operation;
  [(HomeOutlineCollectionsSectionController *)self _clearPendingCollection];
  if (-[HomeOutlineCollectionsSectionController _dataProviderContainsCollection:](self, "_dataProviderContainsCollection:", collectionCopy) && (-[HomeOutlineSectionController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 applySnapshotIfNeededWithSectionController:self], v9, v10))
  {
    if (operationCopy)
    {
      operationCopy[2](operationCopy);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    objc_storeStrong(&self->_pendingCollection, collection);
    v11 = objc_retainBlock(operationCopy);
    pendingCollectionOperation = self->_pendingCollectionOperation;
    self->_pendingCollectionOperation = v11;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100F22D74;
    v15[3] = &unk_10165D1A0;
    v16 = collectionCopy;
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
  delegate = [(HomeOutlineSectionController *)self delegate];
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [delegate sectionController:self indexPathForIdentifierPath:sectionIdentifierPath];

  configuration = [(HomeOutlineSectionController *)self configuration];
  collectionView = [configuration collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v5];

  if (v8)
  {
    sectionIdentifierPath2 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:sectionIdentifierPath2];

    v10 = v8;
  }

  return v8;
}

- (void)editCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F2309C;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = collectionCopy;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _waitForCollection:v5 thenPerformOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)showCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F231D4;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = collectionCopy;
  v7 = v5;
  [(HomeOutlineCollectionsSectionController *)self _waitForCollection:v5 thenPerformOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)shareItemSourceForSnapshot:(id)snapshot
{
  identifierPath = [snapshot identifierPath];
  v5 = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

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

- (id)contentInjectorForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  viewModel = [snapshotCopy viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  viewModel2 = [snapshotCopy viewModel];
  viewModel3 = viewModel2;
  if ((isKindOfClass & 1) != 0 && viewModel)
  {
    collection = [viewModel2 collection];
    mapItem = 0;
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    collection = 0;
    if ((v11 & 1) == 0)
    {
      mapItem = 0;
      v12 = 0;
      goto LABEL_11;
    }

    mapItem = 0;
    v12 = 0;
    if (!viewModel3)
    {
      goto LABEL_11;
    }

    identifierPath = [snapshotCopy identifierPath];
    collection = [(HomeOutlineCollectionsSectionController *)self _collectionContainingIdentifierPath:identifierPath];

    viewModel3 = [snapshotCopy viewModel];
    mapItem = [viewModel3 mapItem];
  }

  if (collection)
  {
    v12 = [[HomeCollectionContentInjector alloc] initWithCollection:collection selectedMapItem:mapItem];
    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    [(HomeCollectionContentInjector *)v12 setActionCoordinator:actionCoordinator];
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (int64_t)_accessoryVisibilityForCollection:(id)collection withAccessoryType:(int64_t)type
{
  if ((type - 1) > 1)
  {
    return 0;
  }

  editingCollection = self->_editingCollection;
  if (editingCollection == collection)
  {
    return 0;
  }

  else
  {
    return [collection isEqual:{editingCollection, v4, v5}] ^ 1;
  }
}

- (NSArray)itemSnapshots
{
  currentLocation = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  collections = [(CollectionsDataProvider *)self->_collectionsDataProvider collections];
  distanceUnit = [(DistanceUnitDataProvider *)self->_distanceUnitDataProvider distanceUnit];
  selectedIdentifierPaths = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  configuration = [(HomeOutlineSectionController *)self configuration];
  sectionIdentifier = [configuration sectionIdentifier];
  expanded = [(HomeOutlineSectionController *)self expanded];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100F23820;
  v32[3] = &unk_10165D100;
  v32[4] = self;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100F2382C;
  v27[3] = &unk_10165D128;
  v10 = selectedIdentifierPaths;
  v28 = v10;
  selfCopy = self;
  v11 = currentLocation;
  v30 = v11;
  v31 = distanceUnit;
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
  v12 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:collections sectionIdentifier:sectionIdentifier sectionExpanded:expanded itemIdentifierBlock:v32 viewModelBlock:v27 childItemsBlock:v26 expandedBlock:v25];

  if ([(HomeOutlineCollectionsSectionController *)self _shouldShowAddButtonForItemSnapshots:v12])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Proactive Tray] Add Guide" value:@"localized string not found" table:0];

    v15 = [SmallButtonOutlineCellModel alloc];
    v16 = [UIImage systemImageNamed:@"plus.circle"];
    v17 = [UIImage systemImageNamed:@"plus.circle.fill"];
    v18 = [(SmallButtonOutlineCellModel *)v15 initWithStyle:1 title:v14 image:v16 hoverImage:v17 delegate:self];

    v19 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v21 = [sectionIdentifierPath identifierPathByAppendingIdentifier:@"AddButtonIdentifier"];
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

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = HomeOutlineCollectionsSectionController;
  updateCopy = update;
  [(HomeOutlineSectionController *)&v6 homeDataProvidingObjectDidUpdate:updateCopy];
  collectionsDataProvider = self->_collectionsDataProvider;

  if (collectionsDataProvider == updateCopy)
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

- (HomeOutlineCollectionsSectionController)initWithConfiguration:(id)configuration
{
  v23.receiver = self;
  v23.super_class = HomeOutlineCollectionsSectionController;
  v3 = [(HomeOutlineSectionController *)&v23 initWithConfiguration:configuration];
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