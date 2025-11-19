@interface PedestrianARArrowGuidanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PedestrianARArrowGuidanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_instructionLabel" withType:"UILabel"];
  [v3 validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_dynamicArrowImageView" withType:"UIImageView"];
  [v3 validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_dynamicArrowAngle" withType:"d"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PedestrianARArrowGuidanceViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(PedestrianARArrowGuidanceViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v3 = [(PedestrianARArrowGuidanceViewAccessibility *)self safeUIViewForKey:@"_dynamicArrowImageView"];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = &stru_2A21E4020;
  }

  else
  {
    [(PedestrianARArrowGuidanceViewAccessibility *)self safeDoubleForKey:@"_dynamicArrowAngle"];
    if (v6 >= 180.0)
    {
      v7 = @"LEFT";
    }

    else
    {
      v7 = @"RIGHT";
    }

    v5 = AXMapsLocString(v7);
  }

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(PedestrianARArrowGuidanceViewAccessibility *)self safeUIViewForKey:@"_dynamicArrowImageView"];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = &stru_2A21E4020;
  }

  else
  {
    v6 = [(PedestrianARArrowGuidanceViewAccessibility *)self safeUIViewForKey:@"_instructionLabel"];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

@end