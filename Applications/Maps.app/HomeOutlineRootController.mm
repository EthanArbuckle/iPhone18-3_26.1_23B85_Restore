@interface HomeOutlineRootController
- (BOOL)_isLoading;
- (BOOL)_needsSnapshotUpdate;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)isCollectionViewFocusedWithSectionController:(id)controller;
- (BOOL)isCollectionViewProxyFocusedWithSectionController:(id)controller;
- (HomeOutlineRootController)initWithConfiguration:(id)configuration;
- (KeyboardProxyingView)keyboardProxy;
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (UIScrollView)hoverScrollView;
- (id)_focusedIdentifierPath;
- (id)_identifierPathForIndexPath:(id)path;
- (id)_indexPathForIdentifierPath:(id)path;
- (id)_loadingDataProviders;
- (id)_nodeSnapshotAtIdentifierPath:(id)path;
- (id)_nodeSnapshotAtIndexPath:(id)path;
- (id)_sectionControllerForIdentifierPath:(id)path;
- (id)_sectionControllerForIndexPath:(id)path;
- (id)_selectedIdentifierPaths;
- (id)_storage;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)_applySnapshotUpdatesInSectionControllers:(id)controllers animateCells:(BOOL)cells animateCollectionView:(BOOL)view completion:(id)completion;
- (void)_collapseItem:(id)item;
- (void)_completeFocusAfterScrollingWithSuccess:(BOOL)success;
- (void)_deselectItemAtIndexPath:(id)path;
- (void)_didCompleteInitialUpdate;
- (void)_expandItem:(id)item;
- (void)_focusAfterScrollingAnimationDidEnd;
- (void)_focusAfterScrollingCellWillDisplay;
- (void)_focusCellAtVisibleSelectedIdentifierPath:(id)path completion:(id)completion;
- (void)_loadingTimerDidFire;
- (void)_resetSnapshotUpdateState;
- (void)_selectItemAtIdentifierPath:(id)path notifyDelegate:(BOOL)delegate completion:(id)completion;
- (void)_setFocusAfterScrollingIdentifierPath:(id)path completion:(id)completion;
- (void)_setNeedsSnapshotUpdatesForSectionControllers:(id)controllers animated:(BOOL)animated;
- (void)_setupSectionControllers;
- (void)_updateContentInjectionWithSelectedIndexPath:(id)path;
- (void)_updateFocusAfterScrolling;
- (void)_updateLoadingTimer;
- (void)clearSelectionWithReason:(id)reason;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)downArrowPressed:(id)pressed;
- (void)keyboardProxyingView:(id)view pressesBegan:(id)began withEvent:(id)event;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sectionController:(id)controller deselectItemAtIdentifierPath:(id)path;
- (void)sectionController:(id)controller setNeedsApplySnapshotAnimated:(BOOL)animated;
- (void)setActive:(BOOL)active;
- (void)setKeyboardProxy:(id)proxy;
- (void)showCollection:(id)collection;
- (void)upArrowPressed:(id)pressed;
- (void)updateIfNeeded;
@end

@implementation HomeOutlineRootController

- (KeyboardProxyingView)keyboardProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardProxy);

  return WeakRetained;
}

- (id)_storage
{
  storage = self->_storage;
  if (!storage)
  {
    v4 = objc_alloc_init(HomeStorage);
    v5 = self->_storage;
    self->_storage = v4;

    storage = self->_storage;
  }

  return storage;
}

- (void)downArrowPressed:(id)pressed
{
  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  v7 = [collectionView numberOfItemsInSection:{objc_msgSend(firstObject, "section")}];
  if (v7)
  {
    v8 = v7;
    v9 = [firstObject copy];
    if (v9)
    {
      while (1)
      {
        v10 = v9;
        v11 = [v9 row];
        if (v11 >= v8)
        {
          break;
        }

        v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v11 + 1, [v9 section]);

        delegate = [collectionView delegate];
        v13 = [delegate collectionView:collectionView shouldHighlightItemAtIndexPath:v9];

        if (v13)
        {
          v14 = v9;
          if (v14)
          {
            goto LABEL_9;
          }
        }
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
LABEL_9:
      v15 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v14];
      if (v15)
      {
        [(HomeOutlineRootController *)self _selectItemAtIdentifierPath:v15 notifyDelegate:1 completion:0];
      }
    }
  }
}

- (void)upArrowPressed:(id)pressed
{
  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if ([collectionView numberOfItemsInSection:{objc_msgSend(firstObject, "section")}])
  {
    v7 = [firstObject copy];
    if (v7)
    {
      while (1)
      {
        v8 = v7;
        v9 = [v7 row];
        if (v9 < 2)
        {
          break;
        }

        v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v9 - 1, [v7 section]);

        delegate = [collectionView delegate];
        v11 = [delegate collectionView:collectionView shouldHighlightItemAtIndexPath:v7];

        if (v11)
        {
          v12 = v7;
          if (v12)
          {
            goto LABEL_9;
          }
        }
      }

      v12 = 0;
    }

    else
    {
      v12 = 0;
LABEL_9:
      v13 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v12];
      if (v13)
      {
        [(HomeOutlineRootController *)self _selectItemAtIdentifierPath:v13 notifyDelegate:1 completion:0];
      }
    }
  }
}

- (void)keyboardProxyingView:(id)view pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v6 = [beganCopy count] == 1;
  v7 = beganCopy;
  if (v6)
  {
    anyObject = [beganCopy anyObject];
    v9 = [anyObject key];
    keyCode = [v9 keyCode];

    if (keyCode == 82)
    {
      [(HomeOutlineRootController *)self upArrowPressed:anyObject];
    }

    else
    {
      v11 = [anyObject key];
      keyCode2 = [v11 keyCode];

      if (keyCode2 == 81)
      {
        [(HomeOutlineRootController *)self downArrowPressed:anyObject];
      }
    }

    v7 = beganCopy;
  }
}

- (UIScrollView)hoverScrollView
{
  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];

  return collectionView;
}

