@interface HomeOutlineSectionController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)expanded;
- (BOOL)isDestinationOfDropCoordinator:(id)a3;
- (BOOL)isSourceOfDropCoordinator:(id)a3;
- (HomeOutlineSectionController)initWithConfiguration:(id)a3;
- (HomeOutlineSectionControllerDelegate)delegate;
- (MapsUIDiffableDataSourceIdentifierCache)identifierCache;
- (MapsUIDiffableDataSourceOutlineNodeSnapshot)sectionSnapshot;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSSet)selectedIdentifierPaths;
- (id)_sectionSnapshotByProcessingDeletionsInSectionSnapshot:(id)a3;
- (id)_snapshotByFilteringDeletionsFromSnapshot:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)deletionWithSnapshot:(id)a3;
- (id)mapItemForDropSession:(id)a3;
- (void)_loadExpandedIdentifierPaths;
- (void)_removeDeletions:(id)a3 applySnapshot:(BOOL)a4;
- (void)_scrubDeletionsWithSectionSnapshot:(id)a3;
- (void)_storeExpandedIdentifierPaths;
- (void)_updateDragAndDropPreview;
- (void)beginDeletions:(id)a3;
- (void)clearSelectionWithReason:(id)a3;
- (void)collapseElementAtIdentifierPath:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)endFailedDeletions:(id)a3 error:(id)a4;
- (void)expandElementAtIdentifierPath:(id)a3;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)invalidateSectionSnapshot;
- (void)setActive:(BOOL)a3;
- (void)toggleElementAtIdentifierPath:(id)a3;
@end

@implementation HomeOutlineSectionController

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v2 = [[SectionHeaderBasicOutlineCellModel alloc] initWithTitle:&stru_1016631F0];

  return v2;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  dragItem = self->_dragItem;
  self->_dragItem = 0;

  [(DragAndDropPreview *)self->_dragAndDropPreview setContentUpdateDelegate:0];
  dragAndDropPreview = self->_dragAndDropPreview;
  self->_dragAndDropPreview = 0;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(HomeOutlineSectionController *)self delegate];
  v10 = [v9 sectionController:self nodeSnapshotAtIndexPath:v8];

  v11 = [v10 viewModel];
  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13 && ([v13 homeDragAndDropObject], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, +[DragAndDropMapItem dragAndDropItemWithObject:](DragAndDropMapItem, "dragAndDropItemWithObject:", v14), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setObserver:", self), v15, v16))
  {
    v17 = [DragAndDropPreview alloc];
    v18 = [v7 traitCollection];
    v19 = [(DragAndDropPreview *)v17 initWithDragAndDropMapItem:v16 traitCollection:v18];
    dragAndDropPreview = self->_dragAndDropPreview;
    self->_dragAndDropPreview = v19;

    [(DragAndDropPreview *)self->_dragAndDropPreview setContentUpdateDelegate:self];
    v21 = [v16 itemProvider];
    v22 = [[UIDragItem alloc] initWithItemProvider:v21];
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [(HomeOutlineSectionController *)self delegate];
    v11 = [v10 sectionController:self nodeSnapshotAtIndexPath:v9];

    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006A8628;
    v17[3] = &unk_101626190;
    objc_copyWeak(&v19, &location);
    v12 = v11;
    v18 = v12;
    v13 = objc_retainBlock(v17);
    v14 = [v12 identifierPath];
    v15 = [UIContextMenuConfiguration configurationWithIdentifier:v14 previewProvider:0 actionProvider:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v15 = [a4 nextFocusedIndexPath];
  focusedIdentifierPath = self->_focusedIdentifierPath;
  self->_focusedIdentifierPath = 0;

  v7 = v15;
  if (v15)
  {
    v8 = [(HomeOutlineSectionController *)self delegate];
    v9 = [v8 sectionController:self nodeSnapshotAtIndexPath:v15];

    v10 = [v9 identifierPath];
    v11 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v12 = [v10 hasPrefix:v11];

    if (v12)
    {
      v13 = [v9 identifierPath];
      v14 = self->_focusedIdentifierPath;
      self->_focusedIdentifierPath = v13;
    }

    v7 = v15;
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  [GEOAPPortal captureUserAction:2007 target:8 value:0];
  v7 = [(HomeOutlineSectionController *)self delegate];
  v8 = [v7 sectionController:self nodeSnapshotAtIndexPath:v6];

  v9 = [v8 viewModel];
  v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel];

  if (v10)
  {
    v11 = [v8 viewModel];
    v12 = [v11 homeActionObject];

    if (v12)
    {
      v13 = [(HomeOutlineSectionController *)self configuration];
      v14 = [v13 homeActionDelegate];
      v15 = [v11 homeActionObject];
      [v14 homeItemTapped:v15];
    }
  }

  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = [v16 objectForKey:@"SIDEBAR_SELECTION_ENABLED_KEY"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 BOOLValue];

    if ((v18 & 1) == 0)
    {
      [v19 deselectItemAtIndexPath:v6 animated:1];
    }
  }

  else
  {
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HomeOutlineSectionController *)self delegate];
  v7 = [v6 sectionController:self nodeSnapshotAtIndexPath:v5];

  v8 = [v7 viewModel];
  LODWORD(v6) = [v8 conformsToProtocol:&OBJC_PROTOCOL___HomeCellModel];

  v11 = 0;
  if (v6)
  {
    v9 = [v7 viewModel];
    v10 = [v9 homeActionObject];

    if (v10)
    {
      v11 = 1;
    }
  }

  return v11;
}

