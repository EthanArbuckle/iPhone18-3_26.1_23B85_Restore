@interface CNAvatarCardActionsView
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isPerformingAction;
- (BOOL)performHighlightedAction;
- (CGPoint)initialLocation;
- (CGRect)actionsImageFrame;
- (CNAvatarCardActionsView)initWithFrame:(CGRect)frame;
- (CNAvatarCardActionsViewDelegate)delegate;
- (NSArray)actionCategories;
- (id)_actionAtIndexPath:(id)path;
- (id)_effectiveManagerActions;
- (id)_indexPathForGestureRecognizer:(id)recognizer;
- (id)actionsManager:(id)manager orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell forAction:(id)action;
- (void)_dismissCardAnimated:(BOOL)animated;
- (void)_performActionAtIndexPath:(id)path;
- (void)_setHighlightedIndexPath:(id)path isChange:(BOOL)change;
- (void)_startTrackingRolloverOnCellAtIndexPath:(id)path withGestureRecognizer:(id)recognizer;
- (void)_stopTrackingRolloverOnCellAtIndexPath:(id)path withGestureRecognizer:(id)recognizer;
- (void)_updateActionsWithBlock:(id)block;
- (void)_updateAllSeparators;
- (void)_updateCellSeparator:(id)separator forIndexPath:(id)path;
- (void)_updateFromActions:(id)actions toActions:(id)toActions matchingOldIndex:(int64_t)index toNewActionIndex:(int64_t)actionIndex invertedAnimation:(BOOL)animation;
- (void)_updateWithActions:(id)actions withBlock:(id)block;
- (void)refreshActions;
- (void)reloadData;
- (void)reloadDataWithBlock:(id)block;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setActionsImageFrame:(CGRect)frame;
- (void)setActionsReversed:(BOOL)reversed;
- (void)setContacts:(id)contacts;
- (void)startTrackingRolloverWithGestureRecognizer:(id)recognizer;
- (void)stopTrackingRollover;
- (void)updateRollover:(id)rollover;
- (void)willMoveToWindow:(id)window;
@end

@implementation CNAvatarCardActionsView

- (CGPoint)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CNAvatarCardActionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)actionsImageFrame
{
  x = self->_actionsImageFrame.origin.x;
  y = self->_actionsImageFrame.origin.y;
  width = self->_actionsImageFrame.size.width;
  height = self->_actionsImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (([(CNAvatarCardActionsTableView *)self->_tableView isDragging:recognizer]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(CNAvatarCardActionsTableView *)self->_tableView isDecelerating]^ 1;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(UIGestureRecognizer *)self->_selectionGestureRecognizer setEnabled:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CNAvatarCardActionsView *)self _actionAtIndexPath:pathCopy];
  contacts = [(CNAvatarCardActionsView *)self contacts];
  if ([contacts count] < 2)
  {

    goto LABEL_6;
  }

  if ([(CNAvatarCardActionsView *)self expanded])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = @"actionCell";
    goto LABEL_9;
  }

LABEL_8:
  v11 = @"contactCell";
LABEL_9:
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];
  [(CNAvatarCardActionsView *)self _configureCell:v12 forAction:v8];
  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  [v12 setHighlighted:objc_msgSend(pathCopy animated:{"isEqual:", highlightedIndexPath), 0}];

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CNAvatarCardActionsView *)self actions:view];
  v5 = [v4 count];

  return v5;
}

