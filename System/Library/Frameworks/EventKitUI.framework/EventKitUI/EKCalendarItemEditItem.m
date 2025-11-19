@interface EKCalendarItemEditItem
+ (double)scaledHeightOfSystemTableViewCell;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (EKCalendarItemEditItemDelegate)delegate;
- (id)calendarItem;
- (id)viewForActionSheet;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)editItemViewControllerWantsKeyboardPinned:(BOOL)a3;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)editor:(id)a3 requestsInjectableViewControllerToBeShownForSubitem:(unint64_t)a4;
- (void)notifyDidEndEditing;
- (void)notifyDidStartEditing;
- (void)notifyRequiresHeightChange;
- (void)notifySubitemDidSave:(unint64_t)a3;
- (void)notifyTextChanged;
- (void)setCalendarItem:(id)a3 store:(id)a4;
- (void)showViewController:(id)a3 editor:(id)a4 animated:(BOOL)a5;
@end

@implementation EKCalendarItemEditItem

- (void)setCalendarItem:(id)a3 store:(id)a4
{
  obj = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_calendarItem);

  if (WeakRetained != obj)
  {
    v8 = objc_storeWeak(&self->_calendarItem, obj);

    if (!obj)
    {
      [(EKCalendarItemEditItem *)self reset];
    }
  }

  v9 = objc_loadWeakRetained(&self->_store);

  if (v9 != v6)
  {
    objc_storeWeak(&self->_store, v6);
  }

  [(EKCalendarItemEditItem *)self refreshFromCalendarItemAndStore];
}

- (id)calendarItem
{
  WeakRetained = objc_loadWeakRetained(&self->_calendarItem);

  return WeakRetained;
}

- (void)editor:(id)a3 requestsInjectableViewControllerToBeShownForSubitem:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 view];
  [v7 frame];
  v8 = [(EKCalendarItemEditItem *)self injectableViewControllerWithFrame:a4 forSubitemAtIndex:?];

  [(EKCalendarItemEditItem *)self showViewController:v8 editor:v6 animated:0];
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 view];
  [v7 frame];
  v8 = [(EKCalendarItemEditItem *)self detailViewControllerWithFrame:a4 forSubitemAtIndex:?];

  [(EKCalendarItemEditItem *)self showViewController:v8 editor:v6 animated:1];
}

- (void)showViewController:(id)a3 editor:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  obj = a3;
  v8 = a4;
  if (obj)
  {
    v9 = objc_storeWeak(&self->_viewController, obj);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      [WeakRetained setEditDelegate:self];
    }

    v12 = objc_loadWeakRetained(&self->_viewController);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_loadWeakRetained(&self->_viewController);
      v14 = [v13 presentModally];

      if (v14)
      {
        v15 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:v8];
        v16 = [EKUIManagedNavigationController alloc];
        v17 = objc_loadWeakRetained(&self->_viewController);
        v18 = [(EKUIManagedNavigationController *)v16 initWithRootViewController:v17];

        v19 = [v8 view];
        if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v19))
        {
          v20 = [v8 view];
          IsRegular = EKUICurrentHeightSizeClassIsRegular(v20);

          if (IsRegular)
          {
            [(EKUIManagedNavigationController *)v18 setModalPresentationStyle:6];
          }
        }

        else
        {
        }

        [v8 preferredContentSize];
        v27 = v26;
        v29 = v28;
        v30 = objc_loadWeakRetained(&self->_viewController);
        [v30 setPreferredContentSize:{v27, v29}];

        [v15 presentViewController:v18 animated:v5 completion:0];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v22 = [v8 navigationController];
    v15 = v22;
    if (v5)
    {
      [v22 pushViewController:obj animated:1];
    }

    else
    {
      v23 = [v22 viewControllers];

      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v23];
      [v24 addObject:obj];
      v25 = [v8 navigationController];
      [v25 setViewControllers:v24 animated:0];

      v15 = v23;
    }

LABEL_15:
  }

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)notifyDidStartEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 editItemDidStartEditing:self];
  }
}

- (void)notifyDidEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 editItemDidEndEditing:self];
  }
}

- (void)notifySubitemDidSave:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKCalendarItemEditItem *)self usesDetailViewControllerForSubitem:a3];
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 editItem:self didSaveFromDetailViewController:v7];
  }
}

- (void)notifyTextChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 editItemTextChanged:self];
  }
}

- (void)notifyRequiresHeightChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 editItemRequiresHeightChange:self];
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  if (WeakRetained && v3)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    [v6 saveAndDismissWithExtremePrejudice];
  }

  return 1;
}

- (void)editItemViewControllerWantsKeyboardPinned:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 editItem:self wantsKeyboardPinned:v3];
  }
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 editItemDidEndEditing:self];
  }

  v13 = objc_loadWeakRetained(&self->_viewController);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 editItemShouldBeAskedForInjectableViewController])
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 editItemWantsInjectableViewControllerToBeShown:self];
    }
  }

  else
  {
    objc_storeWeak(&self->_viewController, 0);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 presentModally])
  {
    v11 = [v13 presentingViewController];
    [v11 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v11 = [v13 navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }
}

- (id)viewForActionSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [WeakRetained view];

  return v3;
}

+ (double)scaledHeightOfSystemTableViewCell
{
  if (MEMORY[0x1D38B98D0](a1, a2))
  {

    return EKUITableRowHeightDefault();
  }

  else
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    if (EKUIUnscaledCatalyst())
    {
      v4 = EKUIUnscaledCatalystTableRowHeightDefault();
    }

    else
    {
      v4 = 44.0;
    }

    [v3 _scaledValueForValue:v4];
    CalRoundToScreenScale(v5);
    if (v6 >= v4)
    {
      v4 = v6;
    }

    return v4;
  }
}

- (EKCalendarItemEditItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end