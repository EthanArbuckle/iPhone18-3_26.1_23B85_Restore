@interface CNAvatarCardActionsView
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isPerformingAction;
- (BOOL)performHighlightedAction;
- (CGPoint)initialLocation;
- (CGRect)actionsImageFrame;
- (CNAvatarCardActionsView)initWithFrame:(CGRect)a3;
- (CNAvatarCardActionsViewDelegate)delegate;
- (NSArray)actionCategories;
- (id)_actionAtIndexPath:(id)a3;
- (id)_effectiveManagerActions;
- (id)_indexPathForGestureRecognizer:(id)a3;
- (id)actionsManager:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)actionsManager:(id)a3 presentingViewControllerForAction:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 forAction:(id)a4;
- (void)_dismissCardAnimated:(BOOL)a3;
- (void)_performActionAtIndexPath:(id)a3;
- (void)_setHighlightedIndexPath:(id)a3 isChange:(BOOL)a4;
- (void)_startTrackingRolloverOnCellAtIndexPath:(id)a3 withGestureRecognizer:(id)a4;
- (void)_stopTrackingRolloverOnCellAtIndexPath:(id)a3 withGestureRecognizer:(id)a4;
- (void)_updateActionsWithBlock:(id)a3;
- (void)_updateAllSeparators;
- (void)_updateCellSeparator:(id)a3 forIndexPath:(id)a4;
- (void)_updateFromActions:(id)a3 toActions:(id)a4 matchingOldIndex:(int64_t)a5 toNewActionIndex:(int64_t)a6 invertedAnimation:(BOOL)a7;
- (void)_updateWithActions:(id)a3 withBlock:(id)a4;
- (void)refreshActions;
- (void)reloadData;
- (void)reloadDataWithBlock:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setActionsImageFrame:(CGRect)a3;
- (void)setActionsReversed:(BOOL)a3;
- (void)setContacts:(id)a3;
- (void)startTrackingRolloverWithGestureRecognizer:(id)a3;
- (void)stopTrackingRollover;
- (void)updateRollover:(id)a3;
- (void)willMoveToWindow:(id)a3;
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

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (([(CNAvatarCardActionsTableView *)self->_tableView isDragging:a3]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(CNAvatarCardActionsTableView *)self->_tableView isDecelerating]^ 1;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(UIGestureRecognizer *)self->_selectionGestureRecognizer setEnabled:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAvatarCardActionsView *)self _actionAtIndexPath:v7];
  v9 = [(CNAvatarCardActionsView *)self contacts];
  if ([v9 count] < 2)
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
  v12 = [v6 dequeueReusableCellWithIdentifier:v11 forIndexPath:v7];
  [(CNAvatarCardActionsView *)self _configureCell:v12 forAction:v8];
  v13 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  [v12 setHighlighted:objc_msgSend(v7 animated:{"isEqual:", v13), 0}];

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CNAvatarCardActionsView *)self actions:a3];
  v5 = [v4 count];

  return v5;
}

