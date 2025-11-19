@interface ICCollectionView
- (BOOL)canFocusItemAtIndexPath:(id)a3;
- (BOOL)isCellDraggableForIdentifier:(id)a3;
- (BOOL)isCellReorderableForIdentifier:(id)a3;
- (BOOL)sourceObjectIDsContainsSystemPaperNotes:(id)a3;
- (CGRect)presentationSourceRectForCell:(id)a3;
- (ICCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6;
- (ICNAViewController)presentingViewController;
- (ICViewControllerManager)viewControllerManager;
- (id)cellForItemIdentifier:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)commonAccessibilityActionsForFolder:(id)a3;
- (id)commonAcessibilityActionsForNoteWithObjectID:(id)a3;
- (id)contextMenuConfigurationForIndexPath:(id)a3;
- (id)contextMenuConfigurationForItemsAtIndexPaths:(id)a3;
- (id)contextMenuForFolder:(id)a3 sourceView:(id)a4;
- (id)contextMenuForInvitation:(id)a3 sourceView:(id)a4;
- (id)contextMenuForLegacyNote:(id)a3 sourceView:(id)a4;
- (id)contextMenuForModernNote:(id)a3 sourceView:(id)a4;
- (id)contextMenuPreviewWithConfiguration:(id)a3 indexPath:(id)a4;
- (id)contextMenuWithPinnedActionsAndCenterWindow:(id)a3 pinnedActions:(id)a4 actions:(id)a5;
- (id)createLayout;
- (id)customAccessibilityActionsForObjectID:(id)a3 galleryView:(BOOL)a4;
- (id)defaultPreviewForCell:(id)a3;
- (id)deleteFolderAccessibilityLabel;
- (id)deleteNoteAccessibilityLabel;
- (id)dragItemsForIndexPath:(id)a3 sessionContext:(id)a4;
- (id)duplicateNoteAccessibilityLabel;
- (id)firstUnselectedIndexPathWithFrame:(CGRect)a3 arrowDirection:(unint64_t)a4;
- (id)galleryViewAcessibilityActionsForFolder:(id)a3;
- (id)galleryViewAcessibilityActionsForNote:(id)a3;
- (id)interactionSourceViewForObjectID:(id)a3;
- (id)leadingSwipeActionsConfigurationForModernNote:(id)a3 inCell:(id)a4;
- (id)leadingSwipeActionsConfigurationProvider;
- (id)lockOrUnlockAccessibilityLabelForNoteIsLocked:(BOOL)a3;
- (id)movableNoteObjectIDsIn:(id)a3 forDropIntoSection:(id)a4;
- (id)moveFolderAccessibilityLabel;
- (id)moveNoteAccessibilityLabel;
- (id)multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:(id)a3;
- (id)pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:(BOOL)a3 noteTitle:(id)a4;
- (id)pinOrUnpinAccessibilityLabelForNoteIsPinned:(BOOL)a3;
- (id)previewForWindowSceneActivationConfiguration:(id)a3 indexPath:(id)a4;
- (id)previewParametersWithCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)removeInvitationAccessibilityLabel;
- (id)renameFolderAccessibilityLabel;
- (id)replyToInvitationAccessibilityLabel;
- (id)sendNoteCopyAccessibilityLabel;
- (id)showFolderActivityAccessibilityLabel;
- (id)sourceObjectIDsForDragSession:(id)a3;
- (id)trailingSwipeActionsConfigurationForInvitation:(id)a3 inCell:(id)a4;
- (id)trailingSwipeActionsConfigurationForLegacyNote:(id)a3 inCell:(id)a4;
- (id)trailingSwipeActionsConfigurationForModernFolder:(id)a3 inCell:(id)a4;
- (id)trailingSwipeActionsConfigurationForModernNote:(id)a3 inCell:(id)a4;
- (id)trailingSwipeActionsConfigurationProvider;
- (int64_t)dataOwnerForIndexPath:(id)a3;
- (unint64_t)actualChildIndexForSnapshotIndex:(unint64_t)a3 inDestinationObjectID:(id)a4 sectionSnapshot:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)contextMenuWillPerformPreviewActionForMenuWithConfiguration:(id)a3 animator:(id)a4;
- (void)performCollaborationActionWithFolder:(id)a3 forceShareSheet:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
- (void)performCollaborationActionWithNote:(id)a3 forceShareSheet:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
- (void)performDeleteActionWithObjects:(id)a3 completion:(id)a4;
- (void)performDropOfFolderObjectIDs:(id)a3 atFolderObjectID:(id)a4 atIndex:(unint64_t)a5;
- (void)performDuplicateActionWithNote:(id)a3;
- (void)performEditSmartFolderActionWithFolder:(id)a3;
- (void)performExportArchiveActionWithObjects:(id)a3 fromSourceView:(id)a4;
- (void)performImportArchiveActionWithNoteContainer:(id)a3 fromSourceView:(id)a4;
- (void)performLockActionWithNote:(id)a3;
- (void)performMoveActionWithFolder:(id)a3 completion:(id)a4;
- (void)performMoveActionWithNotes:(id)a3 completion:(id)a4;
- (void)performPinActionWithNote:(id)a3;
- (void)performPinActionWithNotes:(id)a3;
- (void)performRemoveActionWithInvitation:(id)a3;
- (void)performRenameActionWithFolder:(id)a3;
- (void)performReplyActionWithInvitation:(id)a3;
- (void)performSendActionWithNote:(id)a3 fromSourceView:(id)a4;
- (void)performShowActivityStreamActionWithFolder:(id)a3;
- (void)reExpandFolderWithObjectID:(id)a3;
- (void)reloadCellAfterDelayForObjectID:(id)a3;
- (void)setDiffableDataSource:(id)a3;
- (void)synchronouslyRemoveItemsWithIdentifiers:(id)a3;
@end

@implementation ICCollectionView

- (ICCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ICCollectionView *)self createLayout];
  if (objc_opt_respondsToSelector())
  {
    [v14 _setRecomputesLayoutForEmptyUpdates:0];
  }

  v19.receiver = self;
  v19.super_class = ICCollectionView;
  v15 = [(ICCollectionView *)&v19 initWithFrame:v14 collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_presentingViewController, v10);
    objc_storeStrong(&v16->_legacyManagedObjectContext, a4);
    objc_storeStrong(&v16->_modernManagedObjectContext, a5);
    objc_storeWeak(&v16->_viewControllerManager, v13);
    [(ICCollectionView *)v16 setAlwaysBounceVertical:1];
    v17 = +[UIColor ICGroupedBackgroundColor];
    [(ICCollectionView *)v16 setBackgroundColor:v17];

    [(ICCollectionView *)v16 setShowsHorizontalScrollIndicator:0];
    [(ICCollectionView *)v16 setDragInteractionEnabled:1];
    [(ICCollectionView *)v16 setDragDelegate:v16];
    [(ICCollectionView *)v16 setDropDelegate:v16];
    [(ICCollectionView *)v16 setAllowsFocus:1];
  }

  return v16;
}

- (void)setDiffableDataSource:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_diffableDataSource, a3);
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E33E0;
  v10[3] = &unk_100649540;
  objc_copyWeak(&v11, &location);
  v6 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource reorderingHandlers];
  [v6 setCanReorderItemHandler:v10];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3434;
  v8[3] = &unk_1006495A8;
  objc_copyWeak(&v9, &location);
  v7 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource reorderingHandlers];
  [v7 setDidReorderHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)createLayout
{
  v2 = objc_alloc_init(UICollectionViewFlowLayout);

  return v2;
}

