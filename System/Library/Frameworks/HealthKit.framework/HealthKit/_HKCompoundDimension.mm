@interface _HKCompoundDimension
+ (id)dimensionWithBaseDimensions:(id)dimensions;
- (id)_initWithBaseDimensions:(id)dimensions;
@end

@implementation _HKCompoundDimension

+ (id)dimensionWithBaseDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  v5 = [[self alloc] _initWithBaseDimensions:dimensionsCopy];

  return v5;
}

- (id)_initWithBaseDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  v9.receiver = self;
  v9.super_class = _HKCompoundDimension;
  v5 = [(_HKDimension *)&v9 init];
  if (v5)
  {
    v6 = [dimensionsCopy copy];
    baseDimensions = v5->_baseDimensions;
    v5->_baseDimensions = v6;
  }

  return v5;
}

@end