- (id)mapItemForDropSession:(id)a3
{
  v3 = a3;
  v4 = [v3 items];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [v3 items];
    v7 = [v6 firstObject];

    v8 = [v7 localObject];
    if ([v8 conformsToProtocol:&OBJC_PROTOCOL___MapsDragMapItemProviding])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 draggedMapItem];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDestinationOfDropCoordinator:(id)a3
{
  v4 = [a3 destinationIndexPath];
  v5 = [(HomeOutlineSectionController *)self delegate];
  v6 = [v5 sectionController:self nodeSnapshotAtIndexPath:v4];
  v7 = [v6 identifierPath];

  v8 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  LOBYTE(v5) = [v7 hasPrefix:v8];

  return v5;
}

- (BOOL)isSourceOfDropCoordinator:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a3 items];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) sourceIndexPath];
        v10 = [(HomeOutlineSectionController *)self delegate];
        v11 = [v10 sectionController:self nodeSnapshotAtIndexPath:v9];
        v12 = [v11 identifierPath];

        v13 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
        LOBYTE(v11) = [v12 hasPrefix:v13];

        if (v11)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v4 = [(DragAndDropPreview *)dragAndDropPreview renderPreviewImage];
    [v4 dragPreview];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006A8DAC;
    v8 = v7[3] = &unk_10164EFF0;
    dragItem = self->_dragItem;
    v6 = v8;
    [(UIDragItem *)dragItem setPreviewProvider:v7];
  }
}

- (void)clearSelectionWithReason:(id)a3
{
  v8 = a3;
  v4 = [(HomeOutlineSectionController *)self selectedIdentifierPaths];
  v5 = [v4 anyObject];

  if (v5 && [(HomeOutlineSectionController *)self shouldClearSelectionWithReason:v8])
  {
    v6 = [(HomeOutlineSectionController *)self delegate];
    [v6 sectionController:self deselectItemAtIdentifierPath:v5];

    v7 = [(HomeOutlineSectionController *)self delegate];
    [v7 sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (id)_snapshotByFilteringDeletionsFromSnapshot:(id)a3
{
  v4 = a3;
  deletions = self->_deletions;
  v6 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 identifierPath];
  v7 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 childSnapshots];
    v10 = [v9 count];

    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v11 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 childSnapshots];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1006A9078;
      v18[3] = &unk_101626168;
      v18[4] = self;
      v18[5] = &v19;
      v12 = sub_100021DB0(v11, v18);

      if (*(v20 + 24) == 1)
      {
        v13 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
        v14 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 identifierPath];
        v15 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 viewModel];
        v16 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v13 initWithIdentifierPath:v14 viewModel:v15 childSnapshots:v12 expanded:[(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 expanded]];

        v4 = v16;
      }

      _Block_object_dispose(&v19, 8);
    }

    v4 = v4;
    v8 = v4;
  }

  return v8;
}

