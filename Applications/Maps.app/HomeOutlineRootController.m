@interface HomeOutlineRootController
- (BOOL)_isLoading;
- (BOOL)_needsSnapshotUpdate;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)isCollectionViewFocusedWithSectionController:(id)a3;
- (BOOL)isCollectionViewProxyFocusedWithSectionController:(id)a3;
- (HomeOutlineRootController)initWithConfiguration:(id)a3;
- (KeyboardProxyingView)keyboardProxy;
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (UIScrollView)hoverScrollView;
- (id)_focusedIdentifierPath;
- (id)_identifierPathForIndexPath:(id)a3;
- (id)_indexPathForIdentifierPath:(id)a3;
- (id)_loadingDataProviders;
- (id)_nodeSnapshotAtIdentifierPath:(id)a3;
- (id)_nodeSnapshotAtIndexPath:(id)a3;
- (id)_sectionControllerForIdentifierPath:(id)a3;
- (id)_sectionControllerForIndexPath:(id)a3;
- (id)_selectedIdentifierPaths;
- (id)_storage;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)_applySnapshotUpdatesInSectionControllers:(id)a3 animateCells:(BOOL)a4 animateCollectionView:(BOOL)a5 completion:(id)a6;
- (void)_collapseItem:(id)a3;
- (void)_completeFocusAfterScrollingWithSuccess:(BOOL)a3;
- (void)_deselectItemAtIndexPath:(id)a3;
- (void)_didCompleteInitialUpdate;
- (void)_expandItem:(id)a3;
- (void)_focusAfterScrollingAnimationDidEnd;
- (void)_focusAfterScrollingCellWillDisplay;
- (void)_focusCellAtVisibleSelectedIdentifierPath:(id)a3 completion:(id)a4;
- (void)_loadingTimerDidFire;
- (void)_resetSnapshotUpdateState;
- (void)_selectItemAtIdentifierPath:(id)a3 notifyDelegate:(BOOL)a4 completion:(id)a5;
- (void)_setFocusAfterScrollingIdentifierPath:(id)a3 completion:(id)a4;
- (void)_setNeedsSnapshotUpdatesForSectionControllers:(id)a3 animated:(BOOL)a4;
- (void)_setupSectionControllers;
- (void)_updateContentInjectionWithSelectedIndexPath:(id)a3;
- (void)_updateFocusAfterScrolling;
- (void)_updateLoadingTimer;
- (void)clearSelectionWithReason:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)downArrowPressed:(id)a3;
- (void)keyboardProxyingView:(id)a3 pressesBegan:(id)a4 withEvent:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)sectionController:(id)a3 deselectItemAtIdentifierPath:(id)a4;
- (void)sectionController:(id)a3 setNeedsApplySnapshotAnimated:(BOOL)a4;
- (void)setActive:(BOOL)a3;
- (void)setKeyboardProxy:(id)a3;
- (void)showCollection:(id)a3;
- (void)upArrowPressed:(id)a3;
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

- (void)downArrowPressed:(id)a3
{
  v4 = [(HomeOutlineRootController *)self configuration];
  v16 = [v4 collectionView];

  v5 = [v16 indexPathsForSelectedItems];
  v6 = [v5 firstObject];

  v7 = [v16 numberOfItemsInSection:{objc_msgSend(v6, "section")}];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 copy];
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

        v12 = [v16 delegate];
        v13 = [v12 collectionView:v16 shouldHighlightItemAtIndexPath:v9];

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