- (id)actionsManager:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNAvatarCardActionsView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CNAvatarCardActionsView *)self delegate];
    v12 = [v11 cardActionsView:self orderedPropertiesForProperties:v7 category:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)actionsManager:(id)a3 presentingViewControllerForAction:(id)a4
{
  v5 = [(CNAvatarCardActionsView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNAvatarCardActionsView *)self delegate];
    v8 = [v7 viewControllerForCardActionsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setHighlightedIndexPath:(id)a3 isChange:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  highlightedIndexPath = self->_highlightedIndexPath;
  v14 = v7;
  if (highlightedIndexPath != v7)
  {
    if (highlightedIndexPath)
    {
      v9 = [(CNAvatarCardActionsView *)self tableView];
      v10 = [v9 cellForRowAtIndexPath:self->_highlightedIndexPath];

      [v10 setHighlighted:0];
    }

    objc_storeStrong(&self->_highlightedIndexPath, a3);
    if (self->_highlightedIndexPath)
    {
      v11 = [(CNAvatarCardActionsView *)self tableView];
      v12 = [v11 cellForRowAtIndexPath:self->_highlightedIndexPath];

      [v12 setHighlighted:1];
      if (v4)
      {
        v13 = [(CNAvatarCardActionsView *)self retargetBehavior];
        [v13 selectionChanged];
      }
    }
  }
}

- (void)_updateCellSeparator:(id)a3 forIndexPath:(id)a4
{
  v9 = a3;
  v6 = [a4 row];
  v7 = [(CNAvatarCardActionsView *)self actions];
  v8 = v6 != [v7 count] - 1;

  [v9 setSeparatorStyle:v8];
}

- (void)_updateAllSeparators
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CNAvatarCardActionsTableView *)self->_tableView indexPathsForVisibleRows];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(CNAvatarCardActionsTableView *)self->_tableView cellForRowAtIndexPath:v8];
        [(CNAvatarCardActionsView *)self _updateCellSeparator:v9 forIndexPath:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_dismissCardAnimated:(BOOL)a3
{
  v3 = a3;
  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  v5 = [(CNAvatarCardActionsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNAvatarCardActionsView *)self delegate];
    [v7 dismissViewControllerForCardActionsView:self animated:v3];
  }
}

- (void)_configureCell:(id)a3 forAction:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(CNAvatarCardActionsView *)self expanded])
  {
    if ([v6 isBackAction])
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

  [v12 setSeparatorInset:{v7, v8, v9, v10}];
  [v12 setContext:v11];
  [v12 setAction:v6];
  [v12 reloadData];
}

- (void)_updateFromActions:(id)a3 toActions:(id)a4 matchingOldIndex:(int64_t)a5 toNewActionIndex:(int64_t)a6 invertedAnimation:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(CNAvatarCardActionsView *)self tableView];
  v15 = [MEMORY[0x1E696AC88] indexPathForRow:a5 inSection:0];
  v16 = [MEMORY[0x1E696AC88] indexPathForRow:a6 inSection:0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke;
  v23[3] = &unk_1E74E6148;
  v23[4] = self;
  v24 = v15;
  v25 = v13;
  v26 = v14;
  v31 = a7;
  v27 = v16;
  v28 = v12;
  v29 = a6;
  v30 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CNAvatarCardActionsView__updateFromActions_toActions_matchingOldIndex_toNewActionIndex_invertedAnimation___block_invoke_3;
  v22[3] = &unk_1E74E67A8;
  v22[4] = self;
  v17 = v12;
  v18 = v16;
  v19 = v14;
  v20 = v13;
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

- (void)_performActionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardActionsView *)self _actionAtIndexPath:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v5;
    v6 = [(CNAvatarCardActionsView *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:v4];

    if ([v7 moreHighlighted])
    {
      [(CNAvatarCardActionsView *)self setExpanded:1];
      v8 = [v4 row];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__56837;
      v32 = __Block_byref_object_dispose__56838;
      v33 = 0;
      v9 = [v5 title];
      v10 = [v5 image];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke;
      v27[3] = &unk_1E74E60F8;
      v27[4] = self;
      v27[5] = &v28;
      v27[6] = v8;
      v11 = [CNQuickAction actionWithTitle:v9 image:v10 block:v27];

      v12 = [v5 category];
      [v11 setCategory:v12];

      [v11 setBackAction:1];
      v13 = [v5 actions];
      v14 = [v13 array];
      v15 = [v14 mutableCopy];
      v16 = v29[5];
      v29[5] = v15;

      [v29[5] insertObject:v11 atIndex:0];
      v17 = [(CNAvatarCardActionsView *)self actions];
      v18 = v29[5];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__CNAvatarCardActionsView__performActionAtIndexPath___block_invoke_3;
      v23[3] = &unk_1E74E6120;
      v23[4] = self;
      v19 = v17;
      v24 = v19;
      v25 = &v28;
      v26 = v8;
      [(CNAvatarCardActionsView *)self _updateWithActions:v18 withBlock:v23];

      _Block_object_dispose(&v28, 8);
      goto LABEL_10;
    }

    v20 = [v5 mainAction];

    v5 = v20;
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

- (void)_stopTrackingRolloverOnCellAtIndexPath:(id)a3 withGestureRecognizer:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(CNAvatarCardActionsView *)self tableView];
    v9 = [v8 cellForRowAtIndexPath:v7];

    [v9 stopTrackingWithGestureRecognizer:v6];
  }
}

