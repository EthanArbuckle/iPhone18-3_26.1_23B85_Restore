@interface NCNotificationListSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureClearButtonIfNecessary;
- (void)_configureCollapseButtonIfNecessary;
@end

@implementation NCNotificationListSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"clearButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"collapseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"_configureClearButtonIfNecessary" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"_handleCollapseActionTriggered:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NCNotificationListSectionHeaderView" hasInstanceMethod:@"_configureCollapseButtonIfNecessary" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = NCNotificationListSectionHeaderViewAccessibility;
  [(NCNotificationListSectionHeaderViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationListSectionHeaderViewAccessibility *)self safeValueForKey:@"clearButton"];
  v4 = [(NCNotificationListSectionHeaderViewAccessibility *)self axTitle];
  [v3 setAccessibilityValue:v4];

  v5 = [(NCNotificationListSectionHeaderViewAccessibility *)self axDigestCollapseButton];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __94__NCNotificationListSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_29F317108;
  v10[4] = self;
  [v5 _setAccessibilityLabelBlock:v10];

  objc_initWeak(&location, self);
  v6 = [(NCNotificationListSectionHeaderViewAccessibility *)self axDigestCollapseButton];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __94__NCNotificationListSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_29F317130;
  objc_copyWeak(&v8, &location);
  [v6 _setAccessibilityActivateBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __94__NCNotificationListSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"collapse.digest");
  v4 = [*(a1 + 32) axTitle];
  v5 = [v2 stringWithFormat:v3, v4];

  return v5;
}

uint64_t __94__NCNotificationListSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_destroyWeak(&v2);
  return 1;
}

void __94__NCNotificationListSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 axDigestCollapseButton];
  [v2 _handleCollapseActionTriggered:v1];
}

- (void)_configureClearButtonIfNecessary
{
  v3.receiver = self;
  v3.super_class = NCNotificationListSectionHeaderViewAccessibility;
  [(NCNotificationListSectionHeaderViewAccessibility *)&v3 _configureClearButtonIfNecessary];
  [(NCNotificationListSectionHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_configureCollapseButtonIfNecessary
{
  v3.receiver = self;
  v3.super_class = NCNotificationListSectionHeaderViewAccessibility;
  [(NCNotificationListSectionHeaderViewAccessibility *)&v3 _configureCollapseButtonIfNecessary];
  [(NCNotificationListSectionHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end