- (void)upArrowPressed:(id)a3
{
  v4 = [(HomeOutlineRootController *)self configuration];
  v14 = [v4 collectionView];

  v5 = [v14 indexPathsForSelectedItems];
  v6 = [v5 firstObject];

  if ([v14 numberOfItemsInSection:{objc_msgSend(v6, "section")}])
  {
    v7 = [v6 copy];
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

        v10 = [v14 delegate];
        v11 = [v10 collectionView:v14 shouldHighlightItemAtIndexPath:v7];

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

- (void)keyboardProxyingView:(id)a3 pressesBegan:(id)a4 withEvent:(id)a5
{
  v13 = a4;
  v6 = [v13 count] == 1;
  v7 = v13;
  if (v6)
  {
    v8 = [v13 anyObject];
    v9 = [v8 key];
    v10 = [v9 keyCode];

    if (v10 == 82)
    {
      [(HomeOutlineRootController *)self upArrowPressed:v8];
    }

    else
    {
      v11 = [v8 key];
      v12 = [v11 keyCode];

      if (v12 == 81)
      {
        [(HomeOutlineRootController *)self downArrowPressed:v8];
      }
    }

    v7 = v13;
  }
}

- (UIScrollView)hoverScrollView
{
  v2 = [(HomeOutlineRootController *)self configuration];
  v3 = [v2 collectionView];

  return v3;
}

- (void)_completeFocusAfterScrollingWithSuccess:(BOOL)a3
{
  if (self->_focusAfterScrollingIndentifierPath)
  {
    v3 = a3;
    v8 = objc_retainBlock(self->_focusAfterScrollingCompletion);
    focusAfterScrollingIndentifierPath = self->_focusAfterScrollingIndentifierPath;
    self->_focusAfterScrollingIndentifierPath = 0;

    focusAfterScrollingCompletion = self->_focusAfterScrollingCompletion;
    self->_focusAfterScrollingCompletion = 0;

    v7 = v8;
    *&self->_needsFocusAfterScrollingAnimationDidEnd = 0;
    if (v8)
    {
      (*(v8 + 2))(v8, v3);
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

- (void)_setFocusAfterScrollingIdentifierPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v11 = a4;
  if (self->_focusAfterScrollingIndentifierPath)
  {
    [(HomeOutlineRootController *)self _completeFocusAfterScrollingWithSuccess:0];
    focusAfterScrollingIndentifierPath = self->_focusAfterScrollingIndentifierPath;
  }

  else
  {
    focusAfterScrollingIndentifierPath = 0;
  }

  self->_focusAfterScrollingIndentifierPath = v6;
  v8 = v6;

  v9 = objc_retainBlock(v11);
  focusAfterScrollingCompletion = self->_focusAfterScrollingCompletion;
  self->_focusAfterScrollingCompletion = v9;
}

- (void)_focusCellAtVisibleSelectedIdentifierPath:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@, identifier path = %@", &v22, 0x20u);
  }

  v13 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:v7];
  if (v13)
  {
    v14 = [(HomeOutlineRootController *)self _selectedIdentifierPaths];
    if (([v14 containsObject:v7] & 1) == 0)
    {
      if (v8)
      {
        v8[2](v8, 0);
      }

      goto LABEL_21;
    }

    v15 = [(HomeOutlineRootController *)self configuration];
    v16 = [v15 collectionView];
    v17 = [v16 cellForItemAtIndexPath:v13];

    if (!v17)
    {
      if (v8)
      {
        v8[2](v8, 0);
      }

      goto LABEL_20;
    }

    v18 = [(HomeOutlineRootController *)self _focusedIdentifierPath];
    v19 = v18;
    if (v18 == v7 || [v18 isEqual:v7])
    {
      if (v8)
      {
        v20 = 1;
LABEL_18:
        v8[2](v8, v20);
      }
    }

    else
    {
      v21 = [v17 becomeFirstResponder];
      if (v8)
      {
        v20 = v21;
        goto LABEL_18;
      }
    }

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  if (v8)
  {
    v8[2](v8, 0);
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
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 focusedIdentifierPath];

        if (v7)
        {
          v3 = [v6 focusedIdentifierPath];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)clearSelectionWithReason:(id)a3
{
  v5 = a3;
  v6 = [(HomeOutlineRootController *)self _selectedIdentifierPaths];
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v19 = v5;
    v8 = objc_opt_class();
    v18 = v8;
    v9 = NSStringFromSelector(a2);
    v17 = [(HomeOutlineRootController *)self configuration];
    v10 = [v17 collectionView];
    v11 = [v10 indexPathsForSelectedItems];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = [v6 allObjects];
    v14 = [v13 componentsJoinedByString:{@", "}];
    *buf = 138413314;
    v21 = v8;
    v5 = v19;
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

  if ([v6 count] && objc_msgSend(v6, "count") <= 1)
  {
    v15 = [v6 anyObject];
    v16 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v15];
    [v16 clearSelectionWithReason:v5];
  }
}

- (void)_deselectItemAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v5];
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
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@ index path = %@, identifier path = %@", &v17, 0x2Au);
  }

  v11 = [(HomeOutlineRootController *)self configuration];
  v12 = [v11 collectionView];
  v13 = [v12 indexPathsForSelectedItems];
  v14 = [v13 containsObject:v5];

  if (v14)
  {
    v15 = [(HomeOutlineRootController *)self configuration];
    v16 = [v15 collectionView];
    [v16 deselectItemAtIndexPath:v5 animated:1];

    [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:0];
  }
}