- (id)actionsManager:(id)manager orderedPropertiesForProperties:(id)properties category:(id)category
{
  propertiesCopy = properties;
  categoryCopy = category;
  delegate = [(CNAvatarCardActionsView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CNAvatarCardActionsView *)self delegate];
    v12 = [delegate2 cardActionsView:self orderedPropertiesForProperties:propertiesCopy category:categoryCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action
{
  v5 = [(CNAvatarCardActionsView *)self delegate:manager];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CNAvatarCardActionsView *)self delegate];
    v8 = [delegate viewControllerForCardActionsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setHighlightedIndexPath:(id)path isChange:(BOOL)change
{
  changeCopy = change;
  pathCopy = path;
  highlightedIndexPath = self->_highlightedIndexPath;
  v14 = pathCopy;
  if (highlightedIndexPath != pathCopy)
  {
    if (highlightedIndexPath)
    {
      tableView = [(CNAvatarCardActionsView *)self tableView];
      v10 = [tableView cellForRowAtIndexPath:self->_highlightedIndexPath];

      [v10 setHighlighted:0];
    }

    objc_storeStrong(&self->_highlightedIndexPath, path);
    if (self->_highlightedIndexPath)
    {
      tableView2 = [(CNAvatarCardActionsView *)self tableView];
      v12 = [tableView2 cellForRowAtIndexPath:self->_highlightedIndexPath];

      [v12 setHighlighted:1];
      if (changeCopy)
      {
        retargetBehavior = [(CNAvatarCardActionsView *)self retargetBehavior];
        [retargetBehavior selectionChanged];
      }
    }
  }
}

- (void)_updateCellSeparator:(id)separator forIndexPath:(id)path
{
  separatorCopy = separator;
  v6 = [path row];
  actions = [(CNAvatarCardActionsView *)self actions];
  v8 = v6 != [actions count] - 1;

  [separatorCopy setSeparatorStyle:v8];
}

- (void)_updateAllSeparators
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  indexPathsForVisibleRows = [(CNAvatarCardActionsTableView *)self->_tableView indexPathsForVisibleRows];
  v4 = [indexPathsForVisibleRows countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(CNAvatarCardActionsTableView *)self->_tableView cellForRowAtIndexPath:v8];
        [(CNAvatarCardActionsView *)self _updateCellSeparator:v9 forIndexPath:v8];
      }

      v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_dismissCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  delegate = [(CNAvatarCardActionsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNAvatarCardActionsView *)self delegate];
    [delegate2 dismissViewControllerForCardActionsView:self animated:animatedCopy];
  }
}

- (void)_configureCell:(id)cell forAction:(id)action
{
  cellCopy = cell;
  actionCopy = action;
  if ([(CNAvatarCardActionsView *)self expanded])
  {
    if ([actionCopy isBackAction])
    {
      v7 = *MEMORY[0x1E69DDCE0];
      v8 = *(MEMORY[0x1E69DDCE0] + 8);
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      v10 = *(MEMORY[0x1E69DDCE0] + 24);
      v11 = 2;
    }

    else
    {
      v7 = 0.0;
      v8 = 75.0;
      v11 = 3;
      v9 = 0.0;
      v10 = 0.0;
    }
  }

  else
  {
    v11 = 0;
    v7 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [cellCopy setSeparatorInset:{v7, v8, v9, v10}];
  [cellCopy setContext:v11];
  [cellCopy setAction:actionCopy];
  [cellCopy reloadData];
}

- (void)_updateFromActions:(id)actions toActions:(id)toActions matchingOldIndex:(int64_t)index toNewActionIndex:(int64_t)actionIndex invertedAnimation:(BOOL)animation
{
  actionsCopy = actions;
  toActionsCopy = toActions;
  tableView = [(CNAvatarCardActionsView *)self tableView];
  v15 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v16 = [MEMORY[0x1E696AC88] indexPathForRow:actionIndex inSection:0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke;
  v23[3] = &unk_1E74E6148;
  v23[4] = self;
  v24 = v15;
  v25 = toActionsCopy;
  v26 = tableView;
  animationCopy = animation;
  v27 = v16;
  v28 = actionsCopy;
  actionIndexCopy = actionIndex;
  indexCopy = index;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke_3;
  v22[3] = &unk_1E74E67A8;
  v22[4] = self;
  v17 = actionsCopy;
  v18 = v16;
  v19 = tableView;
  v20 = toActionsCopy;
  v21 = v15;
  [v19 _performBatchUpdates:v23 completion:v22];
}

void __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  v4 = MEMORY[0x1E69DD250];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke_2;
  v25[3] = &unk_1E74E63C0;
  v25[4] = *(a1 + 32);
  v22 = v3;
  v26 = v22;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v27 = v5;
  v28 = v6;
  [v4 animateWithDuration:v25 animations:0.25];
  [*(a1 + 56) moveRowAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 64)];
  v7 = 3;
  if (*(a1 + 96))
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  if (!*(a1 + 96))
  {
    v7 = 4;
  }

  v24 = v7;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 72) count] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 88);
      v13 = v9;
      if (v11 < v12 || (v13 = v10, v11 > v12))
      {
        v14 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:0];
        [v13 addObject:v14];
      }

      ++v11;
    }

    while (v11 < [*(a1 + 72) count]);
  }

  v15 = v8;
  [*(a1 + 56) deleteRowsAtIndexPaths:v9 withRowAnimation:v8];
  [*(a1 + 56) deleteRowsAtIndexPaths:v10 withRowAnimation:v24];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 48) count] >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 80);
      v20 = v16;
      if (v18 < v19 || (v20 = v17, v18 > v19))
      {
        v21 = [MEMORY[0x1E696AC88] indexPathForRow:v18 inSection:0];
        [v20 addObject:v21];
      }

      ++v18;
    }

    while (v18 < [*(a1 + 48) count]);
  }

  [*(a1 + 56) insertRowsAtIndexPaths:v16 withRowAnimation:v24];
  [*(a1 + 56) insertRowsAtIndexPaths:v17 withRowAnimation:v15];
  [*(a1 + 32) setActions:*(a1 + 48)];
}