- (void)_completeFocusAfterScrollingWithSuccess:(BOOL)success
{
  if (self->_focusAfterScrollingIndentifierPath)
  {
    successCopy = success;
    v8 = objc_retainBlock(self->_focusAfterScrollingCompletion);
    focusAfterScrollingIndentifierPath = self->_focusAfterScrollingIndentifierPath;
    self->_focusAfterScrollingIndentifierPath = 0;

    focusAfterScrollingCompletion = self->_focusAfterScrollingCompletion;
    self->_focusAfterScrollingCompletion = 0;

    v7 = v8;
    *&self->_needsFocusAfterScrollingAnimationDidEnd = 0;
    if (v8)
    {
      (*(v8 + 2))(v8, successCopy);
      v7 = v8;
    }
  }
}

- (void)_focusAfterScrollingCellWillDisplay
{
  if (self->_focusAfterScrollingIndentifierPath)
  {
    self->_needsFocusAfterScrollingCellWillDisplay = 0;
    objc_initWeak(&location, self);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1009AA078;
    v2[3] = &unk_101661B98;
    objc_copyWeak(&v3, &location);
    dispatch_async(&_dispatch_main_q, v2);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

- (void)_focusAfterScrollingAnimationDidEnd
{
  if (self->_focusAfterScrollingIndentifierPath)
  {
    self->_needsFocusAfterScrollingAnimationDidEnd = 0;
    [(HomeOutlineRootController *)self _updateFocusAfterScrolling];
  }
}

- (void)_updateFocusAfterScrolling
{
  if (self->_focusAfterScrollingIndentifierPath && !self->_needsFocusAfterScrollingAnimationDidEnd && !self->_needsFocusAfterScrollingCellWillDisplay)
  {
    [HomeOutlineRootController _focusCellAtVisibleSelectedIdentifierPath:"_focusCellAtVisibleSelectedIdentifierPath:completion:" completion:?];
  }
}

- (void)_setFocusAfterScrollingIdentifierPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  if (self->_focusAfterScrollingIndentifierPath)
  {
    [(HomeOutlineRootController *)self _completeFocusAfterScrollingWithSuccess:0];
    focusAfterScrollingIndentifierPath = self->_focusAfterScrollingIndentifierPath;
  }

  else
  {
    focusAfterScrollingIndentifierPath = 0;
  }

  self->_focusAfterScrollingIndentifierPath = pathCopy;
  v8 = pathCopy;

  v9 = objc_retainBlock(completionCopy);
  focusAfterScrollingCompletion = self->_focusAfterScrollingCompletion;
  self->_focusAfterScrollingCompletion = v9;
}

- (void)_focusCellAtVisibleSelectedIdentifierPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v9 = sub_1000410AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v22 = 138412802;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = pathCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@, identifier path = %@", &v22, 0x20u);
  }

  v13 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:pathCopy];
  if (v13)
  {
    _selectedIdentifierPaths = [(HomeOutlineRootController *)self _selectedIdentifierPaths];
    if (([_selectedIdentifierPaths containsObject:pathCopy] & 1) == 0)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_21;
    }

    configuration = [(HomeOutlineRootController *)self configuration];
    collectionView = [configuration collectionView];
    v17 = [collectionView cellForItemAtIndexPath:v13];

    if (!v17)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_20;
    }

    _focusedIdentifierPath = [(HomeOutlineRootController *)self _focusedIdentifierPath];
    v19 = _focusedIdentifierPath;
    if (_focusedIdentifierPath == pathCopy || [_focusedIdentifierPath isEqual:pathCopy])
    {
      if (completionCopy)
      {
        v20 = 1;
LABEL_18:
        completionCopy[2](completionCopy, v20);
      }
    }

    else
    {
      becomeFirstResponder = [v17 becomeFirstResponder];
      if (completionCopy)
      {
        v20 = becomeFirstResponder;
        goto LABEL_18;
      }
    }

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_22:
}

- (id)_focusedIdentifierPath
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sectionControllers;
  focusedIdentifierPath2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (focusedIdentifierPath2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != focusedIdentifierPath2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        focusedIdentifierPath = [v6 focusedIdentifierPath];

        if (focusedIdentifierPath)
        {
          focusedIdentifierPath2 = [v6 focusedIdentifierPath];
          goto LABEL_11;
        }
      }

      focusedIdentifierPath2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (focusedIdentifierPath2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return focusedIdentifierPath2;
}

- (void)clearSelectionWithReason:(id)reason
{
  reasonCopy = reason;
  _selectedIdentifierPaths = [(HomeOutlineRootController *)self _selectedIdentifierPaths];
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v19 = reasonCopy;
    v8 = objc_opt_class();
    v18 = v8;
    v9 = NSStringFromSelector(a2);
    configuration = [(HomeOutlineRootController *)self configuration];
    collectionView = [configuration collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v12 = [indexPathsForSelectedItems componentsJoinedByString:{@", "}];
    allObjects = [_selectedIdentifierPaths allObjects];
    v14 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138413314;
    v21 = v8;
    reasonCopy = v19;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@ selected index paths = [%@], selected identifier paths = [%@], deselection reason = %@", buf, 0x34u);
  }

  if ([_selectedIdentifierPaths count] && objc_msgSend(_selectedIdentifierPaths, "count") <= 1)
  {
    anyObject = [_selectedIdentifierPaths anyObject];
    v16 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:anyObject];
    [v16 clearSelectionWithReason:reasonCopy];
  }
}

- (void)_deselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:pathCopy];
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v17 = 138413058;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@ index path = %@, identifier path = %@", &v17, 0x2Au);
  }

  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v14 = [indexPathsForSelectedItems containsObject:pathCopy];

  if (v14)
  {
    configuration2 = [(HomeOutlineRootController *)self configuration];
    collectionView2 = [configuration2 collectionView];
    [collectionView2 deselectItemAtIndexPath:pathCopy animated:1];

    [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:0];
  }
}

