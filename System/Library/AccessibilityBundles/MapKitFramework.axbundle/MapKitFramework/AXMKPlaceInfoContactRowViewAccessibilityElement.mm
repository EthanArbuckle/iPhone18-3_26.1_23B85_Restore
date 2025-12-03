@interface AXMKPlaceInfoContactRowViewAccessibilityElement
- (id)accessibilityDragSourceDescriptors;
@end

@implementation AXMKPlaceInfoContactRowViewAccessibilityElement

- (id)accessibilityDragSourceDescriptors
{
  accessibilityContainer = [(AXMKPlaceInfoContactRowViewAccessibilityElement *)self accessibilityContainer];
  accessibilityDragSourceDescriptors = [accessibilityContainer accessibilityDragSourceDescriptors];

  return accessibilityDragSourceDescriptors;
}

@end