uint64_t __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 56)];
  [v2 _configureCell:v3 forAction:v4];

  v5 = *(a1 + 40);

  return [v5 setHighlighted:0 animated:1];
}

- (void)_performActionAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CNAvatarCardActionsView *)self _actionAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v5;
    tableView = [(CNAvatarCardActionsView *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:pathCopy];

    if ([v7 moreHighlighted])
    {
      [(CNAvatarCardActionsView *)self setExpanded:1];
      v8 = [pathCopy row];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__56837;
      v32 = __Block_byref_object_dispose__56838;
      v33 = 0;
      title = [v5 title];
      image = [v5 image];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke;
      v27[3] = &unk_1E74E60F8;
      v27[4] = self;
      v27[5] = &v28;
      v27[6] = v8;
      v11 = [CNQuickAction actionWithTitle:title image:image block:v27];

      category = [v5 category];
      [v11 setCategory:category];

      [v11 setBackAction:1];
      actions = [v5 actions];
      array = [actions array];
      v15 = [array mutableCopy];
      v16 = v29[5];
      v29[5] = v15;

      [v29[5] insertObject:v11 atIndex:0];
      actions2 = [(CNAvatarCardActionsView *)self actions];
      v18 = v29[5];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_3;
      v23[3] = &unk_1E74E6120;
      v23[4] = self;
      v19 = actions2;
      v24 = v19;
      v25 = &v28;
      v26 = v8;
      [(CNAvatarCardActionsView *)self _updateWithActions:v18 withBlock:v23];

      _Block_object_dispose(&v28, 8);
      goto LABEL_10;
    }

    mainAction = [v5 mainAction];

    v5 = mainAction;
  }

  if (![v5 isBackAction])
  {
    if (![(CNAvatarCardActionsView *)self dismissesBeforePerforming])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_4;
      v21[3] = &unk_1E74E77C0;
      v21[4] = self;
      v5 = v5;
      v22 = v5;
      [v5 performWithCompletionBlock:v21];

      goto LABEL_10;
    }

    -[CNAvatarCardActionsView _dismissCardAnimated:](self, "_dismissCardAnimated:", [v5 dismissesWithAnimation]);
  }

  [v5 performWithCompletionBlock:0];
