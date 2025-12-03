@interface HKBaseUnit
+ (id)_rootUnitWithDefinition:(id *)definition;
+ (id)_uniquedRootUnit:(id)unit;
+ (id)_uniquedRootUnitFromDefinition:(id *)definition;
+ (id)_uniquedUnitWithPrefix:(id)prefix conversionConstant:(id)constant rootUnit:(id)unit;
+ (id)unitFromString:(id)string;
- (HKBaseUnit)initWithCoder:(id)coder;
- (_HKBaseDimension)dimension;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set;
- (id)_initWithUnitString:(id)string proportionalSize:(double)size scaleOffset:(double)offset;
- (id)_unitByPrefixing:(id)prefixing withConversionConstant:(id)constant;
- (id)awakeAfterUsingCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKBaseUnit

- (_HKBaseDimension)dimension
{
  v4.receiver = self;
  v4.super_class = HKBaseUnit;
  dimension = [(HKUnit *)&v4 dimension];

  return dimension;
}

+ (id)unitFromString:(id)string
{
  stringCopy = string;
  v4 = _HKBaseUnitGrammar();
  v5 = [v4 parseTreeForString:stringCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to parse base unit string: %@", stringCopy}];
  }

  evaluate = [v5 evaluate];

  return evaluate;
}

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set
{
  setCopy = set;
  proportionalSize = self->_proportionalSize;
  dimension = [(HKBaseUnit *)self dimension];
  if ([setCopy containsObject:dimension])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    name = [dimension name];
    [v9 raise:v10 format:{@"Illegal dimension dependency cycle involving %@", name}];
  }

  if (![dimension canBeReduced])
  {
    _baseUnits = [(HKBaseUnit *)self _baseUnits];
    if (!size)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  reducibleBaseUnit = [dimension reducibleBaseUnit];
  [reducibleBaseUnit proportionalSize];
  v14 = proportionalSize / v13;

  [dimension reductionCoefficient];
  v16 = v14 * v15;
  [setCopy addObject:dimension];
  v20 = 1.0;
  reducedUnit = [dimension reducedUnit];
  _baseUnits = [reducedUnit _baseUnitReductionAndProportionalSize:&v20 withCycleSet:setCopy];

  proportionalSize = v16 * v20;
  [setCopy removeObject:dimension];
  if (size)
  {
LABEL_7:
    *size = proportionalSize;
  }

LABEL_8:

  return _baseUnits;
}

+ (id)_uniquedRootUnit:(id)unit
{
  unitCopy = unit;
  uTF8String = [unitCopy UTF8String];
  v6 = &xmmword_1E73820A0;
  v7 = 17;
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = v6[1];
    v22 = *v6;
    v23 = v9;
    v24 = *(v6 + 4);
    if (!strcmp(v8, uTF8String))
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      v10 = &xmmword_1E73823D0;
      v11 = 37;
      while (1)
      {
        v8 = *(v10 - 1);
        v12 = v10[1];
        v22 = *v10;
        v23 = v12;
        v24 = *(v10 + 4);
        if (!strcmp(v8, uTF8String))
        {
          goto LABEL_11;
        }

        v10 += 3;
        if (!--v11)
        {
          v13 = &xmmword_1E7382AC0;
          v14 = 5;
          while (1)
          {
            v8 = *(v13 - 1);
            v15 = v13[1];
            v22 = *v13;
            v23 = v15;
            v24 = *(v13 + 4);
            if (!strcmp(v8, uTF8String))
            {
              goto LABEL_11;
            }

            v13 += 3;
            if (!--v14)
            {
              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid (un-prefixed) unit string: %@", unitCopy}];
              v8 = 0;
              v24 = 0;
              v22 = 0u;
              v23 = 0u;
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

LABEL_11:

  v18 = v8;
  v19 = v22;
  v20 = v23;
  v21 = v24;
  v16 = [self _uniquedRootUnitFromDefinition:&v18];

  return v16;
}

+ (id)_uniquedRootUnitFromDefinition:(id *)definition
{
  os_unfair_lock_lock(&_uniquedRootUnitFromDefinition__lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:definition->var0];
  v6 = [_uniquedRootUnitFromDefinition__units objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = *&definition->var2;
    v12[0] = *&definition->var0;
    v12[1] = v7;
    v12[2] = *&definition->var4;
    v6 = [self _rootUnitWithDefinition:v12];
    v6[72] = 1;
    v8 = _uniquedRootUnitFromDefinition__units;
    if (!_uniquedRootUnitFromDefinition__units)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = _uniquedRootUnitFromDefinition__units;
      _uniquedRootUnitFromDefinition__units = v9;

      v8 = _uniquedRootUnitFromDefinition__units;
    }

    [v8 setObject:v6 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&_uniquedRootUnitFromDefinition__lock);

  return v6;
}

+ (id)_uniquedUnitWithPrefix:(id)prefix conversionConstant:(id)constant rootUnit:(id)unit
{
  prefixCopy = prefix;
  constantCopy = constant;
  unitCopy = unit;
  os_unfair_lock_lock(&_uniquedUnitWithPrefix_conversionConstant_rootUnit__lock);
  unitString = [unitCopy unitString];
  v11 = _unitStringForUnit(prefixCopy, unitString, constantCopy);

  v12 = [_uniquedUnitWithPrefix_conversionConstant_rootUnit__units objectForKey:v11];
  if (!v12)
  {
    v12 = [unitCopy _unitByPrefixing:prefixCopy withConversionConstant:constantCopy];
    v12[72] = 1;
    v13 = _uniquedUnitWithPrefix_conversionConstant_rootUnit__units;
    if (!_uniquedUnitWithPrefix_conversionConstant_rootUnit__units)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = _uniquedUnitWithPrefix_conversionConstant_rootUnit__units;
      _uniquedUnitWithPrefix_conversionConstant_rootUnit__units = v14;

      v13 = _uniquedUnitWithPrefix_conversionConstant_rootUnit__units;
    }

    [v13 setObject:v12 forKeyedSubscript:v11];
  }

  os_unfair_lock_unlock(&_uniquedUnitWithPrefix_conversionConstant_rootUnit__lock);

  return v12;
}

+ (id)_rootUnitWithDefinition:(id *)definition
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:definition->var2];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:definition->var0];
  v6 = [objc_alloc(NSClassFromString(v4)) _initWithUnitString:v5 proportionalSize:definition->var3 scaleOffset:definition->var4];

  return v6;
}

