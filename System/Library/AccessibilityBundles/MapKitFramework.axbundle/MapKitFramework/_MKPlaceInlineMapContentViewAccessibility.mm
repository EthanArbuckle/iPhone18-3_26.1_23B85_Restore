@interface _MKPlaceInlineMapContentViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _MKPlaceInlineMapContentViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(_MKPlaceInlineMapContentViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    [(_MKPlaceInlineMapContentViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    AXMapKitLocString(@"MAP_PLAIN");
  }
  v4 = ;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _MKPlaceInlineMapContentViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(_MKPlaceInlineMapContentViewAccessibility *)&v3 accessibilityTraits];
}

@end