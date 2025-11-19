@interface CKDetailsLocationShareHeaderFooterViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation CKDetailsLocationShareHeaderFooterViewAccessibility

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4 || AXRequestingClient() == 5)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CKDetailsLocationShareHeaderFooterViewAccessibility;
  return [(CKDetailsLocationShareHeaderFooterViewAccessibility *)&v4 isAccessibilityElement];
}

@end