@interface SetupControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkMainNavBar;
- (void)_createNavigationController;
- (void)_showModalWiFiSettings;
@end

@implementation SetupControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"navigationFlowController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"buddyControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"wifiController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"_createNavigationController" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"navigationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"_showModalWiFiSettings" withFullSignature:{"v", 0}];
}

- (id)accessibilityIdentifier
{
  v16 = *MEMORY[0x29EDCA608];
  LOBYTE(v12) = 0;
  objc_opt_class();
  v3 = [(SetupControllerAccessibility *)self safeValueForKey:@"navigationFlowController"];
  v4 = [v3 safeValueForKey:@"buddyControllers"];
  v5 = __UIAccessibilityCastAsClass();

  lastObject = [v5 lastObject];

  v7 = AXLogUIA();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    accessibilityIdentifier = [lastObject accessibilityIdentifier];
    v12 = 138412546;
    v13 = lastObject;
    v14 = 2112;
    v15 = accessibilityIdentifier;
    _os_log_impl(&dword_29C309000, v7, OS_LOG_TYPE_INFO, "NavBar: Buddy: identifier %@ %@", &v12, 0x16u);
  }

  accessibilityIdentifier2 = [lastObject accessibilityIdentifier];

  v10 = *MEMORY[0x29EDCA608];

  return accessibilityIdentifier2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = SetupControllerAccessibility;
  [(SetupControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityMarkMainNavBar
{
  objc_opt_class();
  v3 = [(SetupControllerAccessibility *)self safeValueForKey:@"navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  navigationBar = [v4 navigationBar];
  [navigationBar accessibilitySetIdentification:@"AXSetupMainNavBar"];
}

- (void)_createNavigationController
{
  v3.receiver = self;
  v3.super_class = SetupControllerAccessibility;
  [(SetupControllerAccessibility *)&v3 _createNavigationController];
  [(SetupControllerAccessibility *)self _accessibilityMarkMainNavBar];
}

- (void)_showModalWiFiSettings
{
  v8.receiver = self;
  v8.super_class = SetupControllerAccessibility;
  [(SetupControllerAccessibility *)&v8 _showModalWiFiSettings];
  objc_opt_class();
  v3 = [(SetupControllerAccessibility *)self safeValueForKey:@"navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  visibleViewController = [v4 visibleViewController];
  __UIAccessibilitySafeClass();

  navigationController = [visibleViewController navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar accessibilitySetIdentification:@"AXSetupMainNavBar"];
}

@end