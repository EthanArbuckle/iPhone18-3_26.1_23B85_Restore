@interface _HKCompoundUnit
+ (id)unitWithBaseUnits:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_HKCompoundUnit)initWithCoder:(id)a3;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4;
- (id)_initWithBaseUnits:(id)a3;
- (id)dimension;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKCompoundUnit

+ (id)unitWithBaseUnits:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithBaseUnits:v4];

  return v5;
}

- (id)_initWithBaseUnits:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKCompoundUnit;
  v5 = [(HKUnit *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[6];
    v5[6] = v6;

    *(v5 + 16) = 0;
  }

  return v5;
}

- (id)dimension
{
  dimension = self->_dimension;
  if (!dimension)
  {
    os_unfair_lock_lock(&self->_dimensionLock);
    if (!self->_dimension)
    {
      v4 = +[(_HKFactorization *)_HKMutableFactorization];
      baseUnits = self->_baseUnits;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __28___HKCompoundUnit_dimension__block_invoke;
      v10[3] = &unk_1E737FBD8;
      v11 = v4;
      v6 = v4;
      [(_HKFactorization *)baseUnits enumerateFactorsWithHandler:v10];
      v7 = [_HKCompoundDimension dimensionWithBaseDimensions:v6];
      v8 = self->_dimension;
      self->_dimension = v7;
    }

    os_unfair_lock_unlock(&self->_dimensionLock);
    dimension = self->_dimension;
  }

  return dimension;
}

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4
{
  v6 = a4;
  v7 = +[(_HKFactorization *)_HKMutableFactorization];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x3FF0000000000000;
  baseUnits = self->_baseUnits;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77___HKCompoundUnit__computeBaseUnitReductionAndProportionalSize_withCycleSet___block_invoke;
  v14[3] = &unk_1E7382078;
  v9 = v6;
  v15 = v9;
  v17 = &v18;
  v10 = v7;
  v16 = v10;
  [(_HKFactorization *)baseUnits enumerateFactorsWithHandler:v14];
  if (a3)
  {
    *a3 = v19[3];
  }

  v11 = v16;
  v12 = v10;

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if ([(_HKCompoundUnit *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_HKCompoundUnit *)v4 _baseUnits];
    v6 = [v5 isEqual:self->_baseUnits];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = _HKCompoundUnit;
  [(HKUnit *)&v3 encodeWithCoder:a3];
}

- (_HKCompoundUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HKCompoundUnit;
  v5 = [(HKUnit *)&v12 initWithCoder:v4];
  if (v5 && ([v4 containsValueForKey:@"HKUnitStringKey"] & 1) == 0)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HKCompoundUnitBaseUnitsKey"];
    baseUnits = v5->_baseUnits;
    v5->_baseUnits = v9;
  }

  return v5;
}

@end