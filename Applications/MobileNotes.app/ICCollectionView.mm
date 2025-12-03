@interface ICCollectionView
- (BOOL)canFocusItemAtIndexPath:(id)path;
- (BOOL)isCellDraggableForIdentifier:(id)identifier;
- (BOOL)isCellReorderableForIdentifier:(id)identifier;
- (BOOL)sourceObjectIDsContainsSystemPaperNotes:(id)notes;
- (CGRect)presentationSourceRectForCell:(id)cell;
- (ICCollectionView)initWithPresentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext viewControllerManager:(id)manager;
- (ICNAViewController)presentingViewController;
- (ICViewControllerManager)viewControllerManager;
- (id)cellForItemIdentifier:(id)identifier;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)commonAccessibilityActionsForFolder:(id)folder;
- (id)commonAcessibilityActionsForNoteWithObjectID:(id)d;
- (id)contextMenuConfigurationForIndexPath:(id)path;
- (id)contextMenuConfigurationForItemsAtIndexPaths:(id)paths;
- (id)contextMenuForFolder:(id)folder sourceView:(id)view;
- (id)contextMenuForInvitation:(id)invitation sourceView:(id)view;
- (id)contextMenuForLegacyNote:(id)note sourceView:(id)view;
- (id)contextMenuForModernNote:(id)note sourceView:(id)view;
- (id)contextMenuPreviewWithConfiguration:(id)configuration indexPath:(id)path;
- (id)contextMenuWithPinnedActionsAndCenterWindow:(id)window pinnedActions:(id)actions actions:(id)a5;
- (id)createLayout;
- (id)customAccessibilityActionsForObjectID:(id)d galleryView:(BOOL)view;
- (id)defaultPreviewForCell:(id)cell;
- (id)deleteFolderAccessibilityLabel;
- (id)deleteNoteAccessibilityLabel;
- (id)dragItemsForIndexPath:(id)path sessionContext:(id)context;
- (id)duplicateNoteAccessibilityLabel;
- (id)firstUnselectedIndexPathWithFrame:(CGRect)frame arrowDirection:(unint64_t)direction;
- (id)galleryViewAcessibilityActionsForFolder:(id)folder;
- (id)galleryViewAcessibilityActionsForNote:(id)note;
- (id)interactionSourceViewForObjectID:(id)d;
- (id)leadingSwipeActionsConfigurationForModernNote:(id)note inCell:(id)cell;
- (id)leadingSwipeActionsConfigurationProvider;
- (id)lockOrUnlockAccessibilityLabelForNoteIsLocked:(BOOL)locked;
- (id)movableNoteObjectIDsIn:(id)in forDropIntoSection:(id)section;
- (id)moveFolderAccessibilityLabel;
- (id)moveNoteAccessibilityLabel;
- (id)multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:(id)path;
- (id)pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:(BOOL)pinned noteTitle:(id)title;
- (id)pinOrUnpinAccessibilityLabelForNoteIsPinned:(BOOL)pinned;
- (id)previewForWindowSceneActivationConfiguration:(id)configuration indexPath:(id)path;
- (id)previewParametersWithCollectionView:(id)view atIndexPath:(id)path;
- (id)removeInvitationAccessibilityLabel;
- (id)renameFolderAccessibilityLabel;
- (id)replyToInvitationAccessibilityLabel;
- (id)sendNoteCopyAccessibilityLabel;
- (id)showFolderActivityAccessibilityLabel;
- (id)sourceObjectIDsForDragSession:(id)session;
- (id)trailingSwipeActionsConfigurationForInvitation:(id)invitation inCell:(id)cell;
- (id)trailingSwipeActionsConfigurationForLegacyNote:(id)note inCell:(id)cell;
- (id)trailingSwipeActionsConfigurationForModernFolder:(id)folder inCell:(id)cell;
- (id)trailingSwipeActionsConfigurationForModernNote:(id)note inCell:(id)cell;
- (id)trailingSwipeActionsConfigurationProvider;
- (int64_t)dataOwnerForIndexPath:(id)path;
- (unint64_t)actualChildIndexForSnapshotIndex:(unint64_t)index inDestinationObjectID:(id)d sectionSnapshot:(id)snapshot;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)contextMenuWillPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)performCollaborationActionWithFolder:(id)folder forceShareSheet:(BOOL)sheet sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)performCollaborationActionWithNote:(id)note forceShareSheet:(BOOL)sheet sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)performDeleteActionWithObjects:(id)objects completion:(id)completion;
- (void)performDropOfFolderObjectIDs:(id)ds atFolderObjectID:(id)d atIndex:(unint64_t)index;
- (void)performDuplicateActionWithNote:(id)note;
- (void)performEditSmartFolderActionWithFolder:(id)folder;
- (void)performExportArchiveActionWithObjects:(id)objects fromSourceView:(id)view;
- (void)performImportArchiveActionWithNoteContainer:(id)container fromSourceView:(id)view;
- (void)performLockActionWithNote:(id)note;
- (void)performMoveActionWithFolder:(id)folder completion:(id)completion;
- (void)performMoveActionWithNotes:(id)notes completion:(id)completion;
- (void)performPinActionWithNote:(id)note;
- (void)performPinActionWithNotes:(id)notes;
- (void)performRemoveActionWithInvitation:(id)invitation;
- (void)performRenameActionWithFolder:(id)folder;
- (void)performReplyActionWithInvitation:(id)invitation;
- (void)performSendActionWithNote:(id)note fromSourceView:(id)view;
- (void)performShowActivityStreamActionWithFolder:(id)folder;
- (void)reExpandFolderWithObjectID:(id)d;
- (void)reloadCellAfterDelayForObjectID:(id)d;
- (void)setDiffableDataSource:(id)source;
- (void)synchronouslyRemoveItemsWithIdentifiers:(id)identifiers;
@end

@implementation ICCollectionView

- (ICCollectionView)initWithPresentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext viewControllerManager:(id)manager
{
  controllerCopy = controller;
  contextCopy = context;
  objectContextCopy = objectContext;
  managerCopy = manager;
  createLayout = [(ICCollectionView *)self createLayout];
  if (objc_opt_respondsToSelector())
  {
    [createLayout _setRecomputesLayoutForEmptyUpdates:0];
  }

  v19.receiver = self;
  v19.super_class = ICCollectionView;
  v15 = [(ICCollectionView *)&v19 initWithFrame:createLayout collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_presentingViewController, controllerCopy);
    objc_storeStrong(&v16->_legacyManagedObjectContext, context);
    objc_storeStrong(&v16->_modernManagedObjectContext, objectContext);
    objc_storeWeak(&v16->_viewControllerManager, managerCopy);
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

- (void)setDiffableDataSource:(id)source
{
  sourceCopy = source;
  objc_storeStrong(&self->_diffableDataSource, source);
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E33E0;
  v10[3] = &unk_100649540;
  objc_copyWeak(&v11, &location);
  reorderingHandlers = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:v10];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3434;
  v8[3] = &unk_1006495A8;
  objc_copyWeak(&v9, &location);
  reorderingHandlers2 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource reorderingHandlers];
  [reorderingHandlers2 setDidReorderHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)createLayout
{
  v2 = objc_alloc_init(UICollectionViewFlowLayout);

  return v2;
}