- (void)_scrubDeletionsWithSectionSnapshot:(id)a3
{
  v4 = a3;
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
        v13 = [v11 identifierPathByRemovingFirstIdentifier];
        v14 = [v4 nodeSnapshotAtIdentifierPath:v13];

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

- (id)_sectionSnapshotByProcessingDeletionsInSectionSnapshot:(id)a3
{
  v4 = a3;
  [(HomeOutlineSectionController *)self _scrubDeletionsWithSectionSnapshot:v4];
  v5 = [(HomeOutlineSectionController *)self _snapshotByFilteringDeletionsFromSnapshot:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)deletionWithSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineSectionController *)self delegate];
  v6 = [v4 identifierPath];
  v7 = [v5 sectionController:self indexPathForIdentifierPath:v6];

  v8 = [HomeDeletion alloc];
  v9 = [v4 identifierPath];
  v10 = [(HomeDeletion *)v8 initWithObject:v4 indexPath:v7 identifierPath:v9 contextualActionCompletionHandler:0];

  return v10;
}

- (void)_removeDeletions:(id)a3 applySnapshot:(BOOL)a4
{
  v20 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
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
        v13 = [v10 identifierPath];
        v14 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:v13];

        if (!v14)
        {
          v19 = v5;
          goto LABEL_14;
        }

        v15 = self->_deletions;
        v16 = [v10 identifierPath];
        [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];

        expandedIdentifierPaths = self->_expandedIdentifierPaths;
        v18 = [v10 identifierPath];
        [(NSMutableSet *)expandedIdentifierPaths removeObject:v18];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (v20)
  {
    v19 = [(HomeOutlineSectionController *)self delegate];
    [v19 sectionController:self setNeedsApplySnapshotAnimated:1];
LABEL_14:
  }
}

- (void)endFailedDeletions:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v11) markAsCompletedWithSuccess:0 error:v7];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(HomeOutlineSectionController *)self _removeDeletions:v6 applySnapshot:1];
}

- (void)beginDeletions:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(v4);
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
        v12 = [v9 identifierPath];
        v13 = [(NSMutableDictionary *)deletions objectForKeyedSubscript:v12];

        if (v13)
        {
          v16 = v4;
          goto LABEL_13;
        }

        v14 = self->_deletions;
        v15 = [v9 identifierPath];
        [(NSMutableDictionary *)v14 setObject:v9 forKeyedSubscript:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(HomeOutlineSectionController *)self delegate];
  [v16 sectionController:self setNeedsApplySnapshotAnimated:1];
LABEL_13:
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_active && [v5 active])
  {
    v4 = [(HomeOutlineSectionController *)self delegate];
    [v4 sectionController:self setNeedsApplySnapshotAnimated:1];
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
  v3 = [(HomeOutlineSectionController *)self configuration];
  v4 = [v3 collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006A9AE0;
  v9[3] = &unk_101657A50;
  v9[4] = self;
  v6 = sub_100021DB0(v5, v9);
  v7 = [NSSet setWithArray:v6];

  return v7;
}

- (void)toggleElementAtIdentifierPath:(id)a3
{
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  v5 = a3;
  if ([(NSMutableSet *)expandedIdentifierPaths containsObject:?])
  {
    [(HomeOutlineSectionController *)self collapseElementAtIdentifierPath:v5];
  }

  else
  {
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v5];
  }
}

