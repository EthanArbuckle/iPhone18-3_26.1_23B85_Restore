@interface NTKKuiperFontRotationAnimation
- (BOOL)isEqual:(id)equal;
- (NTKKuiperFontRotationAnimation)initWithFromDensity:(unint64_t)density toDensity:(unint64_t)toDensity;
- (double)rotationForDigitIndex:(unint64_t)index fraction:(double)fraction;
@end

@implementation NTKKuiperFontRotationAnimation

- (NTKKuiperFontRotationAnimation)initWithFromDensity:(unint64_t)density toDensity:(unint64_t)toDensity
{
  v7.receiver = self;
  v7.super_class = NTKKuiperFontRotationAnimation;
  result = [(NTKKuiperFontRotationAnimation *)&v7 init];
  if (result)
  {
    result->_fromDensity = density;
    result->_toDensity = toDensity;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKKuiperFontRotationAnimation fromDensity](self, "fromDensity"), v5 == [equalCopy fromDensity]))
  {
    toDensity = [(NTKKuiperFontRotationAnimation *)self toDensity];
    v7 = toDensity == [equalCopy toDensity];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)rotationForDigitIndex:(unint64_t)index fraction:(double)fraction
{
  v7 = NTKKuiperDigitRotationForDensity([(NTKKuiperFontRotationAnimation *)self fromDensity], index);
  v8.n128_u64[0] = NTKKuiperDigitRotationForDensity([(NTKKuiperFontRotationAnimation *)self toDensity], index);
  v9.n128_f64[0] = v7;
  v10.n128_f64[0] = fraction;

  _CLKInterpolateBetweenFloatsClipped(v9, v8, v10);
  return result;
}

@end