- (BOOL)canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(ICCollectionView *)self cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      diffableDataSource = [(ICCollectionView *)self diffableDataSource];
      v8 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

      objc_opt_class();
      LOBYTE(diffableDataSource) = objc_opt_isKindOfClass();

      if ((diffableDataSource & 1) == 0)
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

    accessories = [v5 accessories];
    v6 = [accessories ic_containsObjectPassingTest:&stru_1006495E8];

    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  sessionCopy = session;
  v9 = [ICDragSessionContext alloc];
  modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
  legacyManagedObjectContext = [(ICCollectionView *)self legacyManagedObjectContext];
  v12 = [(ICDragSessionContext *)v9 initWithModernManagedObjectContext:modernManagedObjectContext legacyManagedObjectContext:legacyManagedObjectContext];

  [sessionCopy setLocalContext:v12];
  [(ICCollectionView *)self setCurrentDragSessionContext:v12];
  v13 = [(ICCollectionView *)self dragItemsForIndexPath:pathCopy sessionContext:v12];

  return v13;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  v21 = beginCopy;
  localContext = [beginCopy localContext];
  v7 = ICDynamicCast();

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  currentSourceObjectIDs = [v7 currentSourceObjectIDs];
  v9 = [currentSourceObjectIDs countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(currentSourceObjectIDs);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 ic_isEntityOfClass:objc_opt_class()])
        {
          diffableDataSource = [(ICCollectionView *)self diffableDataSource];
          snapshot = [diffableDataSource snapshot];
          v16 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:v13];

          diffableDataSource2 = [(ICCollectionView *)self diffableDataSource];
          v18 = [diffableDataSource2 snapshotForSection:v16];

          if ([v18 isExpanded:v13])
          {
            v26 = v13;
            v19 = [NSArray arrayWithObjects:&v26 count:1];
            [v18 collapseItems:v19];

            diffableDataSource3 = [(ICCollectionView *)self diffableDataSource];
            [diffableDataSource3 applySnapshot:v18 toSection:v16 animatingDifferences:1];

            [v7 setAutoCollapsedFolderObjectID:v13];
          }
        }
      }

      v10 = [currentSourceObjectIDs countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  sessionCopy = session;
  objc_opt_class();
  localContext = [sessionCopy localContext];

  v11 = ICDynamicCast();
  v12 = [(ICCollectionView *)self dragItemsForIndexPath:pathCopy sessionContext:v11];

  return v12;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  localContext = [endCopy localContext];

  v9 = ICDynamicCast();

  [v9 updateDropTargetCellsForPinNoteDrop:0];
  autoCollapsedFolderObjectID = [v9 autoCollapsedFolderObjectID];

  if (autoCollapsedFolderObjectID)
  {
    autoCollapsedFolderObjectID2 = [v9 autoCollapsedFolderObjectID];
    [(ICCollectionView *)self reExpandFolderWithObjectID:autoCollapsedFolderObjectID2];
  }

  [(ICCollectionView *)self setCurrentDragSessionContext:0];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v61 = updateCopy;
  localDragSession = [updateCopy localDragSession];
  localContext = [localDragSession localContext];
  v13 = ICDynamicCast();

  [v13 updateDropTargetCellsForPinNoteDrop:0];
  currentSourceObjectIDs = [v13 currentSourceObjectIDs];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000E464C;
  v67[3] = &unk_100649610;
  v67[4] = self;
  v64 = [currentSourceObjectIDs ic_compactMap:v67];

  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v16 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  v17 = ICDynamicCast();
  v62 = v16;
  if ([v17 ic_isModernType])
  {
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
LABEL_5:
    v19 = modernManagedObjectContext;
    v20 = [modernManagedObjectContext objectWithID:v17];

    goto LABEL_7;
  }

  if ([v17 ic_isLegacyType])
  {
    modernManagedObjectContext = [(ICCollectionView *)self legacyManagedObjectContext];
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
  parentCloudObject = [v21 parentCloudObject];
  v24 = parentCloudObject;
  if (parentCloudObject)
  {
    cloudAccount = parentCloudObject;
  }

  else
  {
    cloudAccount = [v21 cloudAccount];
  }

  v60 = cloudAccount;

  v26 = [viewCopy cellForItemAtIndexPath:pathCopy];

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

      account = [v22 account];
      visibleCustomFoldersCount = [account visibleCustomFoldersCount];

      if (visibleCustomFoldersCount)
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

      currentSourceObjectIDs2 = [v13 currentSourceObjectIDs];
      v51 = [currentSourceObjectIDs2 containsObject:v17];

      if (!v59 && (v51 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v40 = [[ICMoveDecision alloc] initWithSourceObjects:v64 destination:v60];
    shouldMove = [v40 shouldMove];
    if (shouldMove)
    {
      v33 = 3;
    }

    else
    {
      v33 = 1;
    }

    v32 = shouldMove;
LABEL_50:

    goto LABEL_51;
  }

  if (v22 | v65)
  {
LABEL_14:
    v58 = v21;
    v27 = pathCopy;
    v28 = v22;
    v29 = [[ICMoveDecision alloc] initWithSourceObjects:v64 destination:v20];
    shouldMove2 = [v29 shouldMove];
    if (shouldMove2)
    {
      v31 = 3;
    }

    else
    {
      v31 = 1;
    }

    if (shouldMove2)
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
  v27 = pathCopy;
  v28 = v22;
  v32 = 2;
  v33 = 3;
LABEL_30:
  v22 = v28;
  if (v33 != 1 && v32)
  {
    pathCopy = v27;
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
      diffableDataSource2 = [(ICCollectionView *)self diffableDataSource];
      snapshot = [diffableDataSource2 snapshot];

      v57 = snapshot;
      v55 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:v62];
      currentSourceObjectIDs3 = [v13 currentSourceObjectIDs];
      v46 = [(ICCollectionView *)self movableNoteObjectIDsIn:currentSourceObjectIDs3 forDropIntoSection:v55];

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

  pathCopy = v27;
  v21 = v58;
LABEL_51:
  v34 = [UICollectionViewDropProposal alloc];
  v35 = v33;
  v36 = v32;
LABEL_52:
  v53 = [v34 initWithDropOperation:v35 intent:v36];

  return v53;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_opt_class();
  session = [coordinatorCopy session];
  localDragSession = [session localDragSession];
  localContext = [localDragSession localContext];
  v9 = ICDynamicCast();

  proposal = [coordinatorCopy proposal];
  operation = [proposal operation];

  if (operation == 3)
  {
    v82 = v9;
    session2 = [coordinatorCopy session];
    localDragSession2 = [session2 localDragSession];
    selfCopy = self;
    v14 = [(ICCollectionView *)self sourceObjectIDsForDragSession:localDragSession2];

    destinationIndexPath = [coordinatorCopy destinationIndexPath];
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

    diffableDataSource = [(ICCollectionView *)selfCopy diffableDataSource];
    v27 = destinationIndexPath;
    v28 = [diffableDataSource itemIdentifierForIndexPath:destinationIndexPath];

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
      proposal2 = [coordinatorCopy proposal];
      intent = [proposal2 intent];

      if (intent == 2)
      {
        currentDropTargetItemIDs = [v82 currentDropTargetItemIDs];
        v34 = [currentDropTargetItemIDs count];

        if (v34 == 1)
        {
          objc_opt_class();
          currentDropTargetItemIDs2 = [v82 currentDropTargetItemIDs];
          firstObject = [currentDropTargetItemIDs2 firstObject];
          v37 = ICDynamicCast();

          v29 = v37;
        }

        autoCollapsedFolderObjectID = [v82 autoCollapsedFolderObjectID];
        v39 = [v16 containsObject:autoCollapsedFolderObjectID];

        if (v39)
        {
          [v82 setAutoCollapsedFolderObjectID:0];
        }

        [(ICCollectionView *)selfCopy performDropOfFolderObjectIDs:v16 atFolderObjectID:v29 atIndex:0];
        goto LABEL_49;
      }

      modernManagedObjectContext = [(ICCollectionView *)selfCopy modernManagedObjectContext];
      v49 = [modernManagedObjectContext objectWithID:v29];

      parent = [v49 parent];
      v51 = parent;
      if (parent)
      {
        account = parent;
      }

      else
      {
        account = [v49 account];
      }

      v76 = account;

      diffableDataSource2 = [(ICCollectionView *)selfCopy diffableDataSource];
      snapshot = [diffableDataSource2 snapshot];
      v78 = v49;
      objectID = [v49 objectID];
      v61 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:objectID];

      diffableDataSource3 = [(ICCollectionView *)selfCopy diffableDataSource];
      v75 = v61;
      v63 = [diffableDataSource3 snapshotForSection:v61];

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
      objectID2 = [v78 objectID];
      v67 = [v65 indexOfObject:objectID2];

      if (v67 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = 0;
      }

      else
      {
        v68 = v67;
      }

      v71 = v68;
      objectID3 = [v76 objectID];
      v72 = [(ICCollectionView *)selfCopy actualChildIndexForSnapshotIndex:v71 inDestinationObjectID:objectID3 sectionSnapshot:v63];

      objectID4 = [v76 objectID];
      [(ICCollectionView *)selfCopy performDropOfFolderObjectIDs:v16 atFolderObjectID:objectID4 atIndex:v72];
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
          v85[4] = selfCopy;
          v53 = [v15 ic_map:v85];
          v54 = [ICMoveDecisionController alloc];
          presentingViewController = [(ICCollectionView *)selfCopy presentingViewController];
          v79 = v53;
          v56 = [(ICMoveDecisionController *)v54 initWithSourceObjects:v53 presentingViewController:presentingViewController];

          if (v29)
          {
            modernManagedObjectContext2 = [(ICCollectionView *)selfCopy modernManagedObjectContext];
            v58 = [modernManagedObjectContext2 objectWithID:v29];
            [(ICMoveDecisionController *)v56 setDestination:v58];

            v9 = v82;
            v27 = destinationIndexPath;
            v30 = v81;
          }

          else
          {
            v30 = v81;
            [(ICMoveDecisionController *)v56 setDestination:v81];
            v27 = destinationIndexPath;
          }

          [(ICMoveDecisionController *)v56 performDecisionWithCompletion:0];
        }

        goto LABEL_50;
      }

      v80 = v30;
      diffableDataSource4 = [(ICCollectionView *)selfCopy diffableDataSource];
      snapshot2 = [diffableDataSource4 snapshot];

      sectionIdentifiers = [snapshot2 sectionIdentifiers];
      v43 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(destinationIndexPath, "section")}];

      v78 = snapshot2;
      v44 = snapshot2;
      v45 = v43;
      sectionIdentifiers2 = [v44 sectionIdentifiers];
      LODWORD(v43) = [sectionIdentifiers2 ic_containsObjectPassingTest:&stru_100649658];

      if (v43)
      {
        modernManagedObjectContext3 = [(ICCollectionView *)selfCopy modernManagedObjectContext];
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_1000E4F8C;
        v86[3] = &unk_100645D40;
        v86[4] = selfCopy;
        v87 = v17;
        v88 = v45;
        [modernManagedObjectContext3 performBlockAndWait:v86];
      }
    }