- (void)_selectItemAtIdentifierPath:(id)a3 notifyDelegate:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  [(HomeOutlineRootController *)self updateIfNeeded];
  v11 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:v9];
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
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ %@ index path = %@, identifier path = %@", buf, 0x2Au);
  }

  if (v9 && v11)
  {
    v16 = [(HomeOutlineRootController *)self configuration];
    v17 = [v16 collectionView];

    v18 = [v17 indexPathsForVisibleItems];
    v19 = [v18 containsObject:v11];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    [v17 selectItemAtIndexPath:v11 animated:1 scrollPosition:v20];
    if (v6)
    {
      [(NSTimer *)self->_keyboardSelectionTimer invalidate];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1009AABDC;
      v23[3] = &unk_101630DE0;
      v24 = v17;
      v25 = v11;
      v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v23 block:0.2];
      keyboardSelectionTimer = self->_keyboardSelectionTimer;
      self->_keyboardSelectionTimer = v21;
    }

    else
    {
      [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:v11];
      [(HomeOutlineRootController *)self _setFocusAfterScrollingIdentifierPath:v9 completion:v10];
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

  else if (v10)
  {
    v10[2](v10, 0);
  }
}

- (id)_selectedIdentifierPaths
{
  v3 = [(HomeOutlineRootController *)self configuration];
  v4 = [v3 collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009AAD1C;
  v9[3] = &unk_101657A50;
  v9[4] = self;
  v6 = sub_100021DB0(v5, v9);
  v7 = [NSSet setWithArray:v6];

  return v7;
}

- (void)showCollection:(id)a3
{
  v4 = a3;
  if ([v4 handlerType] == 3)
  {
    [(HomeOutlineSuggestionsSectionController *)self->_suggestionsSectionController showSharedCollection:v4];
  }

  else
  {
    [(HomeOutlineCollectionsSectionController *)self->_collectionsSectionController showCollection:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v9 = a3;
  v4 = [(HomeOutlineRootController *)self configuration];
  v5 = [v4 homeUpdateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HomeOutlineRootController *)self configuration];
    v8 = [v7 homeUpdateDelegate];
    [v8 scrollViewDidScroll:v9];
  }

  [(HomeOutlineRootController *)self _notifyCellHoverObservers];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v10];
  v12 = sub_1000410AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will display cell at index path: %@, identifier path: %@", &v14, 0x16u);
  }

  v13 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v11];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:v8 willDisplayCell:v9 forItemAtIndexPath:v10];
  }

  if (v11 == self->_focusAfterScrollingIndentifierPath || [(IdentifierPath *)v11 isEqual:?])
  {
    [(HomeOutlineRootController *)self _focusAfterScrollingCellWillDisplay];
  }
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
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
          [v14 collectionView:v6 dropSessionDidEnd:{v7, v15}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  v6 = a3;
  v7 = a4;
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
          [v14 collectionView:v6 dropSessionDidExit:{v7, v15}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000410AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = [v8 destinationIndexPath];
    v12 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v11];
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
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ %@, indexPath = %@, identifierPath = %@", &v19, 0x2Au);
    }
  }

  v17 = [v8 destinationIndexPath];
  v18 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v17];

  if (objc_opt_respondsToSelector())
  {
    [v18 collectionView:v7 performDropWithCoordinator:v8];
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_1000410AC();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:v11];
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
      v31 = v11;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ %@, indexPath = %@, identifierPath = %@", &v26, 0x2Au);
    }
  }

  v19 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v11];
  dropTargetSectionController = self->_dropTargetSectionController;
  p_dropTargetSectionController = &self->_dropTargetSectionController;
  if (v19 != dropTargetSectionController)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(HomeOutlineSectionControllerSubclassing *)*p_dropTargetSectionController collectionView:v9 dropSessionDidUpdate:v10 withDestinationIndexPath:0];
    }

    objc_storeStrong(p_dropTargetSectionController, v19);
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [(HomeOutlineSectionControllerSubclassing *)v19 collectionView:v9 dropSessionDidUpdate:v10 withDestinationIndexPath:v11];
  }

  else
  {
    v23 = [[UICollectionViewDropProposal alloc] initWithDropOperation:0];
  }

  v24 = v23;

  return v24;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v6 = a3;
  v7 = a4;
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
          [v13 collectionView:v6 dropSessionDidEnter:{v7, v14}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v4 = [a4 localDragSession];
  v5 = v4 != 0;

  return v5;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(HomeOutlineSectionControllerSubclassing *)self->_draggingSectionController collectionView:v9 dragSessionDidEnd:v6];
  }

  draggingSectionController = self->_draggingSectionController;
  self->_draggingSectionController = 0;

  v8 = +[MapsDragAndDropManager sharedManager];
  [v8 setDragSession:0];
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = +[MapsDragAndDropManager sharedManager];
  [v7 setDragSession:v6];

  v8 = [MapsDragLocalContext alloc];
  v9 = [v12 window];
  v10 = [v9 windowScene];
  v11 = [(MapsDragLocalContext *)v8 initWithWindowScene:v10];
  [v6 setLocalContext:v11];

  if (objc_opt_respondsToSelector())
  {
    [(HomeOutlineSectionControllerSubclassing *)self->_draggingSectionController collectionView:v12 dragSessionWillBegin:v6];
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MapsDragAndDropManager sharedManager];
  v12 = [v11 canStartNewDrag];

  if (v12)
  {
    v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v10];
    v14 = [v13 collectionView:v8 itemsForBeginningDragSession:v9 atIndexPath:v10];
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

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(HomeOutlineRootController *)self configuration:a3];
  v5 = [v6 collectionView];
  [v5 setActivityItemsConfiguration:0];
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [a4 identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
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
      v12 = [v10 activityProviders];
      v13 = [v10 applicationActivities];
      v14 = [v11 _initWithActivityItems:v12 applicationActivities:v13];

      v15 = [v10 excludedActivityTypes];
      [v14 _setExcludedActivityTypes:v15];
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

  v16 = [(HomeOutlineRootController *)self configuration];
  v17 = [v16 collectionView];
  [v17 setActivityItemsConfiguration:v14];
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if ([v10 count] == 1)
  {
    v11 = [v10 firstObject];
    v12 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v11];

    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 collectionView:v9 contextMenuConfigurationForItemsAtIndexPaths:v10 point:{x, y}];
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

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
          [v16 collectionView:v8 didUpdateFocusInContext:v9 withAnimationCoordinator:{v10, v17}];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v7];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 collectionView:v6 canFocusItemAtIndexPath:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@", &v14, 0x20u);
  }

  [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:0];
  v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v8];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:v7 didDeselectItemAtIndexPath:v8];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@", &v14, 0x20u);
  }

  [(HomeOutlineRootController *)self _updateContentInjectionWithSelectedIndexPath:v8];
  v13 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v8];
  if (objc_opt_respondsToSelector())
  {
    [v13 collectionView:v7 didSelectItemAtIndexPath:v8];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HomeOutlineRootController *)self _sectionControllerForIndexPath:v7];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 collectionView:v6 shouldHighlightItemAtIndexPath:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1000410AC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v27 = 138412546;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dequeuing cell at index path: %@, identifier path: %@", &v27, 0x16u);
  }

  v12 = v10;
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
  v16 = [v15 viewModel];
  v17 = [v16 cellRegistration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
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
    v21 = [v8 dequeueConfiguredReusableCellWithRegistration:v19 forIndexPath:v9 item:v12];
    v22 = [v14 firstIdentifier];
    v23 = [v22 stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];
    [v21 setAxSectionIdentifier:v23];

    v24 = [v19 viewModelConfigurationHandler];
    (v24)[2](v24, v21, v9, v15);

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

- (void)sectionController:(id)a3 deselectItemAtIdentifierPath:(id)a4
{
  v5 = [(HomeOutlineRootController *)self _indexPathForIdentifierPath:a4];
  if (v5)
  {
    v6 = v5;
    [(HomeOutlineRootController *)self _deselectItemAtIndexPath:v5];
    v5 = v6;
  }
}

- (BOOL)isCollectionViewFocusedWithSectionController:(id)a3
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

        v7 = [*(*(&v9 + 1) + 8 * i) focusedIdentifierPath];

        if (v7)
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

- (BOOL)isCollectionViewProxyFocusedWithSectionController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardProxy);
  v4 = [WeakRetained shouldAppearFocused];

  return v4;
}

