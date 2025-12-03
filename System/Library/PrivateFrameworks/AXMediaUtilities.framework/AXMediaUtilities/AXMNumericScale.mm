@interface AXMNumericScale
+ (id)linearScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
+ (id)lnScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
+ (id)log10ScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
- (AXMNumericScale)initWithLowerBound:(double)bound upperBound:(double)upperBound apply:(id)apply invert:(id)invert;
@end

@implementation AXMNumericScale

- (AXMNumericScale)initWithLowerBound:(double)bound upperBound:(double)upperBound apply:(id)apply invert:(id)invert
{
  applyCopy = apply;
  invertCopy = invert;
  v19.receiver = self;
  v19.super_class = AXMNumericScale;
  v12 = [(AXMNumericScale *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lowerBound = bound;
    v12->_upperBound = upperBound;
    v14 = [applyCopy copy];
    apply = v13->_apply;
    v13->_apply = v14;

    v16 = [invertCopy copy];
    invert = v13->_invert;
    v13->_invert = v16;
  }

  return v13;
}

+ (id)linearScaleWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_553 upperBound:&__block_literal_global_555 apply:bound invert:upperBound];

  return v4;
}

+ (id)log10ScaleWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_557 upperBound:&__block_literal_global_559 apply:bound invert:upperBound];

  return v4;
}

+ (id)lnScaleWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_561 upperBound:&__block_literal_global_563 apply:bound invert:upperBound];

  return v4;
}

@end