- (void)_selectItemAtIdentifierPath:(id)path notifyDelegate:(BOOL)delegate completion:(id)completion
{
  delegateCopy = delegate;
  pathCopy = path;
  completionCopy = completion;
  [(HomeOutlineRootController *)self updateIfNeeded];
  v11 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:pathCopy];
  v12 = sub_1000410AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138413058;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = pathCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ %@ index path = %@, identifier path = %@", buf, 0x2Au);
  }

  if (pathCopy && v11)
  {
    configuration = [(HomeOutlineRootController *)self configuration];
    collectionView = [configuration collectionView];

    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v19 = [indexPathsForVisibleItems containsObject:v11];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    [collectionView selectItemAtIndexPath:v11 animated:1 scrollPosition:v20];
    if (delegateCopy)
    {
      [(NSTimer *)self->_keyboardSelectionTimer invalidate];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1009AABDC;
      v23[3] = &unk_101630DE0;
      v24 = collectionView;
      v25 = v11;
      v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v23 block:0.2];
      keyboardSelectionTimer = self->_keyboardSelectionTimer;
      self->_keyboardSelectionTimer = v21;
    }

    else
    {
      [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:v11];
      [(HomeOutlineRootController *)self _setFocusAfterScrollingIdentifierPath:pathCopy completion:completionCopy];
      if (v19)
      {
        [(HomeOutlineRootController *)self _updateFocusAfterScrolling];
      }

      else
      {
        *&self->_needsFocusAfterScrollingAnimationDidEnd = 257;
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)_selectedIdentifierPaths
{
  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009AAD1C;
  v9[3] = &unk_101657A50;
  v9[4] = self;
  v6 = sub_100021DB0(indexPathsForSelectedItems, v9);
  v7 = [NSSet setWithArray:v6];

  return v7;
}

- (void)showCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy handlerType] == 3)
  {
    [(HomeOutlineSuggestionsSectionController *)self->_suggestionsSectionController showSharedCollection:collectionCopy];
  }

  else
  {
    [(HomeOutlineCollectionsSectionController *)self->_collectionsSectionController showCollection:collectionCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  configuration = [(HomeOutlineRootController *)self configuration];
  homeUpdateDelegate = [configuration homeUpdateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    configuration2 = [(HomeOutlineRootController *)self configuration];
    homeUpdateDelegate2 = [configuration2 homeUpdateDelegate];
    [homeUpdateDelegate2 scrollViewDidScroll:scrollCopy];
  }

  [(HomeOutlineRootController *)self _notifyCellHoverObservers];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v11 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:pathCopy];
  v12 = sub_1000410AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = pathCopy;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will display cell at index path: %@, identifier path: %@", &v14, 0x16u);
  }

  v13 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v11];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  }

  if (v11 == self->_focusAfterScrollingIndentifierPath || [(IdentifierPath *)v11 isEqual:?])
  {
    [(HomeOutlineRootController *)self _focusAfterScrollingCellWillDisplay];
  }
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  viewCopy = view;
  endCopy = end;
  self->_hasDropSession = 0;
  dropTargetSectionController = self->_dropTargetSectionController;
  self->_dropTargetSectionController = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_sectionControllers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 collectionView:viewCopy dropSessionDidEnd:{endCopy, v15}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  viewCopy = view;
  exitCopy = exit;
  self->_hasDropSession = 0;
  dropTargetSectionController = self->_dropTargetSectionController;
  self->_dropTargetSectionController = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_sectionControllers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 collectionView:viewCopy dropSessionDidExit:{exitCopy, v15}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  v9 = sub_1000410AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    destinationIndexPath = [coordinatorCopy destinationIndexPath];
    v12 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:destinationIndexPath];
    v13 = sub_1000410AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      v19 = 138413058;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = destinationIndexPath;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ %@, indexPath = %@, identifierPath = %@", &v19, 0x2Au);
    }
  }

  destinationIndexPath2 = [coordinatorCopy destinationIndexPath];
  v18 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:destinationIndexPath2];

  if (objc_opt_respondsToSelector())
  {
    [v18 collectionView:viewCopy performDropWithCoordinator:coordinatorCopy];
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  v12 = sub_1000410AC();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:pathCopy];
    v15 = sub_1000410AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromSelector(a2);
      v26 = 138413058;
      v27 = v16;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = pathCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ %@, indexPath = %@, identifierPath = %@", &v26, 0x2Au);
    }
  }

  v19 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
  dropTargetSectionController = self->_dropTargetSectionController;
  p_dropTargetSectionController = &self->_dropTargetSectionController;
  if (v19 != dropTargetSectionController)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(HomeOutlineSectionControllerSubclassing *)*p_dropTargetSectionController collectionView:viewCopy dropSessionDidUpdate:updateCopy withDestinationIndexPath:0];
    }

    objc_storeStrong(p_dropTargetSectionController, v19);
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [(HomeOutlineSectionControllerSubclassing *)v19 collectionView:viewCopy dropSessionDidUpdate:updateCopy withDestinationIndexPath:pathCopy];
  }

  else
  {
    v23 = [[UICollectionViewDropProposal alloc] initWithDropOperation:0];
  }

  v24 = v23;

  return v24;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  viewCopy = view;
  enterCopy = enter;
  self->_hasDropSession = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_sectionControllers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 collectionView:viewCopy dropSessionDidEnter:{enterCopy, v14}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  localDragSession = [session localDragSession];
  v5 = localDragSession != 0;

  return v5;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  viewCopy = view;
  endCopy = end;
  if (objc_opt_respondsToSelector())
  {
    [(HomeOutlineSectionControllerSubclassing *)self->_draggingSectionController collectionView:viewCopy dragSessionDidEnd:endCopy];
  }

  draggingSectionController = self->_draggingSectionController;
  self->_draggingSectionController = 0;

  v8 = +[MapsDragAndDropManager sharedManager];
  [v8 setDragSession:0];
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  viewCopy = view;
  beginCopy = begin;
  v7 = +[MapsDragAndDropManager sharedManager];
  [v7 setDragSession:beginCopy];

  v8 = [MapsDragLocalContext alloc];
  window = [viewCopy window];
  windowScene = [window windowScene];
  v11 = [(MapsDragLocalContext *)v8 initWithWindowScene:windowScene];
  [beginCopy setLocalContext:v11];

  if (objc_opt_respondsToSelector())
  {
    [(HomeOutlineSectionControllerSubclassing *)self->_draggingSectionController collectionView:viewCopy dragSessionWillBegin:beginCopy];
  }
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  v11 = +[MapsDragAndDropManager sharedManager];
  canStartNewDrag = [v11 canStartNewDrag];

  if (canStartNewDrag)
  {
    v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
    v14 = [v13 collectionView:viewCopy itemsForBeginningDragSession:sessionCopy atIndexPath:pathCopy];
    if ([v14 count])
    {
      objc_storeStrong(&self->_draggingSectionController, v13);
    }
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  v6 = [(HomeOutlineRootController *)self configuration:view];
  collectionView = [v6 collectionView];
  [collectionView setActivityItemsConfiguration:0];
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = identifier;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v18 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v8];
  v9 = [(HomeOutlineRootController *)self _nodeSnapshotAtIdentifierPath:v8];

  if (v9)
  {
    v10 = [v18 shareItemSourceForSnapshot:v9];
    if (v10)
    {
      v11 = [UIActivityItemsConfiguration alloc];
      activityProviders = [v10 activityProviders];
      applicationActivities = [v10 applicationActivities];
      v14 = [v11 _initWithActivityItems:activityProviders applicationActivities:applicationActivities];

      excludedActivityTypes = [v10 excludedActivityTypes];
      [v14 _setExcludedActivityTypes:excludedActivityTypes];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  configuration = [(HomeOutlineRootController *)self configuration];
  collectionView = [configuration collectionView];
  [collectionView setActivityItemsConfiguration:v14];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count] == 1)
  {
    firstObject = [pathsCopy firstObject];
    v12 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:firstObject];

    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 collectionView:viewCopy contextMenuConfigurationForItemsAtIndexPaths:pathsCopy point:{x, y}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_sectionControllers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 collectionView:viewCopy didUpdateFocusInContext:contextCopy withAnimationCoordinator:{coordinatorCopy, v17}];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 collectionView:viewCopy canFocusItemAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = sub_1000410AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@", &v14, 0x20u);
  }

  [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:0];
  v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:viewCopy didDeselectItemAtIndexPath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = sub_1000410AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@", &v14, 0x20u);
  }

  [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:pathCopy];
  v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 collectionView:viewCopy shouldHighlightItemAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  v11 = sub_1000410AC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v27 = 138412546;
    v28 = pathCopy;
    v29 = 2112;
    v30 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dequeuing cell at index path: %@, identifier path: %@", &v27, 0x16u);
  }

  v12 = identifierCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HomeOutlineRootController *)self _nodeSnapshotAtIdentifierPath:v14];
  viewModel = [v15 viewModel];
  cellRegistration = [viewModel cellRegistration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = cellRegistration;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = sub_1000410AC();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Dequeuing cell with cell registration :%@", &v27, 0xCu);
  }

  if (v19)
  {
    v21 = [viewCopy dequeueConfiguredReusableCellWithRegistration:v19 forIndexPath:pathCopy item:v12];
    firstIdentifier = [v14 firstIdentifier];
    v23 = [firstIdentifier stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];
    [v21 setAxSectionIdentifier:v23];

    viewModelConfigurationHandler = [v19 viewModelConfigurationHandler];
    (viewModelConfigurationHandler)[2](viewModelConfigurationHandler, v21, pathCopy, v15);

    [v21 setHoverSource:self];
    if ([v14 length] >= 2)
    {
      v25 = [v14 length] - 2;
    }

    else
    {
      v25 = 0;
    }

    [v21 setIndentationLevel:v25];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)sectionController:(id)controller deselectItemAtIdentifierPath:(id)path
{
  v5 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:path];
  if (v5)
  {
    v6 = v5;
    [(HomeOutlineRootController *)self _deselectItemAtIndexPath:v5];
    v5 = v6;
  }
}

