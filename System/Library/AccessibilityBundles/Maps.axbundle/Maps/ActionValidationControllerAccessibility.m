@interface ActionValidationControllerAccessibility
+ (void)presentAttributedString:(id)a3 inWindow:(id)a4;
@end

@implementation ActionValidationControllerAccessibility

+ (void)presentAttributedString:(id)a3 inWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___ActionValidationControllerAccessibility;
  objc_msgSendSuper2(&v11, sel_presentAttributedString_inWindow_, v6, v7);
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = *MEMORY[0x29EDC7EA8];
  v10 = [v8 string];
  UIAccessibilityPostNotification(v9, v10);
}

@end