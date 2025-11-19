@interface AVxOverlayToolCellAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation AVxOverlayToolCellAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = _UIAccessibilityFocusedElements();
  v4 = [v3 containsObject:self];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AVxOverlayToolCellAccessibility;
  return [(AVxOverlayToolCellAccessibility *)&v6 isAccessibilityElement];
}

@end