LABEL_49:
    v27 = destinationIndexPath;
    v30 = v80;
    goto LABEL_50;
  }

LABEL_51:
}

- (id)customAccessibilityActionsForObjectID:(id)d galleryView:(BOOL)view
{
  viewCopy = view;
  dCopy = d;
  v7 = +[NSArray array];
  if ([dCopy ic_isModernFolderType])
  {
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
    v9 = [modernManagedObjectContext objectWithID:dCopy];

    if (viewCopy)
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
    if (![dCopy ic_isNoteType])
    {
      goto LABEL_13;
    }

    if (!viewCopy || ![dCopy ic_isModernNoteType])
    {
      [(ICCollectionView *)self commonAcessibilityActionsForNoteWithObjectID:dCopy];
      v7 = v9 = v7;
      goto LABEL_12;
    }

    modernManagedObjectContext2 = [(ICCollectionView *)self modernManagedObjectContext];
    v9 = [modernManagedObjectContext2 objectWithID:dCopy];

    v10 = [(ICCollectionView *)self galleryViewAcessibilityActionsForNote:v9];
  }

  v12 = v10;

  v7 = v12;
LABEL_12:

LABEL_13:

  return v7;
}

- (id)contextMenuConfigurationForItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    if ([pathsCopy count] == 1)
    {
      firstObject = [pathsCopy firstObject];
      v6 = [(ICCollectionView *)self contextMenuConfigurationForIndexPath:firstObject];

      goto LABEL_34;
    }

    v34 = [pathsCopy count] != 0;
    v7 = [pathsCopy count] != 0;
    v8 = [pathsCopy count] != 0;
    v9 = [pathsCopy count] != 0;
    v30 = +[NSMutableArray array];
    +[NSMutableArray array];
    v29 = v28 = pathsCopy;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = pathsCopy;
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
          diffableDataSource = [(ICCollectionView *)self diffableDataSource];
          v16 = [diffableDataSource itemIdentifierForIndexPath:v14];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objectID = v16;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              object = [v16 object];
              objectID = [object objectID];
            }

            else
            {
              objectID = 0;
            }
          }

          if ([objectID ic_isNoteType])
          {
            v19 = v12;
            v20 = v7;
            if ([objectID ic_isModernNoteType])
            {
              [(ICCollectionView *)self modernManagedObjectContext];
            }

            else
            {
              [(ICCollectionView *)self legacyManagedObjectContext];
            }
            v24 = ;
            v22 = [v24 objectWithID:objectID];

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
            if (![objectID ic_isInvitationType])
            {
              goto LABEL_23;
            }

            modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
            v22 = [modernManagedObjectContext objectWithID:objectID];

            highlight = [v22 highlight];
            v9 &= highlight != 0;

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
      selfCopy = self;
      v40 = v33;
      v41 = v12;
      v43 = v34 & 1;
      v38 = obj;
      v26 = v30;
      v39 = v30;
      v44 = v7 & 1;
      v45 = v8 & 1;
      v6 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:&stru_1006496C0 actionProvider:v35];

      pathsCopy = v28;
    }

    else
    {
      v6 = 0;
      pathsCopy = v28;
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

- (id)contextMenuConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(ICCollectionView *)self cellForItemIdentifier:v6];
  v8 = ICProtocolCast();
  contextMenuInteractionPreview = [v8 contextMenuInteractionPreview];
  v10 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v11 = contextMenuInteractionPreview;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectID2 = v6;
    if (!objectID2)
    {
      goto LABEL_26;
    }

LABEL_9:
    if ([objectID2 ic_isAttachmentType])
    {
      modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
      v16 = [modernManagedObjectContext objectWithID:objectID2];

      note = [v16 note];
      objectID = [note objectID];

      objectID2 = objectID;
    }

    if ([objectID2 ic_isInvitationType])
    {
      modernManagedObjectContext2 = [(ICCollectionView *)self modernManagedObjectContext];
      v20 = [modernManagedObjectContext2 objectWithID:objectID2];
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_24;
    }

    if ([objectID2 ic_isModernFolderType])
    {
      modernManagedObjectContext3 = [(ICCollectionView *)self modernManagedObjectContext];
      modernManagedObjectContext2 = [modernManagedObjectContext3 objectWithID:objectID2];

      if ([modernManagedObjectContext2 isModernCustomFolder])
      {
        modernManagedObjectContext2 = modernManagedObjectContext2;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        v23 = modernManagedObjectContext2;
        goto LABEL_24;
      }

      v21 = 0;
      goto LABEL_22;
    }

    if ([objectID2 ic_isModernNoteType])
    {
      modernManagedObjectContext2 = [(ICCollectionView *)self modernManagedObjectContext];
      v22 = [modernManagedObjectContext2 objectWithID:objectID2];
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

    if ([objectID2 ic_isLegacyNoteType])
    {
      modernManagedObjectContext2 = [(ICCollectionView *)self legacyManagedObjectContext];
      v21 = [modernManagedObjectContext2 objectWithID:objectID2];
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
    object = [v6 object];
    objectID2 = [object objectID];

    if (!objectID2)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v21 = 0;
  v22 = 0;
  objectID2 = 0;
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
  selfCopy = self;
  v30 = v12;
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v25 = [UIContextMenuConfiguration configurationWithIdentifier:v6 previewProvider:v34 actionProvider:v27];

LABEL_34:

  return v25;
}

- (id)multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:(id)path
{
  v3 = [(ICCollectionView *)self cellForItemAtIndexPath:path];
  v4 = ICProtocolCast();
  contextMenuInteractionPreview = [v4 contextMenuInteractionPreview];
  v6 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v7 = contextMenuInteractionPreview;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  window = [v8 window];
  if (window)
  {
    v10 = [[UITargetedPreview alloc] initWithView:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)contextMenuWillPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000E6490;
  v15 = &unk_100645BA0;
  selfCopy = self;
  v17 = configurationCopy;
  v8 = configurationCopy;
  v9 = objc_retainBlock(&v12);
  v10 = [(ICCollectionView *)self viewControllerManager:v12];
  noteContainerViewMode = [v10 noteContainerViewMode];

  if (noteContainerViewMode == 1)
  {
    [animatorCopy addAnimations:v9];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (id)previewForWindowSceneActivationConfiguration:(id)configuration indexPath:(id)path
{
  v5 = [(ICCollectionView *)self cellForItemAtIndexPath:path];
  v6 = [(ICCollectionView *)self defaultPreviewForCell:v5];

  return v6;
}

- (BOOL)sourceObjectIDsContainsSystemPaperNotes:(id)notes
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E6704;
  v6[3] = &unk_1006497A8;
  v6[4] = self;
  v3 = [notes ic_compactMap:v6];
  v4 = [v3 ic_containsObjectPassingTest:&stru_1006497C8];

  return v4;
}

- (void)reloadCellAfterDelayForObjectID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  dispatchMainAfterDelay();
}

- (unint64_t)actualChildIndexForSnapshotIndex:(unint64_t)index inDestinationObjectID:(id)d sectionSnapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    v10 = [snapshotCopy containsItem:dCopy];
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
    v12 = [modernManagedObjectContext objectWithID:dCopy];

    defaultFolder = [v12 defaultFolder];
    objectID = [defaultFolder objectID];

    v15 = [snapshotCopy containsItem:objectID];
    if (index)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (index)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    index = index - v16 - v17;
  }

  return index;
}

- (id)sourceObjectIDsForDragSession:(id)session
{
  items = [session items];
  v4 = [items ic_compactMap:&stru_100649808];

  return v4;
}

