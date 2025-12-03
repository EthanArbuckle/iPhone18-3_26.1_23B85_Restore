@interface SUUIOnboardingProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
@end

@implementation SUUIOnboardingProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIOnboardingProgressView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIOnboardingProgressView" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
}

- (id)accessibilityPath
{
  v3 = MEMORY[0x29EDC7948];
  [(SUUIOnboardingProgressViewAccessibility *)self bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  [(SUUIOnboardingProgressViewAccessibility *)self bounds];
  v9 = [v3 bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:v8 * 0.5 clockwise:{0.0, 360.0}];
  v10 = UIAccessibilityConvertPathFunction();

  return v10;
}

- (id)accessibilityLabel
{
  v2 = [(SUUIOnboardingProgressViewAccessibility *)self safeValueForKey:@"title"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (id)accessibilityValue
{
  [(SUUIOnboardingProgressViewAccessibility *)self safeDoubleForKey:@"progress"];
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXFormatFloatWithPercentage();
  }

  return v3;
}

@end