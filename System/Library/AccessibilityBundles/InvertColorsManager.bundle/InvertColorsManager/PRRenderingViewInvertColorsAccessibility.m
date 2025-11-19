@interface PRRenderingViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation PRRenderingViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (qword_83558 != -1)
  {
    sub_20B70();
  }

  return (byte_83550 | byte_83551) & 1;
}

@end