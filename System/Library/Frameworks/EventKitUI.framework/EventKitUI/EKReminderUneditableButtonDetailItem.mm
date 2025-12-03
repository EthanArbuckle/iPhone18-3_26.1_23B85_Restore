@interface EKReminderUneditableButtonDetailItem
- (EKReminderUneditableButtonDetailItem)initWithUneditableButtonDetailItemDelegate:(id)delegate;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)uneditableButtonCellRequestedShowFirstUncompletedReminder:(id)reminder;
@end

@implementation EKReminderUneditableButtonDetailItem

- (EKReminderUneditableButtonDetailItem)initWithUneditableButtonDetailItemDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = EKReminderUneditableButtonDetailItem;
  v6 = [(EKReminderUneditableButtonDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uneditableButtonDetailItemDelegate, delegate);
  }

  return v7;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = EKReminderUneditableButtonDetailItem;
  [(EKEventDetailItem *)&v4 reset];
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [EKReminderUneditableButtonDetailCell alloc];
    if (self->_uneditableButtonDetailItemDelegate)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v7 = [(EKReminderUneditableButtonDetailCell *)v5 initWithEvent:self->super._event uneditableButtonCellDelegate:selfCopy];
    v8 = self->_cell;
    self->_cell = v7;

    cell = self->_cell;
  }

  return cell;
}

- (void)uneditableButtonCellRequestedShowFirstUncompletedReminder:(id)reminder
{
  cUIK_currentReminder = [(EKEvent *)self->super._event CUIK_currentReminder];
  [(EKReminderUneditableButtonDetailItemDelegate *)self->_uneditableButtonDetailItemDelegate uneditableButtonDetailItem:self requestsShowEvent:cUIK_currentReminder];
}

@end