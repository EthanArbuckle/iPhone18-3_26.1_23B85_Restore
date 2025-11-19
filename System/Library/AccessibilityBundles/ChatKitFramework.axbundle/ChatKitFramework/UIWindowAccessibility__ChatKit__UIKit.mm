@interface UIWindowAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsIsolatedWindow;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityWindowSections;
@end

@implementation UIWindowAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIWindow" hasProperty:@"rootViewController" withType:"@"];
  [v3 validateClass:@"CKMessagesController" hasProperty:@"chatController" withType:"@"];
  [v3 validateClass:@"CKChatController" hasProperty:@"entryView" withType:"@"];
  [v3 validateClass:@"CKMessageEntryView" hasProperty:@"contentView" withType:"@"];
  [v3 validateClass:@"CKMessageEntryContentView" hasProperty:@"textView" withType:"@"];
}

- (id)_accessibilityWindowSections
{
  v11.receiver = self;
  v11.super_class = UIWindowAccessibility__ChatKit__UIKit;
  v3 = [(UIWindowAccessibility__ChatKit__UIKit *)&v11 _accessibilityWindowSections];
  v4 = objc_opt_new();
  [v4 axSafelyAddObjectsFromArray:v3];
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
  v3 = [(UIWindowAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXMessagesExtensionWindow"];

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
  v3 = [(UIWindowAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXChatMainWindow"];

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