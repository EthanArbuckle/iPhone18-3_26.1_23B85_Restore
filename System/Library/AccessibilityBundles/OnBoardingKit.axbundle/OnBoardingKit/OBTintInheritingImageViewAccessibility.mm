@interface OBTintInheritingImageViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation OBTintInheritingImageViewAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(OBTintInheritingImageViewAccessibility *)self isAccessibilityUserDefinedElement];
  v3 = isAccessibilityUserDefinedElement;
  if (isAccessibilityUserDefinedElement)
  {
    bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end