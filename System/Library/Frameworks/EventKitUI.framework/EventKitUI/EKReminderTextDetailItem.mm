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
  v6 = [(EKReminderTextDetailItem *)self showExtraSpaceAtBottom];
  v7 = [objc_opt_class() allowDataDetector];
  v8 = [objc_opt_class() titleForCell];
  v9 = [objc_opt_class() textFromEventAndReminderBlock];
  LOBYTE(v12) = 0;
  v10 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:v6 allowDataDetector:v7 title:v8 textFromEventAndReminderBlock:v9 noBackgroundStyle:v12];

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