- (BOOL)canFocusItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self cellForItemAtIndexPath:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ICCollectionView *)self diffableDataSource];
      v8 = [v7 itemIdentifierForIndexPath:v4];

      objc_opt_class();
      LOBYTE(v7) = objc_opt_isKindOfClass();

      if ((v7 & 1) == 0)
      {
LABEL_5:
        v6 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v9 = [v5 accessories];
    v6 = [v9 ic_containsObjectPassingTest:&stru_1006495E8];

    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [ICDragSessionContext alloc];
  v10 = [(ICCollectionView *)self modernManagedObjectContext];
  v11 = [(ICCollectionView *)self legacyManagedObjectContext];
  v12 = [(ICDragSessionContext *)v9 initWithModernManagedObjectContext:v10 legacyManagedObjectContext:v11];

  [v8 setLocalContext:v12];
  [(ICCollectionView *)self setCurrentDragSessionContext:v12];
  v13 = [(ICCollectionView *)self dragItemsForIndexPath:v7 sessionContext:v12];

  return v13;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v21 = v5;
  v6 = [v5 localContext];
  v7 = ICDynamicCast();

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 currentSourceObjectIDs];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 ic_isEntityOfClass:objc_opt_class()])
        {
          v14 = [(ICCollectionView *)self diffableDataSource];
          v15 = [v14 snapshot];
          v16 = [v15 sectionIdentifierForSectionContainingItemIdentifier:v13];

          v17 = [(ICCollectionView *)self diffableDataSource];
          v18 = [v17 snapshotForSection:v16];

          if ([v18 isExpanded:v13])
          {
            v26 = v13;
            v19 = [NSArray arrayWithObjects:&v26 count:1];
            [v18 collapseItems:v19];

            v20 = [(ICCollectionView *)self diffableDataSource];
            [v20 applySnapshot:v18 toSection:v16 animatingDifferences:1];

            [v7 setAutoCollapsedFolderObjectID:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v8 = a5;
  v9 = a4;
  objc_opt_class();
  v10 = [v9 localContext];

  v11 = ICDynamicCast();
  v12 = [(ICCollectionView *)self dragItemsForIndexPath:v8 sessionContext:v11];

  return v12;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 localContext];

  v9 = ICDynamicCast();

  [v9 updateDropTargetCellsForPinNoteDrop:0];
  v7 = [v9 autoCollapsedFolderObjectID];

  if (v7)
  {
    v8 = [v9 autoCollapsedFolderObjectID];
    [(ICCollectionView *)self reExpandFolderWithObjectID:v8];
  }

  [(ICCollectionView *)self setCurrentDragSessionContext:0];
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  objc_opt_class();
  v61 = v8;
  v11 = [v8 localDragSession];
  v12 = [v11 localContext];
  v13 = ICDynamicCast();

  [v13 updateDropTargetCellsForPinNoteDrop:0];
  v14 = [v13 currentSourceObjectIDs];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000E464C;
  v67[3] = &unk_100649610;
  v67[4] = self;
  v64 = [v14 ic_compactMap:v67];

  v15 = [(ICCollectionView *)self diffableDataSource];
  v16 = [v15 itemIdentifierForIndexPath:v9];

  objc_opt_class();
  v17 = ICDynamicCast();
  v62 = v16;
  if ([v17 ic_isModernType])
  {
    v18 = [(ICCollectionView *)self modernManagedObjectContext];
LABEL_5:
    v19 = v18;
    v20 = [v18 objectWithID:v17];

    goto LABEL_7;
  }

  if ([v17 ic_isLegacyType])
  {
    v18 = [(ICCollectionView *)self legacyManagedObjectContext];
    goto LABEL_5;
  }

  v20 = v16;
LABEL_7:
  objc_opt_class();
  v21 = ICDynamicCast();
  objc_opt_class();
  v22 = ICDynamicCast();
  objc_opt_class();
  v63 = ICDynamicCast();
  objc_opt_class();
  v65 = ICDynamicCast();
  v23 = [v21 parentCloudObject];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [v21 cloudAccount];
  }

  v60 = v25;

  v26 = [v10 cellForItemAtIndexPath:v9];

  if (!v20 || !v26)
  {
    v34 = [UICollectionViewDropProposal alloc];
    v35 = 1;
    v36 = 0;
    goto LABEL_52;
  }

  if ([v13 dragSessionType] != 1)
  {
    v32 = 0;
    v33 = 1;
    if ([v13 dragSessionType] != 2 || !v22)
    {
      goto LABEL_51;
    }

    if ([v22 isSystemFolder])
    {
      if (![v22 isDefaultFolderForAccount])
      {
        goto LABEL_35;
      }

      v37 = [v22 account];
      v38 = [v37 visibleCustomFoldersCount];

      if (v38)
      {
        goto LABEL_35;
      }
    }

    else
    {
      [v61 locationInView:v26];
      v42 = v41;
      if (v41 <= 0.0 || v41 >= 16.0)
      {
        [v26 frame];
        v59 = v42 <= v49 + -16.0;
      }

      else
      {
        v59 = 0;
      }

      v50 = [v13 currentSourceObjectIDs];
      v51 = [v50 containsObject:v17];

      if (!v59 && (v51 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v40 = [[ICMoveDecision alloc] initWithSourceObjects:v64 destination:v60];
    v52 = [v40 shouldMove];
    if (v52)
    {
      v33 = 3;
    }

    else
    {
      v33 = 1;
    }

    v32 = v52;
LABEL_50:

    goto LABEL_51;
  }

  if (v22 | v65)
  {
LABEL_14:
    v58 = v21;
    v27 = v9;
    v28 = v22;
    v29 = [[ICMoveDecision alloc] initWithSourceObjects:v64 destination:v20];
    v30 = [v29 shouldMove];
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 1;
    }

    if (v30)
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = v31;
    goto LABEL_30;
  }

  if (!v63)
  {
LABEL_35:
    v32 = 0;
    v33 = 1;
    goto LABEL_51;
  }

  v58 = v21;
  v27 = v9;
  v28 = v22;
  v32 = 2;
  v33 = 3;
LABEL_30:
  v22 = v28;
  if (v33 != 1 && v32)
  {
    v9 = v27;
    if (v22 | v65)
    {
      v69 = v26;
      v39 = [NSArray arrayWithObjects:&v69 count:1];
      [v13 setCurrentDropTargetCells:v39];

      v68 = v62;
      v40 = [NSArray arrayWithObjects:&v68 count:1];
      [v13 setCurrentDropTargetItemIDs:v40];
      v32 = 2;
      v21 = v58;
    }

    else
    {
      v21 = v58;
      if (!v63)
      {
        v32 = 2;
        goto LABEL_51;
      }

      v56 = v33;
      v43 = [(ICCollectionView *)self diffableDataSource];
      v44 = [v43 snapshot];

      v57 = v44;
      v55 = [v44 sectionIdentifierForSectionContainingItemIdentifier:v62];
      v45 = [v13 currentSourceObjectIDs];
      v46 = [(ICCollectionView *)self movableNoteObjectIDsIn:v45 forDropIntoSection:v55];

      if ([v46 count])
      {
        v47 = [v57 itemIdentifiersInSectionWithIdentifier:v55];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_1000E46C8;
        v66[3] = &unk_100649638;
        v66[4] = self;
        v48 = [v47 ic_compactMap:v66];
        [v13 setCurrentDropTargetCells:v48];

        [v13 setCurrentDropTargetItemIDs:v47];
        [v13 updateDropTargetCellsForPinNoteDrop:1];
      }

      v32 = 2;
      v33 = v56;
      v40 = v57;
    }

    goto LABEL_50;
  }

  v9 = v27;
  v21 = v58;
LABEL_51:
  v34 = [UICollectionViewDropProposal alloc];
  v35 = v33;
  v36 = v32;
LABEL_52:
  v53 = [v34 initWithDropOperation:v35 intent:v36];

  return v53;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 session];
  v7 = [v6 localDragSession];
  v8 = [v7 localContext];
  v9 = ICDynamicCast();

  v10 = [v5 proposal];
  v11 = [v10 operation];

  if (v11 == 3)
  {
    v82 = v9;
    v12 = [v5 session];
    v13 = [v12 localDragSession];
    v84 = self;
    v14 = [(ICCollectionView *)self sourceObjectIDsForDragSession:v13];

    v83 = [v5 destinationIndexPath];
    v15 = +[NSMutableArray array];
    v16 = +[NSMutableArray array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v90;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v90 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v89 + 1) + 8 * i);
          v23 = [v22 ic_isEntityOfClass:objc_opt_class()];
          v24 = v15;
          if ((v23 & 1) == 0)
          {
            v25 = [v22 ic_isEntityOfClass:objc_opt_class()];
            v24 = v16;
            if (!v25)
            {
              continue;
            }
          }

          [v24 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v89 objects:v93 count:16];
      }

      while (v19);
    }

    v26 = [(ICCollectionView *)v84 diffableDataSource];
    v27 = v83;
    v28 = [v26 itemIdentifierForIndexPath:v83];

    objc_opt_class();
    v29 = ICDynamicCast();
    objc_opt_class();
    v30 = ICDynamicCast();
    if ([v15 count] && objc_msgSend(v16, "count"))
    {
      v9 = v82;
LABEL_50:

      goto LABEL_51;
    }

    v9 = v82;
    if (![v15 count] && !objc_msgSend(v16, "count") || (objc_msgSend(v29, "ic_isModernFolderType") & 1) == 0 && (objc_msgSend(v29, "ic_isModernNoteType") & 1) == 0 && !v30)
    {
      goto LABEL_50;
    }

    if ([v16 count])
    {
      if (![v29 ic_isModernFolderType])
      {
        goto LABEL_50;
      }

      v80 = v30;
      v31 = [v5 proposal];
      v32 = [v31 intent];

      if (v32 == 2)
      {
        v33 = [v82 currentDropTargetItemIDs];
        v34 = [v33 count];

        if (v34 == 1)
        {
          objc_opt_class();
          v35 = [v82 currentDropTargetItemIDs];
          v36 = [v35 firstObject];
          v37 = ICDynamicCast();

          v29 = v37;
        }

        v38 = [v82 autoCollapsedFolderObjectID];
        v39 = [v16 containsObject:v38];

        if (v39)
        {
          [v82 setAutoCollapsedFolderObjectID:0];
        }

        [(ICCollectionView *)v84 performDropOfFolderObjectIDs:v16 atFolderObjectID:v29 atIndex:0];
        goto LABEL_49;
      }

      v48 = [(ICCollectionView *)v84 modernManagedObjectContext];
      v49 = [v48 objectWithID:v29];

      v50 = [v49 parent];
      v51 = v50;
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = [v49 account];
      }

      v76 = v52;

      v77 = [(ICCollectionView *)v84 diffableDataSource];
      v59 = [v77 snapshot];
      v78 = v49;
      v60 = [v49 objectID];
      v61 = [v59 sectionIdentifierForSectionContainingItemIdentifier:v60];

      v62 = [(ICCollectionView *)v84 diffableDataSource];
      v75 = v61;
      v63 = [v62 snapshotForSection:v61];

      v64 = [v63 parentOfChild:v29];
      v74 = v64;
      if ([v63 containsItem:v64])
      {
        v65 = [v63 childrenOfParent:v64];
      }

      else
      {
        v65 = &__NSArray0__struct;
      }

      v73 = v65;
      v66 = [v78 objectID];
      v67 = [v65 indexOfObject:v66];

      if (v67 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = 0;
      }

      else
      {
        v68 = v67;
      }

      v71 = v68;
      v69 = [v76 objectID];
      v72 = [(ICCollectionView *)v84 actualChildIndexForSnapshotIndex:v71 inDestinationObjectID:v69 sectionSnapshot:v63];

      v70 = [v76 objectID];
      [(ICCollectionView *)v84 performDropOfFolderObjectIDs:v16 atFolderObjectID:v70 atIndex:v72];
    }

    else
    {
      if (![v15 count])
      {
        goto LABEL_50;
      }

      if (![v29 ic_isModernNoteType])
      {
        if (([v29 ic_isFolderType] & 1) != 0 || v30)
        {
          v81 = v30;
          v85[0] = _NSConcreteStackBlock;
          v85[1] = 3221225472;
          v85[2] = sub_1000E510C;
          v85[3] = &unk_100649680;
          v85[4] = v84;
          v53 = [v15 ic_map:v85];
          v54 = [ICMoveDecisionController alloc];
          v55 = [(ICCollectionView *)v84 presentingViewController];
          v79 = v53;
          v56 = [(ICMoveDecisionController *)v54 initWithSourceObjects:v53 presentingViewController:v55];

          if (v29)
          {
            v57 = [(ICCollectionView *)v84 modernManagedObjectContext];
            v58 = [v57 objectWithID:v29];
            [(ICMoveDecisionController *)v56 setDestination:v58];

            v9 = v82;
            v27 = v83;
            v30 = v81;
          }

          else
          {
            v30 = v81;
            [(ICMoveDecisionController *)v56 setDestination:v81];
            v27 = v83;
          }

          [(ICMoveDecisionController *)v56 performDecisionWithCompletion:0];
        }

        goto LABEL_50;
      }

      v80 = v30;
      v40 = [(ICCollectionView *)v84 diffableDataSource];
      v41 = [v40 snapshot];

      v42 = [v41 sectionIdentifiers];
      v43 = [v42 objectAtIndexedSubscript:{objc_msgSend(v83, "section")}];

      v78 = v41;
      v44 = v41;
      v45 = v43;
      v46 = [v44 sectionIdentifiers];
      LODWORD(v43) = [v46 ic_containsObjectPassingTest:&stru_100649658];

      if (v43)
      {
        v47 = [(ICCollectionView *)v84 modernManagedObjectContext];
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_1000E4F8C;
        v86[3] = &unk_100645D40;
        v86[4] = v84;
        v87 = v17;
        v88 = v45;
        [v47 performBlockAndWait:v86];
      }
    }

