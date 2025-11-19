@interface EKReminderTitleDetailItem
- (BOOL)shouldShowEditButtonInline;
- (BOOL)titleShouldInsetForEditButton:(id)a3;
- (EKReminderTitleDetailItemDelegate)editDelegate;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)editButtonPressed;
- (void)reminderToggled;
- (void)reset;
- (void)setShowExtraSpaceAtBottom:(BOOL)a3;
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

- (void)setShowExtraSpaceAtBottom:(BOOL)a3
{
  self->_showExtraSpaceAtBottom = a3;
  cell = self->_cell;
  if (cell)
  {
    [(EKReminderTitleDetailCell *)cell setShowExtraSpaceAtBottom:?];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  v6 = [(EKReminderTitleDetailItem *)self cellForSubitemAtIndex:a3, a5];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [v6 systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:1000.0 verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (void)editButtonPressed
{
  v2 = [(EKReminderTitleDetailItem *)self editDelegate];
  [v2 editButtonPressed];
}

- (BOOL)shouldShowEditButtonInline
{
  v3 = [(EKReminderTitleDetailItem *)self editDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EKReminderTitleDetailItem *)self editDelegate];
  v5 = [v4 shouldShowEditButtonInline];

  return v5;
}

- (void)reminderToggled
{
  v3 = self->super._event;
  [(EKEvent *)v3 setCompleted:[(EKEvent *)v3 completed]^ 1];

  [(EKEventDetailItem *)self notifySubitemDidSave:0];

  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:3];
}

- (BOOL)titleShouldInsetForEditButton:(id)a3
{
  v4 = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(EKEventDetailItem *)self delegate];
  v7 = [v6 titleShouldInsetForEditButton:self];

  return v7;
}

- (EKReminderTitleDetailItemDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

@end