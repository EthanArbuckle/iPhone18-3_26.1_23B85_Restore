@interface EKCalendarItemEditItem
+ (double)scaledHeightOfSystemTableViewCell;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (EKCalendarItemEditItemDelegate)delegate;
- (id)calendarItem;
- (id)viewForActionSheet;
- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action;
- (void)editItemViewControllerWantsKeyboardPinned:(BOOL)pinned;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)editor:(id)editor requestsInjectableViewControllerToBeShownForSubitem:(unint64_t)subitem;
- (void)notifyDidEndEditing;
- (void)notifyDidStartEditing;
- (void)notifyRequiresHeightChange;
- (void)notifySubitemDidSave:(unint64_t)save;
- (void)notifyTextChanged;
- (void)setCalendarItem:(id)item store:(id)store;
- (void)showViewController:(id)controller editor:(id)editor animated:(BOOL)animated;
@end

@implementation EKCalendarItemEditItem

- (void)setCalendarItem:(id)item store:(id)store
{
  obj = item;
  storeCopy = store;
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

  if (v9 != storeCopy)
  {
    objc_storeWeak(&self->_store, storeCopy);
  }

  [(EKCalendarItemEditItem *)self refreshFromCalendarItemAndStore];
}

- (id)calendarItem
{
  WeakRetained = objc_loadWeakRetained(&self->_calendarItem);

  return WeakRetained;
}

- (void)editor:(id)editor requestsInjectableViewControllerToBeShownForSubitem:(unint64_t)subitem
{
  editorCopy = editor;
  view = [editorCopy view];
  [view frame];
  v8 = [(EKCalendarItemEditItem *)self injectableViewControllerWithFrame:subitem forSubitemAtIndex:?];

  [(EKCalendarItemEditItem *)self showViewController:v8 editor:editorCopy animated:0];
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  editorCopy = editor;
  view = [editorCopy view];
  [view frame];
  v8 = [(EKCalendarItemEditItem *)self detailViewControllerWithFrame:subitem forSubitemAtIndex:?];

  [(EKCalendarItemEditItem *)self showViewController:v8 editor:editorCopy animated:1];
}

- (void)showViewController:(id)controller editor:(id)editor animated:(BOOL)animated
{
  animatedCopy = animated;
  obj = controller;
  editorCopy = editor;
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
      presentModally = [v13 presentModally];

      if (presentModally)
      {
        v15 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:editorCopy];
        v16 = [EKUIManagedNavigationController alloc];
        v17 = objc_loadWeakRetained(&self->_viewController);
        v18 = [(EKUIManagedNavigationController *)v16 initWithRootViewController:v17];

        view = [editorCopy view];
        if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
        {
          view2 = [editorCopy view];
          IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

          if (IsRegular)
          {
            [(EKUIManagedNavigationController *)v18 setModalPresentationStyle:6];
          }
        }

        else
        {
        }

        [editorCopy preferredContentSize];
        v27 = v26;
        v29 = v28;
        v30 = objc_loadWeakRetained(&self->_viewController);
        [v30 setPreferredContentSize:{v27, v29}];

        [v15 presentViewController:v18 animated:animatedCopy completion:0];
        goto LABEL_15;
      }
    }

    else
    {
    }

    navigationController = [editorCopy navigationController];
    v15 = navigationController;
    if (animatedCopy)
    {
      [navigationController pushViewController:obj animated:1];
    }

    else
    {
      viewControllers = [navigationController viewControllers];

      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:viewControllers];
      [v24 addObject:obj];
      navigationController2 = [editorCopy navigationController];
      [navigationController2 setViewControllers:v24 animated:0];

      v15 = viewControllers;
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

- (void)notifySubitemDidSave:(unint64_t)save
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKCalendarItemEditItem *)self usesDetailViewControllerForSubitem:save];
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

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  forceCopy = force;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  if (WeakRetained && forceCopy)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    [v6 saveAndDismissWithExtremePrejudice];
  }

  return 1;
}

- (void)editItemViewControllerWantsKeyboardPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 editItem:self wantsKeyboardPinned:pinnedCopy];
  }
}

- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action
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
    presentingViewController = [v13 presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    presentingViewController = [v13 navigationController];
    v12 = [presentingViewController popViewControllerAnimated:1];
  }
}

- (id)viewForActionSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  view = [WeakRetained view];

  return view;
}

+ (double)scaledHeightOfSystemTableViewCell
{
  if (MEMORY[0x1D38B98D0](self, a2))
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