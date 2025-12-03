@interface CAMPanoramaArrowViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CAMPanoramaArrowViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(CAMPanoramaArrowViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMPanoramaView", a2)];
  v3 = [v2 safeValueForKey:@"_direction"];
  integerValue = [v3 integerValue];

  if (integerValue == 1)
  {
    v5 = @"left.to.right";
    goto LABEL_5;
  }

  if (integerValue == 2)
  {
    v5 = @"right.to.left";
LABEL_5:
    v6 = accessibilityCameraKitLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end