- (void)_startTrackingRolloverOnCellAtIndexPath:(id)a3 withGestureRecognizer:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(CNAvatarCardActionsView *)self tableView];
    v9 = [v8 cellForRowAtIndexPath:v7];

    [v9 startTrackingWithGestureRecognizer:v6];
  }
}

- (void)updateRollover:(id)a3
{
  v17 = a3;
  if ([v17 state] == 1 || objc_msgSend(v17, "state") == 2 || objc_msgSend(v17, "state") == 4)
  {
    if ([v17 state] == 4 || (-[CNAvatarCardActionsView _indexPathForGestureRecognizer:](self, "_indexPathForGestureRecognizer:", v17), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
      v6 = 0;
      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v3 = v8;
      v7 = 1;
    }

    else
    {
      v6 = v5;
      v7 = 0;
    }

    v9 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
    v10 = [v6 isEqual:v9];

    if (v7)
    {
    }

    if ((v10 & 1) == 0)
    {
      v11 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
      [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:v11 withGestureRecognizer:v17];

      [(CNAvatarCardActionsView *)self _startTrackingRolloverOnCellAtIndexPath:v6 withGestureRecognizer:v17];
      -[CNAvatarCardActionsView _setHighlightedIndexPath:isChange:](self, "_setHighlightedIndexPath:isChange:", v6, [v17 state] == 2);
    }

    goto LABEL_13;
  }

  if ([v17 state] == 3)
  {
    v12 = [(CNAvatarCardActionsView *)self highlightedIndexPath];

    if (!v12 || (-[CNAvatarCardActionsView tableView](self, "tableView"), v13 = objc_claimAutoreleasedReturnValue(), -[CNAvatarCardActionsView highlightedIndexPath](self, "highlightedIndexPath"), v14 = objc_claimAutoreleasedReturnValue(), [v13 cellForRowAtIndexPath:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v13, -[CNAvatarCardActionsView highlightedIndexPath](self, "highlightedIndexPath"), v16 = objc_claimAutoreleasedReturnValue(), -[CNAvatarCardActionsView _stopTrackingRolloverOnCellAtIndexPath:withGestureRecognizer:](self, "_stopTrackingRolloverOnCellAtIndexPath:withGestureRecognizer:", v16, v17), v16, LOBYTE(v16) = objc_msgSend(v15, "swipped"), v15, (v16 & 1) == 0))
    {
      [(CNAvatarCardActionsView *)self performHighlightedAction];
    }
  }

LABEL_14:
}

- (id)_indexPathForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardActionsView *)self tableView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CNAvatarCardActionsView *)self tableView];
  [v10 visibleBounds];
  v21.x = v7;
  v21.y = v9;
  LODWORD(v5) = CGRectContainsPoint(v22, v21);

  if (v5)
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
      v17 = [(CNAvatarCardActionsView *)self tableView];
      v18 = [v17 indexPathForRowAtPoint:{v7, v9}];

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

  v4 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  v3 = v4 != 0;

  return v3;
}

- (void)stopTrackingRollover
{
  v3 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  v4 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:v3 withGestureRecognizer:v4];

  v5 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [v5 removeTarget:self action:sel_updateRollover_];

  [(CNAvatarCardActionsView *)self setRolloverGestureRecognizer:0];
}

