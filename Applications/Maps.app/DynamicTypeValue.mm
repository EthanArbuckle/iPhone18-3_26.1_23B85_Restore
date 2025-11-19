@interface DynamicTypeValue
- (double)scaledValue;
@end

@implementation DynamicTypeValue

- (double)scaledValue
{
  v3 = [(DynamicTypeValue *)self fontProvider];
  if (v3 && (v4 = v3, [(DynamicTypeValue *)self fontProvider], v5 = objc_claimAutoreleasedReturnValue(), v5[2](), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, v6))
  {
    [(DynamicTypeValue *)self unscaledValue];
    [v6 _mapkit_scaledValueForValue:1 scalingForMacIdiom:0 respectingTraitEnvironment:?];
    v8 = v7;

    return v8;
  }

  else
  {

    [(DynamicTypeValue *)self unscaledValue];
  }

  return result;
}

@end