LABEL_49:
    v27 = v83;
    v30 = v80;
    goto LABEL_50;
  }

LABEL_51:
}

- (id)customAccessibilityActionsForObjectID:(id)a3 galleryView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSArray array];
  if ([v6 ic_isModernFolderType])
  {
    v8 = [(ICCollectionView *)self modernManagedObjectContext];
    v9 = [v8 objectWithID:v6];

    if (v4)
    {
      [(ICCollectionView *)self galleryViewAcessibilityActionsForFolder:v9];
    }

    else
    {
      [(ICCollectionView *)self commonAccessibilityActionsForFolder:v9];
    }
    v10 = ;
  }

  else
  {
    if (![v6 ic_isNoteType])
    {
      goto LABEL_13;
    }

    if (!v4 || ![v6 ic_isModernNoteType])
    {
      [(ICCollectionView *)self commonAcessibilityActionsForNoteWithObjectID:v6];
      v7 = v9 = v7;
      goto LABEL_12;
    }

    v11 = [(ICCollectionView *)self modernManagedObjectContext];
    v9 = [v11 objectWithID:v6];

    v10 = [(ICCollectionView *)self galleryViewAcessibilityActionsForNote:v9];
  }

  v12 = v10;

  v7 = v12;
LABEL_12:

LABEL_13:

  return v7;
}

- (id)contextMenuConfigurationForItemsAtIndexPaths:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
      v6 = [(ICCollectionView *)self contextMenuConfigurationForIndexPath:v5];

      goto LABEL_34;
    }

    v34 = [v4 count] != 0;
    v7 = [v4 count] != 0;
    v8 = [v4 count] != 0;
    v9 = [v4 count] != 0;
    v30 = +[NSMutableArray array];
    +[NSMutableArray array];
    v29 = v28 = v4;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v32 = *v47;
      v33 = 0;
      while (1)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [(ICCollectionView *)self diffableDataSource];
          v16 = [v15 itemIdentifierForIndexPath:v14];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v16 object];
              v17 = [v18 objectID];
            }

            else
            {
              v17 = 0;
            }
          }

          if ([v17 ic_isNoteType])
          {
            v19 = v12;
            v20 = v7;
            if ([v17 ic_isModernNoteType])
            {
              [(ICCollectionView *)self modernManagedObjectContext];
            }

            else
            {
              [(ICCollectionView *)self legacyManagedObjectContext];
            }
            v24 = ;
            v22 = [v24 objectWithID:v17];

            v34 &= [v22 isPinnable];
            v7 = v20 & [v22 isMovable];
            v8 &= [v22 isDeletable];
            v33 += [v22 isPinned];
            v12 = v19 + 1;
            [v30 ic_addNonNilObject:v22];
            v9 = 0;
          }

          else
          {
            if (![v17 ic_isInvitationType])
            {
              goto LABEL_23;
            }

            v21 = [(ICCollectionView *)self modernManagedObjectContext];
            v22 = [v21 objectWithID:v17];

            v23 = [v22 highlight];
            v9 &= v23 != 0;

            [v29 ic_addNonNilObject:v22];
            v8 = 0;
            v7 = 0;
            v34 = 0;
          }

LABEL_23:
        }

        v11 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (!v11)
        {
          goto LABEL_27;
        }
      }
    }

    v12 = 0;
    v33 = 0;
LABEL_27:

    if (v8 & 1) != 0 || (v7 & 1) != 0 || (v34 & 1) != 0 || (v9)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000E574C;
      v35[3] = &unk_100649730;
      v42 = v9 & 1;
      v25 = v29;
      v36 = v29;
      v37 = self;
      v40 = v33;
      v41 = v12;
      v43 = v34 & 1;
      v38 = obj;
      v26 = v30;
      v39 = v30;
      v44 = v7 & 1;
      v45 = v8 & 1;
      v6 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:&stru_1006496C0 actionProvider:v35];

      v4 = v28;
    }

    else
    {
      v6 = 0;
      v4 = v28;
      v25 = v29;
      v26 = v30;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_34:

  return v6;
}

- (id)contextMenuConfigurationForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self diffableDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(ICCollectionView *)self cellForItemIdentifier:v6];
  v8 = ICProtocolCast();
  v9 = [v8 contextMenuInteractionPreview];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_9:
    if ([v13 ic_isAttachmentType])
    {
      v15 = [(ICCollectionView *)self modernManagedObjectContext];
      v16 = [v15 objectWithID:v13];

      v17 = [v16 note];
      v18 = [v17 objectID];

      v13 = v18;
    }

    if ([v13 ic_isInvitationType])
    {
      v19 = [(ICCollectionView *)self modernManagedObjectContext];
      v20 = [v19 objectWithID:v13];
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_24;
    }

    if ([v13 ic_isModernFolderType])
    {
      v24 = [(ICCollectionView *)self modernManagedObjectContext];
      v19 = [v24 objectWithID:v13];

      if ([v19 isModernCustomFolder])
      {
        v19 = v19;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        v23 = v19;
        goto LABEL_24;
      }

      v21 = 0;
      goto LABEL_22;
    }

    if ([v13 ic_isModernNoteType])
    {
      v19 = [(ICCollectionView *)self modernManagedObjectContext];
      v22 = [v19 objectWithID:v13];
      v21 = 0;
LABEL_23:
      v23 = 0;
      v20 = 0;
LABEL_24:

      if (v20)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if ([v13 ic_isLegacyNoteType])
    {
      v19 = [(ICCollectionView *)self legacyManagedObjectContext];
      v21 = [v19 objectWithID:v13];
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

LABEL_26:
    v21 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v6 object];
    v13 = [v14 objectID];

    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v21 = 0;
  v22 = 0;
  v13 = 0;
LABEL_27:
  v23 = 0;
  v20 = 0;
LABEL_28:
  if (!v23 && !v22 && !v21)
  {
    goto LABEL_32;
  }

LABEL_31:
  if ([v23 isUnsupported])
  {
LABEL_32:
    v25 = 0;
    goto LABEL_34;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000E6174;
  v34[3] = &unk_100649758;
  v35 = v20;
  v36 = v23;
  v37 = v22;
  v38 = v21;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E6220;
  v27[3] = &unk_100649780;
  v28 = v35;
  v29 = self;
  v30 = v12;
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v25 = [UIContextMenuConfiguration configurationWithIdentifier:v6 previewProvider:v34 actionProvider:v27];

LABEL_34:

  return v25;
}

- (id)multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:(id)a3
{
  v3 = [(ICCollectionView *)self cellForItemAtIndexPath:a3];
  v4 = ICProtocolCast();
  v5 = [v4 contextMenuInteractionPreview];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  v9 = [v8 window];
  if (v9)
  {
    v10 = [[UITargetedPreview alloc] initWithView:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)contextMenuWillPerformPreviewActionForMenuWithConfiguration:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000E6490;
  v15 = &unk_100645BA0;
  v16 = self;
  v17 = v6;
  v8 = v6;
  v9 = objc_retainBlock(&v12);
  v10 = [(ICCollectionView *)self viewControllerManager:v12];
  v11 = [v10 noteContainerViewMode];

  if (v11 == 1)
  {
    [v7 addAnimations:v9];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (id)previewForWindowSceneActivationConfiguration:(id)a3 indexPath:(id)a4
{
  v5 = [(ICCollectionView *)self cellForItemAtIndexPath:a4];
  v6 = [(ICCollectionView *)self defaultPreviewForCell:v5];

  return v6;
}

- (BOOL)sourceObjectIDsContainsSystemPaperNotes:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E6704;
  v6[3] = &unk_1006497A8;
  v6[4] = self;
  v3 = [a3 ic_compactMap:v6];
  v4 = [v3 ic_containsObjectPassingTest:&stru_1006497C8];

  return v4;
}

- (void)reloadCellAfterDelayForObjectID:(id)a3
{
  v4 = a3;
  v3 = v4;
  dispatchMainAfterDelay();
}

- (unint64_t)actualChildIndexForSnapshotIndex:(unint64_t)a3 inDestinationObjectID:(id)a4 sectionSnapshot:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 ic_isEntityOfClass:objc_opt_class()])
  {
    v10 = [v9 containsItem:v8];
    v11 = [(ICCollectionView *)self modernManagedObjectContext];
    v12 = [v11 objectWithID:v8];

    v13 = [v12 defaultFolder];
    v14 = [v13 objectID];

    v15 = [v9 containsItem:v14];
    if (a3)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    a3 = a3 - v16 - v17;
  }

  return a3;
}