- (id)dragItemsForIndexPath:(id)path sessionContext:(id)context
{
  contextCopy = context;
  pathCopy = path;
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (-[ICCollectionView isCellDraggableForIdentifier:](self, "isCellDraggableForIdentifier:", v9) && ([contextCopy addItemIdentifierIfAppropriate:v9 isEditingCollectionView:{-[ICCollectionView isEditing](self, "isEditing")}], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (BOOL)isCellDraggableForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(ICCollectionView *)self cellForItemIdentifier:identifierCopy];
  if (![v5 isUserInteractionEnabled] || (objc_msgSend(identifierCopy, "conformsToProtocol:", &OBJC_PROTOCOL___ICSectionIdentifier) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [ICTagCoreDataIndexer isTagItemIdentifier:identifierCopy]^ 1;
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    objc_opt_class();
    noteContainer = [v7 noteContainer];
    v9 = ICDynamicCast();

    objc_opt_class();
    noteContainer2 = [v7 noteContainer];
    v11 = ICDynamicCast();

    if ([(ICCollectionView *)self isEditing])
    {
      allowsEditing = [v7 allowsEditing];
    }

    else
    {
      allowsEditing = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6 & allowsEditing;
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

- (BOOL)isCellReorderableForIdentifier:(id)identifier
{
  v4 = [(ICCollectionView *)self cellForItemIdentifier:identifier];
  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 allowsEditing])
  {
    isEditing = [(ICCollectionView *)self isEditing];
  }

  else
  {
    isEditing = 0;
  }

  return isEditing;
}

- (int64_t)dataOwnerForIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [v6 object];
    objectID = [object objectID];

    v6 = objectID;
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
      modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
      v16 = [modernManagedObjectContext ic_existingObjectWithID:v9];

      folder = [v16 folder];
      account = [folder account];
      isManaged = [account isManaged];

      if (isManaged)
      {
        goto LABEL_7;
      }
    }

    else if ([v9 ic_isAttachmentType])
    {
      modernManagedObjectContext2 = [(ICCollectionView *)self modernManagedObjectContext];
      v21 = [modernManagedObjectContext2 ic_existingObjectWithID:v9];

      note = [v21 note];
      folder2 = [note folder];
      account2 = [folder2 account];
      isManaged2 = [account2 isManaged];

      if (isManaged2)
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

  modernManagedObjectContext3 = [(ICCollectionView *)self modernManagedObjectContext];
  v11 = [modernManagedObjectContext3 ic_existingObjectWithID:v9];

  account3 = [v11 account];
  isManaged3 = [account3 isManaged];

  if ((isManaged3 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v14 = 2;
LABEL_16:

  return v14;
}

- (void)reExpandFolderWithObjectID:(id)d
{
  dCopy = d;
  currentDragSessionContext = [(ICCollectionView *)self currentDragSessionContext];
  autoCollapsedFolderObjectID = [currentDragSessionContext autoCollapsedFolderObjectID];
  v7 = [autoCollapsedFolderObjectID isEqual:dCopy];

  if (v7)
  {
    diffableDataSource = [(ICCollectionView *)self diffableDataSource];
    snapshot = [diffableDataSource snapshot];
    v10 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:dCopy];

    diffableDataSource2 = [(ICCollectionView *)self diffableDataSource];
    v12 = [diffableDataSource2 snapshotForSection:v10];

    v16 = dCopy;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [v12 expandItems:v13];

    diffableDataSource3 = [(ICCollectionView *)self diffableDataSource];
    [diffableDataSource3 applySnapshot:v12 toSection:v10 animatingDifferences:1];

    currentDragSessionContext2 = [(ICCollectionView *)self currentDragSessionContext];
    [currentDragSessionContext2 setAutoCollapsedFolderObjectID:0];
  }
}

- (id)movableNoteObjectIDsIn:(id)in forDropIntoSection:(id)section
{
  sectionCopy = section;
  inCopy = in;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E72D8;
  v10[3] = &unk_100649830;
  v10[4] = self;
  v11 = [sectionCopy sectionType] == 3;
  v8 = [inCopy ic_compactMap:v10];

  return v8;
}

- (void)performDropOfFolderObjectIDs:(id)ds atFolderObjectID:(id)d atIndex:(unint64_t)index
{
  dsCopy = ds;
  dCopy = d;
  v10 = [dsCopy count];
  if (dCopy && v10)
  {
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E7498;
    v12[3] = &unk_100649858;
    v12[4] = self;
    v13 = dCopy;
    v14 = dsCopy;
    indexCopy = index;
    [modernManagedObjectContext performBlockAndWait:v12];
  }
}

- (CGRect)presentationSourceRectForCell:(id)cell
{
  cellCopy = cell;
  [cellCopy frame];
  [(ICCollectionView *)self convertPoint:self toView:?];
  v6 = v5;
  [(ICCollectionView *)self bounds];
  Width = CGRectGetWidth(v20);
  [cellCopy bounds];
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

- (id)contextMenuForInvitation:(id)invitation sourceView:(id)view
{
  invitationCopy = invitation;
  v6 = +[NSMutableArray array];
  highlight = [invitationCopy highlight];

  if (highlight)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000E7CB0;
    v19[3] = &unk_100646870;
    v19[4] = self;
    v8 = invitationCopy;
    v20 = v8;
    v9 = [UIAction ic_replyActionWithHandler:v19];
    [v6 addObject:v9];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000E7CBC;
    v16 = &unk_100646870;
    selfCopy = self;
    v18 = v8;
    v10 = [UIAction ic_removeActionWithHandler:&v13];
    [v6 addObject:{v10, v13, v14, v15, v16, selfCopy}];
  }

  v11 = [UIMenu menuWithChildren:v6];

  return v11;
}

- (id)contextMenuForFolder:(id)folder sourceView:(id)view
{
  folderCopy = folder;
  viewCopy = view;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([folderCopy canBeSharedViaICloud] && objc_msgSend(folderCopy, "canCurrentUserShare"))
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000E832C;
    v50[3] = &unk_1006498A8;
    v50[4] = self;
    v51 = folderCopy;
    v52 = viewCopy;
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

  if ([folderCopy canBeSharedViaICloud] && objc_msgSend(folderCopy, "isSharedViaICloud"))
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000E8354;
    v47[3] = &unk_1006498A8;
    v47[4] = self;
    v48 = folderCopy;
    v49 = viewCopy;
    v12 = [UIAction ic_collaborateManageActionWithCloudSyncingObject:v48 withHandler:v47];
    [v8 addObject:v12];
  }

  if ([folderCopy isSharedViaICloud])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000E837C;
    v45[3] = &unk_100646870;
    v45[4] = self;
    v46 = folderCopy;
    v13 = [UIAction ic_showActivityStreamActionWithCloudSyncingObject:v46 withHandler:v45];
    [v8 addObject:v13];
  }

  viewControllerManager = [(ICCollectionView *)self viewControllerManager];
  v15 = [ICMoveFolderActivity canShowMoveActionForFolder:folderCopy viewControllerManager:viewControllerManager];

  if (v15)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E8388;
    v43[3] = &unk_100646870;
    v43[4] = self;
    v44 = folderCopy;
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

  if ([folderCopy isEditableSmartFolder])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E8398;
    v41[3] = &unk_100646870;
    v41[4] = self;
    v18 = &v42;
    v42 = folderCopy;
    v19 = [UIAction ic_editSmartFolderActionWithHandler:v41];
  }

  else
  {
    if (![folderCopy isRenamable])
    {
      goto LABEL_22;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000E83A4;
    v39[3] = &unk_100646870;
    v39[4] = self;
    v18 = &v40;
    v40 = folderCopy;
    v19 = [UIAction ic_renameActionWithHandler:v39];
  }

  v20 = v19;
  [v8 addObject:v19];

LABEL_22:
  if ([folderCopy isDeletable])
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E83B0;
    v37[3] = &unk_100646870;
    v37[4] = self;
    v38 = folderCopy;
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
    if ([folderCopy allowsImporting])
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000E8438;
      v34[3] = &unk_1006498A8;
      v34[4] = self;
      v35 = folderCopy;
      v36 = viewCopy;
      v23 = [UIAction ic_importArchiveActionWithHandler:v34];
      [v8 addObject:v23];
    }

    if ([folderCopy allowsExporting])
    {
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000E8448;
      v30 = &unk_1006498A8;
      selfCopy = self;
      v32 = folderCopy;
      v33 = viewCopy;
      v24 = [UIAction ic_exportArchiveActionWithHandler:&v27];
      [v8 addObject:{v24, v27, v28, v29, v30, selfCopy}];
    }
  }

  v25 = [(ICCollectionView *)self contextMenuWithPinnedActionsAndCenterWindow:0 pinnedActions:v9 actions:v8];

  return v25;
}

