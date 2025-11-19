@interface _HKDimension
+ (id)dimensionFromString:(id)a3;
- (_HKDimension)init;
- (id)_baseDimensions;
- (id)description;
- (id)reduction;
@end

@implementation _HKDimension

- (_HKDimension)init
{
  v3.receiver = self;
  v3.super_class = _HKDimension;
  result = [(_HKDimension *)&v3 init];
  if (result)
  {
    result->_reductionLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)dimensionFromString:(id)a3
{
  v3 = a3;
  if (_HKDimensionGrammar_onceToken != -1)
  {
    +[_HKDimension dimensionFromString:];
  }

  v4 = [_HKFactorization factorizationFromString:v3 factorGrammar:_HKDimensionGrammar___grammar];
  if ([v4 factorCount] == 1 && (objc_msgSend(v4, "anyFactor"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "exponentForFactor:", v5), v5, v6 == 1))
  {
    v7 = [v4 anyFactor];
  }

  else
  {
    v7 = [_HKCompoundDimension dimensionWithBaseDimensions:v4];
  }

  v8 = v7;

  return v8;
}

- (id)reduction
{
  os_unfair_lock_lock(&self->_reductionLock);
  if (!self->_reduction)
  {
    v3 = +[(_HKFactorization *)_HKMutableFactorization];
    v4 = [(_HKDimension *)self _baseDimensions];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __25___HKDimension_reduction__block_invoke;
    v10[3] = &unk_1E737DE48;
    v11 = v3;
    v5 = v3;
    [v4 enumerateFactorsWithHandler:v10];

    v6 = [v5 copy];
    reduction = self->_reduction;
    self->_reduction = v6;
  }

  os_unfair_lock_unlock(&self->_reductionLock);
  v8 = self->_reduction;

  return v8;
}

- (id)description
{
  v2 = [(_HKDimension *)self _baseDimensions];
  v3 = [v2 description];

  return v3;
}

- (id)_baseDimensions
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end