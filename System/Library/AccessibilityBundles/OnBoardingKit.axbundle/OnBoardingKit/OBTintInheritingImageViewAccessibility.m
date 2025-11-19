@interface OBTintInheritingImageViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation OBTintInheritingImageViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(OBTintInheritingImageViewAccessibility *)self isAccessibilityUserDefinedElement];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end