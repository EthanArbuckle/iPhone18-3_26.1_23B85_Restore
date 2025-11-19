@interface PUCropAspectFlipperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setAspectRatioOrientation:(int64_t)a3;
@end

@implementation PUCropAspectFlipperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUCropAspectFlipperView" hasInstanceVariable:@"_horizontalAspectButton" withType:"UIButton"];
  [v3 validateClass:@"PUCropAspectFlipperView" hasInstanceVariable:@"_verticalAspectButton" withType:"UIButton"];
  [v3 validateClass:@"PUCropAspectFlipperView" hasInstanceMethod:@"setAspectRatioOrientation:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"PUCropToolController"];
  [v3 validateClass:@"PUCropToolController" hasInstanceMethod:@"cropAspectViewController" withFullSignature:{"@", 0}];
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

- (void)setAspectRatioOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PUCropAspectFlipperViewAccessibility;
  [(PUCropAspectFlipperViewAccessibility *)&v7 setAspectRatioOrientation:a3];
  v4 = [(PUCropAspectFlipperViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_512 startWithSelf:1];
  v5 = [v4 _accessibilityViewController];
  v6 = [v5 safeValueForKey:@"cropAspectViewController"];
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