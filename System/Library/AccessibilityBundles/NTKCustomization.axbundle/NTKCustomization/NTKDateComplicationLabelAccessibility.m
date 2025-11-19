@interface NTKDateComplicationLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityFocusRingTintColor;
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
@end

@implementation NTKDateComplicationLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKDateComplicationLabel" hasInstanceVariable:@"_highlightView" withType:"UIView"];
  [v3 validateClass:@"NTKDateComplicationLabel" hasInstanceVariable:@"_computedTextColor" withType:"UIColor"];
  [v3 validateClass:@"NTKDateComplicationLabel" hasInstanceVariable:@"_internalLabel" withType:"UILabel"];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(NTKDateComplicationLabelAccessibility *)self safeValueForKey:@"_internalLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 text];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NTKDateComplicationLabelAccessibility;
  return [(NTKDateComplicationLabelAccessibility *)&v3 accessibilityTraits]& ~UIAccessibilityTraitNotEnabled;
}

- (id)accessibilityPath
{
  v2 = [(NTKDateComplicationLabelAccessibility *)self safeValueForKey:@"_highlightView"];
  v3 = [v2 accessibilityPath];

  return v3;
}

- (id)_accessibilityFocusRingTintColor
{
  objc_opt_class();
  v3 = [(NTKDateComplicationLabelAccessibility *)self safeValueForKey:@"_computedTextColor"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end