LABEL_10:
}

uint64_t __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_2;
  v2[3] = &unk_1E74E60F8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 resetWithBlock:v2];
}

uint64_t __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) dismissesWithAnimation];

  return [v1 _dismissCardAnimated:v2];
}

void __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = [v2 _effectiveManagerActions];
  [v2 _updateFromActions:v3 toActions:v4 matchingOldIndex:0 toNewActionIndex:a1[6] invertedAnimation:1];
}

- (void)_stopTrackingRolloverOnCellAtIndexPath:(id)path withGestureRecognizer:(id)recognizer
{
  if (path)
  {
    recognizerCopy = recognizer;
    pathCopy = path;
    tableView = [(CNAvatarCardActionsView *)self tableView];
    v9 = [tableView cellForRowAtIndexPath:pathCopy];

    [v9 stopTrackingWithGestureRecognizer:recognizerCopy];
  }
}

- (void)_startTrackingRolloverOnCellAtIndexPath:(id)path withGestureRecognizer:(id)recognizer
{
  if (path)
  {
    recognizerCopy = recognizer;
    pathCopy = path;
    tableView = [(CNAvatarCardActionsView *)self tableView];
    v9 = [tableView cellForRowAtIndexPath:pathCopy];

    [v9 startTrackingWithGestureRecognizer:recognizerCopy];
  }
}