- (id)sourceObjectIDsForDragSession:(id)a3
{
  v3 = [a3 items];
  v4 = [v3 ic_compactMap:&stru_100649808];

  return v4;
}

- (id)dragItemsForIndexPath:(id)a3 sessionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCollectionView *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  if (-[ICCollectionView isCellDraggableForIdentifier:](self, "isCellDraggableForIdentifier:", v9) && ([v6 addItemIdentifierIfAppropriate:v9 isEditingCollectionView:{-[ICCollectionView isEditing](self, "isEditing")}], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v14 = v10;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (BOOL)isCellDraggableForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self cellForItemIdentifier:v4];
  if (![v5 isUserInteractionEnabled] || (objc_msgSend(v4, "conformsToProtocol:", &OBJC_PROTOCOL___ICSectionIdentifier) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [ICTagCoreDataIndexer isTagItemIdentifier:v4]^ 1;
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    objc_opt_class();
    v8 = [v7 noteContainer];
    v9 = ICDynamicCast();

    objc_opt_class();
    v10 = [v7 noteContainer];
    v11 = ICDynamicCast();

    if ([(ICCollectionView *)self isEditing])
    {
      v12 = [v7 allowsEditing];
    }

    else
    {
      v12 = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6 & v12;
    }

    if (v11)
    {
      v14 = [v11 isSystemFolder] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    LOBYTE(v6) = v13 & v14;
  }

  return v6;
}

- (BOOL)isCellReorderableForIdentifier:(id)a3
{
  v4 = [(ICCollectionView *)self cellForItemIdentifier:a3];
  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 allowsEditing])
  {
    v6 = [(ICCollectionView *)self isEditing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)dataOwnerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self diffableDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 object];
    v8 = [v7 objectID];

    v6 = v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = v6;
  if (![v9 ic_isInvitationType] && !objc_msgSend(v9, "ic_isModernFolderType"))
  {
    if ([v9 ic_isModernNoteType])
    {
      v15 = [(ICCollectionView *)self modernManagedObjectContext];
      v16 = [v15 ic_existingObjectWithID:v9];

      v17 = [v16 folder];
      v18 = [v17 account];
      v19 = [v18 isManaged];

      if (v19)
      {
        goto LABEL_7;
      }
    }

    else if ([v9 ic_isAttachmentType])
    {
      v20 = [(ICCollectionView *)self modernManagedObjectContext];
      v21 = [v20 ic_existingObjectWithID:v9];

      v22 = [v21 note];
      v23 = [v22 folder];
      v24 = [v23 account];
      v25 = [v24 isManaged];

      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  v10 = [(ICCollectionView *)self modernManagedObjectContext];
  v11 = [v10 ic_existingObjectWithID:v9];

  v12 = [v11 account];
  v13 = [v12 isManaged];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v14 = 2;
LABEL_16:

  return v14;
}

- (void)reExpandFolderWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self currentDragSessionContext];
  v6 = [v5 autoCollapsedFolderObjectID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(ICCollectionView *)self diffableDataSource];
    v9 = [v8 snapshot];
    v10 = [v9 sectionIdentifierForSectionContainingItemIdentifier:v4];

    v11 = [(ICCollectionView *)self diffableDataSource];
    v12 = [v11 snapshotForSection:v10];

    v16 = v4;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [v12 expandItems:v13];

    v14 = [(ICCollectionView *)self diffableDataSource];
    [v14 applySnapshot:v12 toSection:v10 animatingDifferences:1];

    v15 = [(ICCollectionView *)self currentDragSessionContext];
    [v15 setAutoCollapsedFolderObjectID:0];
  }
}

- (id)movableNoteObjectIDsIn:(id)a3 forDropIntoSection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E72D8;
  v10[3] = &unk_100649830;
  v10[4] = self;
  v11 = [v6 sectionType] == 3;
  v8 = [v7 ic_compactMap:v10];

  return v8;
}

- (void)performDropOfFolderObjectIDs:(id)a3 atFolderObjectID:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (v9 && v10)
  {
    v11 = [(ICCollectionView *)self modernManagedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E7498;
    v12[3] = &unk_100649858;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    v15 = a5;
    [v11 performBlockAndWait:v12];
  }
}

- (CGRect)presentationSourceRectForCell:(id)a3
{
  v4 = a3;
  [v4 frame];
  [(ICCollectionView *)self convertPoint:self toView:?];
  v6 = v5;
  [(ICCollectionView *)self bounds];
  Width = CGRectGetWidth(v20);
  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  Height = CGRectGetHeight(v21);
  v17 = 0.0;
  v18 = v6;
  v19 = Width;
  result.size.height = Height;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)contextMenuForInvitation:(id)a3 sourceView:(id)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v7 = [v5 highlight];

  if (v7)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000E7CB0;
    v19[3] = &unk_100646870;
    v19[4] = self;
    v8 = v5;
    v20 = v8;
    v9 = [UIAction ic_replyActionWithHandler:v19];
    [v6 addObject:v9];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000E7CBC;
    v16 = &unk_100646870;
    v17 = self;
    v18 = v8;
    v10 = [UIAction ic_removeActionWithHandler:&v13];
    [v6 addObject:{v10, v13, v14, v15, v16, v17}];
  }

  v11 = [UIMenu menuWithChildren:v6];

  return v11;
}

- (id)contextMenuForFolder:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([v6 canBeSharedViaICloud] && objc_msgSend(v6, "canCurrentUserShare"))
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000E832C;
    v50[3] = &unk_1006498A8;
    v50[4] = self;
    v51 = v6;
    v52 = v7;
    v10 = [UIAction ic_collaborateShareActionWithCloudSyncingObject:v51 withHandler:v50];
    if (_UISolariumEnabled())
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    [v11 addObject:v10];
  }

  if ([v6 canBeSharedViaICloud] && objc_msgSend(v6, "isSharedViaICloud"))
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000E8354;
    v47[3] = &unk_1006498A8;
    v47[4] = self;
    v48 = v6;
    v49 = v7;
    v12 = [UIAction ic_collaborateManageActionWithCloudSyncingObject:v48 withHandler:v47];
    [v8 addObject:v12];
  }

  if ([v6 isSharedViaICloud])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000E837C;
    v45[3] = &unk_100646870;
    v45[4] = self;
    v46 = v6;
    v13 = [UIAction ic_showActivityStreamActionWithCloudSyncingObject:v46 withHandler:v45];
    [v8 addObject:v13];
  }

  v14 = [(ICCollectionView *)self viewControllerManager];
  v15 = [ICMoveFolderActivity canShowMoveActionForFolder:v6 viewControllerManager:v14];

  if (v15)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E8388;
    v43[3] = &unk_100646870;
    v43[4] = self;
    v44 = v6;
    v16 = [UIAction ic_moveActionWithHandler:v43];
    if (_UISolariumEnabled())
    {
      v17 = v9;
    }

    else
    {
      v17 = v8;
    }

    [v17 addObject:v16];
  }

  if ([v6 isEditableSmartFolder])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E8398;
    v41[3] = &unk_100646870;
    v41[4] = self;
    v18 = &v42;
    v42 = v6;
    v19 = [UIAction ic_editSmartFolderActionWithHandler:v41];
  }

  else
  {
    if (![v6 isRenamable])
    {
      goto LABEL_22;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000E83A4;
    v39[3] = &unk_100646870;
    v39[4] = self;
    v18 = &v40;
    v40 = v6;
    v19 = [UIAction ic_renameActionWithHandler:v39];
  }

  v20 = v19;
  [v8 addObject:v19];

LABEL_22:
  if ([v6 isDeletable])
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E83B0;
    v37[3] = &unk_100646870;
    v37[4] = self;
    v38 = v6;
    v21 = [UIAction ic_deleteActionWithHandler:v37];
    if (_UISolariumEnabled())
    {
      v22 = v9;
    }

    else
    {
      v22 = v8;
    }

    [v22 addObject:v21];
  }

  if (ICInternalSettingsIsAlexandriaEnabled())
  {
    if ([v6 allowsImporting])
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000E8438;
      v34[3] = &unk_1006498A8;
      v34[4] = self;
      v35 = v6;
      v36 = v7;
      v23 = [UIAction ic_importArchiveActionWithHandler:v34];
      [v8 addObject:v23];
    }

    if ([v6 allowsExporting])
    {
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000E8448;
      v30 = &unk_1006498A8;
      v31 = self;
      v32 = v6;
      v33 = v7;
      v24 = [UIAction ic_exportArchiveActionWithHandler:&v27];
      [v8 addObject:{v24, v27, v28, v29, v30, v31}];
    }
  }

  v25 = [(ICCollectionView *)self contextMenuWithPinnedActionsAndCenterWindow:0 pinnedActions:v9 actions:v8];

  return v25;
}