- (BOOL)isCollectionViewFocusedWithSectionController:(id)controller
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sectionControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        focusedIdentifierPath = [*(*(&v9 + 1) + 8 * i) focusedIdentifierPath];

        if (focusedIdentifierPath)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)isCollectionViewProxyFocusedWithSectionController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardProxy);
  shouldAppearFocused = [WeakRetained shouldAppearFocused];

  return shouldAppearFocused;
}

- (void)sectionController:(id)controller setNeedsApplySnapshotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Apply Snapshot for section controller: %@", buf, 0xCu);
  }

  v9 = controllerCopy;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:v8 animated:animatedCopy];
}

- (void)_updateContentInjectionWithSelectedIndexPath:(id)path
{
  if (path)
  {
    v4 = [(HomeOutlineRootController *)self _nodeSnapshotAtIndexPath:?];
    v5 = v4;
    if (v4)
    {
      identifierPath = [v4 identifierPath];
      v7 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:identifierPath];

      v12 = [v7 contentInjectorForSnapshot:v5];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  configuration = [(HomeOutlineRootController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = actionCoordinator;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setSidebarContentInjector:v12];
}

- (void)_didCompleteInitialUpdate
{
  if (self->_loadingState == 1)
  {
    self->_loadingState = 2;
    v3 = sub_1000410AC();
    v4 = v3;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "HomeListSectionLoading", "", buf, 2u);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_sectionControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) didApplyInitialSectionSnapshot];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_applySnapshotUpdatesInSectionControllers:(id)controllers animateCells:(BOOL)cells animateCollectionView:(BOOL)view completion:(id)completion
{
  viewCopy = view;
  cellsCopy = cells;
  controllersCopy = controllers;
  completionCopy = completion;
  v11 = sub_1000410AC();
  v12 = v11;
  signpostID = self->_signpostID;
  selfCopy = self;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    if (cellsCopy)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    if (viewCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    *buf = 138412546;
    v157 = v15;
    v158 = 2112;
    v159 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "ApplySnapshot", "animateCells = %@, animateCollectionView = %@", buf, 0x16u);
  }

  v127 = viewCopy;
  if (viewCopy)
  {
    configuration = [(HomeOutlineRootController *)self configuration];
    collectionView = [configuration collectionView];
    [collectionView alpha];
    v21 = v20;

    configuration2 = [(HomeOutlineRootController *)self configuration];
    collectionView2 = [configuration2 collectionView];
    [collectionView2 setAlpha:0.0];

    v155[0] = _NSConcreteStackBlock;
    v155[1] = 3221225472;
    v155[2] = sub_1009AD7EC;
    v155[3] = &unk_101661650;
    v155[4] = self;
    v155[5] = v21;
    v153[0] = _NSConcreteStackBlock;
    v153[1] = 3221225472;
    v153[2] = sub_1009AD858;
    v153[3] = &unk_10165F438;
    v154 = completionCopy;
    [UIView animateWithDuration:2 delay:v155 options:v153 animations:0.25 completion:0.0];
  }

  v24 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource snapshotForSection:@"root"];
  v25 = sub_1000410AC();
  v26 = v25;
  v27 = self->_signpostID;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v27, "BuildSectionSnapshot", "", buf, 2u);
  }

  v135 = +[NSMutableArray array];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v28 = self->_sectionControllers;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v149 objects:v178 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v150;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v150 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v149 + 1) + 8 * i);
        if ([controllersCopy containsObject:v33])
        {
          [v33 invalidateSectionSnapshot];
        }

        sectionSnapshot = [v33 sectionSnapshot];
        childSnapshots = [sectionSnapshot childSnapshots];
        v36 = [childSnapshots count];

        if (v36)
        {
          [v135 addObject:sectionSnapshot];
        }
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v149 objects:v178 count:16];
    }

    while (v30);
  }

  v134 = controllersCopy;

  v37 = selfCopy->_rootSnapshot;
  v38 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
  v39 = +[IdentifierPath identifierPath];
  v40 = +[HomeOutlineHiddenViewModel sharedViewModel];
  v41 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v38 initWithIdentifierPath:v39 viewModel:v40 childSnapshots:v135 expanded:1];
  rootSnapshot = selfCopy->_rootSnapshot;
  selfCopy->_rootSnapshot = v41;

  v128 = v37;
  v43 = [v24 _maps_applyChangesWithNewRootSnapshot:selfCopy->_rootSnapshot oldRootSnapshot:v37];
  v44 = sub_1000410AC();
  v45 = v44;
  v46 = selfCopy->_signpostID;
  if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v46, "BuildSectionSnapshot", "", buf, 2u);
  }

  _focusedIdentifierPath = [(HomeOutlineRootController *)selfCopy _focusedIdentifierPath];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  deletedItems = [v43 deletedItems];
  v48 = [deletedItems countByEnumeratingWithState:&v145 objects:v177 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v146;
    do
    {
      for (j = 0; j != v49; j = j + 1)
      {
        if (*v146 != v50)
        {
          objc_enumerationMutation(deletedItems);
        }

        identifierPath = [*(*(&v145 + 1) + 8 * j) identifierPath];
        v53 = identifierPath;
        if (identifierPath == _focusedIdentifierPath)
        {
        }

        else
        {
          v54 = [identifierPath isEqual:?];

          if (!v54)
          {
            continue;
          }
        }

        configuration3 = [(HomeOutlineRootController *)selfCopy configuration];
        actionCoordinator = [configuration3 actionCoordinator];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = actionCoordinator;
        }

        else
        {
          v57 = 0;
        }

        v58 = v57;

        [v58 makeMapViewFirstResponder];
      }

      v49 = [deletedItems countByEnumeratingWithState:&v145 objects:v177 count:16];
    }

    while (v49);
  }

  v132 = completionCopy;
  v133 = v24;

  v59 = sub_1000410AC();
  v60 = v59;
  v61 = selfCopy;
  v62 = selfCopy->_signpostID;
  if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, v62, "ReloadCells", "", buf, 2u);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v131 = v43;
  reloadedItems = [v43 reloadedItems];
  v64 = [reloadedItems countByEnumeratingWithState:&v141 objects:v176 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v142;
    do
    {
      for (k = 0; k != v65; k = k + 1)
      {
        if (*v142 != v66)
        {
          objc_enumerationMutation(reloadedItems);
        }

        v68 = *(*(&v141 + 1) + 8 * k);
        identifierPath2 = [v68 identifierPath];
        v70 = [(HomeOutlineRootController *)v61 _indexPathForIdentifierPath:identifierPath2];

        if (v70)
        {
          configuration4 = [(HomeOutlineRootController *)v61 configuration];
          collectionView3 = [configuration4 collectionView];
          v73 = [collectionView3 cellForItemAtIndexPath:v70];

          if (v73)
          {
            viewModel = [v68 viewModel];
            cellRegistration = [viewModel cellRegistration];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = cellRegistration;
            }

            else
            {
              v76 = 0;
            }

            v77 = v76;

            if (v77)
            {
              [v77 cellClass];
              if (objc_opt_isKindOfClass())
              {
                viewModelConfigurationHandler = [v77 viewModelConfigurationHandler];
                (viewModelConfigurationHandler)[2](viewModelConfigurationHandler, v73, v70, v68);
              }
            }

            v61 = selfCopy;
          }
        }
      }

      v65 = [reloadedItems countByEnumeratingWithState:&v141 objects:v176 count:16];
    }

    while (v65);
  }

  v79 = sub_1000410AC();
  v80 = v79;
  v81 = v61->_signpostID;
  if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_END, v81, "ReloadCells", "", buf, 2u);
  }

  v82 = sub_1000410AC();
  v83 = v82;
  v84 = v61->_signpostID;
  v86 = v131;
  v85 = v132;
  if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_BEGIN, v84, "ApplySectionSnapshot", "", buf, 2u);
  }

  if ([v131 hasChanges])
  {
    diffableDataSource = selfCopy->_diffableDataSource;
    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_1009AD870;
    v138[3] = &unk_1016610E0;
    v140 = v127;
    v139 = v132;
    v88 = diffableDataSource;
    v61 = selfCopy;
    [(UICollectionViewDiffableDataSource *)v88 applySnapshot:v133 toSection:@"root" animatingDifferences:cellsCopy completion:v138];
  }

  else if (v132)
  {
    v132[2](v132);
  }

  v89 = sub_1000410AC();
  v90 = v89;
  v91 = v61->_signpostID;
  if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_INTERVAL_END, v91, "ApplySectionSnapshot", "", buf, 2u);
  }

  v92 = sub_1000410AC();
  v93 = os_log_type_enabled(v92, OS_LOG_TYPE_INFO);

  if (v93)
  {
    v123 = sub_100021DB0(v134, &stru_101630CD8);
    reloadedItems2 = [v131 reloadedItems];
    v122 = sub_100021DB0(reloadedItems2, &stru_101630D18);

    insertedItems = [v131 insertedItems];
    v96 = sub_100021DB0(insertedItems, &stru_101630D38);

    deletedItems2 = [v131 deletedItems];
    v98 = sub_100021DB0(deletedItems2, &stru_101630D58);

    movedItems = [v131 movedItems];
    v126 = sub_100021DB0(movedItems, &stru_101630D78);

    expandedItems = [v131 expandedItems];
    v125 = sub_100021DB0(expandedItems, &stru_101630D98);

    collapsedItems = [v131 collapsedItems];
    v124 = sub_100021DB0(collapsedItems, &stru_101630DB8);

    v102 = sub_1000410AC();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = objc_opt_class();
      v120 = NSStringFromClass(v103);
      v121 = v98;
      if (cellsCopy)
      {
        v104 = @"YES";
      }

      else
      {
        v104 = @"NO";
      }

      v105 = v104;
      v119 = v105;
      if (v127)
      {
        v106 = @"YES";
      }

      else
      {
        v106 = @"NO";
      }

      v107 = v106;
      v108 = [v123 componentsJoinedByString:{@", "}];
      v109 = [v122 componentsJoinedByString:{@", "}];
      v110 = [v96 componentsJoinedByString:{@", "}];
      v111 = [v121 componentsJoinedByString:{@", "}];
      [v126 componentsJoinedByString:{@", "}];
      v112 = v130 = v96;
      v113 = [v125 componentsJoinedByString:{@", "}];
      v114 = [v124 componentsJoinedByString:{@", "}];
      *buf = 138414594;
      v157 = v120;
      v158 = 2112;
      v159 = v105;
      v160 = 2112;
      v161 = v107;
      v162 = 2112;
      v163 = v108;
      v164 = 2112;
      v165 = v109;
      v115 = v109;
      v166 = 2112;
      v167 = v110;
      v168 = 2112;
      v169 = v111;
      v170 = 2112;
      v171 = v112;
      v172 = 2112;
      v173 = v113;
      v174 = 2112;
      v175 = v114;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "%@ applySnapshot {\n\tanimateCells: %@\n\tanimateCollectionView: %@\n\tupdatedSections: [%@]\n\treloads: [%@]\n\tinsertions: [%@]\n\tdeletions: [%@]\n\tmoves: [%@]\n\texpansions: [%@]\n\tcollapses: [%@]\n}", buf, 0x66u);

      v86 = v131;
      v96 = v130;

      v98 = v121;
      v85 = v132;
    }
  }

  v116 = sub_1000410AC();
  v117 = v116;
  v118 = selfCopy->_signpostID;
  if (v118 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v117, OS_SIGNPOST_INTERVAL_END, v118, "ApplySnapshot", "", buf, 2u);
  }
}