- (void)updateRollover:(id)rollover
{
  rolloverCopy = rollover;
  if ([rolloverCopy state] == 1 || objc_msgSend(rolloverCopy, "state") == 2 || objc_msgSend(rolloverCopy, "state") == 4)
  {
    if ([rolloverCopy state] == 4 || (-[CNAvatarCardActionsView _indexPathForGestureRecognizer:](self, "_indexPathForGestureRecognizer:", rolloverCopy), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
      v6 = 0;
      if (!highlightedIndexPath)
      {
LABEL_13:

        goto LABEL_14;
      }

      v3 = highlightedIndexPath;
      v7 = 1;
    }

    else
    {
      v6 = v5;
      v7 = 0;
    }

    highlightedIndexPath2 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
    v10 = [v6 isEqual:highlightedIndexPath2];

    if (v7)
    {
    }

    if ((v10 & 1) == 0)
    {
      highlightedIndexPath3 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
      [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:highlightedIndexPath3 withGestureRecognizer:rolloverCopy];

      [(CNAvatarCardActionsView *)self _startTrackingRolloverOnCellAtIndexPath:v6 withGestureRecognizer:rolloverCopy];
      -[CNAvatarCardActionsView _setHighlightedIndexPath:isChange:](self, "_setHighlightedIndexPath:isChange:", v6, [rolloverCopy state] == 2);
    }

    goto LABEL_13;
  }

  if ([rolloverCopy state] == 3)
  {
    highlightedIndexPath4 = [(CNAvatarCardActionsView *)self highlightedIndexPath];

    if (!highlightedIndexPath4 || (-[CNAvatarCardActionsView tableView](self, "tableView"), v13 = objc_claimAutoreleasedReturnValue(), -[CNAvatarCardActionsView highlightedIndexPath](self, "highlightedIndexPath"), v14 = objc_claimAutoreleasedReturnValue(), [v13 cellForRowAtIndexPath:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v13, -[CNAvatarCardActionsView highlightedIndexPath](self, "highlightedIndexPath"), v16 = objc_claimAutoreleasedReturnValue(), -[CNAvatarCardActionsView _stopTrackingRolloverOnCellAtIndexPath:withGestureRecognizer:](self, "_stopTrackingRolloverOnCellAtIndexPath:withGestureRecognizer:", v16, rolloverCopy), v16, LOBYTE(v16) = objc_msgSend(v15, "swipped"), v15, (v16 & 1) == 0))
    {
      [(CNAvatarCardActionsView *)self performHighlightedAction];
    }
  }

LABEL_14:
}

- (id)_indexPathForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  tableView = [(CNAvatarCardActionsView *)self tableView];
  [recognizerCopy locationInView:tableView];
  v7 = v6;
  v9 = v8;

  tableView2 = [(CNAvatarCardActionsView *)self tableView];
  [tableView2 visibleBounds];
  v21.x = v7;
  v21.y = v9;
  LODWORD(tableView) = CGRectContainsPoint(v22, v21);

  if (tableView)
  {
    [(CNAvatarCardActionsView *)self initialLocation];
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    if (v14 == *MEMORY[0x1E695EFF8] && v11 == v13)
    {
      goto LABEL_8;
    }

    [(CNAvatarCardActionsView *)self initialLocation];
    UIDistanceBetweenPoints();
    if (v16 > 15.0)
    {
      [(CNAvatarCardActionsView *)self setInitialLocation:v12, v13];
LABEL_8:
      tableView3 = [(CNAvatarCardActionsView *)self tableView];
      v18 = [tableView3 indexPathForRowAtPoint:{v7, v9}];

      goto LABEL_10;
    }
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (BOOL)isPerformingAction
{
  if ([(CNAvatarCardActionsView *)self expanded])
  {
    return 1;
  }

  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  v3 = highlightedIndexPath != 0;

  return v3;
}

- (void)stopTrackingRollover
{
  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  rolloverGestureRecognizer = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:highlightedIndexPath withGestureRecognizer:rolloverGestureRecognizer];

  rolloverGestureRecognizer2 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [rolloverGestureRecognizer2 removeTarget:self action:sel_updateRollover_];

  [(CNAvatarCardActionsView *)self setRolloverGestureRecognizer:0];
}

- (void)startTrackingRolloverWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  [(CNAvatarCardActionsView *)self setRolloverGestureRecognizer:recognizerCopy];
  [(CNAvatarCardActionsView *)self setInitialLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v4 = [(CNAvatarCardActionsView *)self _indexPathForGestureRecognizer:recognizerCopy];
  if (v4)
  {
    tableView = [(CNAvatarCardActionsView *)self tableView];
    [recognizerCopy locationInView:tableView];
    [(CNAvatarCardActionsView *)self setInitialLocation:?];
  }

  [recognizerCopy addTarget:self action:sel_updateRollover_];
  [(CNAvatarCardActionsView *)self updateRollover:recognizerCopy];
}

- (BOOL)performHighlightedAction
{
  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];

  if (highlightedIndexPath)
  {
    highlightedIndexPath2 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
    [(CNAvatarCardActionsView *)self _performActionAtIndexPath:highlightedIndexPath2];
  }

  return highlightedIndexPath != 0;
}

- (void)refreshActions
{
  actionsManager = [(CNAvatarCardActionsView *)self actionsManager];
  [actionsManager refreshActions];
}

- (void)reloadDataWithBlock:(id)block
{
  blockCopy = block;
  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  rolloverGestureRecognizer = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:highlightedIndexPath withGestureRecognizer:rolloverGestureRecognizer];

  blockCopy[2](blockCopy);
  tableView = [(CNAvatarCardActionsView *)self tableView];
  [tableView invalidateIntrinsicContentSize];
}

- (void)reloadData
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__CNAvatarCardActionsView_reloadData__block_invoke;
  v2[3] = &unk_1E74E6A88;
  v2[4] = self;
  [(CNAvatarCardActionsView *)self reloadDataWithBlock:v2];
}

void __37__CNAvatarCardActionsView_reloadData__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (id)_actionAtIndexPath:(id)path
{
  pathCopy = path;
  actions = [(CNAvatarCardActionsView *)self actions];
  item = [pathCopy item];

  v7 = [actions objectAtIndex:item];

  return v7;
}

