@interface NTKKuiperFontTypographicSizeAnimation
- (CGSize)typographicSizeForFraction:(double)fraction;
@end

@implementation NTKKuiperFontTypographicSizeAnimation

- (CGSize)typographicSizeForFraction:(double)fraction
{
  if (qword_16D50 != -1)
  {
    sub_797C();
  }

  v4 = NTKKuiperMaximumTypographicSize();
  v5 = v4;
  v7 = v6;
  fractionCopy = fraction;
  *&v4 = fractionCopy;
  [qword_16D40 _solveForInput:v4];
  v10 = v9;
  v11 = v5 * v10;
  *&v10 = fractionCopy;
  [qword_16D48 _solveForInput:v10];
  v13 = v7 * (1.0 - v12);
  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

@end