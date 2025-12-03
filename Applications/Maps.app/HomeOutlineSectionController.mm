@interface HomeOutlineSectionController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)expanded;
- (BOOL)isDestinationOfDropCoordinator:(id)coordinator;
- (BOOL)isSourceOfDropCoordinator:(id)coordinator;
- (HomeOutlineSectionController)initWithConfiguration:(id)configuration;
- (HomeOutlineSectionControllerDelegate)delegate;
- (MapsUIDiffableDataSourceIdentifierCache)identifierCache;
- (MapsUIDiffableDataSourceOutlineNodeSnapshot)sectionSnapshot;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSSet)selectedIdentifierPaths;
- (id)_sectionSnapshotByProcessingDeletionsInSectionSnapshot:(id)snapshot;
- (id)_snapshotByFilteringDeletionsFromSnapshot:(id)snapshot;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)deletionWithSnapshot:(id)snapshot;
- (id)mapItemForDropSession:(id)session;
- (void)_loadExpandedIdentifierPaths;
- (void)_removeDeletions:(id)deletions applySnapshot:(BOOL)snapshot;
- (void)_scrubDeletionsWithSectionSnapshot:(id)snapshot;
- (void)_storeExpandedIdentifierPaths;
- (void)_updateDragAndDropPreview;
- (void)beginDeletions:(id)deletions;
- (void)clearSelectionWithReason:(id)reason;
- (void)collapseElementAtIdentifierPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)endFailedDeletions:(id)deletions error:(id)error;
- (void)expandElementAtIdentifierPath:(id)path;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)invalidateSectionSnapshot;
- (void)setActive:(BOOL)active;
- (void)toggleElementAtIdentifierPath:(id)path;
@end

@implementation HomeOutlineSectionController

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v2 = [[SectionHeaderBasicOutlineCellModel alloc] initWithTitle:&stru_1016631F0];

  return v2;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  dragItem = self->_dragItem;
  self->_dragItem = 0;

  [(DragAndDropPreview *)self->_dragAndDropPreview setContentUpdateDelegate:0];
  dragAndDropPreview = self->_dragAndDropPreview;
  self->_dragAndDropPreview = 0;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v10 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v10 viewModel];
  if ([viewModel conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel])
  {
    v12 = viewModel;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13 && ([v13 homeDragAndDropObject], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, +[DragAndDropMapItem dragAndDropItemWithObject:](DragAndDropMapItem, "dragAndDropItemWithObject:", v14), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setObserver:", self), v15, v16))
  {
    v17 = [DragAndDropPreview alloc];
    traitCollection = [viewCopy traitCollection];
    v19 = [(DragAndDropPreview *)v17 initWithDragAndDropMapItem:v16 traitCollection:traitCollection];
    dragAndDropPreview = self->_dragAndDropPreview;
    self->_dragAndDropPreview = v19;

    [(DragAndDropPreview *)self->_dragAndDropPreview setContentUpdateDelegate:self];
    itemProvider = [v16 itemProvider];
    v22 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
    dragItem = self->_dragItem;
    self->_dragItem = v22;

    v24 = [[HomeDragLocalContext alloc] initWithItemSnapshot:v10 dragAndDropMapItem:v16];
    [(UIDragItem *)self->_dragItem setLocalObject:v24];

    v27 = self->_dragItem;
    v25 = [NSArray arrayWithObjects:&v27 count:1];
  }

  else
  {
    v25 = &__NSArray0__struct;
  }

  return v25;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count] == 1)
  {
    firstObject = [pathsCopy firstObject];
    delegate = [(HomeOutlineSectionController *)self delegate];
    v11 = [delegate sectionController:self nodeSnapshotAtIndexPath:firstObject];

    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006A8628;
    v17[3] = &unk_101626190;
    objc_copyWeak(&v19, &location);
    v12 = v11;
    v18 = v12;
    v13 = objc_retainBlock(v17);
    identifierPath = [v12 identifierPath];
    v15 = [UIContextMenuConfiguration configurationWithIdentifier:identifierPath previewProvider:0 actionProvider:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedIndexPath = [context nextFocusedIndexPath];
  focusedIdentifierPath = self->_focusedIdentifierPath;
  self->_focusedIdentifierPath = 0;

  v7 = nextFocusedIndexPath;
  if (nextFocusedIndexPath)
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    v9 = [delegate sectionController:self nodeSnapshotAtIndexPath:nextFocusedIndexPath];

    identifierPath = [v9 identifierPath];
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v12 = [identifierPath hasPrefix:sectionIdentifierPath];

    if (v12)
    {
      identifierPath2 = [v9 identifierPath];
      v14 = self->_focusedIdentifierPath;
      self->_focusedIdentifierPath = identifierPath2;
    }

    v7 = nextFocusedIndexPath;
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [GEOAPPortal captureUserAction:2007 target:8 value:0];
  delegate = [(HomeOutlineSectionController *)self delegate];
  v8 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v8 viewModel];
  v10 = [viewModel conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel];

  if (v10)
  {
    viewModel2 = [v8 viewModel];
    homeActionObject = [viewModel2 homeActionObject];

    if (homeActionObject)
    {
      configuration = [(HomeOutlineSectionController *)self configuration];
      homeActionDelegate = [configuration homeActionDelegate];
      homeActionObject2 = [viewModel2 homeActionObject];
      [homeActionDelegate homeItemTapped:homeActionObject2];
    }
  }

  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = [v16 objectForKey:@"SIDEBAR_SELECTION_ENABLED_KEY"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v17 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v7 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v7 viewModel];
  LODWORD(delegate) = [viewModel conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel];

  v11 = 0;
  if (delegate)
  {
    viewModel2 = [v7 viewModel];
    homeActionObject = [viewModel2 homeActionObject];

    if (homeActionObject)
    {
      v11 = 1;
    }
  }

  return v11;
}