- (id)_effectiveManagerActions
{
  actionsManager = [(CNAvatarCardActionsView *)self actionsManager];
  actions = [actionsManager actions];

  if (self->_actionsReversed)
  {
    reverseObjectEnumerator = [actions reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  else
  {
    allObjects = actions;
  }

  return allObjects;
}

- (void)_updateWithActions:(id)actions withBlock:(id)block
{
  blockCopy = block;
  actionsCopy = actions;
  highlightedIndexPath = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  rolloverGestureRecognizer = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:highlightedIndexPath withGestureRecognizer:rolloverGestureRecognizer];

  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  v9 = [actionsCopy mutableCopy];

  if (blockCopy)
  {
    [(CNAvatarCardActionsView *)self reloadDataWithBlock:?];
  }

  else
  {
    [(CNAvatarCardActionsView *)self setActions:v9];
    [(CNAvatarCardActionsView *)self reloadData];
  }

  delegate = [(CNAvatarCardActionsView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CNAvatarCardActionsView *)self delegate];
    [delegate2 cardActionsView:self didShowActions:v9];
  }

  rolloverGestureRecognizer2 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self updateRollover:rolloverGestureRecognizer2];
}

- (void)_updateActionsWithBlock:(id)block
{
  blockCopy = block;
  [(CNAvatarCardActionsView *)self setExpanded:0];
  actionsManager = [(CNAvatarCardActionsView *)self actionsManager];
  if (!actionsManager)
  {
    contacts = [(CNAvatarCardActionsView *)self contacts];
    v7 = [CNQuickActionsManager actionsManagerForContacts:contacts];

    actionCategories = [(CNAvatarCardActionsView *)self actionCategories];
    [v7 setCategories:actionCategories];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    if (userInterfaceIdiom || ([MEMORY[0x1E69DCEB0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v18) <= 667.0))
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom])
      {
        [v7 setDesiredNumberOfActions:5];
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
        if (CGRectGetHeight(v19) <= 568.0)
        {
          v15 = 5;
        }

        else
        {
          v15 = 6;
        }

        [v7 setDesiredNumberOfActions:v15];
      }

      if (userInterfaceIdiom)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v7 setDesiredNumberOfActions:6];
    }

LABEL_14:
    [v7 setBypassActionValidation:{-[CNAvatarCardActionsView bypassActionValidation](self, "bypassActionValidation")}];
    [v7 setDelegate:self];
    [(CNAvatarCardActionsView *)self setActionsManager:v7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__CNAvatarCardActionsView__updateActionsWithBlock___block_invoke;
    v16[3] = &unk_1E74E6DD0;
    v16[4] = self;
    v17 = blockCopy;
    [v7 updateActionsWithBlock:v16];

    goto LABEL_15;
  }

  v7 = actionsManager;
  _effectiveManagerActions = [(CNAvatarCardActionsView *)self _effectiveManagerActions];
  [(CNAvatarCardActionsView *)self _updateWithActions:_effectiveManagerActions withBlock:blockCopy];

LABEL_15:
}

void __51__CNAvatarCardActionsView__updateActionsWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _effectiveManagerActions];
  [v2 _updateWithActions:v3 withBlock:*(a1 + 40)];
}

- (NSArray)actionCategories
{
  actionCategories = self->_actionCategories;
  if (actionCategories)
  {
    v3 = actionCategories;
  }

  else
  {
    v3 = +[CNQuickActionsManager defaultCategories];
  }

  return v3;
}

- (void)setActionsReversed:(BOOL)reversed
{
  if (self->_actionsReversed != reversed)
  {
    self->_actionsReversed = reversed;
    if (![(CNAvatarCardActionsView *)self expanded])
    {

      [(CNAvatarCardActionsView *)self _updateActionsWithBlock:0];
    }
  }
}

