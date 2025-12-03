@interface UIButtonLabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonLabelAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIButtonLabelAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 0;
  }

  isAccessibilityUserDefinedElement2 = [(UIButtonLabelAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

@end