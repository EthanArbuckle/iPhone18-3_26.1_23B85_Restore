@interface PUCropAspectFlipperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setAspectRatioOrientation:(int64_t)orientation;
@end

@implementation PUCropAspectFlipperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUCropAspectFlipperView" hasInstanceVariable:@"_horizontalAspectButton" withType:"UIButton"];
  [validationsCopy validateClass:@"PUCropAspectFlipperView" hasInstanceVariable:@"_verticalAspectButton" withType:"UIButton"];
  [validationsCopy validateClass:@"PUCropAspectFlipperView" hasInstanceMethod:@"setAspectRatioOrientation:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PUCropToolController"];
  [validationsCopy validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspectViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = PUCropAspectFlipperViewAccessibility;
  [(PUCropAspectFlipperViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PUCropAspectFlipperViewAccessibility *)self safeValueForKey:@"_horizontalAspectButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 _setAccessibilityLabelBlock:&__block_literal_global_5];
  objc_opt_class();
  v5 = [(PUCropAspectFlipperViewAccessibility *)self safeValueForKey:@"_verticalAspectButton"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 _setAccessibilityLabelBlock:&__block_literal_global_504];
}

- (void)setAspectRatioOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PUCropAspectFlipperViewAccessibility;
  [(PUCropAspectFlipperViewAccessibility *)&v7 setAspectRatioOrientation:orientation];
  v4 = [(PUCropAspectFlipperViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_512 startWithSelf:1];
  _accessibilityViewController = [v4 _accessibilityViewController];
  v6 = [_accessibilityViewController safeValueForKey:@"cropAspectViewController"];
  [(PUCropAspectFlipperViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  [v6 _accessibilityLoadAccessibilityInformation];
}

uint64_t __66__PUCropAspectFlipperViewAccessibility_setAspectRatioOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Pucroptoolcont_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end