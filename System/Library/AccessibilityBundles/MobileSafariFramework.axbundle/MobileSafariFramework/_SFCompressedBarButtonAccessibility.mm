@interface _SFCompressedBarButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation _SFCompressedBarButtonAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(_SFCompressedBarButtonAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 0;
  }

  isAccessibilityUserDefinedElement2 = [(_SFCompressedBarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

@end