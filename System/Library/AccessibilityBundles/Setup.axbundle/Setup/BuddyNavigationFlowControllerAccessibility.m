@interface BuddyNavigationFlowControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
- (id)wifiController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkMainNavBar;
@end

@implementation BuddyNavigationFlowControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SetupController" hasInstanceMethod:@"navigationFlowController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"buddyControllers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"wifiController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"navigator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"_presentViewControllerForBuddyController:animated:willPresentViewController:completion:" withFullSignature:{"v", "@", "B", "@?", "@?", 0}];
  [v3 validateClass:@"BuddyNavigationFlowNavigator" hasInstanceMethod:@"navigationController" withFullSignature:{"@", 0}];
}

- (id)accessibilityIdentifier
{
  v15 = *MEMORY[0x29EDCA608];
  LOBYTE(v11) = 0;
  objc_opt_class();
  v3 = [(BuddyNavigationFlowControllerAccessibility *)self safeValueForKey:@"buddyControllers"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 lastObject];

  v6 = AXLogUIA();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 accessibilityIdentifier];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_29C309000, v6, OS_LOG_TYPE_INFO, "NavBar: Buddy: identifier %@ %@", &v11, 0x16u);
  }

  v8 = [v5 accessibilityIdentifier];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BuddyNavigationFlowControllerAccessibility;
  [(BuddyNavigationFlowControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BuddyNavigationFlowControllerAccessibility *)self _accessibilityMarkMainNavBar];
}

void __133__BuddyNavigationFlowControllerAccessibility__presentViewControllerForBuddyController_animated_willPresentViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = AXLogUIA();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_29C309000, v4, OS_LOG_TYPE_INFO, "NavBar: Buddy: present view controller %@", &v7, 0xCu);
  }

  [*(a1 + 32) _accessibilityMarkMainNavBar];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityMarkMainNavBar
{
  objc_opt_class();
  v3 = [(BuddyNavigationFlowControllerAccessibility *)self safeValueForKeyPath:@"navigator.navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 navigationBar];
  [v5 accessibilitySetIdentification:@"AXSetupMainNavBar"];
}

- (id)wifiController
{
  v5.receiver = self;
  v5.super_class = BuddyNavigationFlowControllerAccessibility;
  v2 = [(BuddyNavigationFlowControllerAccessibility *)&v5 wifiController];
  v3 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/PreferenceBundles/AirPortSettings.bundle"];
  [v3 load];
  [MEMORY[0x29EDC7358] loadAccessibilityBundleForBundle:v3 didLoadCallback:0 force:1 loadAllAccessibilityInfo:0];

  return v2;
}

@end