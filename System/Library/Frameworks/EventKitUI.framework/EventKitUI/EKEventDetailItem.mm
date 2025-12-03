@interface EKEventDetailItem
- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)index;
- (BOOL)isReadOnlyDelegateCalendar;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (EKEventDetailItemDelegate)delegate;
- (EKUINavigationDelegateProvider)viewControllerToPresentFrom;
- (void)dealloc;
- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action;
- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem;
- (void)eventViewControllerDidTapInfoButton:(id)button;
- (void)layoutCellsForWidth:(double)width position:(int)position;
- (void)notifyDidCommit;
- (void)notifyDidEndEditing;
- (void)notifyDidStartEditing;
- (void)notifySubitemDidSave:(unint64_t)save;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
@end

@implementation EKEventDetailItem

- (void)dealloc
{
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];
  v3.receiver = self;
  v3.super_class = EKEventDetailItem;
  [(EKEventDetailItem *)&v3 dealloc];
}

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  eventCopy = event;
  reminderCopy = reminder;
  storeCopy = store;
  if (self->_event != eventCopy || self->_reminder != reminderCopy)
  {
    objc_storeStrong(&self->_event, event);
    objc_storeStrong(&self->_reminder, reminder);
    if (reminderCopy | self->_event)
    {
      [(EKEventDetailItem *)self reset];
    }
  }

  [(EKEventDetailItem *)self setAllowsEditing:0];
  store = self->_store;
  self->_store = storeCopy;
}

- (void)layoutCellsForWidth:(double)width position:(int)position
{
  v4 = *&position;
  if ([(EKEventDetailItem *)self numberOfSubitems])
  {
    v7 = 0;
    do
    {
      v8 = [(EKEventDetailItem *)self cellForSubitemAtIndex:v7];
      if (objc_opt_respondsToSelector())
      {
        [v8 layoutForWidth:v4 position:width];
      }

      ++v7;
    }

    while ([(EKEventDetailItem *)self numberOfSubitems]> v7);
  }
}

- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)index
{
  v3 = [(EKEventDetailItem *)self cellForSubitemAtIndex:index];
  v4 = [v3 accessoryType] == 1;

  return v4;
}

- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view frame];
  v7 = [(EKEventDetailItem *)self detailViewControllerWithFrame:subitem forSubitemAtIndex:?];

  if (v7)
  {
    objc_storeStrong(&self->_viewController, v7);
    if (objc_opt_respondsToSelector())
    {
      [(EKEditItemViewControllerProtocol *)self->_viewController setEditDelegate:self];
    }

    navigationDelegate = [controllerCopy navigationDelegate];
    [navigationDelegate pushViewController:v7 animated:1];
  }

  if ([(EKEventDetailItem *)self allowsEditing])
  {
    [(EKEventDetailItem *)self notifyDidStartEditing];
  }
}

- (void)eventViewControllerDidTapInfoButton:(id)button
{
  buttonCopy = button;
  view = [buttonCopy view];
  [view frame];
  v5 = [(EKEventDetailItem *)self infoDetailViewControllerWithFrame:?];

  if (v5)
  {
    objc_storeStrong(&self->_viewController, v5);
    if (objc_opt_respondsToSelector())
    {
      [(EKEditItemViewControllerProtocol *)self->_viewController setEditDelegate:self];
    }

    navigationDelegate = [buttonCopy navigationDelegate];
    [navigationDelegate pushViewController:v5 animated:1];
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

- (void)notifySubitemDidSave:(unint64_t)save
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

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  if (self->_viewController)
  {
    v4 = !force;
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
  calendar = [(EKEvent *)self->_event calendar];
  source = [calendar source];
  if ([source isDelegate])
  {
    calendar2 = [(EKEvent *)self->_event calendar];
    source2 = [calendar2 source];
    v7 = [source2 isWritable] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action
{
  controllerCopy = controller;
  if ([(EKEvent *)self->_event hasChanges])
  {
    delegate = [(EKEventDetailItem *)self delegate];
    v7 = [delegate editorForEventDetailItem:self];

    if (action <= 2)
    {
      if (action)
      {
        if (action == 2)
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

    switch(action)
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

  if ([controllerCopy modal])
  {
    navigationController = [(EKEditItemViewControllerProtocol *)self->_viewController navigationController];
    v21 = [navigationController popViewControllerAnimated:1];
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