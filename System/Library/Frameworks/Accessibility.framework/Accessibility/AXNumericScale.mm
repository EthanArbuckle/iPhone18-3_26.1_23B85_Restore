@interface AXNumericScale
+ (id)linearScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
+ (id)lnScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
+ (id)log10ScaleWithLowerBound:(double)bound upperBound:(double)upperBound;
- (AXNumericScale)init;
- (AXNumericScale)initWithLowerBound:(double)bound upperBound:(double)upperBound apply:(id)apply invert:(id)invert;
@end

@implementation AXNumericScale

- (AXNumericScale)init
{
  v3 = AXAudioGraphLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(AXNumericScale *)v3 init];
  }

  return [(AXNumericScale *)self initWithLowerBound:0 upperBound:0 apply:0.0 invert:0.0];
}

- (AXNumericScale)initWithLowerBound:(double)bound upperBound:(double)upperBound apply:(id)apply invert:(id)invert
{
  applyCopy = apply;
  invertCopy = invert;
  v19.receiver = self;
  v19.super_class = AXNumericScale;
  v12 = [(AXNumericScale *)&v19 init];
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
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_383 upperBound:&__block_literal_global_385 apply:bound invert:upperBound];

  return v4;
}

+ (id)log10ScaleWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_387 upperBound:&__block_literal_global_389 apply:bound invert:upperBound];

  return v4;
}

+ (id)lnScaleWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:&__block_literal_global_391 upperBound:&__block_literal_global_393 apply:bound invert:upperBound];

  return v4;
}

@end