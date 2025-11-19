@interface HUTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
@end

@implementation HUTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUAnnounceNotificationSettingsItem"];
  [v3 validateClass:@"HUTableViewCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityHint
{
  v2 = [(HUTableViewCellAccessibility *)self safeValueForKey:@"item"];
  MEMORY[0x29C2DA460](@"HUAnnounceNotificationSettingsItem");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 textLabel];

    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityHomeUILocalizedString(@"receive.notifications.when.setting");
    v7 = [v4 accessibilityLabel];
    v8 = [v5 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end