- (void)startTrackingRolloverWithGestureRecognizer:(id)a3
{
  v6 = a3;
  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  [(CNAvatarCardActionsView *)self setRolloverGestureRecognizer:v6];
  [(CNAvatarCardActionsView *)self setInitialLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v4 = [(CNAvatarCardActionsView *)self _indexPathForGestureRecognizer:v6];
  if (v4)
  {
    v5 = [(CNAvatarCardActionsView *)self tableView];
    [v6 locationInView:v5];
    [(CNAvatarCardActionsView *)self setInitialLocation:?];
  }

  [v6 addTarget:self action:sel_updateRollover_];
  [(CNAvatarCardActionsView *)self updateRollover:v6];
}

- (BOOL)performHighlightedAction
{
  v3 = [(CNAvatarCardActionsView *)self highlightedIndexPath];

  if (v3)
  {
    v4 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
    [(CNAvatarCardActionsView *)self _performActionAtIndexPath:v4];
  }

  return v3 != 0;
}

- (void)refreshActions
{
  v2 = [(CNAvatarCardActionsView *)self actionsManager];
  [v2 refreshActions];
}

- (void)reloadDataWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  v6 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:v5 withGestureRecognizer:v6];

  v4[2](v4);
  v7 = [(CNAvatarCardActionsView *)self tableView];
  [v7 invalidateIntrinsicContentSize];
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

- (id)_actionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardActionsView *)self actions];
  v6 = [v4 item];

  v7 = [v5 objectAtIndex:v6];

  return v7;
}

- (id)_effectiveManagerActions
{
  v3 = [(CNAvatarCardActionsView *)self actionsManager];
  v4 = [v3 actions];

  if (self->_actionsReversed)
  {
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 allObjects];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)_updateWithActions:(id)a3 withBlock:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [(CNAvatarCardActionsView *)self highlightedIndexPath];
  v8 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self _stopTrackingRolloverOnCellAtIndexPath:v7 withGestureRecognizer:v8];

  [(CNAvatarCardActionsView *)self setHighlightedIndexPath:0];
  v9 = [v6 mutableCopy];

  if (v14)
  {
    [(CNAvatarCardActionsView *)self reloadDataWithBlock:?];
  }

  else
  {
    [(CNAvatarCardActionsView *)self setActions:v9];
    [(CNAvatarCardActionsView *)self reloadData];
  }

  v10 = [(CNAvatarCardActionsView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CNAvatarCardActionsView *)self delegate];
    [v12 cardActionsView:self didShowActions:v9];
  }

  v13 = [(CNAvatarCardActionsView *)self rolloverGestureRecognizer];
  [(CNAvatarCardActionsView *)self updateRollover:v13];
}

- (void)_updateActionsWithBlock:(id)a3
{
  v5 = a3;
  [(CNAvatarCardActionsView *)self setExpanded:0];
  v6 = [(CNAvatarCardActionsView *)self actionsManager];
  if (!v6)
  {
    v9 = [(CNAvatarCardActionsView *)self contacts];
    v7 = [CNQuickActionsManager actionsManagerForContacts:v9];

    v10 = [(CNAvatarCardActionsView *)self actionCategories];
    [v7 setCategories:v10];

    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];
    if (v12 || ([MEMORY[0x1E69DCEB0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v18) <= 667.0))
    {
      v13 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v13 userInterfaceIdiom])
      {
        [v7 setDesiredNumberOfActions:5];
      }

      else
      {
        v14 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v14 _referenceBounds];
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

      if (v12)
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
    v17 = v5;
    [v7 updateActionsWithBlock:v16];

    goto LABEL_15;
  }

  v7 = v6;
  v8 = [(CNAvatarCardActionsView *)self _effectiveManagerActions];
  [(CNAvatarCardActionsView *)self _updateWithActions:v8 withBlock:v5];

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

- (void)setActionsReversed:(BOOL)a3
{
  if (self->_actionsReversed != a3)
  {
    self->_actionsReversed = a3;
    if (![(CNAvatarCardActionsView *)self expanded])
    {

      [(CNAvatarCardActionsView *)self _updateActionsWithBlock:0];
    }
  }
}