- (id)contextMenuForModernNote:(id)note sourceView:(id)view
{
  noteCopy = note;
  viewCopy = view;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([noteCopy isPinnable])
  {
    isPinned = [noteCopy isPinned];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000E8AB4;
    v50[3] = &unk_100646870;
    v50[4] = self;
    v51 = noteCopy;
    v11 = [UIAction ic_pinNoteActionPinned:isPinned withHandler:v50];
    [v8 addObject:v11];
  }

  if ([noteCopy isLockable])
  {
    isPasswordProtected = [noteCopy isPasswordProtected];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000E8AC0;
    v48[3] = &unk_100646870;
    v48[4] = self;
    v49 = noteCopy;
    v13 = [UIAction ic_lockNoteActionLocked:isPasswordProtected withHandler:v48];
    [v8 addObject:v13];
  }

  if ([noteCopy isDuplicatable])
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000E8ACC;
    v46[3] = &unk_100646870;
    v46[4] = self;
    v47 = noteCopy;
    v14 = [UIAction ic_duplicateNoteActionWithHandler:v46];
    [v8 addObject:v14];
  }

  if ([noteCopy canBeSharedViaICloud])
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E8AD8;
    v43[3] = &unk_1006498A8;
    v43[4] = self;
    v44 = noteCopy;
    v45 = viewCopy;
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

  if ([noteCopy isSharedViaICloud])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000E8B00;
    v40[3] = &unk_1006498A8;
    v40[4] = self;
    v41 = noteCopy;
    v42 = viewCopy;
    v17 = [UIAction ic_collaborateManageActionWithCloudSyncingObject:v41 withHandler:v40];
    [v8 addObject:v17];
  }

  if (ICInternalSettingsIsAlexandriaEnabled() && [noteCopy allowsExporting])
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E8B28;
    v37[3] = &unk_1006498A8;
    v37[4] = self;
    v38 = noteCopy;
    v39 = viewCopy;
    v18 = [UIAction ic_exportArchiveActionWithHandler:v37];
    [v8 addObject:v18];
  }

  if ([noteCopy isMovable] && -[ICCollectionView ic_behavior](self, "ic_behavior") != 1)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000E8BBC;
    v35[3] = &unk_100646870;
    v35[4] = self;
    v36 = noteCopy;
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

  if ([noteCopy isDeletable])
  {
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000E8C44;
    v32 = &unk_100646870;
    selfCopy = self;
    v34 = noteCopy;
    v21 = [UIAction ic_deleteActionWithHandler:&v29];
    if (!_UISolariumEnabled() || (v22 = [v9 count], v23 = v9, !v22))
    {
      v23 = v8;
    }

    [v23 addObject:{v21, v29, v30, v31, v32, selfCopy}];
  }

  v24 = [ICAppURLUtilities appURLForNote:noteCopy];
  v25 = objc_alloc_init(ICCenterWindowSceneActivationRequestOptions);
  v26 = [UIAction ic_centerWindowActionWithAppURL:v24 activationRequestOptions:v25];
  v27 = [(ICCollectionView *)self contextMenuWithPinnedActionsAndCenterWindow:v26 pinnedActions:v9 actions:v8];

  return v27;
}