- (id)contextMenuForModernNote:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([v6 isPinnable])
  {
    v10 = [v6 isPinned];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000E8AB4;
    v50[3] = &unk_100646870;
    v50[4] = self;
    v51 = v6;
    v11 = [UIAction ic_pinNoteActionPinned:v10 withHandler:v50];
    [v8 addObject:v11];
  }

  if ([v6 isLockable])
  {
    v12 = [v6 isPasswordProtected];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000E8AC0;
    v48[3] = &unk_100646870;
    v48[4] = self;
    v49 = v6;
    v13 = [UIAction ic_lockNoteActionLocked:v12 withHandler:v48];
    [v8 addObject:v13];
  }

  if ([v6 isDuplicatable])
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000E8ACC;
    v46[3] = &unk_100646870;
    v46[4] = self;
    v47 = v6;
    v14 = [UIAction ic_duplicateNoteActionWithHandler:v46];
    [v8 addObject:v14];
  }

  if ([v6 canBeSharedViaICloud])
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E8AD8;
    v43[3] = &unk_1006498A8;
    v43[4] = self;
    v44 = v6;
    v45 = v7;
    v15 = [UIAction ic_collaborateShareActionWithCloudSyncingObject:v44 withHandler:v43];
    if (_UISolariumEnabled())
    {
      v16 = v9;
    }

    else
    {
      v16 = v8;
    }

    [v16 addObject:v15];
  }

  if ([v6 isSharedViaICloud])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000E8B00;
    v40[3] = &unk_1006498A8;
    v40[4] = self;
    v41 = v6;
    v42 = v7;
    v17 = [UIAction ic_collaborateManageActionWithCloudSyncingObject:v41 withHandler:v40];
    [v8 addObject:v17];
  }

  if (ICInternalSettingsIsAlexandriaEnabled() && [v6 allowsExporting])
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E8B28;
    v37[3] = &unk_1006498A8;
    v37[4] = self;
    v38 = v6;
    v39 = v7;
    v18 = [UIAction ic_exportArchiveActionWithHandler:v37];
    [v8 addObject:v18];
  }

  if ([v6 isMovable] && -[ICCollectionView ic_behavior](self, "ic_behavior") != 1)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000E8BBC;
    v35[3] = &unk_100646870;
    v35[4] = self;
    v36 = v6;
    v19 = [UIAction ic_moveActionWithHandler:v35];
    if (_UISolariumEnabled())
    {
      v20 = v9;
    }

    else
    {
      v20 = v8;
    }

    [v20 addObject:v19];
  }

  if ([v6 isDeletable])
  {
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000E8C44;
    v32 = &unk_100646870;
    v33 = self;
    v34 = v6;
    v21 = [UIAction ic_deleteActionWithHandler:&v29];
    if (!_UISolariumEnabled() || (v22 = [v9 count], v23 = v9, !v22))
    {
      v23 = v8;
    }

    [v23 addObject:{v21, v29, v30, v31, v32, v33}];
  }

  v24 = [ICAppURLUtilities appURLForNote:v6];
  v25 = objc_alloc_init(ICCenterWindowSceneActivationRequestOptions);
  v26 = [UIAction ic_centerWindowActionWithAppURL:v24 activationRequestOptions:v25];
  v27 = [(ICCollectionView *)self contextMenuWithPinnedActionsAndCenterWindow:v26 pinnedActions:v9 actions:v8];

  return v27;
}

- (id)contextMenuForLegacyNote:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000E8F8C;
  v29[3] = &unk_1006498A8;
  v29[4] = self;
  v10 = v6;
  v30 = v10;
  v24 = v7;
  v31 = v24;
  v11 = [UIAction ic_sendActionWithHandler:v29];
  if (_UISolariumEnabled())
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  [v12 addObject:v11];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E8F9C;
  v27[3] = &unk_100646870;
  v27[4] = self;
  v13 = v10;
  v28 = v13;
  v14 = [UIAction ic_moveActionWithHandler:v27];
  if (_UISolariumEnabled())
  {
    v15 = v9;
  }

  else
  {
    v15 = v8;
  }

  [v15 addObject:v14];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000E9024;
  v25[3] = &unk_100646870;
  v25[4] = self;
  v26 = v13;
  v16 = v13;
  v17 = [UIAction ic_deleteActionWithHandler:v25];
  if (_UISolariumEnabled())
  {
    v18 = v9;
  }

  else
  {
    v18 = v8;
  }

  [v18 addObject:v17];
  v19 = [ICAppURLUtilities appURLForHTMLNote:v16];
  v20 = objc_alloc_init(ICCenterWindowSceneActivationRequestOptions);
  v21 = [UIAction ic_centerWindowActionWithAppURL:v19 activationRequestOptions:v20];
  v22 = [(ICCollectionView *)self contextMenuWithPinnedActionsAndCenterWindow:v21 pinnedActions:v9 actions:v8];

  return v22;
}

- (id)contextMenuWithPinnedActionsAndCenterWindow:(id)a3 pinnedActions:(id)a4 actions:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:a4];
  [v9 setPreferredElementSize:1];
  v10 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:v8];

  if (v7)
  {
    v16 = v9;
    v17 = v7;
    v18 = v10;
    v11 = &v16;
    v12 = 3;
  }

  else
  {
    v19 = v9;
    v20 = v10;
    v11 = &v19;
    v12 = 2;
  }

  v13 = [NSArray arrayWithObjects:v11 count:v12, v16, v17, v18, v19, v20];
  v14 = [UIMenu menuWithChildren:v13];

  return v14;
}

- (id)leadingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E92BC;
  v4[3] = &unk_1006498D0;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)trailingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E94E4;
  v4[3] = &unk_1006498D0;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)leadingSwipeActionsConfigurationForModernNote:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([v6 isPinnable])
  {
    v9 = [v6 isPinned];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E992C;
    v16[3] = &unk_1006498F8;
    objc_copyWeak(&v18, &location);
    v10 = v6;
    v17 = v10;
    v11 = [UIContextualAction ic_pinContextualActionWithPinned:v9 pinBlock:v16];
    v12 = -[ICCollectionView pinOrUnpinAccessibilityLabelForNoteIsPinned:](self, "pinOrUnpinAccessibilityLabelForNoteIsPinned:", [v10 isPinned]);
    [v11 setAccessibilityLabel:v12];

    [v8 addObject:v11];
    objc_destroyWeak(&v18);
  }

  v13 = [v8 copy];
  v14 = [UISwipeActionsConfiguration configurationWithActions:v13];

  [v14 setPerformsFirstActionWithFullSwipe:1];
  objc_destroyWeak(&location);

  return v14;
}

- (id)trailingSwipeActionsConfigurationForLegacyNote:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E9C14;
  v21[3] = &unk_1006498F8;
  objc_copyWeak(&v23, &location);
  v9 = v6;
  v22 = v9;
  v10 = [UIContextualAction ic_deleteContextualActionWithBlock:v21];
  v11 = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
  [v10 setAccessibilityLabel:v11];

  [v8 addObject:v10];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E9CC4;
  v18[3] = &unk_1006498F8;
  objc_copyWeak(&v20, &location);
  v12 = v9;
  v19 = v12;
  v13 = [UIContextualAction ic_moveContextualActionWithBlock:v18];
  v14 = [(ICCollectionView *)self moveNoteAccessibilityLabel];
  [v13 setAccessibilityLabel:v14];

  [v8 addObject:v13];
  v15 = [v8 copy];
  v16 = [UISwipeActionsConfiguration configurationWithActions:v15];

  [v16 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v16;
}

