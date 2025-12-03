@interface EKReminderTitleDetailItem
- (BOOL)shouldShowEditButtonInline;
- (BOOL)titleShouldInsetForEditButton:(id)button;
- (EKReminderTitleDetailItemDelegate)editDelegate;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)editButtonPressed;
- (void)reminderToggled;
- (void)reset;
- (void)setShowExtraSpaceAtBottom:(BOOL)bottom;
@end

@implementation EKReminderTitleDetailItem

- (void)reset
{
  v4.receiver = self;
  v4.super_class = EKReminderTitleDetailItem;
  [(EKEventDetailItem *)&v4 reset];
  cell = self->_cell;
  self->_cell = 0;
}

- (void)setShowExtraSpaceAtBottom:(BOOL)bottom
{
  self->_showExtraSpaceAtBottom = bottom;
  cell = self->_cell;
  if (cell)
  {
    [(EKReminderTitleDetailCell *)cell setShowExtraSpaceAtBottom:?];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKReminderTitleDetailCell alloc] initWithEvent:self->super._event reminder:self->super._reminder editable:0 delegate:self];
    v6 = self->_cell;
    self->_cell = v5;

    [(EKReminderTitleDetailCell *)self->_cell setShowExtraSpaceAtBottom:self->_showExtraSpaceAtBottom];
    cell = self->_cell;
  }

  return cell;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  update = [(EKReminderTitleDetailItem *)self cellForSubitemAtIndex:index, update];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [update systemLayoutSizeFittingSize:width withHorizontalFittingPriority:1000.0 verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (void)editButtonPressed
{
  editDelegate = [(EKReminderTitleDetailItem *)self editDelegate];
  [editDelegate editButtonPressed];
}

- (BOOL)shouldShowEditButtonInline
{
  editDelegate = [(EKReminderTitleDetailItem *)self editDelegate];

  if (!editDelegate)
  {
    return 0;
  }

  editDelegate2 = [(EKReminderTitleDetailItem *)self editDelegate];
  shouldShowEditButtonInline = [editDelegate2 shouldShowEditButtonInline];

  return shouldShowEditButtonInline;
}

- (void)reminderToggled
{
  v3 = self->super._event;
  [(EKEvent *)v3 setCompleted:[(EKEvent *)v3 completed]^ 1];

  [(EKEventDetailItem *)self notifySubitemDidSave:0];

  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:3];
}

- (BOOL)titleShouldInsetForEditButton:(id)button
{
  delegate = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(EKEventDetailItem *)self delegate];
  v7 = [delegate2 titleShouldInsetForEditButton:self];

  return v7;
}

- (EKReminderTitleDetailItemDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

@end