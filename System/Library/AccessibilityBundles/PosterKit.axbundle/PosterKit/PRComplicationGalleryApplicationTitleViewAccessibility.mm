@interface PRComplicationGalleryApplicationTitleViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PRComplicationGalleryApplicationTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self accessibilityLabel];
  if (v3)
  {
    v7.receiver = self;
    v7.super_class = PRComplicationGalleryApplicationTitleViewAccessibility;
    v4 = *MEMORY[0x29EDC7F80] | [(PRComplicationGalleryApplicationTitleViewAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PRComplicationGalleryApplicationTitleViewAccessibility;
    v4 = [(PRComplicationGalleryApplicationTitleViewAccessibility *)&v6 accessibilityTraits];
  }

  return v4;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PRComplicationGalleryApplicationTitleViewAccessibility *)self accessibilityLabel];
  v3 = v2 != 0;

  return v3;
}

@end