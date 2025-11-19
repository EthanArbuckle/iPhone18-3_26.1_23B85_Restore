@interface UIProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIProgressView" hasInstanceMethod:@"_setProgress:" withFullSignature:{"v", "f", 0}];
  objc_storeStrong(v4, obj);
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIProgressViewAccessibility;
  return [(UIProgressViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (BOOL)isAccessibilityElement
{
  v5 = [(UIProgressViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return ([(UIProgressViewAccessibility *)self _accessibilityViewIsVisible]& 1) != 0;
  }

  v4 = [(UIProgressViewAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)accessibilityLabel
{
  v4 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v6 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v6 = accessibilityLocalizedString(@"progress.text");
  }

  return v6;
}

- (id)accessibilityValue
{
  v8 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedValue];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v10 = [(UIProgressViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"percent.value.formatter");
    v6 = [(UIProgressViewAccessibility *)self safeValueForKey:@"progress"];
    [v6 floatValue];
    v5 = AXFormatFloatWithPercentage();
    v10 = [v4 stringWithFormat:v7, v5];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
  }

  return v10;
}

- (CGRect)accessibilityFrame
{
  [(UIProgressViewAccessibility *)self bounds:0];
  v5.origin.y = v2 - 10.0;
  v5.size.height = v3 + 20.0;
  return UIAccessibilityConvertFrameToScreenCoordinates(v5, self);
}

@end