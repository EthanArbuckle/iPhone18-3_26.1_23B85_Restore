@interface NCNotificationLongLookViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityBannerIsSticky;
@end

@implementation NCNotificationLongLookViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCDimmableView"];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceVariable:@"_notificationRequest" withType:"NCNotificationRequest"];
  [v3 validateClass:@"NCNotificationLongLookView" isKindOfClass:@"PLExpandedPlatterView"];
  [v3 validateClass:@"PLExpandedPlatterView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationOptions" hasInstanceMethod:@"dismissAutomatically" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationLongLookViewController" hasInstanceMethod:@"contentProviderDismissCustomContent:animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (BOOL)_accessibilityBannerIsSticky
{
  v2 = [(NCNotificationLongLookViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ncdimmableview_0.isa)];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
  v4 = [v3 safeValueForKey:@"_notificationRequest"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"options"];
  v7 = __UIAccessibilitySafeClass();

  LOBYTE(v6) = [v7 safeBoolForKey:@"dismissAutomatically"];
  return v6 ^ 1;
}

void __69__NCNotificationLongLookViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v1 contentProviderDismissCustomContent:0 animated:1];
}

@end