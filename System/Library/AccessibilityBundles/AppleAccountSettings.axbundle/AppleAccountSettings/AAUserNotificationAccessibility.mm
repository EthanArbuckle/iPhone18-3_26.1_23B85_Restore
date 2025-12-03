@interface AAUserNotificationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message secureTextFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message textFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion;
@end

@implementation AAUserNotificationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUserNotification" hasClassMethod:@"showUserNotificationWithTitle: message: cancelButtonTitle: otherButtonTitle: withCompletionBlock:" withFullSignature:{"v", "@", "@", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"AAUserNotification" hasClassMethod:@"showUserNotificationWithTitle: message: textFieldTitle: cancelButtonTitle: otherButtonTitle: completion:" withFullSignature:{"v", "@", "@", "@", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"AAUserNotification" hasClassMethod:@"showUserNotificationWithTitle: message: secureTextFieldTitle: cancelButtonTitle: otherButtonTitle: completion:" withFullSignature:{"v", "@", "@", "@", "@", "@", "@?", 0}];
}

+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block
{
  v12 = *MEMORY[0x29EDC7F10];
  blockCopy = block;
  otherButtonTitleCopy = otherButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  UIAccessibilityPostNotification(v12, 0);
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___AAUserNotificationAccessibility;
  objc_msgSendSuper2(&v18, sel_showUserNotificationWithTitle_message_cancelButtonTitle_otherButtonTitle_withCompletionBlock_, titleCopy, messageCopy, buttonTitleCopy, otherButtonTitleCopy, blockCopy);
}

+ (void)showUserNotificationWithTitle:(id)title message:(id)message textFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion
{
  v14 = *MEMORY[0x29EDC7F10];
  completionCopy = completion;
  otherButtonTitleCopy = otherButtonTitle;
  buttonTitleCopy = buttonTitle;
  fieldTitleCopy = fieldTitle;
  messageCopy = message;
  titleCopy = title;
  UIAccessibilityPostNotification(v14, 0);
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___AAUserNotificationAccessibility;
  objc_msgSendSuper2(&v21, sel_showUserNotificationWithTitle_message_textFieldTitle_cancelButtonTitle_otherButtonTitle_completion_, titleCopy, messageCopy, fieldTitleCopy, buttonTitleCopy, otherButtonTitleCopy, completionCopy);
}

+ (void)showUserNotificationWithTitle:(id)title message:(id)message secureTextFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion
{
  v14 = *MEMORY[0x29EDC7F10];
  completionCopy = completion;
  otherButtonTitleCopy = otherButtonTitle;
  buttonTitleCopy = buttonTitle;
  fieldTitleCopy = fieldTitle;
  messageCopy = message;
  titleCopy = title;
  UIAccessibilityPostNotification(v14, 0);
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___AAUserNotificationAccessibility;
  objc_msgSendSuper2(&v21, sel_showUserNotificationWithTitle_message_secureTextFieldTitle_cancelButtonTitle_otherButtonTitle_completion_, titleCopy, messageCopy, fieldTitleCopy, buttonTitleCopy, otherButtonTitleCopy, completionCopy);
}

@end