- (id)mapItemForDropSession:(id)session
{
  sessionCopy = session;
  items = [sessionCopy items];
  v5 = [items count];

  if (v5 == 1)
  {
    items2 = [sessionCopy items];
    firstObject = [items2 firstObject];

    localObject = [firstObject localObject];
    if ([localObject conformsToProtocol:&OBJC_PROTOCOL___MapsDragMapItemProviding])
    {
      v9 = localObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    draggedMapItem = [v10 draggedMapItem];
  }

  else
  {
    draggedMapItem = 0;
  }

  return draggedMapItem;
}

- (BOOL)isDestinationOfDropCoordinator:(id)coordinator
{
  destinationIndexPath = [coordinator destinationIndexPath];
  delegate = [(HomeOutlineSectionController *)self delegate];
  v6 = [delegate sectionController:self nodeSnapshotAtIndexPath:destinationIndexPath];
  identifierPath = [v6 identifierPath];

  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  LOBYTE(delegate) = [identifierPath hasPrefix:sectionIdentifierPath];

  return delegate;
}

- (BOOL)isSourceOfDropCoordinator:(id)coordinator
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  items = [coordinator items];
  v5 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(items);
        }

        sourceIndexPath = [*(*(&v16 + 1) + 8 * i) sourceIndexPath];
        delegate = [(HomeOutlineSectionController *)self delegate];
        v11 = [delegate sectionController:self nodeSnapshotAtIndexPath:sourceIndexPath];
        identifierPath = [v11 identifierPath];

        sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
        LOBYTE(v11) = [identifierPath hasPrefix:sectionIdentifierPath];

        if (v11)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)_updateDragAndDropPreview
{
  dragAndDropPreview = self->_dragAndDropPreview;
  if (dragAndDropPreview)
  {
    renderPreviewImage = [(DragAndDropPreview *)dragAndDropPreview renderPreviewImage];
    [renderPreviewImage dragPreview];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006A8DAC;
    v8 = v7[3] = &unk_10164EFF0;
    dragItem = self->_dragItem;
    v6 = v8;
    [(UIDragItem *)dragItem setPreviewProvider:v7];
  }
}