- (id)_initWithUnitString:(id)string proportionalSize:(double)size scaleOffset:(double)offset
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = HKBaseUnit;
  _init = [(HKUnit *)&v13 _init];
  if (_init)
  {
    v10 = [stringCopy copy];
    v11 = _init[6];
    _init[6] = v10;

    *(_init + 10) = size;
    *(_init + 1) = offset;
  }

  return _init;
}

- (id)_unitByPrefixing:(id)prefixing withConversionConstant:(id)constant
{
  prefixingCopy = prefixing;
  constantCopy = constant;
  _init = [objc_alloc(objc_opt_class()) _init];
  v9 = _unitStringForUnit(prefixingCopy, self->_unitString, constantCopy);
  v10 = [v9 copy];
  v11 = *(_init + 48);
  *(_init + 48) = v10;

  if (prefixingCopy)
  {
    v12 = _Prefixes();
    v13 = [v12 objectForKey:prefixingCopy];

    if (!v13)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid unit prefix: %@", prefixingCopy}];
    }
  }

  else
  {
    v13 = &unk_1F0684A10;
  }

  if (constantCopy)
  {
    v14 = constantCopy;
  }

  else
  {
    v14 = &unk_1F0684A10;
  }

  v15 = v14;

  [(__CFString *)v15 doubleValue];
  v17 = v16;
  [v13 doubleValue];
  v19 = v17 * v18;
  *(_init + 80) = v19 * self->_proportionalSize;
  *(_init + 8) = self->super._scaleOffset / v19;
  v20 = [prefixingCopy copy];
  v21 = *(_init + 56);
  *(_init + 56) = v20;

  v22 = [(NSString *)self->_unitString copy];
  v23 = *(_init + 64);
  *(_init + 64) = v22;

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HKBaseUnit;
  [(HKUnit *)&v3 encodeWithCoder:coder];
}

- (HKBaseUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKBaseUnit;
  v5 = [(HKUnit *)&v15 initWithCoder:coderCopy];
  if (v5 && ([coderCopy containsValueForKey:@"HKUnitStringKey"] & 1) == 0)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitStringKey"];
    unitString = v5->_unitString;
    v5->_unitString = v6;

    [coderCopy decodeDoubleForKey:@"BaseUnitProportionalSizeKey"];
    v5->_proportionalSize = v8;
    [coderCopy decodeDoubleForKey:@"BaseUnitScaleOffsetKey"];
    v5->super._scaleOffset = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitPrefixKey"];
    prefix = v5->_prefix;
    v5->_prefix = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitRootKey"];
    root = v5->_root;
    v5->_root = v12;

    v5->_uniqued = [coderCopy decodeBoolForKey:@"BaseUnitUniquedKey"];
  }

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  v4 = [coder containsValueForKey:@"HKUnitStringKey"];
  selfCopy = self;
  v6 = selfCopy;
  v7 = selfCopy;
  if ((v4 & 1) == 0)
  {
    v7 = selfCopy;
    if (selfCopy->_uniqued)
    {
      if (selfCopy->_root)
      {
        v8 = [HKBaseUnit _uniquedRootUnit:?];
        prefix = v6->_prefix;
        if (prefix)
        {
          v10 = _Prefixes();
          v11 = [v10 objectForKey:v6->_prefix];
          [v11 doubleValue];
          v13 = v12;

          LOBYTE(prefix) = v6->_prefix != 0;
        }

        else
        {
          v13 = 1.0;
        }

        v14 = fabs(v6->_proportionalSize / v13 + -1.0);
        if ((prefix & 1) != 0 || v14 > 0.00000011920929)
        {
          if (v14 <= 0.00000011920929)
          {
            v15 = 0;
          }

          else
          {
            v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          }

          v7 = [HKBaseUnit _uniquedUnitWithPrefix:v6->_prefix conversionConstant:v15 rootUnit:v8];
        }

        else
        {
          v7 = v8;
          v15 = v6;
        }
      }

      else
      {
        v7 = [HKBaseUnit _uniquedRootUnit:selfCopy->_unitString];
        v8 = v6;
      }
    }
  }

  return v7;
}

@end