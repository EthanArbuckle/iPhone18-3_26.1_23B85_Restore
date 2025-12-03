@interface EKReminderTextDetailItem
+ (BOOL)allowDataDetector;
+ (id)textFromEventAndReminderBlock;
- (id)_createEventDetailCell;
@end

@implementation EKReminderTextDetailItem

- (id)_createEventDetailCell
{
  v3 = [EKReminderDetailTextCell alloc];
  event = self->super.super._event;
  reminder = self->super.super._reminder;
  showExtraSpaceAtBottom = [(EKReminderTextDetailItem *)self showExtraSpaceAtBottom];
  allowDataDetector = [objc_opt_class() allowDataDetector];
  titleForCell = [objc_opt_class() titleForCell];
  textFromEventAndReminderBlock = [objc_opt_class() textFromEventAndReminderBlock];
  LOBYTE(v12) = 0;
  v10 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:showExtraSpaceAtBottom allowDataDetector:allowDataDetector title:titleForCell textFromEventAndReminderBlock:textFromEventAndReminderBlock noBackgroundStyle:v12];

  return v10;
}

+ (id)textFromEventAndReminderBlock
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)allowDataDetector
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

@end