- (void)updateIfNeeded
{
  if ([(HomeOutlineRootController *)self _needsSnapshotUpdate])
  {
    appliedInitialUpdate = self->_appliedInitialUpdate;
    if (appliedInitialUpdate)
    {
      v4 = [NSSet setWithSet:self->_sectionControllersToUpdate];
      v5 = 0;
      animateNextUpdate = self->_animateNextUpdate;
    }

    else
    {
      self->_appliedInitialUpdate = 1;
      v4 = [NSSet setWithArray:self->_sectionControllers];
      animateNextUpdate = 0;
      v5 = self->_animateNextUpdate;
    }

    objc_initWeak(buf, self);
    [(HomeOutlineRootController *)self _resetSnapshotUpdateState];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1009ADD64;
    v19 = &unk_101661368;
    v21 = !appliedInitialUpdate;
    objc_copyWeak(&v20, buf);
    [(HomeOutlineRootController *)self _applySnapshotUpdatesInSectionControllers:v4 animateCells:animateNextUpdate animateCollectionView:v5 completion:&v16];
    v14 = [(HomeOutlineRootController *)self configuration:v16];
    homeUpdateDelegate = [v14 homeUpdateDelegate];
    [homeUpdateDelegate homeDidUpdateAnimated:animateNextUpdate || v5];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v4 = sub_1000410AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_active)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      if ([(HomeOutlineRootController *)self _isLoading])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      v11 = [(NSMutableSet *)self->_sectionControllersToUpdate count];
      if (self->_appliedInitialUpdate)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      *buf = 138413058;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Snapshot update is not needed because _action: %@, _loading: %@, _sectionControllersToUpdate count: %ld, _appliedInitialUpdate: %@", buf, 0x2Au);
    }
  }
}

