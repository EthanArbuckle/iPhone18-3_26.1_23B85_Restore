@interface PKFakeCalendarLocationDelegate
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (PKFakeCalendarLocationDelegate)initWithCell:(id)a3 window:(id)a4;
- (id)_searchBarInView:(id)a3;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
@end

@implementation PKFakeCalendarLocationDelegate

- (PKFakeCalendarLocationDelegate)initWithCell:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PKFakeCalendarLocationDelegate;
  v8 = [(PKFakeCalendarLocationDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_window, v7);
    objc_storeWeak(&v9->_cell, v6);
    v10 = [MEMORY[0x1E696AFB0] UUID];
    elementID = v9->_elementID;
    v9->_elementID = v10;

    v12 = [v6 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      do
      {
        v13 = [v12 superview];

        objc_opt_class();
        v12 = v13;
      }

      while ((objc_opt_isKindOfClass() & 1) == 0);
    }

    objc_storeWeak(&v9->_tableView, v13);
  }

  return v9;
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  if (WeakRetained)
  {
    v9[0] = self->_elementID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6[2](v6, v8, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6[2](v6, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v7 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v9 = objc_loadWeakRetained(&self->_window);
  v10 = v9;
  if (WeakRetained && v9)
  {
    v11 = [WeakRetained delegate];
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
    [v11 tableView:WeakRetained didSelectRowAtIndexPath:v12];

    v13 = dispatch_time(0, 800000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__PKFakeCalendarLocationDelegate__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    block[3] = &unk_1E82D7930;
    block[4] = self;
    v15 = v10;
    v16 = v7;
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

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
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

- (id)_searchBarInView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [(PKFakeCalendarLocationDelegate *)self _searchBarInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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