- (void)sectionController:(id)a3 setNeedsApplySnapshotAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Apply Snapshot for section controller: %@", buf, 0xCu);
  }

  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:v8 animated:v4];
}

- (void)_updateContentInjectionWithSelectedIndexPath:(id)a3
{
  if (a3)
  {
    v4 = [(HomeOutlineRootController *)self _nodeSnapshotAtIndexPath:?];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 identifierPath];
      v7 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v6];

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

  v8 = [(HomeOutlineRootController *)self configuration];
  v9 = [v8 actionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
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

- (void)_applySnapshotUpdatesInSectionControllers:(id)a3 animateCells:(BOOL)a4 animateCollectionView:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v129 = a4;
  v9 = a3;
  v10 = a6;
  v11 = sub_1000410AC();
  v12 = v11;
  signpostID = self->_signpostID;
  v137 = self;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    if (v129)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    if (v7)
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

  v127 = v7;
  if (v7)
  {
    v18 = [(HomeOutlineRootController *)self configuration];
    v19 = [v18 collectionView];
    [v19 alpha];
    v21 = v20;

    v22 = [(HomeOutlineRootController *)self configuration];
    v23 = [v22 collectionView];
    [v23 setAlpha:0.0];

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
    v154 = v10;
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
        if ([v9 containsObject:v33])
        {
          [v33 invalidateSectionSnapshot];
        }

        v34 = [v33 sectionSnapshot];
        v35 = [v34 childSnapshots];
        v36 = [v35 count];

        if (v36)
        {
          [v135 addObject:v34];
        }
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v149 objects:v178 count:16];
    }

    while (v30);
  }

  v134 = v9;

  v37 = v137->_rootSnapshot;
  v38 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
  v39 = +[IdentifierPath identifierPath];
  v40 = +[HomeOutlineHiddenViewModel sharedViewModel];
  v41 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v38 initWithIdentifierPath:v39 viewModel:v40 childSnapshots:v135 expanded:1];
  rootSnapshot = v137->_rootSnapshot;
  v137->_rootSnapshot = v41;

  v128 = v37;
  v43 = [v24 _maps_applyChangesWithNewRootSnapshot:v137->_rootSnapshot oldRootSnapshot:v37];
  v44 = sub_1000410AC();
  v45 = v44;
  v46 = v137->_signpostID;
  if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v46, "BuildSectionSnapshot", "", buf, 2u);
  }

  v136 = [(HomeOutlineRootController *)v137 _focusedIdentifierPath];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v47 = [v43 deletedItems];
  v48 = [v47 countByEnumeratingWithState:&v145 objects:v177 count:16];
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
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v145 + 1) + 8 * j) identifierPath];
        v53 = v52;
        if (v52 == v136)
        {
        }

        else
        {
          v54 = [v52 isEqual:?];

          if (!v54)
          {
            continue;
          }
        }

        v55 = [(HomeOutlineRootController *)v137 configuration];
        v56 = [v55 actionCoordinator];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        v58 = v57;

        [v58 makeMapViewFirstResponder];
      }

      v49 = [v47 countByEnumeratingWithState:&v145 objects:v177 count:16];
    }

    while (v49);
  }

  v132 = v10;
  v133 = v24;

  v59 = sub_1000410AC();
  v60 = v59;
  v61 = v137;
  v62 = v137->_signpostID;
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
  v63 = [v43 reloadedItems];
  v64 = [v63 countByEnumeratingWithState:&v141 objects:v176 count:16];
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
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v141 + 1) + 8 * k);
        v69 = [v68 identifierPath];
        v70 = [(HomeOutlineRootController *)v61 _indexPathForIdentifierPath:v69];

        if (v70)
        {
          v71 = [(HomeOutlineRootController *)v61 configuration];
          v72 = [v71 collectionView];
          v73 = [v72 cellForItemAtIndexPath:v70];

          if (v73)
          {
            v74 = [v68 viewModel];
            v75 = [v74 cellRegistration];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = v75;
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
                v78 = [v77 viewModelConfigurationHandler];
                (v78)[2](v78, v73, v70, v68);
              }
            }

            v61 = v137;
          }
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v141 objects:v176 count:16];
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
    diffableDataSource = v137->_diffableDataSource;
    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_1009AD870;
    v138[3] = &unk_1016610E0;
    v140 = v127;
    v139 = v132;
    v88 = diffableDataSource;
    v61 = v137;
    [(UICollectionViewDiffableDataSource *)v88 applySnapshot:v133 toSection:@"root" animatingDifferences:v129 completion:v138];
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
    v94 = [v131 reloadedItems];
    v122 = sub_100021DB0(v94, &stru_101630D18);

    v95 = [v131 insertedItems];
    v96 = sub_100021DB0(v95, &stru_101630D38);

    v97 = [v131 deletedItems];
    v98 = sub_100021DB0(v97, &stru_101630D58);

    v99 = [v131 movedItems];
    v126 = sub_100021DB0(v99, &stru_101630D78);

    v100 = [v131 expandedItems];
    v125 = sub_100021DB0(v100, &stru_101630D98);

    v101 = [v131 collapsedItems];
    v124 = sub_100021DB0(v101, &stru_101630DB8);

    v102 = sub_1000410AC();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = objc_opt_class();
      v120 = NSStringFromClass(v103);
      v121 = v98;
      if (v129)
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
  v118 = v137->_signpostID;
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
    v15 = [v14 homeUpdateDelegate];
    [v15 homeDidUpdateAnimated:animateNextUpdate || v5];

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

