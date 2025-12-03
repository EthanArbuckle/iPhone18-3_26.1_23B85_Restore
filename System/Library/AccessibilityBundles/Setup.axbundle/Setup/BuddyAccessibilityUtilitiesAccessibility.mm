@interface BuddyAccessibilityUtilitiesAccessibility
+ (id)navigationBarButton;
+ (id)navigationBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BuddyAccessibilityUtilitiesAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyAccessibilityUtilities" hasClassMethod:@"navigationBarButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyAccessibilityUtilities" hasClassMethod:@"navigationBarButtonItemWithTarget:selector:" withFullSignature:{"@", "@", ":", 0}];
}

+ (id)navigationBarButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___BuddyAccessibilityUtilitiesAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_navigationBarButton);
  v3 = accessibilityLocalizedString(@"accessibility.button.title");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)navigationBarButtonItemWithTarget:(id)target selector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___BuddyAccessibilityUtilitiesAccessibility;
  v4 = objc_msgSendSuper2(&v7, sel_navigationBarButtonItemWithTarget_selector_, target, selector);
  v5 = accessibilityLocalizedString(@"accessibility.button.title");
  [v4 setAccessibilityLabel:v5];

  return v4;
}

@end