- (id)contextMenuForLegacyNote:(id)note sourceView:(id)view
{
  noteCopy = note;
  viewCopy = view;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000E8F8C;
  v29[3] = &unk_1006498A8;
  v29[4] = self;
  v10 = noteCopy;
  v30 = v10;
  v24 = viewCopy;
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

- (id)contextMenuWithPinnedActionsAndCenterWindow:(id)window pinnedActions:(id)actions actions:(id)a5
{
  windowCopy = window;
  v8 = a5;
  v9 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:actions];
  [v9 setPreferredElementSize:1];
  v10 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:v8];

  if (windowCopy)
  {
    v16 = v9;
    v17 = windowCopy;
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

- (id)leadingSwipeActionsConfigurationForModernNote:(id)note inCell:(id)cell
{
  noteCopy = note;
  cellCopy = cell;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([noteCopy isPinnable])
  {
    isPinned = [noteCopy isPinned];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E992C;
    v16[3] = &unk_1006498F8;
    objc_copyWeak(&v18, &location);
    v10 = noteCopy;
    v17 = v10;
    v11 = [UIContextualAction ic_pinContextualActionWithPinned:isPinned pinBlock:v16];
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

- (id)trailingSwipeActionsConfigurationForLegacyNote:(id)note inCell:(id)cell
{
  noteCopy = note;
  cellCopy = cell;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E9C14;
  v21[3] = &unk_1006498F8;
  objc_copyWeak(&v23, &location);
  v9 = noteCopy;
  v22 = v9;
  v10 = [UIContextualAction ic_deleteContextualActionWithBlock:v21];
  deleteNoteAccessibilityLabel = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
  [v10 setAccessibilityLabel:deleteNoteAccessibilityLabel];

  [v8 addObject:v10];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E9CC4;
  v18[3] = &unk_1006498F8;
  objc_copyWeak(&v20, &location);
  v12 = v9;
  v19 = v12;
  v13 = [UIContextualAction ic_moveContextualActionWithBlock:v18];
  moveNoteAccessibilityLabel = [(ICCollectionView *)self moveNoteAccessibilityLabel];
  [v13 setAccessibilityLabel:moveNoteAccessibilityLabel];

  [v8 addObject:v13];
  v15 = [v8 copy];
  v16 = [UISwipeActionsConfiguration configurationWithActions:v15];

  [v16 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v16;
}

- (id)trailingSwipeActionsConfigurationForModernNote:(id)note inCell:(id)cell
{
  noteCopy = note;
  cellCopy = cell;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([noteCopy isDeletable])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EA0F4;
    v29[3] = &unk_1006498F8;
    objc_copyWeak(&v31, &location);
    v30 = noteCopy;
    v9 = [UIContextualAction ic_deleteContextualActionWithBlock:v29];
    deleteNoteAccessibilityLabel = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
    [v9 setAccessibilityLabel:deleteNoteAccessibilityLabel];

    [v8 addObject:v9];
    objc_destroyWeak(&v31);
  }

  if ([noteCopy isMovable] && -[ICCollectionView ic_behavior](self, "ic_behavior") != 1)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000EA1A4;
    v26[3] = &unk_1006498F8;
    objc_copyWeak(&v28, &location);
    v27 = noteCopy;
    v11 = [UIContextualAction ic_moveContextualActionWithBlock:v26];
    moveNoteAccessibilityLabel = [(ICCollectionView *)self moveNoteAccessibilityLabel];
    [v11 setAccessibilityLabel:moveNoteAccessibilityLabel];

    [v8 addObject:v11];
    objc_destroyWeak(&v28);
  }

  if ([noteCopy canBeSharedViaICloud])
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EA254;
    v22 = &unk_100649920;
    objc_copyWeak(&v25, &location);
    v23 = cellCopy;
    v13 = noteCopy;
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

- (id)trailingSwipeActionsConfigurationForModernFolder:(id)folder inCell:(id)cell
{
  folderCopy = folder;
  cellCopy = cell;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([folderCopy isDeletable])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000EA6B4;
    v31[3] = &unk_1006498F8;
    objc_copyWeak(&v33, &location);
    v32 = folderCopy;
    v9 = [UIContextualAction ic_deleteContextualActionWithBlock:v31];
    deleteFolderAccessibilityLabel = [(ICCollectionView *)self deleteFolderAccessibilityLabel];
    [v9 setAccessibilityLabel:deleteFolderAccessibilityLabel];

    [v8 addObject:v9];
    objc_destroyWeak(&v33);
  }

  viewControllerManager = [(ICCollectionView *)self viewControllerManager];
  v12 = [ICMoveFolderActivity canShowMoveActionForFolder:folderCopy viewControllerManager:viewControllerManager];

  if (v12)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000EA764;
    v28[3] = &unk_1006498F8;
    objc_copyWeak(&v30, &location);
    v29 = folderCopy;
    v13 = [UIContextualAction ic_moveContextualActionWithBlock:v28];
    moveFolderAccessibilityLabel = [(ICCollectionView *)self moveFolderAccessibilityLabel];
    [v13 setAccessibilityLabel:moveFolderAccessibilityLabel];

    [v8 addObject:v13];
    objc_destroyWeak(&v30);
  }

  if ([folderCopy canBeSharedViaICloud] && objc_msgSend(folderCopy, "canCurrentUserShare"))
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000EA7C4;
    v24 = &unk_100649920;
    objc_copyWeak(&v27, &location);
    v25 = cellCopy;
    v15 = folderCopy;
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

- (id)trailingSwipeActionsConfigurationForInvitation:(id)invitation inCell:(id)cell
{
  invitationCopy = invitation;
  cellCopy = cell;
  v8 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  highlight = [invitationCopy highlight];

  if (highlight)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000EAB10;
    v21[3] = &unk_1006498F8;
    objc_copyWeak(&v23, &location);
    v10 = invitationCopy;
    v22 = v10;
    v11 = [UIContextualAction ic_removeContextualActionWithBlock:v21];
    removeInvitationAccessibilityLabel = [(ICCollectionView *)self removeInvitationAccessibilityLabel];
    [v11 setAccessibilityLabel:removeInvitationAccessibilityLabel];

    [v8 addObject:v11];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EAB84;
    v18[3] = &unk_1006498F8;
    objc_copyWeak(&v20, &location);
    v19 = v10;
    v13 = [UIContextualAction ic_replyContextualActionWithBlock:v18];
    replyToInvitationAccessibilityLabel = [(ICCollectionView *)self replyToInvitationAccessibilityLabel];
    [v13 setAccessibilityLabel:replyToInvitationAccessibilityLabel];

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

- (void)performPinActionWithNote:(id)note
{
  noteCopy = note;
  noteCopy2 = note;
  v5 = [NSArray arrayWithObjects:&noteCopy count:1];

  [(ICCollectionView *)self performPinActionWithNotes:v5, noteCopy];
}

- (void)performPinActionWithNotes:(id)notes
{
  notesCopy = notes;
  objc_opt_class();
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v6 = ICDynamicCast();

  objc_opt_class();
  dataSource = [v6 dataSource];
  v8 = ICDynamicCast();

  objc_opt_class();
  indexer = [v8 indexer];
  v10 = ICDynamicCast();

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000EB040;
  v42[3] = &unk_100645BA0;
  v11 = notesCopy;
  v43 = v11;
  v32 = v10;
  v44 = v32;
  [v8 performBlockSuspendingUpdates:v42 andApplySnapshotAnimated:1];
  objc_opt_class();
  v33 = v6;
  dataSource2 = [v6 dataSource];
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
          managedObjectContext = [v19 managedObjectContext];
          [managedObjectContext ic_save];
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
        presentingViewController2 = [(ICCollectionView *)self presentingViewController];
        eventReporter = [presentingViewController2 eventReporter];
        [eventReporter submitNotePinEventForModernNote:v26 contextPath:0];

        if (UIAccessibilityIsVoiceOverRunning())
        {
          isPinned = [v26 isPinned];
          title = [v26 title];
          v31 = [(ICCollectionView *)self pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:isPinned noteTitle:title];

          ICAccessibilityPostHighPriorityAnnouncementNotification();
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v23);
  }
}

- (void)performLockActionWithNote:(id)note
{
  noteCopy = note;
  v5 = [ICLockNoteActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v7 = [v5 initWithNote:noteCopy presentingViewController:presentingViewController];
  [(ICCollectionView *)self setLockNoteActivity:v7];

  objc_initWeak(&location, self);
  viewControllerManager = [(ICCollectionView *)self viewControllerManager];
  window = [viewControllerManager window];
  firstResponder = [window firstResponder];

  if ([firstResponder conformsToProtocol:&OBJC_PROTOCOL___UITextInput])
  {
    [firstResponder resignFirstResponder];
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
    lockNoteActivity = [(ICCollectionView *)self lockNoteActivity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EB43C;
    v13[3] = &unk_1006467C8;
    v11 = v14;
    objc_copyWeak(v14, &location);
    [lockNoteActivity performActivityWithCompletion:v13];
  }

  objc_destroyWeak(v11);

  objc_destroyWeak(&location);
}

- (void)performCollaborationActionWithNote:(id)note forceShareSheet:(BOOL)sheet sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  noteCopy = note;
  viewCopy = view;
  completionCopy = completion;
  v18 = completionCopy;
  if (noteCopy)
  {
    if (sheet || ([noteCopy isPubliclySharedOrHasInvitees] & 1) == 0)
    {
      v25 = [ICSendNoteActivity alloc];
      presentingViewController = [(ICCollectionView *)self presentingViewController];
      presentingViewController2 = [(ICCollectionView *)self presentingViewController];
      eventReporter = [presentingViewController2 eventReporter];
      height = [(ICSendNoteActivity *)v25 initWithNote:noteCopy presentingViewController:presentingViewController presentingBarButtonItem:0 presentingSourceView:viewCopy presentingSourceRect:eventReporter eventReporter:x, y, width, height];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000EB6E4;
      v31[3] = &unk_100649948;
      v32 = v18;
      [(ICSendNoteActivity *)height performActivityWithCompletion:v31];
      v24 = v32;
    }

    else
    {
      v19 = [ICCollaborationNoteActivity alloc];
      presentingViewController3 = [(ICCollectionView *)self presentingViewController];
      presentingViewController4 = [(ICCollectionView *)self presentingViewController];
      eventReporter2 = [presentingViewController4 eventReporter];
      height = [(ICCollaborationNoteActivity *)v19 initWithNote:noteCopy presentingViewController:presentingViewController3 presentingBarButtonItem:0 presentingSourceView:viewCopy eventReporter:eventReporter2];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000EB6FC;
      v29[3] = &unk_100649948;
      v30 = v18;
      [(ICSendNoteActivity *)height performActivityWithCompletion:v29];
      v24 = v30;
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)performDuplicateActionWithNote:(id)note
{
  noteCopy = note;
  v8 = noteCopy;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [ICNote undoablyDuplicateNotes:v5];

  modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
  [modernManagedObjectContext ic_save];
}

- (void)performSendActionWithNote:(id)note fromSourceView:(id)view
{
  noteCopy = note;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
    objectID = [noteCopy objectID];
    v10 = [modernManagedObjectContext objectWithID:objectID];

    v11 = [ICSendNoteActivity alloc];
    presentingViewController = [(ICCollectionView *)self presentingViewController];
    presentingViewController2 = [(ICCollectionView *)self presentingViewController];
    eventReporter = [presentingViewController2 eventReporter];
    legacyNoteEditorViewController = [(ICSendNoteActivity *)v11 initWithNote:v10 presentingViewController:presentingViewController presentingBarButtonItem:0 presentingSourceView:viewCopy presentingSourceRect:eventReporter eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

    [(ICSendNoteActivity *)legacyNoteEditorViewController performActivityWithCompletion:0];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    legacyManagedObjectContext = [(ICCollectionView *)self legacyManagedObjectContext];
    objectID2 = [noteCopy objectID];
    v10 = [legacyManagedObjectContext objectWithID:objectID2];

    viewControllerManager = [(ICCollectionView *)self viewControllerManager];
    legacyNoteEditorViewController = [viewControllerManager legacyNoteEditorViewController];

    view = [(ICSendNoteActivity *)legacyNoteEditorViewController view];
    [(ICSendNoteActivity *)legacyNoteEditorViewController setNote:v10];
    [(ICSendNoteActivity *)legacyNoteEditorViewController setContentFromNote];
    v20 = [NotesActivityViewController alloc];
    noteActivityItemsForSharing = [(ICSendNoteActivity *)legacyNoteEditorViewController noteActivityItemsForSharing];
    v22 = [(NotesActivityViewController *)v20 initWithActivityItems:noteActivityItemsForSharing applicationActivities:0];

    store = [v10 store];
    account = [store account];
    -[NotesActivityViewController setIsContentManaged:](v22, "setIsContentManaged:", [account isManaged]);

    v29[0] = UIActivityTypeOpenInIBooks;
    v29[1] = ICActivityTypeShareToNote;
    v29[2] = UIActivityTypeSharePlay;
    v25 = [NSArray arrayWithObjects:v29 count:3];
    [(NotesActivityViewController *)v22 setExcludedActivityTypes:v25];

    [(NotesActivityViewController *)v22 setDisplayController:legacyNoteEditorViewController];
    if (+[UIDevice ic_isVision])
    {
      v26 = -2;
    }

    else
    {
      v26 = 7;
    }

    [(NotesActivityViewController *)v22 setModalPresentationStyle:v26];
    popoverPresentationController = [(NotesActivityViewController *)v22 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    presentingViewController3 = [(ICCollectionView *)self presentingViewController];
    [presentingViewController3 presentViewController:v22 animated:1 completion:0];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)performMoveActionWithNotes:(id)notes completion:(id)completion
{
  completionCopy = completion;
  notesCopy = notes;
  v8 = [ICMoveDecisionController alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICMoveDecisionController *)v8 initWithSourceObjects:notesCopy presentingViewController:presentingViewController];

  [(ICCollectionView *)self setMoveDecisionController:v10];
  moveDecisionController = [(ICCollectionView *)self moveDecisionController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EBC30;
  v13[3] = &unk_100648068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [moveDecisionController performDecisionWithCompletion:v13];
}

- (void)performDeleteActionWithObjects:(id)objects completion:(id)completion
{
  completionCopy = completion;
  objectsCopy = objects;
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  if (([presentingViewController isFirstResponder] & 1) == 0)
  {
    presentingViewController2 = [(ICCollectionView *)self presentingViewController];
    canBecomeFirstResponder = [presentingViewController2 canBecomeFirstResponder];

    if (!canBecomeFirstResponder)
    {
      goto LABEL_5;
    }

    presentingViewController = [(ICCollectionView *)self presentingViewController];
    [presentingViewController becomeFirstResponder];
  }

LABEL_5:
  objc_opt_class();
  presentingViewController3 = [(ICCollectionView *)self presentingViewController];
  v12 = ICDynamicCast();

  v13 = [ICDeleteDecisionController alloc];
  window = [(ICCollectionView *)self window];
  presentingViewController4 = [(ICCollectionView *)self presentingViewController];
  eventReporter = [presentingViewController4 eventReporter];
  v17 = [(ICDeleteDecisionController *)v13 initWithSourceObjects:objectsCopy window:window sender:0 eventReporter:eventReporter];

  objc_opt_class();
  dataSource = [v12 dataSource];
  v19 = ICDynamicCast();

  objc_opt_class();
  indexer = [v19 indexer];
  v21 = ICDynamicCast();

  v22 = [objectsCopy ic_compactMap:&stru_100649990];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000EC250;
  v39[3] = &unk_1006499B8;
  v39[4] = self;
  v23 = v22;
  v40 = v23;
  v24 = completionCopy;
  v41 = v24;
  [v21 deleteWithDecisionController:v17 completion:v39];
  objc_opt_class();
  dataSource2 = [v12 dataSource];
  v26 = ICDynamicCast();

  objc_opt_class();
  indexer2 = [v26 indexer];
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
  dataSource3 = [v12 dataSource];
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

- (void)performMoveActionWithFolder:(id)folder completion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
  v8 = [ICMoveFolderActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICMoveFolderActivity *)v8 initWithFolder:folderCopy presentingViewController:presentingViewController];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EC474;
  v13[3] = &unk_1006499E0;
  v13[4] = self;
  v14 = folderCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = folderCopy;
  [(ICMoveFolderActivity *)v10 performActivityWithCompletion:v13];
}

- (void)performRenameActionWithFolder:(id)folder
{
  folderCopy = folder;
  v5 = [ICRenameFolderActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v7 = [(ICRenameFolderActivity *)v5 initWithFolder:folderCopy presentingViewController:presentingViewController];

  [(ICCollectionView *)self setRenameFolderActivity:v7];
  renameFolderActivity = [(ICCollectionView *)self renameFolderActivity];
  [renameFolderActivity performActivityWithCompletion:0];
}

- (void)performEditSmartFolderActionWithFolder:(id)folder
{
  folderCopy = folder;
  v5 = [ICEditSmartFolderActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v7 = [(ICEditSmartFolderActivity *)v5 initWithSmartFolder:folderCopy presentingViewController:presentingViewController];

  [(ICEditSmartFolderActivity *)v7 performActivityWithCompletion:0];
}

- (void)performCollaborationActionWithFolder:(id)folder forceShareSheet:(BOOL)sheet sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sheetCopy = sheet;
  completionCopy = completion;
  viewCopy = view;
  folderCopy = folder;
  v18 = [ICCollaborationFolderActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  presentingViewController2 = [(ICCollectionView *)self presentingViewController];
  eventReporter = [presentingViewController2 eventReporter];
  height = [(ICCollaborationFolderActivity *)v18 initWithFolder:folderCopy presentingViewController:presentingViewController presentingBarButtonItem:0 presentingSourceView:viewCopy presentingSourceRect:eventReporter eventReporter:x, y, width, height];

  [(ICCollaborationFolderActivity *)height setForceShareSheet:sheetCopy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000EC7CC;
  v24[3] = &unk_100649948;
  v25 = completionCopy;
  v23 = completionCopy;
  [(ICCollaborationFolderActivity *)height performActivityWithCompletion:v24];
}

- (void)performShowActivityStreamActionWithFolder:(id)folder
{
  folderCopy = folder;
  v6 = [[ICShowActivityStreamActivity alloc] initWithObject:folderCopy];

  viewControllerManager = [(ICCollectionView *)self viewControllerManager];
  [(ICShowActivityStreamActivity *)v6 setViewControllerManager:viewControllerManager];

  [(ICShowActivityStreamActivity *)v6 performActivityWithCompletion:0];
}

- (void)performImportArchiveActionWithNoteContainer:(id)container fromSourceView:(id)view
{
  containerCopy = container;
  v6 = [ICImportArchiveActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v8 = [(ICImportArchiveActivity *)v6 initWithNoteContainer:containerCopy markdown:0 presentingViewController:presentingViewController];

  [(ICCollectionView *)self setImportArchiveActivity:v8];
  importArchiveActivity = [(ICCollectionView *)self importArchiveActivity];
  [importArchiveActivity performActivityWithCompletion:0];
}

- (void)performExportArchiveActionWithObjects:(id)objects fromSourceView:(id)view
{
  viewCopy = view;
  objectsCopy = objects;
  v8 = [ICExportArchiveActivity alloc];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v10 = [(ICExportArchiveActivity *)v8 initWithObjects:objectsCopy presentingViewController:presentingViewController presentingBarButtonItem:0 presentingSourceView:viewCopy];

  [(ICExportArchiveActivity *)v10 performActivityWithCompletion:0];
}

- (void)performRemoveActionWithInvitation:(id)invitation
{
  invitationCopy = invitation;
  highlight = [invitationCopy highlight];
  hideContextMenu = [highlight hideContextMenu];
  actionBlock = [hideContextMenu actionBlock];

  if (actionBlock)
  {
    highlight2 = [invitationCopy highlight];
    hideContextMenu2 = [highlight2 hideContextMenu];
    actionBlock2 = [hideContextMenu2 actionBlock];
    actionBlock2[2]();
  }

  objectID = [invitationCopy objectID];
  v15 = objectID;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  [(ICCollectionView *)self synchronouslyRemoveItemsWithIdentifiers:v12];

  presentingViewController = [(ICCollectionView *)self presentingViewController];
  eventReporter = [presentingViewController eventReporter];
  [eventReporter submitCollabNotificationEventWithAction:2];
}

- (void)performReplyActionWithInvitation:(id)invitation
{
  highlight = [invitation highlight];
  presentingViewController = [(ICCollectionView *)self presentingViewController];
  v8 = [highlight replyContextMenuWithPresentingViewController:presentingViewController];

  actionBlock = [v8 actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [v8 actionBlock];
    actionBlock2[2]();
  }
}

- (id)contextMenuPreviewWithConfiguration:(id)configuration indexPath:(id)path
{
  identifier = [configuration identifier];
  v6 = [(ICCollectionView *)self cellForItemIdentifier:identifier];

  v7 = [(ICCollectionView *)self defaultPreviewForCell:v6];

  return v7;
}

- (id)defaultPreviewForCell:(id)cell
{
  cellCopy = cell;
  v5 = ICProtocolCast();
  contextMenuInteractionPreview = [v5 contextMenuInteractionPreview];
  v7 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v8 = contextMenuInteractionPreview;
  }

  else
  {
    v8 = cellCopy;
  }

  v9 = v8;

  window = [v9 window];

  if (window)
  {
    window = [[UITargetedPreview alloc] initWithView:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _visiblePathForBackgroundConfiguration = [cellCopy _visiblePathForBackgroundConfiguration];
      parameters = [window parameters];
      [parameters setVisiblePath:_visiblePathForBackgroundConfiguration];

      backgroundColor = [(ICCollectionView *)self backgroundColor];
      parameters2 = [window parameters];
      [parameters2 setBackgroundColor:backgroundColor];
    }
  }

  return window;
}

- (id)previewParametersWithCollectionView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  v6 = ICProtocolCast();
  contextMenuInteractionPreview = [v6 contextMenuInteractionPreview];
  v8 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v9 = contextMenuInteractionPreview;
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
      _visiblePathForBackgroundConfiguration = [v5 _visiblePathForBackgroundConfiguration];
      [v11 setVisiblePath:_visiblePathForBackgroundConfiguration];

      backgroundColor = [(ICCollectionView *)self backgroundColor];
      [v11 setBackgroundColor:backgroundColor];
    }

    else
    {
      backgroundColor = [v10 layer];
      [backgroundColor bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [backgroundColor cornerRadius];
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

- (id)cellForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v6 = [diffableDataSource indexPathForItemIdentifier:identifierCopy];

  v7 = [(ICCollectionView *)self cellForItemAtIndexPath:v6];

  return v7;
}

- (void)synchronouslyRemoveItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  [snapshot deleteItemsWithIdentifiers:identifiersCopy];
  diffableDataSource2 = [(ICCollectionView *)self diffableDataSource];
  [diffableDataSource2 applySnapshot:snapshot animatingDifferences:1];

  optimisticallyAppliedSnapshotHandler = [(ICCollectionView *)self optimisticallyAppliedSnapshotHandler];

  if (optimisticallyAppliedSnapshotHandler)
  {
    optimisticallyAppliedSnapshotHandler2 = [(ICCollectionView *)self optimisticallyAppliedSnapshotHandler];
    (optimisticallyAppliedSnapshotHandler2)[2](optimisticallyAppliedSnapshotHandler2, snapshot);
  }
}

- (id)firstUnselectedIndexPathWithFrame:(CGRect)frame arrowDirection:(unint64_t)direction
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  indexPathsForSelectedItems = [(ICCollectionView *)self indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  collectionViewLayout = [(ICCollectionView *)self collectionViewLayout];
  v13 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, width, height}];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000ED28C;
  v30 = sub_1000ED29C;
  v31 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v14 = direction == 8 || direction == 2;
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
  v16 = firstObject;
  v20 = v16;
  selfCopy = self;
  v23 = &v26;
  directionCopy = direction;
  v22 = v25;
  [v13 enumerateObjectsUsingBlock:v19];
  indexPath = [v27[5] indexPath];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);

  return indexPath;
}

- (id)commonAccessibilityActionsForFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[NSMutableArray array];
  if ([folderCopy isRenamable])
  {
    v6 = [UIAccessibilityCustomAction alloc];
    renameFolderAccessibilityLabel = [(ICCollectionView *)self renameFolderAccessibilityLabel];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000ED63C;
    v20[3] = &unk_100649A30;
    v20[4] = self;
    v21 = folderCopy;
    v8 = [v6 initWithName:renameFolderAccessibilityLabel actionHandler:v20];

    [v5 addObject:v8];
  }

  if ([folderCopy isSharedViaICloud])
  {
    v9 = [UIAccessibilityCustomAction alloc];
    showFolderActivityAccessibilityLabel = [(ICCollectionView *)self showFolderActivityAccessibilityLabel];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000ED660;
    v17 = &unk_100649A30;
    selfCopy = self;
    v19 = folderCopy;
    v11 = [v9 initWithName:showFolderActivityAccessibilityLabel actionHandler:&v14];

    [v5 addObject:{v11, v14, v15, v16, v17, selfCopy}];
  }

  v12 = [v5 copy];

  return v12;
}

- (id)galleryViewAcessibilityActionsForFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[NSMutableArray array];
  v6 = [(ICCollectionView *)self commonAccessibilityActionsForFolder:folderCopy];
  [v5 addObjectsFromArray:v6];

  if ([folderCopy isDeletable])
  {
    v7 = [UIAccessibilityCustomAction alloc];
    deleteFolderAccessibilityLabel = [(ICCollectionView *)self deleteFolderAccessibilityLabel];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000ED93C;
    v28[3] = &unk_100649A30;
    v28[4] = self;
    v29 = folderCopy;
    v9 = [v7 initWithName:deleteFolderAccessibilityLabel actionHandler:v28];

    [v5 addObject:v9];
  }

  viewControllerManager = [(ICCollectionView *)self viewControllerManager];
  v11 = [ICMoveFolderActivity canShowMoveActionForFolder:folderCopy viewControllerManager:viewControllerManager];

  if (v11)
  {
    v12 = [UIAccessibilityCustomAction alloc];
    moveFolderAccessibilityLabel = [(ICCollectionView *)self moveFolderAccessibilityLabel];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000ED9C8;
    v26[3] = &unk_100649A30;
    v26[4] = self;
    v27 = folderCopy;
    v14 = [v12 initWithName:moveFolderAccessibilityLabel actionHandler:v26];

    [v5 addObject:v14];
  }

  if ([folderCopy canBeSharedViaICloud])
  {
    v15 = [UIAccessibilityCustomAction alloc];
    v16 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:folderCopy];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000ED9F0;
    v23 = &unk_100649A30;
    selfCopy = self;
    v25 = folderCopy;
    v17 = [v15 initWithName:v16 actionHandler:&v20];

    [v5 addObject:{v17, v20, v21, v22, v23, selfCopy}];
  }

  v18 = [v5 copy];

  return v18;
}

- (id)commonAcessibilityActionsForNoteWithObjectID:(id)d
{
  dCopy = d;
  v5 = +[NSMutableArray array];
  if ([dCopy ic_isModernNoteType])
  {
    modernManagedObjectContext = [(ICCollectionView *)self modernManagedObjectContext];
  }

  else
  {
    if (![dCopy ic_isLegacyNoteType])
    {
      v8 = 0;
      goto LABEL_7;
    }

    modernManagedObjectContext = [(ICCollectionView *)self legacyManagedObjectContext];
  }

  v7 = modernManagedObjectContext;
  v8 = [modernManagedObjectContext objectWithID:dCopy];

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
    duplicateNoteAccessibilityLabel = [(ICCollectionView *)self duplicateNoteAccessibilityLabel];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EDCF4;
    v22 = &unk_100649A30;
    selfCopy = self;
    v24 = v10;
    v16 = [v14 initWithName:duplicateNoteAccessibilityLabel actionHandler:&v19];

    [v5 addObject:{v16, v19, v20, v21, v22, selfCopy}];
  }

  v17 = [v5 copy];

  return v17;
}

- (id)galleryViewAcessibilityActionsForNote:(id)note
{
  noteCopy = note;
  v5 = +[NSMutableArray array];
  objectID = [noteCopy objectID];
  v7 = [(ICCollectionView *)self commonAcessibilityActionsForNoteWithObjectID:objectID];
  [v5 addObjectsFromArray:v7];

  if ([noteCopy isDeletable])
  {
    v8 = [UIAccessibilityCustomAction alloc];
    deleteNoteAccessibilityLabel = [(ICCollectionView *)self deleteNoteAccessibilityLabel];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000EE0A0;
    v31[3] = &unk_100649A30;
    v31[4] = self;
    v32 = noteCopy;
    v10 = [v8 initWithName:deleteNoteAccessibilityLabel actionHandler:v31];

    [v5 addObject:v10];
  }

  if ([noteCopy isMovable])
  {
    v11 = [UIAccessibilityCustomAction alloc];
    moveNoteAccessibilityLabel = [(ICCollectionView *)self moveNoteAccessibilityLabel];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EE12C;
    v29[3] = &unk_100649A30;
    v29[4] = self;
    v30 = noteCopy;
    v13 = [v11 initWithName:moveNoteAccessibilityLabel actionHandler:v29];

    [v5 addObject:v13];
  }

  if ([noteCopy isPinnable])
  {
    v14 = [UIAccessibilityCustomAction alloc];
    v15 = -[ICCollectionView pinOrUnpinAccessibilityLabelForNoteIsPinned:](self, "pinOrUnpinAccessibilityLabelForNoteIsPinned:", [noteCopy isPinned]);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EE1B8;
    v27[3] = &unk_100649A30;
    v27[4] = self;
    v28 = noteCopy;
    v16 = [v14 initWithName:v15 actionHandler:v27];

    [v5 addObject:v16];
  }

  if ([noteCopy canBeSharedViaICloud])
  {
    objectID2 = [noteCopy objectID];
    v18 = [(ICCollectionView *)self interactionSourceViewForObjectID:objectID2];

    v19 = [UIAccessibilityCustomAction alloc];
    v20 = [(ICCollectionView *)self collaborationAccessibilityLabelForCloudSyncingObject:noteCopy];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000EE1DC;
    v24[3] = &unk_100649A58;
    v24[4] = self;
    v25 = noteCopy;
    v26 = v18;
    v21 = v18;
    v22 = [v19 initWithName:v20 actionHandler:v24];

    [v5 addObject:v22];
  }

  return v5;
}

- (id)interactionSourceViewForObjectID:(id)d
{
  v3 = [(ICCollectionView *)self cellForItemIdentifier:d];
  v4 = ICProtocolCast();
  contextMenuInteractionPreview = [v4 contextMenuInteractionPreview];
  v6 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v7 = contextMenuInteractionPreview;
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

- (id)pinOrUnpinAccessibilityLabelForNoteIsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (pinnedCopy)
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

- (id)pinOrUnpinAccessibilityAnnouncementForNoteIsPinned:(BOOL)pinned noteTitle:(id)title
{
  pinnedCopy = pinned;
  titleCopy = title;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (pinnedCopy)
  {
    v8 = @"Pinned note with title, %@";
  }

  else
  {
    v8 = @"Unpinned note with title, %@";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_100661CF0 table:0];

  titleCopy = [NSString localizedStringWithFormat:v9, titleCopy];

  return titleCopy;
}

- (id)lockOrUnlockAccessibilityLabelForNoteIsLocked:(BOOL)locked
{
  lockedCopy = locked;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (lockedCopy)
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