- (void)clearSelectionWithReason:(id)reason
{
  reasonCopy = reason;
  selectedIdentifierPaths = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  anyObject = [selectedIdentifierPaths anyObject];

  if (anyObject && [(HomeOutlineSectionController *)self shouldClearSelectionWithReason:reasonCopy])
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self deselectItemAtIdentifierPath:anyObject];

    delegate2 = [(HomeOutlineSectionController *)self delegate];
    [delegate2 sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (id)_snapshotByFilteringDeletionsFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  deletions = self->_deletions;
  identifierPath = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy identifierPath];
  v7 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:identifierPath];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    childSnapshots = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy childSnapshots];
    v10 = [childSnapshots count];

    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      childSnapshots2 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy childSnapshots];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1006A9078;
      v18[3] = &unk_101626168;
      v18[4] = self;
      v18[5] = &v19;
      v12 = sub_100021DB0(childSnapshots2, v18);

      if (*(v20 + 24) == 1)
      {
        v13 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
        identifierPath2 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy identifierPath];
        viewModel = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy viewModel];
        v16 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v13 initWithIdentifierPath:identifierPath2 viewModel:viewModel childSnapshots:v12 expanded:[(MapsUIDiffableDataSourceOutlineNodeSnapshot *)snapshotCopy expanded]];

        snapshotCopy = v16;
      }

      _Block_object_dispose(&v19, 8);
    }

    snapshotCopy = snapshotCopy;
    v8 = snapshotCopy;
  }

  return v8;
}

- (void)_scrubDeletionsWithSectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_deletions copy];
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
        v12 = [(NSMutableDictionary *)self->_deletions objectForKeyedSubscript:v11];
        identifierPathByRemovingFirstIdentifier = [v11 identifierPathByRemovingFirstIdentifier];
        v14 = [snapshotCopy nodeSnapshotAtIdentifierPath:identifierPathByRemovingFirstIdentifier];

        if (!v14 && ([v12 completed] & 1) == 0)
        {
          [v12 markAsCompletedWithSuccess:1 error:0];
        }

        if ([v12 completed])
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(HomeOutlineSectionController *)self _removeDeletions:v5 applySnapshot:0];
  }
}

- (id)_sectionSnapshotByProcessingDeletionsInSectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  [(HomeOutlineSectionController *)self _scrubDeletionsWithSectionSnapshot:snapshotCopy];
  v5 = [(HomeOutlineSectionController *)self _snapshotByFilteringDeletionsFromSnapshot:snapshotCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = snapshotCopy;
  }

  v8 = v7;

  return v8;
}

- (id)deletionWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  delegate = [(HomeOutlineSectionController *)self delegate];
  identifierPath = [snapshotCopy identifierPath];
  v7 = [delegate sectionController:self indexPathForIdentifierPath:identifierPath];

  v8 = [HomeDeletion alloc];
  identifierPath2 = [snapshotCopy identifierPath];
  v10 = [(HomeDeletion *)v8 initWithObject:snapshotCopy indexPath:v7 identifierPath:identifierPath2 contextualActionCompletionHandler:0];

  return v10;
}

- (void)_removeDeletions:(id)deletions applySnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  deletionsCopy = deletions;
  v6 = [deletionsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(deletionsCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = sub_1000410AC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "HomeOutlineSectionController removeDeletion: %@", buf, 0xCu);
        }

        deletions = self->_deletions;
        identifierPath = [v10 identifierPath];
        v14 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:identifierPath];

        if (!v14)
        {
          delegate = deletionsCopy;
          goto LABEL_14;
        }

        v15 = self->_deletions;
        identifierPath2 = [v10 identifierPath];
        [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:identifierPath2];

        expandedIdentifierPaths = self->_expandedIdentifierPaths;
        identifierPath3 = [v10 identifierPath];
        [(NSMutableSet *)expandedIdentifierPaths removeObject:identifierPath3];
      }

      v7 = [deletionsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (snapshotCopy)
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
LABEL_14:
  }
}

