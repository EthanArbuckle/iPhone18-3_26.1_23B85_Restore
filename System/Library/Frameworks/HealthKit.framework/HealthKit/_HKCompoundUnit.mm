@interface _HKCompoundUnit
+ (id)unitWithBaseUnits:(id)units;
- (BOOL)isEqual:(id)equal;
- (_HKCompoundUnit)initWithCoder:(id)coder;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set;
- (id)_initWithBaseUnits:(id)units;
- (id)dimension;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKCompoundUnit

+ (id)unitWithBaseUnits:(id)units
{
  unitsCopy = units;
  v5 = [[self alloc] _initWithBaseUnits:unitsCopy];

  return v5;
}

- (id)_initWithBaseUnits:(id)units
{
  unitsCopy = units;
  v9.receiver = self;
  v9.super_class = _HKCompoundUnit;
  _init = [(HKUnit *)&v9 _init];
  if (_init)
  {
    v6 = [unitsCopy copy];
    v7 = _init[6];
    _init[6] = v6;

    *(_init + 16) = 0;
  }

  return _init;
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

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set
{
  setCopy = set;
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
  v9 = setCopy;
  v15 = v9;
  v17 = &v18;
  v10 = v7;
  v16 = v10;
  [(_HKFactorization *)baseUnits enumerateFactorsWithHandler:v14];
  if (size)
  {
    *size = v19[3];
  }

  v11 = v16;
  v12 = v10;

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(_HKCompoundUnit *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    _baseUnits = [(_HKCompoundUnit *)equalCopy _baseUnits];
    v6 = [_baseUnits isEqual:self->_baseUnits];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = _HKCompoundUnit;
  [(HKUnit *)&v3 encodeWithCoder:coder];
}

- (_HKCompoundUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKCompoundUnit;
  v5 = [(HKUnit *)&v12 initWithCoder:coderCopy];
  if (v5 && ([coderCopy containsValueForKey:@"HKUnitStringKey"] & 1) == 0)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HKCompoundUnitBaseUnitsKey"];
    baseUnits = v5->_baseUnits;
    v5->_baseUnits = v9;
  }

  return v5;
}

@end