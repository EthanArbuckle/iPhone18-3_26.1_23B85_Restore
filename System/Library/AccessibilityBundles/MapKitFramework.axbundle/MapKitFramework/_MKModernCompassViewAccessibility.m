@interface _MKModernCompassViewAccessibility
- (id)accessibilityValue;
@end

@implementation _MKModernCompassViewAccessibility

- (id)accessibilityValue
{
  [(_MKModernCompassViewAccessibility *)self safeDoubleForKey:@"mapHeading"];
  v2 = MEMORY[0x29EDBA0F8];
  v3 = AXMapKitLocString(@"HEADING_FORMAT");
  v4 = AXDescriptionForHeadingInDegrees();
  v5 = [v2 localizedStringWithFormat:v3, v4];

  return v5;
}

@end