@interface MKCompassViewAccessibility
- (id)accessibilityValue;
@end

@implementation MKCompassViewAccessibility

- (id)accessibilityValue
{
  v2 = [(MKCompassViewAccessibility *)self safeValueForKey:@"_assetImageView"];
  v3 = [v2 layer];
  v4 = [v3 valueForKeyPath:@"transform.rotation.z"];
  [v4 floatValue];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = AXMapKitLocString(@"HEADING_FORMAT");
  v7 = AXDescriptionForHeadingInDegrees();
  v8 = [v5 localizedStringWithFormat:v6, v7];

  return v8;
}

@end