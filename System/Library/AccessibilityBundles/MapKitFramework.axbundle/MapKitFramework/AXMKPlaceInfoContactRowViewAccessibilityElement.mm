@interface AXMKPlaceInfoContactRowViewAccessibilityElement
- (id)accessibilityDragSourceDescriptors;
@end

@implementation AXMKPlaceInfoContactRowViewAccessibilityElement

- (id)accessibilityDragSourceDescriptors
{
  v2 = [(AXMKPlaceInfoContactRowViewAccessibilityElement *)self accessibilityContainer];
  v3 = [v2 accessibilityDragSourceDescriptors];

  return v3;
}

@end