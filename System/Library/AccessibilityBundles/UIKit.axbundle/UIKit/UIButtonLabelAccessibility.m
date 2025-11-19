@interface UIButtonLabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonLabelAccessibility

- (BOOL)isAccessibilityElement
{
  v5 = [(UIButtonLabelAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 0;
  }

  v4 = [(UIButtonLabelAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

@end