- (void)_setNeedsSnapshotUpdatesForSectionControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
      if ([(HomeOutlineRootController *)self _needsSnapshotUpdate]&& self->_animateNextUpdate != v4 && self->_appliedInitialUpdate)
      {
        [(HomeOutlineRootController *)self updateIfNeeded];
      }

      self->_animateNextUpdate = v4;
      [(NSMutableSet *)self->_sectionControllersToUpdate addObjectsFromArray:v6];
      v17 = [(HomeOutlineRootController *)self configuration];
      v18 = [v17 homeUpdateDelegate];
      [v18 homeSetNeedsUpdate];
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
      v15 = [(HomeOutlineRootController *)self _loadingDataProviders];
      v16 = sub_100021DB0(v15, &stru_101630C98);
      v17 = [NSSet setWithArray:v16];

      v18 = sub_1000410AC();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v17 allObjects];
        v22 = [v21 componentsJoinedByString:{@", "}];
        v23 = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ skipping applySnapshot because initial data has not loaded in data providers [%@]", &v23, 0x16u);
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
  v3 = [(HomeOutlineRootController *)self _loadingDataProviders];
  v4 = [v3 count];

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
  v3 = [(HomeOutlineRootController *)self _loadingDataProviders];
  v4 = [v3 count] != 0;

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
        v10 = [v9 dataProviders];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if (([v15 hasInitialData] & 1) == 0)
              {
                [v3 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

- (void)setKeyboardProxy:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_keyboardProxy);
  [WeakRetained setDelegate:0];

  [v4 setDelegate:self];
  objc_storeWeak(&self->_keyboardProxy, v4);

  sectionControllers = self->_sectionControllers;

  [(HomeOutlineRootController *)self _setNeedsSnapshotUpdatesForSectionControllers:sectionControllers animated:1];
}

