@interface NTKInterpolatedColorPalette
- (BOOL)isSpecialColor;
@end

@implementation NTKInterpolatedColorPalette

- (BOOL)isSpecialColor
{
  [(NTKInterpolatedColorPalette *)self transitionFraction];
  if (v3 >= 0.5)
  {
    [(NTKInterpolatedColorPalette *)self toPalette];
  }

  else
  {
    [(NTKInterpolatedColorPalette *)self fromPalette];
  }
  v4 = ;
  isSpecialColor = [v4 isSpecialColor];

  return isSpecialColor;
}

@end