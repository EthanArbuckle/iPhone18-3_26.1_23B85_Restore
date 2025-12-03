@interface EKReminderDetailCell
- (EKReminderDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable style:(int64_t)style;
- (void)setReminder:(id)reminder;
@end

@implementation EKReminderDetailCell

- (EKReminderDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable style:(int64_t)style
{
  editableCopy = editable;
  reminderCopy = reminder;
  v14.receiver = self;
  v14.super_class = EKReminderDetailCell;
  v11 = [(EKEventDetailCell *)&v14 initWithEvent:event editable:editableCopy style:style];
  v12 = v11;
  if (v11)
  {
    [(EKReminderDetailCell *)v11 setReminder:reminderCopy];
  }

  return v12;
}

- (void)setReminder:(id)reminder
{
  reminderCopy = reminder;
  if (self->_reminder != reminderCopy)
  {
    v6 = reminderCopy;
    objc_storeStrong(&self->_reminder, reminder);
    reminderCopy = v6;
  }
}

@end