- (void)setActionsImageFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_actionsImageFrame = &self->_actionsImageFrame;
  if (!CGRectEqualToRect(frame, self->_actionsImageFrame))
  {
    p_actionsImageFrame->origin.x = x;
    p_actionsImageFrame->origin.y = y;
    p_actionsImageFrame->size.width = width;
    p_actionsImageFrame->size.height = height;

    [(CNAvatarCardActionsView *)self reloadData];
  }
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  if (self->_contacts != contactsCopy)
  {
    v6 = contactsCopy;
    objc_storeStrong(&self->_contacts, contacts);
    [(CNAvatarCardActionsView *)self setActionsManager:0];
    contactsCopy = v6;
  }
}

- (void)willMoveToWindow:(id)window
{
  retargetBehavior = [(CNAvatarCardActionsView *)self retargetBehavior];
  v5 = retargetBehavior;
  if (window)
  {
    [retargetBehavior activateWithCompletionBlock:0];
  }

  else
  {
    [retargetBehavior deactivate];
  }
}

- (CNAvatarCardActionsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CNAvatarCardActionsView;
  v7 = [(CNAvatarCardActionsView *)&v22 initWithFrame:?];
  [(CNAvatarCardActionsView *)v7 setBackgroundColor:0];
  height = [[CNAvatarCardActionsTableView alloc] initWithFrame:1 style:x, y, width, height];
  [(CNAvatarCardActionsTableView *)height setRowHeight:62.0];
  [(CNAvatarCardActionsTableView *)height setSeparatorStyle:1];
  [(CNAvatarCardActionsTableView *)height setScrollEnabled:1];
  [(CNAvatarCardActionsTableView *)height setAlwaysBounceVertical:0];
  [(CNAvatarCardActionsTableView *)height setBackgroundColor:0];
  [(CNAvatarCardActionsTableView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNAvatarCardActionsTableView *)height _setDrawsSeparatorAtTopOfSections:0];
  [(CNAvatarCardActionsTableView *)height _setTopPadding:0.0];
  [(CNAvatarCardActionsTableView *)height _setBottomPadding:0.0];
  [(CNAvatarCardActionsTableView *)height setSectionHeaderHeight:0.0];
  [(CNAvatarCardActionsTableView *)height setSectionFooterHeight:0.0];
  [(CNAvatarCardActionsTableView *)height _setSeparatorBackdropOverlayBlendMode:1];
  [(CNAvatarCardActionsView *)v7 addSubview:height];
  [(CNAvatarCardActionsView *)v7 setTableView:height];
  v9 = MEMORY[0x1E696ACD8];
  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:height attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
  v23[0] = v10;
  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:height attribute:1 relatedBy:0 toItem:v7 attribute:1 multiplier:1.0 constant:0.0];
  v23[1] = v11;
  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:height attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  v23[2] = v12;
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:height attribute:2 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:0.0];
  v23[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v9 activateConstraints:v14];

  v15 = +[CNAvatarCardActionCell cellNibForActions];
  [(CNAvatarCardActionsTableView *)height registerNib:v15 forCellReuseIdentifier:@"actionCell"];
  v16 = +[CNAvatarCardActionCell cellNibForContacts];

  [(CNAvatarCardActionsTableView *)height registerNib:v16 forCellReuseIdentifier:@"contactCell"];
  [(CNAvatarCardActionsTableView *)height setDataSource:v7];
  [(CNAvatarCardActionsTableView *)height setDelegate:v7];
  v17 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v7 action:sel_updateRollover_];
  [v17 setAllowableMovement:0.0];
  [v17 setMinimumPressDuration:0.0];
  [v17 setCancelsTouchesInView:0];
  [v17 setDelegate:v7];
  [(CNAvatarCardActionsView *)v7 addGestureRecognizer:v17];
  [(CNAvatarCardActionsView *)v7 setSelectionGestureRecognizer:v17];
  defaultConfiguration = [MEMORY[0x1E69DD6E8] defaultConfiguration];
  v19 = [defaultConfiguration tweakedConfigurationForClass:objc_opt_class() usage:@"retarget"];

  v20 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v19 coordinateSpace:height];
  [(CNAvatarCardActionsView *)v7 setRetargetBehavior:v20];

  return v7;
}

@end