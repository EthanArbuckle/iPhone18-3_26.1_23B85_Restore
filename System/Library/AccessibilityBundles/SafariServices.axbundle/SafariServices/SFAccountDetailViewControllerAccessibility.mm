@interface SFAccountDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_cellForIdentifier:(id)identifier indexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFAccountDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFAccountDetailViewController" hasInstanceVariable:@"_passwordCell" withType:"SFEditableTableViewCell"];
  [validationsCopy validateClass:@"SFAccountDetailViewController" hasInstanceMethod:@"_cellForIdentifier:indexPath:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SFAccountDetailViewControllerAccessibility;
  [(SFAccountDetailViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilitySafariServicesLocalizedString(@"password.cell.hint");
  v4 = [(SFAccountDetailViewControllerAccessibility *)self safeUIViewForKey:@"_passwordCell"];
  [v4 setAccessibilityHint:v3];
}

- (id)_cellForIdentifier:(id)identifier indexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = SFAccountDetailViewControllerAccessibility;
  v5 = [(SFAccountDetailViewControllerAccessibility *)&v7 _cellForIdentifier:identifier indexPath:path];
  [(SFAccountDetailViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end