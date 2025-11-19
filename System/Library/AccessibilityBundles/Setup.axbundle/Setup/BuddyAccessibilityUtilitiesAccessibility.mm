@interface BuddyAccessibilityUtilitiesAccessibility
+ (id)navigationBarButton;
+ (id)navigationBarButtonItemWithTarget:(id)a3 selector:(SEL)a4;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BuddyAccessibilityUtilitiesAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyAccessibilityUtilities" hasClassMethod:@"navigationBarButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyAccessibilityUtilities" hasClassMethod:@"navigationBarButtonItemWithTarget:selector:" withFullSignature:{"@", "@", ":", 0}];
}

+ (id)navigationBarButton
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___BuddyAccessibilityUtilitiesAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_navigationBarButton);
  v3 = accessibilityLocalizedString(@"accessibility.button.title");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)navigationBarButtonItemWithTarget:(id)a3 selector:(SEL)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___BuddyAccessibilityUtilitiesAccessibility;
  v4 = objc_msgSendSuper2(&v7, sel_navigationBarButtonItemWithTarget_selector_, a3, a4);
  v5 = accessibilityLocalizedString(@"accessibility.button.title");
  [v4 setAccessibilityLabel:v5];

  return v4;
}

@end