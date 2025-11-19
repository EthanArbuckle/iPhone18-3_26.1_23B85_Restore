@interface SFAccountDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_cellForIdentifier:(id)a3 indexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFAccountDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFAccountDetailViewController" hasInstanceVariable:@"_passwordCell" withType:"SFEditableTableViewCell"];
  [v3 validateClass:@"SFAccountDetailViewController" hasInstanceMethod:@"_cellForIdentifier:indexPath:" withFullSignature:{"@", "@", 0}];
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

- (id)_cellForIdentifier:(id)a3 indexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = SFAccountDetailViewControllerAccessibility;
  v5 = [(SFAccountDetailViewControllerAccessibility *)&v7 _cellForIdentifier:a3 indexPath:a4];
  [(SFAccountDetailViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end