- (BOOL)_needsSnapshotUpdate
{
  if (self->_active)
  {
    if ([(HomeOutlineRootController *)self _isLoading])
    {
      return 0;
    }

    else
    {
      return [(NSMutableSet *)self->_sectionControllersToUpdate count]|| !self->_appliedInitialUpdate;
    }
  }

  else
  {
    return 0;
  }
}

- (void)_setNeedsSnapshotUpdatesForSectionControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  if (self->_active)
  {
    v7 = sub_1000410AC();
    v8 = v7;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, signpostID, "SetNeedsApplySnapshot", "", &v23, 2u);
    }

    [(HomeOutlineRootController *)self _updateLoadingTimer];
    if (![(HomeOutlineRootController *)self _isLoading])
    {
      if ([(HomeOutlineRootController *)self _needsSnapshotUpdate]&& self->_animateNextUpdate != animatedCopy && self->_appliedInitialUpdate)
      {
        [(HomeOutlineRootController *)self updateIfNeeded];
      }

      self->_animateNextUpdate = animatedCopy;
      [(NSMutableSet *)self->_sectionControllersToUpdate addObjectsFromArray:controllersCopy];
      configuration = [(HomeOutlineRootController *)self configuration];
      homeUpdateDelegate = [configuration homeUpdateDelegate];
      [homeUpdateDelegate homeSetNeedsUpdate];
      goto LABEL_16;
    }

    v10 = sub_1000410AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v23 = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ skipping applySnapshot because initial data is still loading", &v23, 0xCu);
    }

    v13 = sub_1000410AC();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      _loadingDataProviders = [(HomeOutlineRootController *)self _loadingDataProviders];
      v16 = sub_100021DB0(_loadingDataProviders, &stru_101630C98);
      configuration = [NSSet setWithArray:v16];

      homeUpdateDelegate = sub_1000410AC();
      if (os_log_type_enabled(homeUpdateDelegate, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        allObjects = [configuration allObjects];
        v22 = [allObjects componentsJoinedByString:{@", "}];
        v23 = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, homeUpdateDelegate, OS_LOG_TYPE_INFO, "%@ skipping applySnapshot because initial data has not loaded in data providers [%@]", &v23, 0x16u);
      }

