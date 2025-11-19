@interface PRComplicationGalleryApplicationCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PRComplicationGalleryApplicationCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PRComplicationGalleryApplicationCellAccessibility *)self safeValueForKey:@"titleView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PRComplicationGalleryApplicationCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PRComplicationGalleryApplicationCellAccessibility *)&v3 accessibilityTraits];
}

@end