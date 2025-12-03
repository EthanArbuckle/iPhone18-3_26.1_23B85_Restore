@interface ACUIAddAccountViewControllerInvertColorsAccessibility
- (id)_specifierForAOLAccount;
- (id)_specifierForiCloudAccount;
@end

@implementation ACUIAddAccountViewControllerInvertColorsAccessibility

- (id)_specifierForAOLAccount
{
  v6.receiver = self;
  v6.super_class = ACUIAddAccountViewControllerInvertColorsAccessibility;
  _specifierForAOLAccount = [(ACUIAddAccountViewControllerInvertColorsAccessibility *)&v6 _specifierForAOLAccount];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = [_specifierForAOLAccount propertyForKey:@"iconImage"];
    v4 = [AXInvertColorsAppHelper invertImage:v3];

    [_specifierForAOLAccount setProperty:v4 forKey:@"iconImage"];
  }

  return _specifierForAOLAccount;
}

- (id)_specifierForiCloudAccount
{
  v6.receiver = self;
  v6.super_class = ACUIAddAccountViewControllerInvertColorsAccessibility;
  _specifierForiCloudAccount = [(ACUIAddAccountViewControllerInvertColorsAccessibility *)&v6 _specifierForiCloudAccount];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = [_specifierForiCloudAccount propertyForKey:@"iconImage"];
    v4 = [AXInvertColorsAppHelper invertImage:v3];

    [_specifierForiCloudAccount setProperty:v4 forKey:@"iconImage"];
  }

  return _specifierForiCloudAccount;
}

@end