@interface EKCalendarButtonEditItem
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)setButtonTarget:(id)target action:(SEL)action;
@end

@implementation EKCalendarButtonEditItem

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!self->_cell)
  {
    v4 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = &v4->super.super;

    _systemDestructiveTintColor = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
    textLabel = [(UITableViewCell *)self->_cell textLabel];
    [textLabel setTextColor:_systemDestructiveTintColor];

    buttonTitle = self->_buttonTitle;
    textLabel2 = [(UITableViewCell *)self->_cell textLabel];
    [textLabel2 setText:buttonTitle];

    accessibilityIdentifier = self->_accessibilityIdentifier;
    textLabel3 = [(UITableViewCell *)self->_cell textLabel];
    [textLabel3 setAccessibilityIdentifier:accessibilityIdentifier];
  }

  tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [(UITableViewCell *)self->_cell setBackgroundColor:tableCellGroupedBackgroundColor];

  v13 = self->_cell;

  return v13;
}

- (void)setButtonTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_buttonTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_buttonAction = actionCopy;
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  editorCopy = editor;
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