@interface HKBaseUnit
+ (id)_rootUnitWithDefinition:(id *)a3;
+ (id)_uniquedRootUnit:(id)a3;
+ (id)_uniquedRootUnitFromDefinition:(id *)a3;
+ (id)_uniquedUnitWithPrefix:(id)a3 conversionConstant:(id)a4 rootUnit:(id)a5;
+ (id)unitFromString:(id)a3;
- (HKBaseUnit)initWithCoder:(id)a3;
- (_HKBaseDimension)dimension;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4;
- (id)_initWithUnitString:(id)a3 proportionalSize:(double)a4 scaleOffset:(double)a5;
- (id)_unitByPrefixing:(id)a3 withConversionConstant:(id)a4;
- (id)awakeAfterUsingCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKBaseUnit

- (_HKBaseDimension)dimension
{
  v4.receiver = self;
  v4.super_class = HKBaseUnit;
  v2 = [(HKUnit *)&v4 dimension];

  return v2;
}

+ (id)unitFromString:(id)a3
{
  v3 = a3;
  v4 = _HKBaseUnitGrammar();
  v5 = [v4 parseTreeForString:v3];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to parse base unit string: %@", v3}];
  }

  v6 = [v5 evaluate];

  return v6;
}

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4
{
  v6 = a4;
  proportionalSize = self->_proportionalSize;
  v8 = [(HKBaseUnit *)self dimension];
  if ([v6 containsObject:v8])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = [v8 name];
    [v9 raise:v10 format:{@"Illegal dimension dependency cycle involving %@", v11}];
  }

  if (![v8 canBeReduced])
  {
    v18 = [(HKBaseUnit *)self _baseUnits];
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = [v8 reducibleBaseUnit];
  [v12 proportionalSize];
  v14 = proportionalSize / v13;

  [v8 reductionCoefficient];
  v16 = v14 * v15;
  [v6 addObject:v8];
  v20 = 1.0;
  v17 = [v8 reducedUnit];
  v18 = [v17 _baseUnitReductionAndProportionalSize:&v20 withCycleSet:v6];

  proportionalSize = v16 * v20;
  [v6 removeObject:v8];
  if (a3)
  {
LABEL_7:
    *a3 = proportionalSize;
  }

LABEL_8:

  return v18;
}

+ (id)_uniquedRootUnit:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = &xmmword_1E73820A0;
  v7 = 17;
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = v6[1];
    v22 = *v6;
    v23 = v9;
    v24 = *(v6 + 4);
    if (!strcmp(v8, v5))
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
        if (!strcmp(v8, v5))
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
            if (!strcmp(v8, v5))
            {
              goto LABEL_11;
            }

            v13 += 3;
            if (!--v14)
            {
              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid (un-prefixed) unit string: %@", v4}];
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
  v16 = [a1 _uniquedRootUnitFromDefinition:&v18];

  return v16;
}

+ (id)_uniquedRootUnitFromDefinition:(id *)a3
{
  os_unfair_lock_lock(&_uniquedRootUnitFromDefinition__lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var0];
  v6 = [_uniquedRootUnitFromDefinition__units objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = *&a3->var2;
    v12[0] = *&a3->var0;
    v12[1] = v7;
    v12[2] = *&a3->var4;
    v6 = [a1 _rootUnitWithDefinition:v12];
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

+ (id)_uniquedUnitWithPrefix:(id)a3 conversionConstant:(id)a4 rootUnit:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&_uniquedUnitWithPrefix_conversionConstant_rootUnit__lock);
  v10 = [v9 unitString];
  v11 = _unitStringForUnit(v7, v10, v8);

  v12 = [_uniquedUnitWithPrefix_conversionConstant_rootUnit__units objectForKey:v11];
  if (!v12)
  {
    v12 = [v9 _unitByPrefixing:v7 withConversionConstant:v8];
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

+ (id)_rootUnitWithDefinition:(id *)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var2];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var0];
  v6 = [objc_alloc(NSClassFromString(v4)) _initWithUnitString:v5 proportionalSize:a3->var3 scaleOffset:a3->var4];

  return v6;
}

- (id)_initWithUnitString:(id)a3 proportionalSize:(double)a4 scaleOffset:(double)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HKBaseUnit;
  v9 = [(HKUnit *)&v13 _init];
  if (v9)
  {
    v10 = [v8 copy];
    v11 = v9[6];
    v9[6] = v10;

    *(v9 + 10) = a4;
    *(v9 + 1) = a5;
  }

  return v9;
}

- (id)_unitByPrefixing:(id)a3 withConversionConstant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(objc_opt_class()) _init];
  v9 = _unitStringForUnit(v6, self->_unitString, v7);
  v10 = [v9 copy];
  v11 = *(v8 + 48);
  *(v8 + 48) = v10;

  if (v6)
  {
    v12 = _Prefixes();
    v13 = [v12 objectForKey:v6];

    if (!v13)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid unit prefix: %@", v6}];
    }
  }

  else
  {
    v13 = &unk_1F0684A10;
  }

  if (v7)
  {
    v14 = v7;
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
  *(v8 + 80) = v19 * self->_proportionalSize;
  *(v8 + 8) = self->super._scaleOffset / v19;
  v20 = [v6 copy];
  v21 = *(v8 + 56);
  *(v8 + 56) = v20;

  v22 = [(NSString *)self->_unitString copy];
  v23 = *(v8 + 64);
  *(v8 + 64) = v22;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = HKBaseUnit;
  [(HKUnit *)&v3 encodeWithCoder:a3];
}

- (HKBaseUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKBaseUnit;
  v5 = [(HKUnit *)&v15 initWithCoder:v4];
  if (v5 && ([v4 containsValueForKey:@"HKUnitStringKey"] & 1) == 0)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitStringKey"];
    unitString = v5->_unitString;
    v5->_unitString = v6;

    [v4 decodeDoubleForKey:@"BaseUnitProportionalSizeKey"];
    v5->_proportionalSize = v8;
    [v4 decodeDoubleForKey:@"BaseUnitScaleOffsetKey"];
    v5->super._scaleOffset = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitPrefixKey"];
    prefix = v5->_prefix;
    v5->_prefix = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BaseUnitRootKey"];
    root = v5->_root;
    v5->_root = v12;

    v5->_uniqued = [v4 decodeBoolForKey:@"BaseUnitUniquedKey"];
  }

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [a3 containsValueForKey:@"HKUnitStringKey"];
  v5 = self;
  v6 = v5;
  v7 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = v5;
    if (v5->_uniqued)
    {
      if (v5->_root)
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
        v7 = [HKBaseUnit _uniquedRootUnit:v5->_unitString];
        v8 = v6;
      }
    }
  }

  return v7;
}

@end