- (void)collapseElementAtIdentifierPath:(id)a3
{
  v7 = a3;
  v4 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [v7 hasPrefix:v4];

  if (v5 && [(NSMutableSet *)self->_expandedIdentifierPaths containsObject:v7])
  {
    [(NSMutableSet *)self->_expandedIdentifierPaths removeObject:v7];
    v6 = [(HomeOutlineSectionController *)self delegate];
    [v6 sectionController:self setNeedsApplySnapshotAnimated:1];

    [(HomeOutlineSectionController *)self _storeExpandedIdentifierPaths];
  }
}

- (void)expandElementAtIdentifierPath:(id)a3
{
  v7 = a3;
  v4 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [v7 hasPrefix:v4];

  if (v5 && ([(NSMutableSet *)self->_expandedIdentifierPaths containsObject:v7]& 1) == 0)
  {
    [(NSMutableSet *)self->_expandedIdentifierPaths addObject:v7];
    v6 = [(HomeOutlineSectionController *)self delegate];
    [v6 sectionController:self setNeedsApplySnapshotAnimated:1];

    [(HomeOutlineSectionController *)self _storeExpandedIdentifierPaths];
  }
}

- (BOOL)expanded
{
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  v3 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  LOBYTE(expandedIdentifierPaths) = [(NSMutableSet *)expandedIdentifierPaths containsObject:v3];

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
    v5 = [(HomeOutlineSectionController *)self configuration];
    v6 = [v5 storage];
    v7 = [(HomeOutlineSectionController *)self configuration];
    v8 = [v7 sectionIdentifier];
    [v6 storeExpandedIdentifierPaths:v4 forSection:v8];
  }
}

- (void)_loadExpandedIdentifierPaths
{
  v10 = [NSSet setWithObject:self->_sectionIdentifierPath];
  if ([(HomeOutlineSectionController *)self persistsExpansions])
  {
    v3 = [(HomeOutlineSectionController *)self configuration];
    v4 = [v3 storage];
    v5 = [(HomeOutlineSectionController *)self configuration];
    v6 = [v5 sectionIdentifier];
    v7 = [v4 expandedIdentifierPathsInSection:v6 defaultExpandedIdentifierPaths:v10];
  }

  else
  {
    v7 = v10;
  }

  v8 = [NSMutableSet setWithSet:v7];
  expandedIdentifierPaths = self->_expandedIdentifierPaths;
  self->_expandedIdentifierPaths = v8;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(HomeOutlineSectionController *)self dataProviders];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v29 + 1) + 8 * i) setActive:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    if (v3)
    {
      v27 = 0uLL;
      v28 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v10 = [(HomeOutlineSectionController *)self dataProviders];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v25 + 1) + 8 * j) observers];
            [v15 registerObserver:self];
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
      v10 = [(HomeOutlineSectionController *)self dataProviders];
      v16 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
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
              objc_enumerationMutation(v10);
            }

            v20 = [*(*(&v21 + 1) + 8 * k) observers];
            [v20 unregisterObserver:self];
          }

          v17 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
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
    v5 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v6 = [(HomeOutlineSectionController *)self sectionHeaderViewModel];
    v7 = [(HomeOutlineSectionController *)self itemSnapshots];
    v8 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v4 initWithIdentifierPath:v5 viewModel:v6 childSnapshots:v7 expanded:[(HomeOutlineSectionController *)self expanded]];
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
  v2 = [(HomeOutlineSectionController *)self configuration];
  v3 = [v2 delegate];

  return v3;
}

- (HomeOutlineSectionController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HomeOutlineSectionController;
  v6 = [(HomeOutlineSectionController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = +[NSMutableDictionary dictionary];
    deletions = v7->_deletions;
    v7->_deletions = v8;

    v10 = [(HomeOutlineSectionController *)v7 configuration];
    v11 = [v10 sectionIdentifier];
    v12 = [IdentifierPath identifierPathWithIdentifier:v11];
    sectionIdentifierPath = v7->_sectionIdentifierPath;
    v7->_sectionIdentifierPath = v12;

    [(HomeOutlineSectionController *)v7 _loadExpandedIdentifierPaths];
  }

  return v7;
}

@end