- (void)setActionsImageFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_actionsImageFrame = &self->_actionsImageFrame;
  if (!CGRectEqualToRect(a3, self->_actionsImageFrame))
  {
    p_actionsImageFrame->origin.x = x;
    p_actionsImageFrame->origin.y = y;
    p_actionsImageFrame->size.width = width;
    p_actionsImageFrame->size.height = height;

    [(CNAvatarCardActionsView *)self reloadData];
  }
}

- (void)setContacts:(id)a3
{
  v5 = a3;
  if (self->_contacts != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contacts, a3);
    [(CNAvatarCardActionsView *)self setActionsManager:0];
    v5 = v6;
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = [(CNAvatarCardActionsView *)self retargetBehavior];
  v5 = v4;
  if (a3)
  {
    [v4 activateWithCompletionBlock:0];
  }

  else
  {
    [v4 deactivate];
  }
}

- (CNAvatarCardActionsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CNAvatarCardActionsView;
  v7 = [(CNAvatarCardActionsView *)&v22 initWithFrame:?];
  [(CNAvatarCardActionsView *)v7 setBackgroundColor:0];
  v8 = [[CNAvatarCardActionsTableView alloc] initWithFrame:1 style:x, y, width, height];
  [(CNAvatarCardActionsTableView *)v8 setRowHeight:62.0];
  [(CNAvatarCardActionsTableView *)v8 setSeparatorStyle:1];
  [(CNAvatarCardActionsTableView *)v8 setScrollEnabled:1];
  [(CNAvatarCardActionsTableView *)v8 setAlwaysBounceVertical:0];
  [(CNAvatarCardActionsTableView *)v8 setBackgroundColor:0];
  [(CNAvatarCardActionsTableView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNAvatarCardActionsTableView *)v8 _setDrawsSeparatorAtTopOfSections:0];
  [(CNAvatarCardActionsTableView *)v8 _setTopPadding:0.0];
  [(CNAvatarCardActionsTableView *)v8 _setBottomPadding:0.0];
  [(CNAvatarCardActionsTableView *)v8 setSectionHeaderHeight:0.0];
  [(CNAvatarCardActionsTableView *)v8 setSectionFooterHeight:0.0];
  [(CNAvatarCardActionsTableView *)v8 _setSeparatorBackdropOverlayBlendMode:1];
  [(CNAvatarCardActionsView *)v7 addSubview:v8];
  [(CNAvatarCardActionsView *)v7 setTableView:v8];
  v9 = MEMORY[0x1E696ACD8];
  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
  v23[0] = v10;
  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:1 relatedBy:0 toItem:v7 attribute:1 multiplier:1.0 constant:0.0];
  v23[1] = v11;
  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  v23[2] = v12;
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:2 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:0.0];
  v23[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v9 activateConstraints:v14];

  v15 = +[CNAvatarCardActionCell cellNibForActions];
  [(CNAvatarCardActionsTableView *)v8 registerNib:v15 forCellReuseIdentifier:@"actionCell"];
  v16 = +[CNAvatarCardActionCell cellNibForContacts];

  [(CNAvatarCardActionsTableView *)v8 registerNib:v16 forCellReuseIdentifier:@"contactCell"];
  [(CNAvatarCardActionsTableView *)v8 setDataSource:v7];
  [(CNAvatarCardActionsTableView *)v8 setDelegate:v7];
  v17 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v7 action:sel_updateRollover_];
  [v17 setAllowableMovement:0.0];
  [v17 setMinimumPressDuration:0.0];
  [v17 setCancelsTouchesInView:0];
  [v17 setDelegate:v7];
  [(CNAvatarCardActionsView *)v7 addGestureRecognizer:v17];
  [(CNAvatarCardActionsView *)v7 setSelectionGestureRecognizer:v17];
  v18 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
  v19 = [v18 tweakedConfigurationForClass:objc_opt_class() usage:@"retarget"];

  v20 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v19 coordinateSpace:v8];
  [(CNAvatarCardActionsView *)v7 setRetargetBehavior:v20];

  return v7;
}

@end