LABEL_16:
    }
  }
}

- (void)_resetSnapshotUpdateState
{
  self->_animateNextUpdate = 0;
  v3 = +[NSMutableSet set];
  sectionControllersToUpdate = self->_sectionControllersToUpdate;
  self->_sectionControllersToUpdate = v3;
}

- (void)_loadingTimerDidFire
{
  [(NSTimer *)self->_loadingTimer invalidate];
  if (self->_active)
  {
    sectionControllers = self->_sectionControllers;

    [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:sectionControllers animated:1];
  }
}

- (void)_updateLoadingTimer
{
  _loadingDataProviders = [(HomeOutlineRootController *)self _loadingDataProviders];
  v4 = [_loadingDataProviders count];

  loadingTimer = self->_loadingTimer;
  if (v4)
  {
    if (loadingTimer)
    {
      return;
    }

    GEOConfigGetDouble();
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_loadingTimerDidFire" selector:0 userInfo:0 repeats:?];
  }

  else
  {
    [(NSTimer *)loadingTimer invalidate];
    v6 = 0;
  }

  v7 = self->_loadingTimer;
  self->_loadingTimer = v6;
}

- (BOOL)_isLoading
{
  _loadingDataProviders = [(HomeOutlineRootController *)self _loadingDataProviders];
  v4 = [_loadingDataProviders count] != 0;

  return v4 & [(NSTimer *)self->_loadingTimer isValid];
}

