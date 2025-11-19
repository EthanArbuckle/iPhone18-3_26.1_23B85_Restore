@interface _SFCompressedBarButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation _SFCompressedBarButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(_SFCompressedBarButtonAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_SFCompressedBarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

@end