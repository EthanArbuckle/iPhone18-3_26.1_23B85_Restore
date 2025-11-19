@interface PXGViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation PXGViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (qword_83568 != -1)
  {
    sub_20B84();
  }

  return (byte_83560 & 1) == 0;
}

@end