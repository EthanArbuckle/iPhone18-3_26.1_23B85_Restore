@interface UIWindowAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsIsolatedWindow;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityWindowSections;
@end

@implementation UIWindowAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIWindow" hasProperty:@"rootViewController" withType:"@"];
  [validationsCopy validateClass:@"CKMessagesController" hasProperty:@"chatController" withType:"@"];
  [validationsCopy validateClass:@"CKChatController" hasProperty:@"entryView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryView" hasProperty:@"contentView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasProperty:@"textView" withType:"@"];
}

- (id)_accessibilityWindowSections
{
  v11.receiver = self;
  v11.super_class = UIWindowAccessibility__ChatKit__UIKit;
  _accessibilityWindowSections = [(UIWindowAccessibility__ChatKit__UIKit *)&v11 _accessibilityWindowSections];
  v4 = objc_opt_new();
  [v4 axSafelyAddObjectsFromArray:_accessibilityWindowSections];
  v5 = [(UIWindowAccessibility__ChatKit__UIKit *)self safeValueForKey:@"rootViewController"];
  NSClassFromString(&cfstr_Ckmessagescont_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 safeValueForKey:@"chatController"];
    v7 = [v6 safeValueForKey:@"entryView"];
    v8 = [v7 safeValueForKey:@"contentView"];
    v9 = [v8 safeValueForKey:@"textView"];

    if ([v9 _accessibilityViewIsVisible])
    {
      [v4 axSafelyAddObject:v9];
    }
  }

  return v4;
}

- (BOOL)_accessibilityIsIsolatedWindow
{
  accessibilityIdentifier = [(UIWindowAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXMessagesExtensionWindow"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIWindowAccessibility__ChatKit__UIKit;
  return [(UIWindowAccessibility__ChatKit__UIKit *)&v6 _accessibilityIsIsolatedWindow];
}

- (BOOL)accessibilityElementsHidden
{
  accessibilityIdentifier = [(UIWindowAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXChatMainWindow"];

  if (v4)
  {

    return _AXCKIsActionWindowShowing();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIWindowAccessibility__ChatKit__UIKit;
    return [(UIWindowAccessibility__ChatKit__UIKit *)&v6 accessibilityElementsHidden];
  }
}

@end