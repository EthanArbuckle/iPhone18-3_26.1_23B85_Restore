@interface EKReminderUneditableButtonDetailItem
- (EKReminderUneditableButtonDetailItem)initWithUneditableButtonDetailItemDelegate:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
- (void)uneditableButtonCellRequestedShowFirstUncompletedReminder:(id)a3;
@end

@implementation EKReminderUneditableButtonDetailItem

- (EKReminderUneditableButtonDetailItem)initWithUneditableButtonDetailItemDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKReminderUneditableButtonDetailItem;
  v6 = [(EKReminderUneditableButtonDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uneditableButtonDetailItemDelegate, a3);
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

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [EKReminderUneditableButtonDetailCell alloc];
    if (self->_uneditableButtonDetailItemDelegate)
    {
      v6 = self;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(EKReminderUneditableButtonDetailCell *)v5 initWithEvent:self->super._event uneditableButtonCellDelegate:v6];
    v8 = self->_cell;
    self->_cell = v7;

    cell = self->_cell;
  }

  return cell;
}

- (void)uneditableButtonCellRequestedShowFirstUncompletedReminder:(id)a3
{
  v4 = [(EKEvent *)self->super._event CUIK_currentReminder];
  [(EKReminderUneditableButtonDetailItemDelegate *)self->_uneditableButtonDetailItemDelegate uneditableButtonDetailItem:self requestsShowEvent:v4];
}

@end