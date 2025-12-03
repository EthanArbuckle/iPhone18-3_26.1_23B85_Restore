@interface PRComplicationGalleryApplicationTitleViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PRComplicationGalleryApplicationTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  accessibilityLabel = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v7.receiver = self;
    v7.super_class = PRComplicationGalleryApplicationTitleViewAccessibility;
    accessibilityTraits = *MEMORY[0x29EDC7F80] | [(PRComplicationGalleryApplicationTitleViewAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PRComplicationGalleryApplicationTitleViewAccessibility;
    accessibilityTraits = [(PRComplicationGalleryApplicationTitleViewAccessibility *)&v6 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self accessibilityLabel];
  v3 = accessibilityLabel != 0;

  return v3;
}

@end