- (id)_loadingDataProviders
{
  v3 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        dataProviders = [v9 dataProviders];
        v11 = [dataProviders countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(dataProviders);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if (([v15 hasInitialData] & 1) == 0)
              {
                [v3 addObject:v15];
              }
            }

            v12 = [dataProviders countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (void)setKeyboardProxy:(id)proxy
{
  proxyCopy = proxy;
  WeakRetained = objc_loadWeakRetained(&self->_keyboardProxy);
  [WeakRetained setDelegate:0];

  [proxyCopy setDelegate:self];
  objc_storeWeak(&self->_keyboardProxy, proxyCopy);

  sectionControllers = self->_sectionControllers;

  [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:sectionControllers animated:1];
}

- (id)_nodeSnapshotAtIdentifierPath:(id)path
{
  if (path)
  {
    v4 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)self->_rootSnapshot nodeSnapshotAtIdentifierPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nodeSnapshotAtIndexPath:(id)path
{
  v4 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:path];
  v5 = [(HomeOutlineRootController *)self _nodeSnapshotAtIdentifierPath:v4];

  return v5;
}

- (id)_indexPathForIdentifierPath:(id)path
{
  if (path)
  {
    v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierPathForIndexPath:(id)path
{
  if (path)
  {
    v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sectionControllerForIndexPath:(id)path
{
  v4 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:path];
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v4];

  return v5;
}

- (id)_sectionControllerForIdentifierPath:(id)path
{
  if (path)
  {
    sectionControllersByIdentifier = self->_sectionControllersByIdentifier;
    firstIdentifier = [path firstIdentifier];
    v5 = [(NSDictionary *)sectionControllersByIdentifier objectForKeyedSubscript:firstIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_collapseItem:(id)item
{
  itemCopy = item;
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:itemCopy];
  [v5 collapseElementAtIdentifierPath:itemCopy];
}

- (void)_expandItem:(id)item
{
  itemCopy = item;
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:itemCopy];
  [v5 expandElementAtIdentifierPath:itemCopy];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if (!self->_loadingState)
  {
    self->_loadingState = 1;
    v6 = sub_1000410AC();
    v7 = v6;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HomeListSectionLoading", "", buf, 2u);
    }
  }

  if (self->_active != activeCopy)
  {
    self->_active = activeCopy;
    v9 = sub_1000410AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = @"NO";
      if (activeCopy)
      {
        v13 = @"YES";
      }

      v14 = v13;
      *buf = 138412802;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@", buf, 0x20u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = self->_sectionControllers;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19) setActive:{self->_active, v20}];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }

    if (activeCopy)
    {
      [(HomeOutlineRootController *)self _resetSnapshotUpdateState];
      [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:self->_sectionControllers animated:0];
    }

    [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:0, v20];
  }
}

- (UICollectionViewDataSource)dataSource
{
  diffableDataSource = self->_diffableDataSource;
  if (!diffableDataSource)
  {
    v4 = [UICollectionViewDiffableDataSource alloc];
    configuration = [(HomeOutlineRootController *)self configuration];
    collectionView = [configuration collectionView];
    v7 = sub_1007CDFC8(self);
    v8 = [v4 initWithCollectionView:collectionView cellProvider:v7];
    v9 = self->_diffableDataSource;
    self->_diffableDataSource = v8;

    objc_initWeak(&location, self);
    v10 = objc_alloc_init(UICollectionViewDiffableDataSourceSectionSnapshotHandlers);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1009AEC18;
    v14[3] = &unk_101630C58;
    objc_copyWeak(&v15, &location);
    [v10 setShouldExpandItemHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1009AEC60;
    v12[3] = &unk_101630C58;
    objc_copyWeak(&v13, &location);
    [v10 setShouldCollapseItemHandler:v12];
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource setSectionSnapshotHandlers:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
    diffableDataSource = self->_diffableDataSource;
  }

  return diffableDataSource;
}

- (UICollectionViewLayout)collectionViewLayout
{
  collectionViewLayout = self->_collectionViewLayout;
  if (!collectionViewLayout)
  {
    v4 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:3];
    v5 = [UICollectionViewCompositionalLayout layoutWithListConfiguration:v4];
    v6 = self->_collectionViewLayout;
    self->_collectionViewLayout = v5;

    collectionViewLayout = self->_collectionViewLayout;
  }

  return collectionViewLayout;
}

- (void)_setupSectionControllers
{
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1009AF0F4;
  v46[3] = &unk_101630C30;
  v46[4] = self;
  v3 = objc_retainBlock(v46);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [HomeOutlineSearchResultsSectionController alloc];
  v6 = (v3[2])(v3, @"Search Results");
  v7 = [(HomeOutlineSearchResultsSectionController *)v5 initWithConfiguration:v6];
  searchResultsSectionController = self->_searchResultsSectionController;
  self->_searchResultsSectionController = v7;

  [v4 addObject:self->_searchResultsSectionController];
  v9 = [HomeOutlineSuggestionsSectionController alloc];
  v10 = (v3[2])(v3, @"Suggestions");
  v11 = [(HomeOutlineSuggestionsSectionController *)v9 initWithConfiguration:v10 suggestionsDataProvider:self->_suggestionsDataProvider];
  suggestionsSectionController = self->_suggestionsSectionController;
  self->_suggestionsSectionController = v11;

  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v4 addObject:self->_suggestionsSectionController];
  }

  if (_UISolariumEnabled())
  {
    v13 = @"Library";
    v14 = 144;
    v15 = off_1015F6750;
  }

  else
  {
    v16 = [HomeOutlineFavoritesSectionController alloc];
    v17 = (v3[2])(v3, @"Favorites");
    v18 = [(HomeOutlineFavoritesSectionController *)v16 initWithConfiguration:v17 favoritesDataProvider:self->_favoritesDataProvider libraryCountsDataProvider:self->_libraryCountsDataProvider];
    favoritesSectionController = self->_favoritesSectionController;
    self->_favoritesSectionController = v18;

    [v4 addObject:self->_favoritesSectionController];
    v13 = @"Collections";
    v14 = 120;
    v15 = off_1015F6258;
  }

  v20 = objc_alloc(*v15);
  v21 = (v3[2])(v3, v13);
  v22 = [v20 initWithConfiguration:v21];
  v23 = *(&self->super.isa + v14);
  *(&self->super.isa + v14) = v22;

  [v4 addObject:*(&self->super.isa + v14)];
  [v4 addObject:self->_suggestionsSectionController];
  v24 = [HomeOutlineRecentsSectionController alloc];
  v25 = (v3[2])(v3, @"Recents");
  v26 = [(HomeOutlineRecentsSectionController *)v24 initWithConfiguration:v25];
  recentsSectionController = self->_recentsSectionController;
  self->_recentsSectionController = v26;

  [v4 addObject:self->_recentsSectionController];
  v41 = v4;
  v28 = [v4 copy];
  sectionControllers = self->_sectionControllers;
  self->_sectionControllers = v28;

  v30 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = self->_sectionControllers;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * i);
        configuration = [v36 configuration];
        sectionIdentifier = [configuration sectionIdentifier];
        [v30 setObject:v36 forKeyedSubscript:sectionIdentifier];
      }

      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v33);
  }

  v39 = [v30 copy];
  sectionControllersByIdentifier = self->_sectionControllersByIdentifier;
  self->_sectionControllersByIdentifier = v39;
}

- (HomeOutlineRootController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v30.receiver = self;
  v30.super_class = HomeOutlineRootController;
  v7 = [(HomeOutlineRootController *)&v30 init];
  if (v7)
  {
    v8 = sub_1000410AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
    }

    v12 = sub_1000410AC();
    v7->_signpostID = os_signpost_id_make_with_pointer(v12, v7);

    objc_storeStrong(&v7->_configuration, configuration);
    v13 = [SuggestionsDataProvider alloc];
    v14 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_101630C08];
    v15 = [(SuggestionsDataProvider *)v13 initWithViewMode:0 filter:v14 includePlaceholderShortcuts:1];
    suggestionsDataProvider = v7->_suggestionsDataProvider;
    v7->_suggestionsDataProvider = v15;

    v17 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    favoritesDataProvider = v7->_favoritesDataProvider;
    v7->_favoritesDataProvider = v17;

    v19 = [_TtC4Maps33HomeListLibraryCountsDataProvider alloc];
    v20 = +[_TtC4Maps24LibraryItemsCountManager sharedManager];
    v21 = [(HomeListLibraryCountsDataProvider *)v19 initWithCountsManager:v20];
    libraryCountsDataProvider = v7->_libraryCountsDataProvider;
    v7->_libraryCountsDataProvider = v21;

    [(HomeOutlineRootController *)v7 _setupSectionControllers];
    v23 = [[UIHoverGestureRecognizer alloc] initWithTarget:v7 action:"_hoverGestureRecognizerDidChange:"];
    hoverGestureRecognizer = v7->_hoverGestureRecognizer;
    v7->_hoverGestureRecognizer = v23;

    configuration = [(HomeOutlineRootController *)v7 configuration];
    collectionView = [configuration collectionView];
    [collectionView addGestureRecognizer:v7->_hoverGestureRecognizer];

    v27 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___SidebarOutlineCellHoverObserver queue:0];
    hoverChangeObservers = v7->_hoverChangeObservers;
    v7->_hoverChangeObservers = v27;

    v7->_loadingState = 0;
  }

  return v7;
}

@end