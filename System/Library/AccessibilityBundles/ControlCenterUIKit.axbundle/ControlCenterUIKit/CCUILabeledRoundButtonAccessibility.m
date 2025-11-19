@interface CCUILabeledRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CCUILabeledRoundButtonAccessibility)initWithGlyphImage:(id)a3 highlightColor:(id)a4;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUILabeledRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"initWithGlyphImage:highlightColor:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"labelsVisible" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CCUILabeledRoundButtonAccessibility;
  return [(CCUILabeledRoundButtonAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"buttonView"];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CCUILabeledRoundButtonAccessibility;
    v4 = [(CCUILabeledRoundButtonAccessibility *)&v6 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"buttonView"];
    v4 = [v3 accessibilityHint];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CCUILabeledRoundButtonAccessibility;
    v4 = [(CCUILabeledRoundButtonAccessibility *)&v6 accessibilityHint];
  }

  return v4;
}

- (id)accessibilityValue
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"buttonView"];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CCUILabeledRoundButtonAccessibility;
    v4 = [(CCUILabeledRoundButtonAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"buttonView"];
    v4 = [v3 accessibilityTraits];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CCUILabeledRoundButtonAccessibility;
    return [(CCUILabeledRoundButtonAccessibility *)&v6 accessibilityTraits];
  }
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(CCUILabeledRoundButtonAccessibility *)self _axLabelsVisible])
  {
    v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"buttonView"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CCUILabeledRoundButtonAccessibility;
    [(CCUILabeledRoundButtonAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CCUILabeledRoundButtonAccessibility;
  [(CCUILabeledRoundButtonAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(CCUILabeledRoundButtonAccessibility *)self safeValueForKey:@"subtitleLabel"];
  [v4 setIsAccessibilityElement:0];
}

- (CCUILabeledRoundButtonAccessibility)initWithGlyphImage:(id)a3 highlightColor:(id)a4
{
  v6.receiver = self;
  v6.super_class = CCUILabeledRoundButtonAccessibility;
  v4 = [(CCUILabeledRoundButtonAccessibility *)&v6 initWithGlyphImage:a3 highlightColor:a4];
  [(CCUILabeledRoundButtonAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end