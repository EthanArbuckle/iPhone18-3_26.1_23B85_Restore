@interface UIFont(PDFKitUIFontExtensions)
- (id)convertToFitMaximumHeight:()PDFKitUIFontExtensions;
@end

@implementation UIFont(PDFKitUIFontExtensions)

- (id)convertToFitMaximumHeight:()PDFKitUIFontExtensions
{
  [self pointSize];
  v5 = v4;
  [self descender];
  v7 = v5 - v6;
  if (v7 <= a2 || ([self pointSize], a2 == 1.0))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self fontWithSize:v8 * a2 / v7];
  }

  return selfCopy;
}

@end