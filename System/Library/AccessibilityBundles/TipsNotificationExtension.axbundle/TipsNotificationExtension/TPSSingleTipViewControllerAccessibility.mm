@interface TPSSingleTipViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTip:(id)tip;
@end

@implementation TPSSingleTipViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSSingleTipViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"TPSSingleTipViewController" hasInstanceVariable:@"_imageAssetView" withType:"TPSImageAssetView"];
  [validationsCopy validateClass:@"TPSImageAssetView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"TPSSingleTipViewController" hasInstanceMethod:@"tip" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSTip" hasInstanceMethod:@"fullContentAssets" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSAssets" hasInstanceMethod:@"alt" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSSingleTipViewController" hasInstanceMethod:@"setTip:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TPSSingleTipViewController" hasInstanceVariable:@"_pendingTip" withType:"TPSTip"];
}

- (void)setTip:(id)tip
{
  v4.receiver = self;
  v4.super_class = TPSSingleTipViewControllerAccessibility;
  [(TPSSingleTipViewControllerAccessibility *)&v4 setTip:tip];
  [(TPSSingleTipViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = TPSSingleTipViewControllerAccessibility;
  [(TPSSingleTipViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(TPSSingleTipViewControllerAccessibility *)self safeValueForKey:@"_imageAssetView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(TPSSingleTipViewControllerAccessibility *)self safeValueForKey:@"tip"];
  if (!v5)
  {
    v5 = [(TPSSingleTipViewControllerAccessibility *)self safeValueForKey:@"_pendingTip"];
  }

  [v4 setIsAccessibilityElement:1];
  layer = [v4 layer];
  sublayers = [layer sublayers];

  v8 = [sublayers indexOfObjectPassingTest:&__block_literal_global_0];
  v9 = [v5 safeValueForKey:@"fullContentAssets"];
  v10 = [v9 safeStringForKey:@"alt"];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
    [v4 setAccessibilityLabel:v10];
    [v4 setAccessibilityHint:0];
  }

  else
  {
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
    v11 = accessibilityTipsLocalizedString(@"video.role");
    v12 = __UIAXStringForVariables();
    [v4 setAccessibilityLabel:{v12, v10, @"__AXStringForVariablesSentinel"}];
  }

  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  view = [v13 view];

  [view setAccessibilityIdentifier:kAXSingleTipsViewIdentifier];
}

uint64_t __85__TPSSingleTipViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isHidden] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end