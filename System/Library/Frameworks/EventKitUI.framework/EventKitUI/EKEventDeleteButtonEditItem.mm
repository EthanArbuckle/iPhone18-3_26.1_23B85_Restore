@interface EKEventDeleteButtonEditItem
- (BOOL)shouldAppear;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)setDeleteButtonTarget:(id)target action:(SEL)action;
@end

@implementation EKEventDeleteButtonEditItem

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = &v5->super.super;

    tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    [(UITableViewCell *)self->_cell setBackgroundColor:tableCellGroupedBackgroundColor];

    _systemDestructiveTintColor = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
    textLabel = [(UITableViewCell *)self->_cell textLabel];
    [textLabel setTextColor:_systemDestructiveTintColor];

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Delete Event" value:&stru_1F4EF6790 table:0];
    textLabel2 = [(UITableViewCell *)self->_cell textLabel];
    [textLabel2 setText:v11];

    [(UITableViewCell *)self->_cell setAccessibilityIdentifier:@"delete-event-cell"];
    cell = self->_cell;
  }

  return cell;
}

- (void)setDeleteButtonTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_deleteButtonTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_deleteButtonAction = actionCopy;
}

- (BOOL)shouldAppear
{
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  isNew = [calendarItem isNew];

  return isNew ^ 1;
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  editorCopy = editor;
  WeakRetained = objc_loadWeakRetained(&self->_deleteButtonTarget);
  if (self->_deleteButtonAction)
  {
    deleteButtonAction = self->_deleteButtonAction;
  }

  else
  {
    deleteButtonAction = 0;
  }

  v8 = WeakRetained;
  [WeakRetained performSelector:deleteButtonAction withObject:self];
}

@end