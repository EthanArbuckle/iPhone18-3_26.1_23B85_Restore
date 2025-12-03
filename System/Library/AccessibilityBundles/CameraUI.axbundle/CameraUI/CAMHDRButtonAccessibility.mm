@interface CAMHDRButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMHDRButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMHDRButton" hasInstanceMethod:@"HDRMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMHDRButton" hasInstanceMethod:@"setHDRMode:" withFullSignature:{"v", "q", 0}];
}

- (BOOL)accessibilityActivate
{
  v2 = [(CAMHDRButtonAccessibility *)self safeValueForKey:@"HDRMode"];
  [v2 integerValue];

  AXPerformSafeBlock();
  return 1;
}

void __50__CAMHDRButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHDRMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMHDRButtonAccessibility *)self safeValueForKey:@"HDRMode"];
  intValue = [v2 intValue];

  if (intValue > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraKitLocalizedString(off_29F2AD430[intValue]);
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMHDRButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMHDRButtonAccessibility *)&v3 accessibilityTraits];
}

@end