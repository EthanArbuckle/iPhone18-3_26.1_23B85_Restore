@interface IDScanConfirmationViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation IDScanConfirmationViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = IDScanConfirmationViewControllerAccessibility;
  [(IDScanConfirmationViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(IDScanConfirmationViewControllerAccessibility *)self safeUIViewForKey:@"imageView"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
  [v3 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A2184CA8];
  v4 = accessibilityLocalizedString(@"id.card.scanned.photo");
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = IDScanConfirmationViewControllerAccessibility;
  [(IDScanConfirmationViewControllerAccessibility *)&v3 viewDidLoad];
  [(IDScanConfirmationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end