@interface EKCalendarButtonEditItem
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)setButtonTarget:(id)a3 action:(SEL)a4;
@end

@implementation EKCalendarButtonEditItem

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if (!self->_cell)
  {
    v4 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = &v4->super.super;

    v6 = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
    v7 = [(UITableViewCell *)self->_cell textLabel];
    [v7 setTextColor:v6];

    buttonTitle = self->_buttonTitle;
    v9 = [(UITableViewCell *)self->_cell textLabel];
    [v9 setText:buttonTitle];

    accessibilityIdentifier = self->_accessibilityIdentifier;
    v11 = [(UITableViewCell *)self->_cell textLabel];
    [v11 setAccessibilityIdentifier:accessibilityIdentifier];
  }

  v12 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [(UITableViewCell *)self->_cell setBackgroundColor:v12];

  v13 = self->_cell;

  return v13;
}

- (void)setButtonTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_buttonTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_buttonAction = v6;
}

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonTarget);
  if (self->_buttonAction)
  {
    buttonAction = self->_buttonAction;
  }

  else
  {
    buttonAction = 0;
  }

  v8 = WeakRetained;
  [WeakRetained performSelector:buttonAction withObject:self];
}

@end