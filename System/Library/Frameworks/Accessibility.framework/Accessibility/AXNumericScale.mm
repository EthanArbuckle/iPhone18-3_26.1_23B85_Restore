@interface AXNumericScale
+ (id)linearScaleWithLowerBound:(double)a3 upperBound:(double)a4;
+ (id)lnScaleWithLowerBound:(double)a3 upperBound:(double)a4;
+ (id)log10ScaleWithLowerBound:(double)a3 upperBound:(double)a4;
- (AXNumericScale)init;
- (AXNumericScale)initWithLowerBound:(double)a3 upperBound:(double)a4 apply:(id)a5 invert:(id)a6;
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

- (AXNumericScale)initWithLowerBound:(double)a3 upperBound:(double)a4 apply:(id)a5 invert:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = AXNumericScale;
  v12 = [(AXNumericScale *)&v19 init];
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
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_383 upperBound:&__block_literal_global_385 apply:a3 invert:a4];

  return v4;
}

+ (id)log10ScaleWithLowerBound:(double)a3 upperBound:(double)a4
{
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_387 upperBound:&__block_literal_global_389 apply:a3 invert:a4];

  return v4;
}

+ (id)lnScaleWithLowerBound:(double)a3 upperBound:(double)a4
{
  v4 = [[a1 alloc] initWithLowerBound:&__block_literal_global_391 upperBound:&__block_literal_global_393 apply:a3 invert:a4];

  return v4;
}

@end