- (void)endFailedDeletions:(id)deletions error:(id)error
{
  deletionsCopy = deletions;
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [deletionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(deletionsCopy);
        }

        [*(*(&v12 + 1) + 8 * v11) markAsCompletedWithSuccess:0 error:errorCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [deletionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(HomeOutlineSectionController *)self _removeDeletions:deletionsCopy applySnapshot:1];
}

- (void)beginDeletions:(id)deletions
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  deletionsCopy = deletions;
  v5 = [deletionsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(deletionsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = sub_1000410AC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "HomeOutlineSectionController addDeletion: %@", buf, 0xCu);
        }

        deletions = self->_deletions;
        identifierPath = [v9 identifierPath];
        v13 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:identifierPath];

        if (v13)
        {
          delegate = deletionsCopy;
          goto LABEL_13;
        }

        v14 = self->_deletions;
        identifierPath2 = [v9 identifierPath];
        [(NSMutableDictionary *)v14 setObject:v9 forKeyedSubscript:identifierPath2];
      }

      v6 = [deletionsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  delegate = [(HomeOutlineSectionController *)self delegate];
  [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
LABEL_13:
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_active && [updateCopy active])
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (MapsUIDiffableDataSourceIdentifierCache)identifierCache
{
  identifierCache = self->_identifierCache;
  if (!identifierCache)
  {
    v4 = objc_alloc_init(MapsUIDiffableDataSourceIdentifierCache);
    v5 = self->_identifierCache;
    self->_identifierCache = v4;

    identifierCache = self->_identifierCache;
  }

  return identifierCache;
}

- (NSSet)selectedIdentifierPaths
{
  configuration = [(HomeOutlineSectionController *)self configuration];
  collectionView = [configuration collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006A9AE0;
  v9[3] = &unk_101657A50;
  v9[4] = self;
  v6 = sub_100021DB0(indexPathsForSelectedItems, v9);
  v7 = [NSSet setWithArray:v6];

  return v7;
}

- (void)toggleElementAtIdentifierPath:(id)path
{
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  pathCopy = path;
  if ([(NSMutableSet *)expandedIdentifierPaths containsObject:?])
  {
    [(HomeOutlineSectionController *)self collapseElementAtIdentifierPath:pathCopy];
  }

  else
  {
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:pathCopy];
  }
}

- (void)collapseElementAtIdentifierPath:(id)path
{
  pathCopy = path;
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [pathCopy hasPrefix:sectionIdentifierPath];

  if (v5 && [(NSMutableSet *)self->_expandedIdentifierPaths containsObject:pathCopy])
  {
    [(NSMutableSet *)self->_expandedIdentifierPaths removeObject:pathCopy];
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

    [(HomeOutlineSectionController *)self _storeExpandedIdentifierPaths];
  }
}

- (void)expandElementAtIdentifierPath:(id)path
{
  pathCopy = path;
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [pathCopy hasPrefix:sectionIdentifierPath];

  if (v5 && ([(NSMutableSet *)self->_expandedIdentifierPaths containsObject:pathCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_expandedIdentifierPaths addObject:pathCopy];
    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

    [(HomeOutlineSectionController *)self _storeExpandedIdentifierPaths];
  }
}

- (BOOL)expanded
{
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  LOBYTE(expandedIdentifierPaths) = [(NSMutableSet *)expandedIdentifierPaths containsObject:sectionIdentifierPath];

  return expandedIdentifierPaths;
}

- (void)_storeExpandedIdentifierPaths
{
  if ([(HomeOutlineSectionController *)self persistsExpansions])
  {
    expandedIdentifierPaths = self->_expandedIdentifierPaths;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006A9ED4;
    v9[3] = &unk_101626140;
    v9[4] = self;
    v4 = [(NSMutableSet *)expandedIdentifierPaths objectsPassingTest:v9];
    configuration = [(HomeOutlineSectionController *)self configuration];
    storage = [configuration storage];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    sectionIdentifier = [configuration2 sectionIdentifier];
    [storage storeExpandedIdentifierPaths:v4 forSection:sectionIdentifier];
  }
}

- (void)_loadExpandedIdentifierPaths
{
  v10 = [NSSet setWithObject:self->_sectionIdentifierPath];
  if ([(HomeOutlineSectionController *)self persistsExpansions])
  {
    configuration = [(HomeOutlineSectionController *)self configuration];
    storage = [configuration storage];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    sectionIdentifier = [configuration2 sectionIdentifier];
    v7 = [storage expandedIdentifierPathsInSection:sectionIdentifier defaultExpandedIdentifierPaths:v10];
  }

  else
  {
    v7 = v10;
  }

  v8 = [NSMutableSet setWithSet:v7];
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  self->_expandedIdentifierPaths = v8;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    dataProviders = [(HomeOutlineSectionController *)self dataProviders];
    v6 = [dataProviders countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(dataProviders);
          }

          [*(*(&v29 + 1) + 8 * i) setActive:activeCopy];
        }

        v7 = [dataProviders countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    if (activeCopy)
    {
      v27 = 0uLL;
      v28 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      dataProviders2 = [(HomeOutlineSectionController *)self dataProviders];
      v11 = [dataProviders2 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(dataProviders2);
            }

            observers = [*(*(&v25 + 1) + 8 * j) observers];
            [observers registerObserver:self];
          }

          v12 = [dataProviders2 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v23 = 0uLL;
      v24 = 0uLL;
      *(&v21 + 1) = 0;
      v22 = 0uLL;
      dataProviders2 = [(HomeOutlineSectionController *)self dataProviders];
      v16 = [dataProviders2 countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (k = 0; k != v17; k = k + 1)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(dataProviders2);
            }

            observers2 = [*(*(&v21 + 1) + 8 * k) observers];
            [observers2 unregisterObserver:self];
          }

          v17 = [dataProviders2 countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v17);
      }
    }
  }
}

