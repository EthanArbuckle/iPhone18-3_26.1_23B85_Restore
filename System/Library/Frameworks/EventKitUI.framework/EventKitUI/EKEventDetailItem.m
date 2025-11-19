@interface EKEventDetailItem
- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)a3;
- (BOOL)isReadOnlyDelegateCalendar;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (EKEventDetailItemDelegate)delegate;
- (EKUINavigationDelegateProvider)viewControllerToPresentFrom;
- (void)dealloc;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)eventViewControllerDidTapInfoButton:(id)a3;
- (void)layoutCellsForWidth:(double)a3 position:(int)a4;
- (void)notifyDidCommit;
- (void)notifyDidEndEditing;
- (void)notifyDidStartEditing;
- (void)notifySubitemDidSave:(unint64_t)a3;
- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5;
@end

@implementation EKEventDetailItem

- (void)dealloc
{
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];
  v3.receiver = self;
  v3.super_class = EKEventDetailItem;
  [(EKEventDetailItem *)&v3 dealloc];
}

- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_event != v12 || self->_reminder != v9)
  {
    objc_storeStrong(&self->_event, a3);
    objc_storeStrong(&self->_reminder, a4);
    if (v9 | self->_event)
    {
      [(EKEventDetailItem *)self reset];
    }
  }

  [(EKEventDetailItem *)self setAllowsEditing:0];
  store = self->_store;
  self->_store = v10;
}

- (void)layoutCellsForWidth:(double)a3 position:(int)a4
{
  v4 = *&a4;
  if ([(EKEventDetailItem *)self numberOfSubitems])
  {
    v7 = 0;
    do
    {
      v8 = [(EKEventDetailItem *)self cellForSubitemAtIndex:v7];
      if (objc_opt_respondsToSelector())
      {
        [v8 layoutForWidth:v4 position:a3];
      }

      ++v7;
    }

    while ([(EKEventDetailItem *)self numberOfSubitems]> v7);
  }
}

- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)a3
{
  v3 = [(EKEventDetailItem *)self cellForSubitemAtIndex:a3];
  v4 = [v3 accessoryType] == 1;

  return v4;
}

- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v9 = a3;
  v6 = [v9 view];
  [v6 frame];
  v7 = [(EKEventDetailItem *)self detailViewControllerWithFrame:a4 forSubitemAtIndex:?];

  if (v7)
  {
    objc_storeStrong(&self->_viewController, v7);
    if (objc_opt_respondsToSelector())
    {
      [(EKEditItemViewControllerProtocol *)self->_viewController setEditDelegate:self];
    }

    v8 = [v9 navigationDelegate];
    [v8 pushViewController:v7 animated:1];
  }

  if ([(EKEventDetailItem *)self allowsEditing])
  {
    [(EKEventDetailItem *)self notifyDidStartEditing];
  }
}

- (void)eventViewControllerDidTapInfoButton:(id)a3
{
  v7 = a3;
  v4 = [v7 view];
  [v4 frame];
  v5 = [(EKEventDetailItem *)self infoDetailViewControllerWithFrame:?];

  if (v5)
  {
    objc_storeStrong(&self->_viewController, v5);
    if (objc_opt_respondsToSelector())
    {
      [(EKEditItemViewControllerProtocol *)self->_viewController setEditDelegate:self];
    }

    v6 = [v7 navigationDelegate];
    [v6 pushViewController:v5 animated:1];
  }

  if ([(EKEventDetailItem *)self allowsEditing])
  {
    [(EKEventDetailItem *)self notifyDidStartEditing];
  }
}

- (void)notifyDidStartEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 eventItemDidStartEditing:self];
  }
}

- (void)notifyDidEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 eventItemDidEndEditing:self];
  }
}

- (void)notifySubitemDidSave:(unint64_t)a3
{
  [(EKEventDetailItem *)self reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 eventItemDidSave:self];
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  if (self->_viewController)
  {
    v4 = !a3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(EKEditItemViewControllerProtocol *)self->_viewController saveAndDismissWithExtremePrejudice];
  }

  return 1;
}

- (BOOL)isReadOnlyDelegateCalendar
{
  v3 = [(EKEvent *)self->_event calendar];
  v4 = [v3 source];
  if ([v4 isDelegate])
  {
    v5 = [(EKEvent *)self->_event calendar];
    v6 = [v5 source];
    v7 = [v6 isWritable] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v23 = a3;
  if ([(EKEvent *)self->_event hasChanges])
  {
    v6 = [(EKEventDetailItem *)self delegate];
    v7 = [v6 editorForEventDetailItem:self];

    if (a4 <= 2)
    {
      if (a4)
      {
        if (a4 == 2)
        {
          if ([(EKEvent *)self->_event isOrWasPartOfRecurringSeries]&& [(EKEvent *)self->_event isExternallyOrganizedInvitation])
          {
            event = self->_event;
            v12 = v7;
            v13 = 0;
          }

          else
          {
            event = self->_event;
            v12 = v7;
            v13 = 1;
          }

          [v12 saveEvent:event span:v13 error:0];
        }
      }

      else
      {
        [(EKEvent *)self->_event rollback];
        [(EKEventDetailItem *)self reset];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = objc_loadWeakRetained(&self->_delegate);
          [v16 eventItemDidSave:self];
        }
      }

      goto LABEL_19;
    }

    switch(a4)
    {
      case 3:
        v8 = self->_event;
        v9 = v7;
        v10 = 0;
        break;
      case 4:
        v8 = self->_event;
        v9 = v7;
        v10 = 1;
        break;
      case 5:
        v8 = self->_event;
        v9 = v7;
        v10 = 2;
        break;
      default:
LABEL_19:

        goto LABEL_20;
    }

    [v9 saveEvent:v8 span:v10 error:0];
    [(EKEventDetailItem *)self notifyDidCommit];
    goto LABEL_19;
  }

LABEL_20:
  v17 = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 eventItemDidEndEditing:self];
  }

  if ([v23 modal])
  {
    v20 = [(EKEditItemViewControllerProtocol *)self->_viewController navigationController];
    v21 = [v20 popViewControllerAnimated:1];
  }

  viewController = self->_viewController;
  self->_viewController = 0;
}

- (void)notifyDidCommit
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained eventItemDidCommit:self];
  }
}

- (EKEventDetailItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EKUINavigationDelegateProvider)viewControllerToPresentFrom
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerToPresentFrom);

  return WeakRetained;
}

@end