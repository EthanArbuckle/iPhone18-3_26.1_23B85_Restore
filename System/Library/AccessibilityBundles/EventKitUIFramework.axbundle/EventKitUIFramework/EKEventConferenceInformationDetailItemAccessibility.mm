@interface EKEventConferenceInformationDetailItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EKEventConferenceInformationDetailItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventTextDetailItem" hasInstanceMethod:@"cellForSubitemAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"EKEventConferenceInformationDetailItem" hasInstanceVariable:@"_cell" withType:"EKEventDetailCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = EKEventConferenceInformationDetailItemAccessibility;
  [(EKEventConferenceInformationDetailItemAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"join.conference");
  objc_opt_class();
  v4 = [(EKEventConferenceInformationDetailItemAccessibility *)self safeUIViewForKey:@"_cell"];
  v5 = __UIAccessibilityCastAsClass();

  accessoryView = [v5 accessoryView];
  [accessoryView setAccessibilityLabel:v3];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = EKEventConferenceInformationDetailItemAccessibility;
  v4 = [(EKEventConferenceInformationDetailItemAccessibility *)&v6 cellForSubitemAtIndex:index];
  [(EKEventConferenceInformationDetailItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end