@interface EKReminderListDetailItem
+ (id)titleForCell;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
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
  showExtraSpaceAtBottom = [(EKReminderListDetailItem *)self showExtraSpaceAtBottom];
  allowDataDetector = [objc_opt_class() allowDataDetector];
  titleForCell = [objc_opt_class() titleForCell];
  textFromEventAndReminderBlock = [objc_opt_class() textFromEventAndReminderBlock];
  LOBYTE(v12) = 1;
  v10 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:showExtraSpaceAtBottom allowDataDetector:allowDataDetector title:titleForCell textFromEventAndReminderBlock:textFromEventAndReminderBlock noBackgroundStyle:v12];

  return v10;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  updateCopy = update;
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v10.receiver = self;
  v10.super_class = EKReminderListDetailItem;
  [(EKReminderTextDetailItem *)&v10 defaultCellHeightForSubitemAtIndex:index forWidth:updateCopy forceUpdate:width];
  return result;
}

@end