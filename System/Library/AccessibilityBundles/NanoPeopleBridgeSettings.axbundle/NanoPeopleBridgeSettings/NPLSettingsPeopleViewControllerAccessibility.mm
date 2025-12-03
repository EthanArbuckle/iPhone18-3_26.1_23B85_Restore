@interface NPLSettingsPeopleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAddPersonSelected;
- (id)_accessibilityCenterOfDialView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateCenterPersonViewAXInfo;
- (void)_accessibilityUpdateDeleteButtonLabel;
- (void)peripheryPersonViewTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation NPLSettingsPeopleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NPLSettingsPeopleViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"NPLSettingsPeopleViewController" hasInstanceVariable:@"_deleteButton" withType:"NPLDeleteButton"];
  [validationsCopy validateClass:@"NPLSettingsPeopleViewController" isKindOfClass:@"NPLPeopleViewController"];
  [validationsCopy validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"_centerPersonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"selectedPerson" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"_selectedSlotIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"peripheryPersonViewTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NPLPeopleViewController" hasInstanceMethod:@"_selectSlotAtIndex: includeSelectionIndicator: animated:" withFullSignature:{"v", "Q", "B", "B", 0}];
  [validationsCopy validateClass:@"NPLPersonView" hasInstanceMethod:@"position" withFullSignature:{"Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NPLSettingsPeopleViewControllerAccessibility;
  [(NPLSettingsPeopleViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityUpdateDeleteButtonLabel];
  [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityUpdateCenterPersonViewAXInfo];
}

- (id)_accessibilityCenterOfDialView
{
  if ([(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityAddPersonSelected])
  {
    v3 = @"_centerPersonView";
  }

  else
  {
    v3 = @"_deleteButton";
  }

  v4 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeValueForKey:v3];

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NPLSettingsPeopleViewControllerAccessibility;
  [(NPLSettingsPeopleViewControllerAccessibility *)&v3 viewDidLoad];
  [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)peripheryPersonViewTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [tappedCopy safeUnsignedIntegerForKey:@"position"];
  v6 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_selectedSlotIndex"];
  v9.receiver = self;
  v9.super_class = NPLSettingsPeopleViewControllerAccessibility;
  [(NPLSettingsPeopleViewControllerAccessibility *)&v9 peripheryPersonViewTapped:tappedCopy];

  if (v5 != v6)
  {
    if (UIAccessibilityIsVoiceOverRunning() && [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityAddPersonSelected])
    {
      _accessibilityCenterOfDialView = [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityCenterOfDialView];
      [_accessibilityCenterOfDialView accessibilityActivate];
    }

    else
    {
      v8 = UIAccessibilityLayoutChangedNotification;
      _accessibilityCenterOfDialView = [(NPLSettingsPeopleViewControllerAccessibility *)self _accessibilityCenterOfDialView];
      UIAccessibilityPostNotification(v8, _accessibilityCenterOfDialView);
    }
  }
}

- (void)_accessibilityUpdateDeleteButtonLabel
{
  v3 = accessibilityLocalizedString(@"delete.person.button");
  v4 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeValueForKey:@"_centerPersonView"];
  accessibilityLabel = [v4 accessibilityLabel];
  v7 = [NSString stringWithFormat:v3, accessibilityLabel];

  v6 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeValueForKey:@"_deleteButton"];
  [v6 setAccessibilityLabel:v7];
}

- (BOOL)_accessibilityAddPersonSelected
{
  v2 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeValueForKey:@"selectedPerson"];
  v3 = v2 == 0;

  return v3;
}

- (void)_accessibilityUpdateCenterPersonViewAXInfo
{
  v3 = [(NPLSettingsPeopleViewControllerAccessibility *)self safeValueForKey:@"_centerPersonView"];
  [v3 setIsAccessibilityElement:{-[NPLSettingsPeopleViewControllerAccessibility _accessibilityAddPersonSelected](self, "_accessibilityAddPersonSelected")}];
}

@end