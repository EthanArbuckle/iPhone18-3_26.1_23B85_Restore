@interface HUTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
@end

@implementation HUTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUAnnounceNotificationSettingsItem"];
  [validationsCopy validateClass:@"HUTableViewCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityHint
{
  v2 = [(HUTableViewCellAccessibility *)self safeValueForKey:@"item"];
  MEMORY[0x29C2DA460](@"HUAnnounceNotificationSettingsItem");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    textLabel = [v3 textLabel];

    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityHomeUILocalizedString(@"receive.notifications.when.setting");
    accessibilityLabel = [textLabel accessibilityLabel];
    v8 = [v5 localizedStringWithFormat:v6, accessibilityLabel];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end