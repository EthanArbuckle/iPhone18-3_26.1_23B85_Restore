@interface UIProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIProgressView" hasInstanceMethod:@"_setProgress:" withFullSignature:{"v", "f", 0}];
  objc_storeStrong(v4, obj);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIProgressViewAccessibility;
  return [(UIProgressViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIProgressViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return ([(UIProgressViewAccessibility *)self _accessibilityViewIsVisible]& 1) != 0;
  }

  isAccessibilityUserDefinedElement2 = [(UIProgressViewAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(UIProgressViewAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedLabel).n128_u64[0];
  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"progress.text");
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(UIProgressViewAccessibility *)self accessibilityUserDefinedValue];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedValue).n128_u64[0];
  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"percent.value.formatter");
    v6 = [(UIProgressViewAccessibility *)self safeValueForKey:@"progress"];
    [v6 floatValue];
    v5 = AXFormatFloatWithPercentage();
    accessibilityUserDefinedValue2 = [v4 stringWithFormat:v7, v5];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
  }

  return accessibilityUserDefinedValue2;
}

- (CGRect)accessibilityFrame
{
  [(UIProgressViewAccessibility *)self bounds:0];
  v5.origin.y = v2 - 10.0;
  v5.size.height = v3 + 20.0;
  return UIAccessibilityConvertFrameToScreenCoordinates(v5, self);
}

@end