@interface AXMNumericScale
+ (id)linearScaleWithLowerBound:(double)a3 upperBound:(double)a4;
+ (id)lnScaleWithLowerBound:(double)a3 upperBound:(double)a4;
+ (id)log10ScaleWithLowerBound:(double)a3 upperBound:(double)a4;
- (AXMNumericScale)initWithLowerBound:(double)a3 upperBound:(double)a4 apply:(id)a5 invert:(id)a6;
@end

@implementation AXMNumericScale

- (AXMNumericScale)initWithLowerBound:(double)a3 upperBound:(double)a4 apply:(id)a5 invert:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = AXMNumericScale;
  v12 = [(AXMNumericScale *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lowerBound = a3;
    v12->_upperBound = a4;
    v14 = [v10 copy];
    apply = v13->_apply;
    v13->_apply = v14;

    v16 = [v11 copy];
    invert = v13->_invert;
    v13->_invert = v16;
  }

  return v13;
}

+ (id)linearScaleWithLowerBound:(double)a3 upperBound:(double)a4
{
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_553 upperBound:&__block_literal_global_555 apply:a3 invert:a4];

  return v4;
}

+ (id)log10ScaleWithLowerBound:(double)a3 upperBound:(double)a4
{
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_557 upperBound:&__block_literal_global_559 apply:a3 invert:a4];

  return v4;
}

+ (id)lnScaleWithLowerBound:(double)a3 upperBound:(double)a4
{
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_561 upperBound:&__block_literal_global_563 apply:a3 invert:a4];

  return v4;
}

@end