- (id)trailingSwipeActionsConfigurationForModernNote:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([v6 isDeletable])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EA0F4;
    v29[3] = &unk_1006498F8;
    objc_copyWeak(&v31, &location);
    v30 = v6;
    v9 = [UIContextualAction ic_deleteContextualActionWithBlock:v29];
    v10 = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
    [v9 setAccessibilityLabel:v10];

    [v8 addObject:v9];
    objc_destroyWeak(&v31);
  }

  if ([v6 isMovable] && -[ICCollectionView ic_behavior](self, "ic_behavior") != 1)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000EA1A4;
    v26[3] = &unk_1006498F8;
    objc_copyWeak(&v28, &location);
    v27 = v6;
    v11 = [UIContextualAction ic_moveContextualActionWithBlock:v26];
    v12 = [(ICCollectionView *)self moveNoteAccessibilityLabel];
    [v11 setAccessibilityLabel:v12];

    [v8 addObject:v11];
    objc_destroyWeak(&v28);
  }

  if ([v6 canBeSharedViaICloud])
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EA254;
    v22 = &unk_100649920;
    objc_copyWeak(&v25, &location);
    v23 = v7;
    v13 = v6;
    v24 = v13;
    v14 = [UIContextualAction ic_shareContextualActionWithBlock:&v19];
    v15 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:v13, v19, v20, v21, v22];
    [v14 setAccessibilityLabel:v15];

    [v8 addObject:v14];
    objc_destroyWeak(&v25);
  }

  v16 = [v8 copy];
  v17 = [UISwipeActionsConfiguration configurationWithActions:v16];

  [v17 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&location);

  return v17;
}

- (id)trailingSwipeActionsConfigurationForModernFolder:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([v6 isDeletable])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000EA6B4;
    v31[3] = &unk_1006498F8;
    objc_copyWeak(&v33, &location);
    v32 = v6;
    v9 = [UIContextualAction ic_deleteContextualActionWithBlock:v31];
    v10 = [(ICCollectionView *)self deleteFolderAccessibilityLabel];
    [v9 setAccessibilityLabel:v10];

    [v8 addObject:v9];
    objc_destroyWeak(&v33);
  }

  v11 = [(ICCollectionView *)self viewControllerManager];
  v12 = [ICMoveFolderActivity canShowMoveActionForFolder:v6 viewControllerManager:v11];

  if (v12)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000EA764;
    v28[3] = &unk_1006498F8;
    objc_copyWeak(&v30, &location);
    v29 = v6;
    v13 = [UIContextualAction ic_moveContextualActionWithBlock:v28];
    v14 = [(ICCollectionView *)self moveFolderAccessibilityLabel];
    [v13 setAccessibilityLabel:v14];

    [v8 addObject:v13];
    objc_destroyWeak(&v30);
  }

  if ([v6 canBeSharedViaICloud] && objc_msgSend(v6, "canCurrentUserShare"))
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000EA7C4;
    v24 = &unk_100649920;
    objc_copyWeak(&v27, &location);
    v25 = v7;
    v15 = v6;
    v26 = v15;
    v16 = [UIContextualAction ic_shareContextualActionWithBlock:&v21];
    v17 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:v15, v21, v22, v23, v24];
    [v16 setAccessibilityLabel:v17];

    [v8 addObject:v16];
    objc_destroyWeak(&v27);
  }

  v18 = [v8 copy];
  v19 = [UISwipeActionsConfiguration configurationWithActions:v18];

  [v19 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&location);

  return v19;
}

- (id)trailingSwipeActionsConfigurationForInvitation:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v9 = [v6 highlight];

  if (v9)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000EAB10;
    v21[3] = &unk_1006498F8;
    objc_copyWeak(&v23, &location);
    v10 = v6;
    v22 = v10;
    v11 = [UIContextualAction ic_removeContextualActionWithBlock:v21];
    v12 = [(ICCollectionView *)self removeInvitationAccessibilityLabel];
    [v11 setAccessibilityLabel:v12];

    [v8 addObject:v11];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EAB84;
    v18[3] = &unk_1006498F8;
    objc_copyWeak(&v20, &location);
    v19 = v10;
    v13 = [UIContextualAction ic_replyContextualActionWithBlock:v18];
    v14 = [(ICCollectionView *)self replyToInvitationAccessibilityLabel];
    [v13 setAccessibilityLabel:v14];

    [v8 addObject:v13];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v23);
  }

  v15 = [v8 copy];
  v16 = [UISwipeActionsConfiguration configurationWithActions:v15];

  [v16 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&location);

  return v16;
}

- (void)performPinActionWithNote:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(ICCollectionView *)self performPinActionWithNotes:v5, v6];
}

- (void)performPinActionWithNotes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICCollectionView *)self presentingViewController];
  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [v6 dataSource];
  v8 = ICDynamicCast();

  objc_opt_class();
  v9 = [v8 indexer];
  v10 = ICDynamicCast();

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000EB040;
  v42[3] = &unk_100645BA0;
  v11 = v4;
  v43 = v11;
  v32 = v10;
  v44 = v32;
  [v8 performBlockSuspendingUpdates:v42 andApplySnapshotAnimated:1];
  objc_opt_class();
  v33 = v6;
  v12 = [v6 dataSource];
  v13 = ICDynamicCast();

  if (v13)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          [v19 changePinStatusIfPossible];
          v20 = [v19 managedObjectContext];
          [v20 ic_save];
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v16);
    }

    [v13 performUpdatesIfNeededAndWait];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        v27 = [(ICCollectionView *)self presentingViewController];
        v28 = [v27 eventReporter];
        [v28 submitNotePinEventForModernNote:v26 contextPath:0];

        if (UIAccessibilityIsVoiceOverRunning())
        {
          v29 = [v26 isPinned];
          v30 = [v26 title];
          v31 = [(ICCollectionView *)self pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:v29 noteTitle:v30];

          ICAccessibilityPostHighPriorityAnnouncementNotification();
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v23);
  }
}

- (void)performLockActionWithNote:(id)a3
{
  v4 = a3;
  v5 = [ICLockNoteActivity alloc];
  v6 = [(ICCollectionView *)self presentingViewController];
  v7 = [v5 initWithNote:v4 presentingViewController:v6];
  [(ICCollectionView *)self setLockNoteActivity:v7];

  objc_initWeak(&location, self);
  v8 = [(ICCollectionView *)self viewControllerManager];
  v9 = [v8 window];
  v10 = [v9 firstResponder];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___UITextInput])
  {
    [v10 resignFirstResponder];
    v14[1] = _NSConcreteStackBlock;
    v14[2] = 3221225472;
    v14[3] = sub_1000EB330;
    v14[4] = &unk_100645C78;
    v11 = &v15;
    objc_copyWeak(&v15, &location);
    dispatchMainAfterDelay();
  }

  else
  {
    v12 = [(ICCollectionView *)self lockNoteActivity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EB43C;
    v13[3] = &unk_1006467C8;
    v11 = v14;
    objc_copyWeak(v14, &location);
    [v12 performActivityWithCompletion:v13];
  }

  objc_destroyWeak(v11);

  objc_destroyWeak(&location);
}

- (void)performCollaborationActionWithNote:(id)a3 forceShareSheet:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = v17;
  if (v15)
  {
    if (a4 || ([v15 isPubliclySharedOrHasInvitees] & 1) == 0)
    {
      v25 = [ICSendNoteActivity alloc];
      v26 = [(ICCollectionView *)self presentingViewController];
      v27 = [(ICCollectionView *)self presentingViewController];
      v28 = [v27 eventReporter];
      v23 = [(ICSendNoteActivity *)v25 initWithNote:v15 presentingViewController:v26 presentingBarButtonItem:0 presentingSourceView:v16 presentingSourceRect:v28 eventReporter:x, y, width, height];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000EB6E4;
      v31[3] = &unk_100649948;
      v32 = v18;
      [(ICSendNoteActivity *)v23 performActivityWithCompletion:v31];
      v24 = v32;
    }

    else
    {
      v19 = [ICCollaborationNoteActivity alloc];
      v20 = [(ICCollectionView *)self presentingViewController];
      v21 = [(ICCollectionView *)self presentingViewController];
      v22 = [v21 eventReporter];
      v23 = [(ICCollaborationNoteActivity *)v19 initWithNote:v15 presentingViewController:v20 presentingBarButtonItem:0 presentingSourceView:v16 eventReporter:v22];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000EB6FC;
      v29[3] = &unk_100649948;
      v30 = v18;
      [(ICSendNoteActivity *)v23 performActivityWithCompletion:v29];
      v24 = v30;
    }
  }

  else if (v17)
  {
    (*(v17 + 2))(v17, 0);
  }
}

- (void)performDuplicateActionWithNote:(id)a3
{
  v4 = a3;
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [ICNote undoablyDuplicateNotes:v5];

  v7 = [(ICCollectionView *)self modernManagedObjectContext];
  [v7 ic_save];
}

