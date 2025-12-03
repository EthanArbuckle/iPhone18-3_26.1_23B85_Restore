@interface CAMFlipButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation CAMFlipButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentDevicePosition" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView"];
}

- (id)accessibilityValue
{
  v3 = [(CAMFlipButtonAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMViewfinderView", a2)];
  if (v3 || ([(CAMFlipButtonAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMFullscreenViewfinder")], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [MEMORY[0x29EDC7DA8] viewControllerForView:v3];
    v6 = __UIAccessibilitySafeClass();
  }

  else
  {
    v4 = [(CAMFlipButtonAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_11 startWithSelf:1];
    _accessibilityViewController = [v4 _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"_effectsController"];
  }

  v7 = [v6 safeIntegerForKey:@"_currentDevicePosition"];
  if (!v7)
  {
    v8 = @"camera.chooser.back.text";
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = @"camera.chooser.front.text";
LABEL_8:
    v9 = accessibilityCameraKitLocalizedString(v8);
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

uint64_t __48__CAMFlipButtonAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"PBController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end