@interface EKEventDeleteButtonEditItem
- (BOOL)shouldAppear;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)setDeleteButtonTarget:(id)a3 action:(SEL)a4;
@end

@implementation EKEventDeleteButtonEditItem

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = &v5->super.super;

    v7 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    [(UITableViewCell *)self->_cell setBackgroundColor:v7];

    v8 = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
    v9 = [(UITableViewCell *)self->_cell textLabel];
    [v9 setTextColor:v8];

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Delete Event" value:&stru_1F4EF6790 table:0];
    v12 = [(UITableViewCell *)self->_cell textLabel];
    [v12 setText:v11];

    [(UITableViewCell *)self->_cell setAccessibilityIdentifier:@"delete-event-cell"];
    cell = self->_cell;
  }

  return cell;
}

- (void)setDeleteButtonTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_deleteButtonTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_deleteButtonAction = v6;
}

- (BOOL)shouldAppear
{
  v2 = [(EKCalendarItemEditItem *)self calendarItem];
  v3 = [v2 isNew];

  return v3 ^ 1;
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v5 = a3;
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