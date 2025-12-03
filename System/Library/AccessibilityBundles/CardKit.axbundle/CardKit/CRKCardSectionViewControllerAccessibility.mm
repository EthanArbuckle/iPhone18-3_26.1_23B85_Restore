@interface CRKCardSectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupCardSectionButtons;
- (void)viewDidLayoutSubviews;
@end

@implementation CRKCardSectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CRKCardSectionViewController" hasInstanceMethod:@"_setupCardSectionButtons" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CRKCardSectionViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CRKCardSectionViewController" hasInstanceVariable:@"_overlayButton" withType:"CRKOverlayButton"];
  [validationsCopy validateClass:@"CRKCardSectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = CRKCardSectionViewControllerAccessibility;
  [(CRKCardSectionViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(CRKCardSectionViewControllerAccessibility *)self safeValueForKey:@"_overlayButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(CRKCardSectionViewControllerAccessibility *)self safeValueForKey:@"_overlayButton"];
  LODWORD(v3) = [v4 _accessibilityViewIsVisible];

  v5 = [(CRKCardSectionViewControllerAccessibility *)self safeValueForKey:@"viewIfLoaded"];
  v6 = v5;
  v7 = *MEMORY[0x29EDC7F70];
  if (v3)
  {
    v8 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v8 = 0;
  }

  [v5 setAccessibilityTraits:v8];
}

- (void)_setupCardSectionButtons
{
  v3.receiver = self;
  v3.super_class = CRKCardSectionViewControllerAccessibility;
  [(CRKCardSectionViewControllerAccessibility *)&v3 _setupCardSectionButtons];
  [(CRKCardSectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CRKCardSectionViewControllerAccessibility;
  [(CRKCardSectionViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(CRKCardSectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end