- (void)performSendActionWithNote:(id)a3 fromSourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(ICCollectionView *)self modernManagedObjectContext];
    v9 = [v6 objectID];
    v10 = [v8 objectWithID:v9];

    v11 = [ICSendNoteActivity alloc];
    v12 = [(ICCollectionView *)self presentingViewController];
    v13 = [(ICCollectionView *)self presentingViewController];
    v14 = [v13 eventReporter];
    v15 = [(ICSendNoteActivity *)v11 initWithNote:v10 presentingViewController:v12 presentingBarButtonItem:0 presentingSourceView:v7 presentingSourceRect:v14 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

    [(ICSendNoteActivity *)v15 performActivityWithCompletion:0];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(ICCollectionView *)self legacyManagedObjectContext];
    v17 = [v6 objectID];
    v10 = [v16 objectWithID:v17];

    v18 = [(ICCollectionView *)self viewControllerManager];
    v15 = [v18 legacyNoteEditorViewController];

    v19 = [(ICSendNoteActivity *)v15 view];
    [(ICSendNoteActivity *)v15 setNote:v10];
    [(ICSendNoteActivity *)v15 setContentFromNote];
    v20 = [NotesActivityViewController alloc];
    v21 = [(ICSendNoteActivity *)v15 noteActivityItemsForSharing];
    v22 = [(NotesActivityViewController *)v20 initWithActivityItems:v21 applicationActivities:0];

    v23 = [v10 store];
    v24 = [v23 account];
    -[NotesActivityViewController setIsContentManaged:](v22, "setIsContentManaged:", [v24 isManaged]);

    v29[0] = UIActivityTypeOpenInIBooks;
    v29[1] = ICActivityTypeShareToNote;
    v29[2] = UIActivityTypeSharePlay;
    v25 = [NSArray arrayWithObjects:v29 count:3];
    [(NotesActivityViewController *)v22 setExcludedActivityTypes:v25];

    [(NotesActivityViewController *)v22 setDisplayController:v15];
    if (+[UIDevice ic_isVision])
    {
      v26 = -2;
    }

    else
    {
      v26 = 7;
    }

    [(NotesActivityViewController *)v22 setModalPresentationStyle:v26];
    v27 = [(NotesActivityViewController *)v22 popoverPresentationController];
    [v27 setSourceView:v7];

    v28 = [(ICCollectionView *)self presentingViewController];
    [v28 presentViewController:v22 animated:1 completion:0];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)performMoveActionWithNotes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ICMoveDecisionController alloc];
  v9 = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICMoveDecisionController *)v8 initWithSourceObjects:v7 presentingViewController:v9];

  [(ICCollectionView *)self setMoveDecisionController:v10];
  v11 = [(ICCollectionView *)self moveDecisionController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EBC30;
  v13[3] = &unk_100648068;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v11 performDecisionWithCompletion:v13];
}

- (void)performDeleteActionWithObjects:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCollectionView *)self presentingViewController];
  if (([v8 isFirstResponder] & 1) == 0)
  {
    v9 = [(ICCollectionView *)self presentingViewController];
    v10 = [v9 canBecomeFirstResponder];

    if (!v10)
    {
      goto LABEL_5;
    }

    v8 = [(ICCollectionView *)self presentingViewController];
    [v8 becomeFirstResponder];
  }

LABEL_5:
  objc_opt_class();
  v11 = [(ICCollectionView *)self presentingViewController];
  v12 = ICDynamicCast();

  v13 = [ICDeleteDecisionController alloc];
  v14 = [(ICCollectionView *)self window];
  v15 = [(ICCollectionView *)self presentingViewController];
  v16 = [v15 eventReporter];
  v17 = [(ICDeleteDecisionController *)v13 initWithSourceObjects:v7 window:v14 sender:0 eventReporter:v16];

  objc_opt_class();
  v18 = [v12 dataSource];
  v19 = ICDynamicCast();

  objc_opt_class();
  v20 = [v19 indexer];
  v21 = ICDynamicCast();

  v22 = [v7 ic_compactMap:&stru_100649990];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000EC250;
  v39[3] = &unk_1006499B8;
  v39[4] = self;
  v23 = v22;
  v40 = v23;
  v24 = v6;
  v41 = v24;
  [v21 deleteWithDecisionController:v17 completion:v39];
  objc_opt_class();
  v25 = [v12 dataSource];
  v26 = ICDynamicCast();

  objc_opt_class();
  v27 = [v26 indexer];
  v28 = ICDynamicCast();

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000EC2B0;
  v36[3] = &unk_1006499B8;
  v36[4] = self;
  v29 = v23;
  v37 = v29;
  v30 = v24;
  v38 = v30;
  [v28 deleteWithDecisionController:v17 completion:v36];
  objc_opt_class();
  v31 = [v12 dataSource];
  v32 = ICDynamicCast();

  if (v32)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000EC310;
    v33[3] = &unk_100647F90;
    v34 = v32;
    v35 = v30;
    [(ICDeleteDecisionController *)v17 performDecisionWithCompletion:v33];
  }
}

- (void)performMoveActionWithFolder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICMoveFolderActivity alloc];
  v9 = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICMoveFolderActivity *)v8 initWithFolder:v6 presentingViewController:v9];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EC474;
  v13[3] = &unk_1006499E0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(ICMoveFolderActivity *)v10 performActivityWithCompletion:v13];
}

- (void)performRenameActionWithFolder:(id)a3
{
  v4 = a3;
  v5 = [ICRenameFolderActivity alloc];
  v6 = [(ICCollectionView *)self presentingViewController];
  v7 = [(ICRenameFolderActivity *)v5 initWithFolder:v4 presentingViewController:v6];

  [(ICCollectionView *)self setRenameFolderActivity:v7];
  v8 = [(ICCollectionView *)self renameFolderActivity];
  [v8 performActivityWithCompletion:0];
}

- (void)performEditSmartFolderActionWithFolder:(id)a3
{
  v4 = a3;
  v5 = [ICEditSmartFolderActivity alloc];
  v6 = [(ICCollectionView *)self presentingViewController];
  v7 = [(ICEditSmartFolderActivity *)v5 initWithSmartFolder:v4 presentingViewController:v6];

  [(ICEditSmartFolderActivity *)v7 performActivityWithCompletion:0];
}

- (void)performCollaborationActionWithFolder:(id)a3 forceShareSheet:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a4;
  v15 = a7;
  v16 = a5;
  v17 = a3;
  v18 = [ICCollaborationFolderActivity alloc];
  v19 = [(ICCollectionView *)self presentingViewController];
  v20 = [(ICCollectionView *)self presentingViewController];
  v21 = [v20 eventReporter];
  v22 = [(ICCollaborationFolderActivity *)v18 initWithFolder:v17 presentingViewController:v19 presentingBarButtonItem:0 presentingSourceView:v16 presentingSourceRect:v21 eventReporter:x, y, width, height];

  [(ICCollaborationFolderActivity *)v22 setForceShareSheet:v12];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000EC7CC;
  v24[3] = &unk_100649948;
  v25 = v15;
  v23 = v15;
  [(ICCollaborationFolderActivity *)v22 performActivityWithCompletion:v24];
}

- (void)performShowActivityStreamActionWithFolder:(id)a3
{
  v4 = a3;
  v6 = [[ICShowActivityStreamActivity alloc] initWithObject:v4];

  v5 = [(ICCollectionView *)self viewControllerManager];
  [(ICShowActivityStreamActivity *)v6 setViewControllerManager:v5];

  [(ICShowActivityStreamActivity *)v6 performActivityWithCompletion:0];
}

- (void)performImportArchiveActionWithNoteContainer:(id)a3 fromSourceView:(id)a4
{
  v5 = a3;
  v6 = [ICImportArchiveActivity alloc];
  v7 = [(ICCollectionView *)self presentingViewController];
  v8 = [(ICImportArchiveActivity *)v6 initWithNoteContainer:v5 markdown:0 presentingViewController:v7];

  [(ICCollectionView *)self setImportArchiveActivity:v8];
  v9 = [(ICCollectionView *)self importArchiveActivity];
  [v9 performActivityWithCompletion:0];
}

- (void)performExportArchiveActionWithObjects:(id)a3 fromSourceView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ICExportArchiveActivity alloc];
  v9 = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICExportArchiveActivity *)v8 initWithObjects:v7 presentingViewController:v9 presentingBarButtonItem:0 presentingSourceView:v6];

  [(ICExportArchiveActivity *)v10 performActivityWithCompletion:0];
}

- (void)performRemoveActionWithInvitation:(id)a3
{
  v4 = a3;
  v5 = [v4 highlight];
  v6 = [v5 hideContextMenu];
  v7 = [v6 actionBlock];

  if (v7)
  {
    v8 = [v4 highlight];
    v9 = [v8 hideContextMenu];
    v10 = [v9 actionBlock];
    v10[2]();
  }

  v11 = [v4 objectID];
  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  [(ICCollectionView *)self synchronouslyRemoveItemsWithIdentifiers:v12];

  v13 = [(ICCollectionView *)self presentingViewController];
  v14 = [v13 eventReporter];
  [v14 submitCollabNotificationEventWithAction:2];
}

- (void)performReplyActionWithInvitation:(id)a3
{
  v4 = [a3 highlight];
  v5 = [(ICCollectionView *)self presentingViewController];
  v8 = [v4 replyContextMenuWithPresentingViewController:v5];

  v6 = [v8 actionBlock];

  if (v6)
  {
    v7 = [v8 actionBlock];
    v7[2]();
  }
}

- (id)contextMenuPreviewWithConfiguration:(id)a3 indexPath:(id)a4
{
  v5 = [a3 identifier];
  v6 = [(ICCollectionView *)self cellForItemIdentifier:v5];

  v7 = [(ICCollectionView *)self defaultPreviewForCell:v6];

  return v7;
}

- (id)defaultPreviewForCell:(id)a3
{
  v4 = a3;
  v5 = ICProtocolCast();
  v6 = [v5 contextMenuInteractionPreview];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [v9 window];

  if (v10)
  {
    v10 = [[UITargetedPreview alloc] initWithView:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 _visiblePathForBackgroundConfiguration];
      v12 = [v10 parameters];
      [v12 setVisiblePath:v11];

      v13 = [(ICCollectionView *)self backgroundColor];
      v14 = [v10 parameters];
      [v14 setBackgroundColor:v13];
    }
  }

  return v10;
}

