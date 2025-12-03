@interface ActionValidationControllerAccessibility
+ (void)presentAttributedString:(id)string inWindow:(id)window;
@end

@implementation ActionValidationControllerAccessibility

+ (void)presentAttributedString:(id)string inWindow:(id)window
{
  stringCopy = string;
  windowCopy = window;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___ActionValidationControllerAccessibility;
  objc_msgSendSuper2(&v11, sel_presentAttributedString_inWindow_, stringCopy, windowCopy);
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = *MEMORY[0x29EDC7EA8];
  string = [v8 string];
  UIAccessibilityPostNotification(v9, string);
}

@end