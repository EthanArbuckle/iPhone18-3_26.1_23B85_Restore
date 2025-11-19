@interface GKConstantNoiseSource
+ (GKConstantNoiseSource)constantNoiseWithValue:(double)value;
- (GKConstantNoiseSource)initWithValue:(double)value;
@end

@implementation GKConstantNoiseSource

+ (GKConstantNoiseSource)constantNoiseWithValue:(double)value
{
  v3 = [objc_alloc(objc_opt_class()) initWithValue:value];

  return v3;
}

- (GKConstantNoiseSource)initWithValue:(double)value
{
  v5.receiver = self;
  v5.super_class = GKConstantNoiseSource;
  result = [(GKConstantNoiseSource *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

@end