- (id)previewParametersWithCollectionView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 cellForItemAtIndexPath:a4];
  v6 = ICProtocolCast();
  v7 = [v6 contextMenuInteractionPreview];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_alloc_init(UIDragPreviewParameters);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v5 _visiblePathForBackgroundConfiguration];
      [v11 setVisiblePath:v12];

      v13 = [(ICCollectionView *)self backgroundColor];
      [v11 setBackgroundColor:v13];
    }

    else
    {
      v13 = [v10 layer];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v13 cornerRadius];
      v23 = [UIBezierPath bezierPathWithRoundedRect:v15 cornerRadius:v17, v19, v21, v22];
      [v11 setVisiblePath:v23];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self diffableDataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  v7 = [(ICCollectionView *)self cellForItemAtIndexPath:v6];

  return v7;
}

- (void)synchronouslyRemoveItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(ICCollectionView *)self diffableDataSource];
  v9 = [v5 snapshot];

  [v9 deleteItemsWithIdentifiers:v4];
  v6 = [(ICCollectionView *)self diffableDataSource];
  [v6 applySnapshot:v9 animatingDifferences:1];

  v7 = [(ICCollectionView *)self optimisticallyAppliedSnapshotHandler];

  if (v7)
  {
    v8 = [(ICCollectionView *)self optimisticallyAppliedSnapshotHandler];
    (v8)[2](v8, v9);
  }
}

- (id)firstUnselectedIndexPathWithFrame:(CGRect)a3 arrowDirection:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(ICCollectionView *)self indexPathsForSelectedItems];
  v11 = [v10 firstObject];

  v12 = [(ICCollectionView *)self collectionViewLayout];
  v13 = [v12 layoutAttributesForElementsInRect:{x, y, width, height}];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000ED28C;
  v30 = sub_1000ED29C;
  v31 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v14 = a4 == 8 || a4 == 2;
  v15 = -1.79769313e308;
  if (v14)
  {
    v15 = 1.79769313e308;
  }

  v25[2] = 0x2020000000;
  *&v25[3] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000ED2A4;
  v19[3] = &unk_100649A08;
  v16 = v11;
  v20 = v16;
  v21 = self;
  v23 = &v26;
  v24 = a4;
  v22 = v25;
  [v13 enumerateObjectsUsingBlock:v19];
  v17 = [v27[5] indexPath];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);

  return v17;
}

- (id)commonAccessibilityActionsForFolder:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRenamable])
  {
    v6 = [UIAccessibilityCustomAction alloc];
    v7 = [(ICCollectionView *)self renameFolderAccessibilityLabel];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000ED63C;
    v20[3] = &unk_100649A30;
    v20[4] = self;
    v21 = v4;
    v8 = [v6 initWithName:v7 actionHandler:v20];

    [v5 addObject:v8];
  }

  if ([v4 isSharedViaICloud])
  {
    v9 = [UIAccessibilityCustomAction alloc];
    v10 = [(ICCollectionView *)self showFolderActivityAccessibilityLabel];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000ED660;
    v17 = &unk_100649A30;
    v18 = self;
    v19 = v4;
    v11 = [v9 initWithName:v10 actionHandler:&v14];

    [v5 addObject:{v11, v14, v15, v16, v17, v18}];
  }

  v12 = [v5 copy];

  return v12;
}

- (id)galleryViewAcessibilityActionsForFolder:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(ICCollectionView *)self commonAccessibilityActionsForFolder:v4];
  [v5 addObjectsFromArray:v6];

  if ([v4 isDeletable])
  {
    v7 = [UIAccessibilityCustomAction alloc];
    v8 = [(ICCollectionView *)self deleteFolderAccessibilityLabel];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000ED93C;
    v28[3] = &unk_100649A30;
    v28[4] = self;
    v29 = v4;
    v9 = [v7 initWithName:v8 actionHandler:v28];

    [v5 addObject:v9];
  }

  v10 = [(ICCollectionView *)self viewControllerManager];
  v11 = [ICMoveFolderActivity canShowMoveActionForFolder:v4 viewControllerManager:v10];

  if (v11)
  {
    v12 = [UIAccessibilityCustomAction alloc];
    v13 = [(ICCollectionView *)self moveFolderAccessibilityLabel];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000ED9C8;
    v26[3] = &unk_100649A30;
    v26[4] = self;
    v27 = v4;
    v14 = [v12 initWithName:v13 actionHandler:v26];

    [v5 addObject:v14];
  }

  if ([v4 canBeSharedViaICloud])
  {
    v15 = [UIAccessibilityCustomAction alloc];
    v16 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:v4];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000ED9F0;
    v23 = &unk_100649A30;
    v24 = self;
    v25 = v4;
    v17 = [v15 initWithName:v16 actionHandler:&v20];

    [v5 addObject:{v17, v20, v21, v22, v23, v24}];
  }

  v18 = [v5 copy];

  return v18;
}

- (id)commonAcessibilityActionsForNoteWithObjectID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 ic_isModernNoteType])
  {
    v6 = [(ICCollectionView *)self modernManagedObjectContext];
  }

  else
  {
    if (![v4 ic_isLegacyNoteType])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [(ICCollectionView *)self legacyManagedObjectContext];
  }

  v7 = v6;
  v8 = [v6 objectWithID:v4];

LABEL_7:
  objc_opt_class();
  v9 = ICDynamicCast();
  v10 = v9;
  if (v9 && [v9 isLockable])
  {
    v11 = [UIAccessibilityCustomAction alloc];
    v12 = -[ICCollectionView lockOrUnlockAccessibilityLabelForNoteIsLocked:](self, "lockOrUnlockAccessibilityLabelForNoteIsLocked:", [v10 isPasswordProtected]);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000EDCD0;
    v25[3] = &unk_100649A30;
    v25[4] = self;
    v26 = v10;
    v13 = [v11 initWithName:v12 actionHandler:v25];

    [v5 addObject:v13];
  }

  if ([v10 isDuplicatable])
  {
    v14 = [UIAccessibilityCustomAction alloc];
    v15 = [(ICCollectionView *)self duplicateNoteAccessibilityLabel];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EDCF4;
    v22 = &unk_100649A30;
    v23 = self;
    v24 = v10;
    v16 = [v14 initWithName:v15 actionHandler:&v19];

    [v5 addObject:{v16, v19, v20, v21, v22, v23}];
  }

  v17 = [v5 copy];

  return v17;
}

- (id)galleryViewAcessibilityActionsForNote:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 objectID];
  v7 = [(ICCollectionView *)self commonAcessibilityActionsForNoteWithObjectID:v6];
  [v5 addObjectsFromArray:v7];

  if ([v4 isDeletable])
  {
    v8 = [UIAccessibilityCustomAction alloc];
    v9 = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000EE0A0;
    v31[3] = &unk_100649A30;
    v31[4] = self;
    v32 = v4;
    v10 = [v8 initWithName:v9 actionHandler:v31];

    [v5 addObject:v10];
  }

  if ([v4 isMovable])
  {
    v11 = [UIAccessibilityCustomAction alloc];
    v12 = [(ICCollectionView *)self moveNoteAccessibilityLabel];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EE12C;
    v29[3] = &unk_100649A30;
    v29[4] = self;
    v30 = v4;
    v13 = [v11 initWithName:v12 actionHandler:v29];

    [v5 addObject:v13];
  }

  if ([v4 isPinnable])
  {
    v14 = [UIAccessibilityCustomAction alloc];
    v15 = -[ICCollectionView pinOrUnpinAccessibilityLabelForNoteIsPinned:](self, "pinOrUnpinAccessibilityLabelForNoteIsPinned:", [v4 isPinned]);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EE1B8;
    v27[3] = &unk_100649A30;
    v27[4] = self;
    v28 = v4;
    v16 = [v14 initWithName:v15 actionHandler:v27];

    [v5 addObject:v16];
  }

  if ([v4 canBeSharedViaICloud])
  {
    v17 = [v4 objectID];
    v18 = [(ICCollectionView *)self interactionSourceViewForObjectID:v17];

    v19 = [UIAccessibilityCustomAction alloc];
    v20 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:v4];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000EE1DC;
    v24[3] = &unk_100649A58;
    v24[4] = self;
    v25 = v4;
    v26 = v18;
    v21 = v18;
    v22 = [v19 initWithName:v20 actionHandler:v24];

    [v5 addObject:v22];
  }

  return v5;
}

- (id)interactionSourceViewForObjectID:(id)a3
{
  v3 = [(ICCollectionView *)self cellForItemIdentifier:a3];
  v4 = ICProtocolCast();
  v5 = [v4 contextMenuInteractionPreview];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)deleteNoteAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete note" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)moveNoteAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move note" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)sendNoteCopyAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Share button" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)pinOrUnpinAccessibilityLabelForNoteIsPinned:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Unpin note";
  }

  else
  {
    v6 = @"Pin note";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

- (id)pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:(BOOL)a3 noteTitle:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v4)
  {
    v8 = @"Pinned note with title, %@";
  }

  else
  {
    v8 = @"Unpinned note with title, %@";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_100661CF0 table:0];

  v10 = [NSString localizedStringWithFormat:v9, v5];

  return v10;
}

- (id)lockOrUnlockAccessibilityLabelForNoteIsLocked:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Remove lock from note";
  }

  else
  {
    v6 = @"Add lock to note";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

- (id)deleteFolderAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)moveFolderAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)renameFolderAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Rename folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)showFolderActivityAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Show Folder Activity" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)removeInvitationAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Remove invitation" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)replyToInvitationAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Reply to invitation" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)duplicateNoteAccessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Duplicate Note" value:&stru_100661CF0 table:0];

  return v3;
}

- (ICNAViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end