- (void)invalidateSectionSnapshot
{
  sectionSnapshot = self->_sectionSnapshot;
  self->_sectionSnapshot = 0;
}

- (MapsUIDiffableDataSourceOutlineNodeSnapshot)sectionSnapshot
{
  sectionSnapshot = self->_sectionSnapshot;
  if (!sectionSnapshot)
  {
    v4 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    sectionHeaderViewModel = [(HomeOutlineSectionController *)self sectionHeaderViewModel];
    itemSnapshots = [(HomeOutlineSectionController *)self itemSnapshots];
    v8 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 initWithIdentifierPath:sectionIdentifierPath viewModel:sectionHeaderViewModel childSnapshots:itemSnapshots expanded:[(HomeOutlineSectionController *)self expanded]];
    v9 = self->_sectionSnapshot;
    self->_sectionSnapshot = v8;

    v10 = [(HomeOutlineSectionController *)self _sectionSnapshotByProcessingDeletionsInSectionSnapshot:self->_sectionSnapshot];
    v11 = self->_sectionSnapshot;
    self->_sectionSnapshot = v10;

    [(MapsUIDiffableDataSourceIdentifierCache *)self->_identifierCache markGeneration];
    sectionSnapshot = self->_sectionSnapshot;
  }

  return sectionSnapshot;
}

- (HomeOutlineSectionControllerDelegate)delegate
{
  configuration = [(HomeOutlineSectionController *)self configuration];
  delegate = [configuration delegate];

  return delegate;
}

- (HomeOutlineSectionController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HomeOutlineSectionController;
  v6 = [(HomeOutlineSectionController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = +[NSMutableDictionary dictionary];
    deletions = v7->_deletions;
    v7->_deletions = v8;

    configuration = [(HomeOutlineSectionController *)v7 configuration];
    sectionIdentifier = [configuration sectionIdentifier];
    v12 = [IdentifierPath identifierPathWithIdentifier:sectionIdentifier];
    sectionIdentifierPath = v7->_sectionIdentifierPath;
    v7->_sectionIdentifierPath = v12;

    [(HomeOutlineSectionController *)v7 _loadExpandedIdentifierPaths];
  }

  return v7;
}

@end