@interface LARGBCaptureInstructionsVCAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation LARGBCaptureInstructionsVCAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LARGBCaptureInstructionsVC" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"LARGBCaptureInstructionsVC" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"LARGBCaptureInstructionsVC" hasInstanceVariable:@"_footerText" withType:"UITextView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = LARGBCaptureInstructionsVCAccessibility;
  [(LARGBCaptureInstructionsVCAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(LARGBCaptureInstructionsVCAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:v3];

  v5 = [(LARGBCaptureInstructionsVCAccessibility *)self safeUIViewForKey:@"_footerText"];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDBDB50]];

  v6 = [(LARGBCaptureInstructionsVCAccessibility *)self safeUIViewForKey:@"_footerText"];
  [v6 setAccessibilityLabel:0];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = LARGBCaptureInstructionsVCAccessibility;
  [(LARGBCaptureInstructionsVCAccessibility *)&v3 loadView];
  [(LARGBCaptureInstructionsVCAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end