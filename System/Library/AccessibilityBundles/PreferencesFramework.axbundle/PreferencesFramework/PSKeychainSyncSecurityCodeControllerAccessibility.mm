@interface PSKeychainSyncSecurityCodeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_configureTextEntryCell;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupTable;
- (void)viewDidLoad;
@end

@implementation PSKeychainSyncSecurityCodeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSKeychainSyncSecurityCodeController" hasInstanceVariable:@"_footerButton" withType:"UIButton"];
  [validationsCopy validateClass:@"PSKeychainSyncSecurityCodeController" hasInstanceMethod:@"_configureTextEntryCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSKeychainSyncSecurityCodeController" hasInstanceMethod:@"textEntryCell" withFullSignature:{"@", 0}];
}

- (void)_accessibilityMarkupTable
{
  v3 = [(PSKeychainSyncSecurityCodeControllerAccessibility *)self safeValueForKey:@"table"];
  [v3 accessibilitySetIdentification:@"KeychainSynchTable"];

  v5 = [(PSKeychainSyncSecurityCodeControllerAccessibility *)self safeValueForKey:@"table"];
  v4 = [(PSKeychainSyncSecurityCodeControllerAccessibility *)self safeValueForKey:@"_footerButton"];
  [v5 _accessibilitySetAssignedValue:v4 forKey:@"Footer"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PSKeychainSyncSecurityCodeControllerAccessibility;
  [(PSKeychainSyncSecurityCodeControllerAccessibility *)&v3 viewDidLoad];
  [(PSKeychainSyncSecurityCodeControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PSKeychainSyncSecurityCodeControllerAccessibility;
  [(PSKeychainSyncSecurityCodeControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v4.receiver = self;
  v4.super_class = PSKeychainSyncSecurityCodeControllerAccessibility;
  v3 = [(PSKeychainSyncSecurityCodeControllerAccessibility *)&v4 safeValueForKey:@"textEntryCell"];
  [(PSKeychainSyncSecurityCodeControllerAccessibility *)self _accessibilityMarkupTable];
}

- (id)_configureTextEntryCell
{
  v4.receiver = self;
  v4.super_class = PSKeychainSyncSecurityCodeControllerAccessibility;
  _configureTextEntryCell = [(PSKeychainSyncSecurityCodeControllerAccessibility *)&v4 _configureTextEntryCell];
  [_configureTextEntryCell setAccessibilityIdentifier:@"SecurityTextEntryCell"];

  return _configureTextEntryCell;
}

@end