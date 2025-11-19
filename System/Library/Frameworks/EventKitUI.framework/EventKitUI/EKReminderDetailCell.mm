@interface EKReminderDetailCell
- (EKReminderDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 style:(int64_t)a6;
- (void)setReminder:(id)a3;
@end

@implementation EKReminderDetailCell

- (EKReminderDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 style:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = EKReminderDetailCell;
  v11 = [(EKEventDetailCell *)&v14 initWithEvent:a3 editable:v7 style:a6];
  v12 = v11;
  if (v11)
  {
    [(EKReminderDetailCell *)v11 setReminder:v10];
  }

  return v12;
}

- (void)setReminder:(id)a3
{
  v5 = a3;
  if (self->_reminder != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_reminder, a3);
    v5 = v6;
  }
}

@end