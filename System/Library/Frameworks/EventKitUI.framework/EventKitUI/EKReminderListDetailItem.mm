@interface EKReminderListDetailItem
+ (id)titleForCell;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)_createEventDetailCell;
@end

@implementation EKReminderListDetailItem

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"List-reminder-detail" value:@"List" table:0];

  return v3;
}

id __57__EKReminderListDetailItem_textFromEventAndReminderBlock__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6992FD0];
  v4 = [a3 list];
  v5 = [v4 name];
  v6 = [v3 localizedTitleForTitle:v5 isSuggestedEventCalendar:0 isBirthdayCalendar:0 allowsReminders:1 isIntegrationCalendar:0];

  return v6;
}

- (id)_createEventDetailCell
{
  v3 = [EKReminderDetailTextCell alloc];
  event = self->super.super.super._event;
  reminder = self->super.super.super._reminder;
  v6 = [(EKReminderListDetailItem *)self showExtraSpaceAtBottom];
  v7 = [objc_opt_class() allowDataDetector];
  v8 = [objc_opt_class() titleForCell];
  v9 = [objc_opt_class() textFromEventAndReminderBlock];
  LOBYTE(v12) = 1;
  v10 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:v6 allowDataDetector:v7 title:v8 textFromEventAndReminderBlock:v9 noBackgroundStyle:v12];

  return v10;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v10.receiver = self;
  v10.super_class = EKReminderListDetailItem;
  [(EKReminderTextDetailItem *)&v10 defaultCellHeightForSubitemAtIndex:a3 forWidth:v5 forceUpdate:a4];
  return result;
}

@end