@interface PedestrianARArrowGuidanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PedestrianARArrowGuidanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_instructionLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_dynamicArrowImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PedestrianARArrowGuidanceView" hasInstanceVariable:@"_dynamicArrowAngle" withType:"d"];
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
  isHidden = [v3 isHidden];

  if (isHidden)
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
  isHidden = [v3 isHidden];

  if (isHidden)
  {
    accessibilityLabel = &stru_2A21E4020;
  }

  else
  {
    v6 = [(PedestrianARArrowGuidanceViewAccessibility *)self safeUIViewForKey:@"_instructionLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end