- (id)_nodeSnapshotAtIdentifierPath:(id)a3
{
  if (a3)
  {
    v4 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)self->_rootSnapshot nodeSnapshotAtIdentifierPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nodeSnapshotAtIndexPath:(id)a3
{
  v4 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:a3];
  v5 = [(HomeOutlineRootController *)self _nodeSnapshotAtIdentifierPath:v4];

  return v5;
}

- (id)_indexPathForIdentifierPath:(id)a3
{
  if (a3)
  {
    v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierPathForIndexPath:(id)a3
{
  if (a3)
  {
    v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sectionControllerForIndexPath:(id)a3
{
  v4 = [(HomeOutlineRootController *)self _identifierPathForIndexPath:a3];
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v4];

  return v5;
}

- (id)_sectionControllerForIdentifierPath:(id)a3
{
  if (a3)
  {
    sectionControllersByIdentifier = self->_sectionControllersByIdentifier;
    v4 = [a3 firstIdentifier];
    v5 = [(NSDictionary *)sectionControllersByIdentifier objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_collapseItem:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v4];
  [v5 collapseElementAtIdentifierPath:v4];
}

- (void)_expandItem:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineRootController *)self _sectionControllerForIdentifierPath:v4];
  [v5 expandElementAtIdentifierPath:v4];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
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

  if (self->_active != v3)
  {
    self->_active = v3;
    v9 = sub_1000410AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = @"NO";
      if (v3)
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

    if (v3)
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
    v5 = [(HomeOutlineRootController *)self configuration];
    v6 = [v5 collectionView];
    v7 = sub_1007CDFC8(self);
    v8 = [v4 initWithCollectionView:v6 cellProvider:v7];
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
        v37 = [v36 configuration];
        v38 = [v37 sectionIdentifier];
        [v30 setObject:v36 forKeyedSubscript:v38];
      }

      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v33);
  }

  v39 = [v30 copy];
  sectionControllersByIdentifier = self->_sectionControllersByIdentifier;
  self->_sectionControllersByIdentifier = v39;
}

- (HomeOutlineRootController)initWithConfiguration:(id)a3
{
  v6 = a3;
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

    objc_storeStrong(&v7->_configuration, a3);
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

    v25 = [(HomeOutlineRootController *)v7 configuration];
    v26 = [v25 collectionView];
    [v26 addGestureRecognizer:v7->_hoverGestureRecognizer];

    v27 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___SidebarOutlineCellHoverObserver queue:0];
    hoverChangeObservers = v7->_hoverChangeObservers;
    v7->_hoverChangeObservers = v27;

    v7->_loadingState = 0;
  }

  return v7;
}

@end