@interface _HKCompoundDimension
+ (id)dimensionWithBaseDimensions:(id)a3;
- (id)_initWithBaseDimensions:(id)a3;
@end

@implementation _HKCompoundDimension

+ (id)dimensionWithBaseDimensions:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithBaseDimensions:v4];

  return v5;
}

- (id)_initWithBaseDimensions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKCompoundDimension;
  v5 = [(_HKDimension *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    baseDimensions = v5->_baseDimensions;
    v5->_baseDimensions = v6;
  }

  return v5;
}

@end