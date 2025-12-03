@interface PKFakeCalendarLocationDelegate
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (PKFakeCalendarLocationDelegate)initWithCell:(id)cell window:(id)window;
- (id)_searchBarInView:(id)view;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
@end

@implementation PKFakeCalendarLocationDelegate

- (PKFakeCalendarLocationDelegate)initWithCell:(id)cell window:(id)window
{
  cellCopy = cell;
  windowCopy = window;
  v15.receiver = self;
  v15.super_class = PKFakeCalendarLocationDelegate;
  v8 = [(PKFakeCalendarLocationDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_window, windowCopy);
    objc_storeWeak(&v9->_cell, cellCopy);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    elementID = v9->_elementID;
    v9->_elementID = uUID;

    superview = [cellCopy superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12Superview = superview;
    }

    else
    {
      do
      {
        v12Superview = [superview superview];

        objc_opt_class();
        superview = v12Superview;
      }

      while ((objc_opt_isKindOfClass() & 1) == 0);
    }

    objc_storeWeak(&v9->_tableView, v12Superview);
  }

  return v9;
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v9[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  if (WeakRetained)
  {
    v9[0] = self->_elementID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    completionCopy[2](completionCopy, v8, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v9 = objc_loadWeakRetained(&self->_window);
  v10 = v9;
  if (WeakRetained && v9)
  {
    delegate = [WeakRetained delegate];
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
    [delegate tableView:WeakRetained didSelectRowAtIndexPath:v12];

    v13 = dispatch_time(0, 800000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__PKFakeCalendarLocationDelegate__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    block[3] = &unk_1E82D7930;
    block[4] = self;
    v15 = v10;
    v16 = completionCopy;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }
}

void __115__PKFakeCalendarLocationDelegate__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _searchBarInView:*(a1 + 40)];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 searchField];
    [v3 becomeFirstResponder];

    v4 = *(a1 + 48);
    v5 = [v6 searchField];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_searchBarInView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = [(PKFakeCalendarLocationDelegate *)self _searchBarInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

@end