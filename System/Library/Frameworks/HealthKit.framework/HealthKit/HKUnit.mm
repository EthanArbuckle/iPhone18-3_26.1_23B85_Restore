@interface HKUnit
+ (BOOL)_isValidUnitString:(id)a3;
+ (HKUnit)gramUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)hertzUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)jouleUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)literUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)luxUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)meterUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)moleUnitWithMetricPrefix:(HKMetricPrefix)prefix molarMass:(double)gramsPerMole;
+ (HKUnit)moleUnitWithMolarMass:(double)gramsPerMole;
+ (HKUnit)pascalUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)radianAngleUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)secondUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)siemenUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)unitFromEnergyFormatterUnit:(NSEnergyFormatterUnit)energyFormatterUnit;
+ (HKUnit)unitFromLengthFormatterUnit:(NSLengthFormatterUnit)lengthFormatterUnit;
+ (HKUnit)unitFromMassFormatterUnit:(NSMassFormatterUnit)massFormatterUnit;
+ (HKUnit)unitFromString:(NSString *)string;
+ (HKUnit)voltUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)wattUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (NSEnergyFormatterUnit)energyFormatterUnitFromUnit:(HKUnit *)unit;
+ (NSLengthFormatterUnit)lengthFormatterUnitFromUnit:(HKUnit *)unit;
+ (NSMassFormatterUnit)massFormatterUnitFromUnit:(HKUnit *)unit;
+ (id)_changeInUnit:(id)a3;
+ (id)_countPerMinuteUnit;
+ (id)_countPerSecondUnit;
+ (id)_distanceUnitForLocale:(id)a3;
+ (id)_foodEnergyUnitForLocale:(id)a3;
+ (id)_foundationBaseUnits;
+ (id)_heightUnitForLocale:(id)a3;
+ (id)_internationalUnitWithMassEquivalent:(double)a3;
+ (id)_internationalUnitWithMetricPrefix:(int64_t)a3 massEquivalent:(double)a4;
+ (id)_internationalUnitWithMetricPrefix:(int64_t)a3 volumeEquivalent:(double)a4;
+ (id)_internationalUnitWithVolumeEquivalent:(double)a3;
+ (id)_milligramsPerDeciliterUnit;
+ (id)_millimolesBloodGlucosePerLiterUnit;
+ (id)_nullUnit;
+ (id)_personMassUnitForLocale:(id)a3;
+ (id)_temperatureUnitForLocale:(id)a3;
+ (id)_unitForStringPrewarmCache;
+ (id)equivalentsUnitWithMolarMass:(double)a3 valence:(int64_t)a4;
+ (void)_prewarmUnitForStringCache;
- (BOOL)_isCompatibleWithDimension:(id)a3;
- (BOOL)_isCompatibleWithUnit:(id)a3;
- (BOOL)_isMetricDistance;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNull;
- (HKUnit)init;
- (HKUnit)initWithCoder:(id)a3;
- (HKUnit)reciprocalUnit;
- (HKUnit)unitDividedByUnit:(HKUnit *)unit;
- (HKUnit)unitMultipliedByUnit:(HKUnit *)unit;
- (HKUnit)unitRaisedToPower:(NSInteger)power;
- (NSString)unitString;
- (_HKDimension)dimension;
- (_HKFactorization)_baseUnits;
- (double)_convertFromBaseUnit:(double)a3;
- (double)_convertToBaseUnit:(double)a3;
- (double)_valueByConvertingValue:(double)a3 toUnit:(id)a4;
- (id)_baseUnitReduction;
- (id)_baseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4;
- (id)_customizedFoundationUnit;
- (id)_dimensionReduction;
- (id)_foundationUnit;
- (id)_init;
- (unint64_t)hash;
- (void)_reduceIfNecessaryWithCycleSet:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUnit

- (id)_dimensionReduction
{
  dimensionReduction = self->_dimensionReduction;
  if (!dimensionReduction)
  {
    [(HKUnit *)self _reduceIfNecessaryWithCycleSet:0];
    dimensionReduction = self->_dimensionReduction;
  }

  return dimensionReduction;
}

+ (id)_countPerMinuteUnit
{
  if (_countPerMinuteUnit_onceToken != -1)
  {
    +[HKUnit _countPerMinuteUnit];
  }

  v3 = _countPerMinuteUnit_unit;

  return v3;
}

+ (id)_countPerSecondUnit
{
  if (_countPerSecondUnit_onceToken != -1)
  {
    +[HKUnit _countPerSecondUnit];
  }

  v3 = _countPerSecondUnit_unit;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKUnit;
  result = [(HKUnit *)&v3 init];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

+ (id)_nullUnit
{
  v2 = +[_HKFactorization factorization];
  v3 = [_HKCompoundUnit unitWithBaseUnits:v2];

  return v3;
}

- (id)_customizedFoundationUnit
{
  if (_customizedFoundationUnit_onceToken != -1)
  {
    [HKUnit(NSUnit) _customizedFoundationUnit];
  }

  v3 = _customizedFoundationUnit_nsUnits;
  v4 = [(HKUnit *)self unitString];
  v5 = [v3 objectForKey:v4];

  return v5;
}

void __43__HKUnit_NSUnit___customizedFoundationUnit__block_invoke()
{
  v19[15] = *MEMORY[0x1E69E9840];
  v18[0] = @"Cal";
  v17 = [MEMORY[0x1E696B030] kilocalories];
  v19[0] = v17;
  v18[1] = @"1/ps";
  v16 = [MEMORY[0x1E696B038] terahertz];
  v19[1] = v16;
  v18[2] = @"1/ns";
  v15 = [MEMORY[0x1E696B038] gigahertz];
  v19[2] = v15;
  v18[3] = @"1/µs";
  v14 = [MEMORY[0x1E696B038] megahertz];
  v19[3] = v14;
  v18[4] = @"1/ms";
  v13 = [MEMORY[0x1E696B038] kilohertz];
  v19[4] = v13;
  v18[5] = @"1/s";
  v0 = [MEMORY[0x1E696B038] hertz];
  v19[5] = v0;
  v18[6] = @"1/ks";
  v1 = [MEMORY[0x1E696B038] millihertz];
  v19[6] = v1;
  v18[7] = @"1/Ms";
  v2 = [MEMORY[0x1E696B038] microhertz];
  v19[7] = v2;
  v18[8] = @"1/Gs";
  v3 = [MEMORY[0x1E696B038] nanohertz];
  v19[8] = v3;
  v18[9] = @"µW";
  v4 = [MEMORY[0x1E696B068] microwatts];
  v19[9] = v4;
  v18[10] = @"µg";
  v5 = [MEMORY[0x1E696B060] micrograms];
  v19[10] = v5;
  v18[11] = @"µm";
  v6 = [MEMORY[0x1E696B058] micrometers];
  v19[11] = v6;
  v18[12] = @"dm^3";
  v7 = [MEMORY[0x1E696B088] cubicDecimeters];
  v19[12] = v7;
  v18[13] = @"mm^3";
  v8 = [MEMORY[0x1E696B088] cubicMillimeters];
  v19[13] = v8;
  v18[14] = @"mi^3";
  v9 = [MEMORY[0x1E696B088] cubicMiles];
  v19[14] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:15];
  v11 = _customizedFoundationUnit_nsUnits;
  _customizedFoundationUnit_nsUnits = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_foundationUnit
{
  v3 = [(HKUnit *)self _customizedFoundationUnit];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = hk_unitSpaceMappingForHKUnit(self);
    v5 = hk_NSUnitForMapping(v6);
  }

  v7 = v5;

  return v7;
}

- (HKUnit)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUnit)unitMultipliedByUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [(HKUnit *)self _baseUnits];
  v6 = [(HKUnit *)v4 _baseUnits];

  v7 = [v5 factorizationByMultiplying:v6];

  v8 = [_HKCompoundUnit unitWithBaseUnits:v7];

  return v8;
}

- (HKUnit)unitDividedByUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [(HKUnit *)self _baseUnits];
  v6 = [(HKUnit *)v4 _baseUnits];

  v7 = [v6 reciprocal];
  v8 = [v5 factorizationByMultiplying:v7];

  v9 = [_HKCompoundUnit unitWithBaseUnits:v8];

  return v9;
}

- (HKUnit)unitRaisedToPower:(NSInteger)power
{
  v4 = [(HKUnit *)self _baseUnits];
  v5 = [v4 factorizationByRaisingToExponent:power];

  v6 = [_HKCompoundUnit unitWithBaseUnits:v5];

  return v6;
}

- (HKUnit)reciprocalUnit
{
  v2 = [(HKUnit *)self _baseUnits];
  v3 = [v2 reciprocal];

  v4 = [_HKCompoundUnit unitWithBaseUnits:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKUnit *)self unitString];
      v6 = [(HKUnit *)v4 unitString];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HKUnit *)self unitString];
  v3 = [v2 hash];

  return v3;
}

+ (HKUnit)gramUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 gramUnit];
  }

  return v5;
}

+ (HKUnit)moleUnitWithMetricPrefix:(HKMetricPrefix)prefix molarMass:(double)gramsPerMole
{
  if (prefix)
  {
    v5 = [a1 _prefixStringForMetricPrefix:?];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:gramsPerMole];
    v7 = +[(HKUnit *)HKBaseUnit];
    v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];
  }

  else
  {
    v8 = [a1 moleUnitWithMolarMass:gramsPerMole];
  }

  return v8;
}

+ (HKUnit)moleUnitWithMolarMass:(double)gramsPerMole
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:gramsPerMole];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (HKUnit)meterUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 meterUnit];
  }

  return v5;
}

+ (HKUnit)literUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 literUnit];
  }

  return v5;
}

+ (HKUnit)pascalUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 pascalUnit];
  }

  return v5;
}

+ (HKUnit)secondUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 secondUnit];
  }

  return v5;
}

+ (HKUnit)jouleUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 jouleUnit];
  }

  return v5;
}

+ (HKUnit)siemenUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 siemenUnit];
  }

  return v5;
}

+ (HKUnit)voltUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v4 = [a1 _prefixStringForMetricPrefix:?];
    v5 = [a1 _voltBaseUnit];
    v6 = [HKBaseUnit _uniquedUnitWithPrefix:v4 rootUnit:v5];
  }

  else
  {
    v6 = [a1 voltUnit];
  }

  return v6;
}

+ (HKUnit)hertzUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 hertzUnit];
  }

  return v5;
}

+ (HKUnit)wattUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 wattUnit];
  }

  return v5;
}

+ (HKUnit)radianAngleUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 radianAngleUnit];
  }

  return v5;
}

+ (HKUnit)luxUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [a1 _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    v5 = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    v5 = [a1 luxUnit];
  }

  return v5;
}

+ (id)_internationalUnitWithMetricPrefix:(int64_t)a3 massEquivalent:(double)a4
{
  v5 = [a1 _prefixStringForMetricPrefix:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v7 = +[(HKUnit *)HKBaseUnit];
  v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];

  return v8;
}

+ (id)_internationalUnitWithMassEquivalent:(double)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (id)_internationalUnitWithMetricPrefix:(int64_t)a3 volumeEquivalent:(double)a4
{
  v5 = [a1 _prefixStringForMetricPrefix:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v7 = +[(HKUnit *)HKBaseUnit];
  v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];

  return v8;
}

+ (id)_internationalUnitWithVolumeEquivalent:(double)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (id)equivalentsUnitWithMolarMass:(double)a3 valence:(int64_t)a4
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3 / a4];
  v5 = +[(HKUnit *)HKBaseUnit];
  v6 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v4 rootUnit:v5];

  return v6;
}

void __29__HKUnit__countPerSecondUnit__block_invoke()
{
  v3 = +[HKUnit countUnit];
  v0 = +[HKUnit secondUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _countPerSecondUnit_unit;
  _countPerSecondUnit_unit = v1;
}

void __29__HKUnit__countPerMinuteUnit__block_invoke()
{
  v3 = +[HKUnit countUnit];
  v0 = +[HKUnit minuteUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _countPerMinuteUnit_unit;
  _countPerMinuteUnit_unit = v1;
}

+ (id)_milligramsPerDeciliterUnit
{
  if (_milligramsPerDeciliterUnit_onceToken != -1)
  {
    +[HKUnit _milligramsPerDeciliterUnit];
  }

  v3 = _milligramsPerDeciliterUnit_unit;

  return v3;
}

void __37__HKUnit__milligramsPerDeciliterUnit__block_invoke()
{
  v3 = [HKUnit gramUnitWithMetricPrefix:4];
  v0 = [HKUnit literUnitWithMetricPrefix:6];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _milligramsPerDeciliterUnit_unit;
  _milligramsPerDeciliterUnit_unit = v1;
}

+ (id)_millimolesBloodGlucosePerLiterUnit
{
  if (_millimolesBloodGlucosePerLiterUnit_onceToken != -1)
  {
    +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  }

  v3 = _millimolesBloodGlucosePerLiterUnit_unit;

  return v3;
}

void __45__HKUnit__millimolesBloodGlucosePerLiterUnit__block_invoke()
{
  v3 = [HKUnit moleUnitWithMetricPrefix:4 molarMass:180.15588];
  v0 = +[HKUnit literUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _millimolesBloodGlucosePerLiterUnit_unit;
  _millimolesBloodGlucosePerLiterUnit_unit = v1;
}

+ (id)_changeInUnit:(id)a3
{
  v4 = a3;
  v5 = [a1 degreeCelsiusUnit];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [a1 _changeInDegreeCelsiusUnit];
  }

  else
  {
    v8 = [a1 degreeFahrenheitUnit];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      [a1 _changeInDegreeFahrenheitUnit];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No unit is defined for change in %@", v4}];
      +[HKUnit _nullUnit];
    }
    v7 = ;
  }

  v10 = v7;

  return v10;
}

+ (void)_prewarmUnitForStringCache
{
  os_unfair_lock_lock(&unitForStringCacheLock);
  v3 = unitForStringCache;
  if (!unitForStringCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = unitForStringCache;
    unitForStringCache = v4;

    v3 = unitForStringCache;
  }

  v6 = [a1 _unitForStringPrewarmCache];
  [v3 addEntriesFromDictionary:v6];

  os_unfair_lock_unlock(&unitForStringCacheLock);
}

+ (id)_unitForStringPrewarmCache
{
  v72[43] = *MEMORY[0x1E69E9840];
  v71[0] = @"%";
  v70 = +[HKUnit percentUnit];
  v72[0] = v70;
  v71[1] = @"Cal";
  v69 = +[HKUnit largeCalorieUnit];
  v72[1] = v69;
  v71[2] = @"IU";
  v68 = +[HKUnit internationalUnit];
  v72[2] = v68;
  v71[3] = @"L";
  v67 = +[HKUnit literUnit];
  v72[3] = v67;
  v71[4] = @"L/min";
  v66 = +[HKUnit literUnit];
  v65 = +[HKUnit minuteUnit];
  v64 = [v66 unitDividedByUnit:v65];
  v72[4] = v64;
  v71[5] = @"cal";
  v63 = +[HKUnit smallCalorieUnit];
  v72[5] = v63;
  v71[6] = @"cm";
  v62 = [HKUnit meterUnitWithMetricPrefix:5];
  v72[6] = v62;
  v71[7] = @"count";
  v61 = +[HKUnit countUnit];
  v72[7] = v61;
  v71[8] = @"count/min";
  v60 = +[HKUnit countUnit];
  v59 = +[HKUnit minuteUnit];
  v58 = [v60 unitDividedByUnit:v59];
  v72[8] = v58;
  v71[9] = @"cup_imp";
  v57 = +[HKUnit cupImperialUnit];
  v72[9] = v57;
  v71[10] = @"cup_us";
  v56 = +[HKUnit cupUSUnit];
  v72[10] = v56;
  v71[11] = @"dBASPL";
  v55 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
  v72[11] = v55;
  v71[12] = @"degF";
  v54 = +[HKUnit degreeFahrenheitUnit];
  v72[12] = v54;
  v71[13] = @"fl_oz_imp";
  v53 = +[HKUnit fluidOunceImperialUnit];
  v72[13] = v53;
  v71[14] = @"fl_oz_us";
  v52 = +[HKUnit fluidOunceUSUnit];
  v72[14] = v52;
  v71[15] = @"ft";
  v51 = +[HKUnit footUnit];
  v72[15] = v51;
  v71[16] = @"ft/s";
  v50 = +[HKUnit footUnit];
  v49 = +[HKUnit secondUnit];
  v48 = [v50 unitDividedByUnit:v49];
  v72[16] = v48;
  v71[17] = @"g";
  v47 = +[HKUnit gramUnit];
  v72[17] = v47;
  v71[18] = @"hr";
  v46 = +[HKUnit hourUnit];
  v72[18] = v46;
  v71[19] = @"in";
  v45 = +[HKUnit inchUnit];
  v72[19] = v45;
  v71[20] = @"kcal";
  v44 = +[HKUnit kilocalorieUnit];
  v72[20] = v44;
  v71[21] = @"kg";
  v43 = [HKUnit gramUnitWithMetricPrefix:9];
  v72[21] = v43;
  v71[22] = @"km/hr";
  v42 = [HKUnit meterUnitWithMetricPrefix:9];
  v41 = +[HKUnit hourUnit];
  v40 = [v42 unitDividedByUnit:v41];
  v72[22] = v40;
  v71[23] = @"lb";
  v39 = +[HKUnit poundUnit];
  v72[23] = v39;
  v71[24] = @"m";
  v38 = +[HKUnit meterUnit];
  v72[24] = v38;
  v71[25] = @"m/s";
  v37 = +[HKUnit meterUnit];
  v36 = +[HKUnit secondUnit];
  v35 = [v37 unitDividedByUnit:v36];
  v72[25] = v35;
  v71[26] = @"mL";
  v34 = [HKUnit literUnitWithMetricPrefix:4];
  v72[26] = v34;
  v71[27] = @"mL/min·kg";
  v32 = [HKUnit literUnitWithMetricPrefix:4];
  v33 = [HKUnit gramUnitWithMetricPrefix:9];
  v31 = +[HKUnit minuteUnit];
  v30 = [v33 unitMultipliedByUnit:v31];
  v29 = [v32 unitDividedByUnit:v30];
  v72[27] = v29;
  v71[28] = @"m^3";
  v28 = +[HKUnit meterUnit];
  v27 = [v28 unitRaisedToPower:3];
  v72[28] = v27;
  v71[29] = @"mcS";
  v26 = [HKUnit siemenUnitWithMetricPrefix:3];
  v72[29] = v26;
  v71[30] = @"mcg";
  v25 = [HKUnit gramUnitWithMetricPrefix:3];
  v72[30] = v25;
  v71[31] = @"mg";
  v24 = [HKUnit gramUnitWithMetricPrefix:4];
  v72[31] = v24;
  v71[32] = @"mg/dL";
  v23 = [HKUnit gramUnitWithMetricPrefix:4];
  v22 = [HKUnit literUnitWithMetricPrefix:6];
  v21 = [v23 unitDividedByUnit:v22];
  v72[32] = v21;
  v71[33] = @"mi";
  v20 = +[HKUnit mileUnit];
  v72[33] = v20;
  v71[34] = @"mi/hr";
  v19 = +[HKUnit mileUnit];
  v18 = +[HKUnit hourUnit];
  v17 = [v19 unitDividedByUnit:v18];
  v72[34] = v17;
  v71[35] = @"min";
  v16 = +[HKUnit minuteUnit];
  v72[35] = v16;
  v71[36] = @"ml/(kg*min)";
  v15 = [HKUnit literUnitWithMetricPrefix:4];
  v2 = [HKUnit gramUnitWithMetricPrefix:9];
  v3 = +[HKUnit minuteUnit];
  v4 = [v2 unitMultipliedByUnit:v3];
  v5 = [v15 unitDividedByUnit:v4];
  v72[36] = v5;
  v71[37] = @"mmHg";
  v6 = +[HKUnit millimeterOfMercuryUnit];
  v72[37] = v6;
  v71[38] = @"ms";
  v7 = [HKUnit secondUnitWithMetricPrefix:4];
  v72[38] = v7;
  v71[39] = @"pt_imp";
  v8 = +[HKUnit pintImperialUnit];
  v72[39] = v8;
  v71[40] = @"pt_us";
  v9 = +[HKUnit pintUSUnit];
  v72[40] = v9;
  v71[41] = @"s";
  v10 = +[HKUnit secondUnit];
  v72[41] = v10;
  v71[42] = @"yd";
  v11 = +[HKUnit yardUnit];
  v72[42] = v11;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:43];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_foundationBaseUnits
{
  if (_foundationBaseUnits_onceToken != -1)
  {
    +[HKUnit _foundationBaseUnits];
  }

  v3 = _foundationBaseUnits_units;

  return v3;
}

void __30__HKUnit__foundationBaseUnits__block_invoke()
{
  v17[14] = *MEMORY[0x1E69E9840];
  v16 = [HKUnit unitFromString:@"m/s^2"];
  v17[0] = v16;
  v15 = [HKUnit unitFromString:@"m^2"];
  v17[1] = v15;
  v14 = [HKUnit unitFromString:@"g/L"];
  v17[2] = v14;
  v13 = [HKUnit unitFromString:@"s"];
  v17[3] = v13;
  v0 = [HKUnit unitFromString:@"1/S"];
  v17[4] = v0;
  v1 = [HKUnit unitFromString:@"J"];
  v17[5] = v1;
  v2 = [HKUnit unitFromString:@"1/s"];
  v17[6] = v2;
  v3 = [HKUnit unitFromString:@"m"];
  v17[7] = v3;
  v4 = [HKUnit unitFromString:@"kg"];
  v17[8] = v4;
  v5 = [HKUnit unitFromString:@"kg*m^2*s^-3"];
  v17[9] = v5;
  v6 = [HKUnit unitFromString:@"Pa"];
  v17[10] = v6;
  v7 = [HKUnit unitFromString:@"m/s^2"];
  v17[11] = v7;
  v8 = [HKUnit unitFromString:@"K"];
  v17[12] = v8;
  v9 = [HKUnit unitFromString:@"L"];
  v17[13] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:14];
  v11 = _foundationBaseUnits_units;
  _foundationBaseUnits_units = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (HKUnit)unitFromString:(NSString *)string
{
  v3 = string;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F05FF230;
  }

  os_unfair_lock_lock(&unitForStringCacheLock);
  v5 = [unitForStringCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = _HKBaseUnitGrammar();
    v7 = [_HKFactorization factorizationFromString:v4 factorGrammar:v6];

    if ([v7 factorCount] == 1 && (objc_msgSend(v7, "anyFactor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "exponentForFactor:", v8), v8, v9 == 1))
    {
      v10 = [v7 anyFactor];
    }

    else
    {
      v10 = [_HKCompoundUnit unitWithBaseUnits:v7];
    }

    v5 = v10;
    if (v10)
    {
      v11 = unitForStringCache;
      if (!unitForStringCache)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = unitForStringCache;
        unitForStringCache = v12;

        v11 = unitForStringCache;
      }

      [v11 setObject:v5 forKeyedSubscript:v4];
    }
  }

  os_unfair_lock_unlock(&unitForStringCacheLock);

  return v5;
}

+ (HKUnit)unitFromMassFormatterUnit:(NSMassFormatterUnit)massFormatterUnit
{
  v4 = 0;
  if (massFormatterUnit <= 1536)
  {
    if (massFormatterUnit == NSMassFormatterUnitGram)
    {
      v4 = [a1 gramUnit];
    }

    else if (massFormatterUnit == NSMassFormatterUnitKilogram)
    {
      v4 = [a1 gramUnitWithMetricPrefix:9];
    }
  }

  else
  {
    switch(massFormatterUnit)
    {
      case NSMassFormatterUnitOunce:
        v4 = [a1 ounceUnit];
        break;
      case NSMassFormatterUnitPound:
        v4 = [a1 poundUnit];
        break;
      case NSMassFormatterUnitStone:
        v4 = [a1 stoneUnit];
        break;
    }
  }

  return v4;
}

+ (NSMassFormatterUnit)massFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [a1 gramUnit];
  v6 = [(HKUnit *)v4 isEqual:v5];

  if (v6)
  {
    v7 = NSMassFormatterUnitGram;
  }

  else
  {
    v8 = [a1 gramUnitWithMetricPrefix:9];
    v9 = [(HKUnit *)v4 isEqual:v8];

    if (v9)
    {
      v7 = NSMassFormatterUnitKilogram;
    }

    else
    {
      v10 = [a1 ounceUnit];
      v11 = [(HKUnit *)v4 isEqual:v10];

      if (v11)
      {
        v7 = NSMassFormatterUnitOunce;
      }

      else
      {
        v12 = [a1 poundUnit];
        v13 = [(HKUnit *)v4 isEqual:v12];

        if (v13)
        {
          v7 = NSMassFormatterUnitPound;
        }

        else
        {
          v14 = [a1 stoneUnit];
          v15 = [(HKUnit *)v4 isEqual:v14];

          if (v15)
          {
            v7 = NSMassFormatterUnitStone;
          }

          else
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSMassFormatterUnit", v4}];
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

+ (HKUnit)unitFromLengthFormatterUnit:(NSLengthFormatterUnit)lengthFormatterUnit
{
  v4 = 0;
  if (lengthFormatterUnit > 1280)
  {
    if (lengthFormatterUnit > NSLengthFormatterUnitFoot)
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitYard)
      {
        v4 = [a1 yardUnit];
      }

      else if (lengthFormatterUnit == NSLengthFormatterUnitMile)
      {
        v4 = [a1 mileUnit];
      }
    }

    else
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitInch)
      {
        [a1 inchUnit];
      }

      else
      {
        [a1 footUnit];
      }
      v4 = ;
    }
  }

  else
  {
    if (lengthFormatterUnit <= 10)
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitMillimeter)
      {
        v5 = a1;
        v6 = 4;
      }

      else
      {
        if (lengthFormatterUnit != NSLengthFormatterUnitCentimeter)
        {
          goto LABEL_21;
        }

        v5 = a1;
        v6 = 5;
      }

LABEL_17:
      v4 = [v5 meterUnitWithMetricPrefix:v6];
      goto LABEL_21;
    }

    if (lengthFormatterUnit != NSLengthFormatterUnitMeter)
    {
      if (lengthFormatterUnit != NSLengthFormatterUnitKilometer)
      {
        goto LABEL_21;
      }

      v5 = a1;
      v6 = 9;
      goto LABEL_17;
    }

    v4 = [a1 meterUnit];
  }

LABEL_21:

  return v4;
}

+ (NSLengthFormatterUnit)lengthFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [a1 meterUnitWithMetricPrefix:5];
  v6 = [(HKUnit *)v4 isEqual:v5];

  if (v6)
  {
    v7 = NSLengthFormatterUnitCentimeter;
  }

  else
  {
    v8 = [a1 footUnit];
    v9 = [(HKUnit *)v4 isEqual:v8];

    if (v9)
    {
      v7 = NSLengthFormatterUnitFoot;
    }

    else
    {
      v10 = [a1 inchUnit];
      v11 = [(HKUnit *)v4 isEqual:v10];

      if (v11)
      {
        v7 = NSLengthFormatterUnitInch;
      }

      else
      {
        v12 = [a1 meterUnitWithMetricPrefix:9];
        v13 = [(HKUnit *)v4 isEqual:v12];

        if (v13)
        {
          v7 = NSLengthFormatterUnitKilometer;
        }

        else
        {
          v14 = [a1 meterUnit];
          v15 = [(HKUnit *)v4 isEqual:v14];

          if (v15)
          {
            v7 = NSLengthFormatterUnitMeter;
          }

          else
          {
            v16 = [a1 mileUnit];
            v17 = [(HKUnit *)v4 isEqual:v16];

            if (v17)
            {
              v7 = NSLengthFormatterUnitMile;
            }

            else
            {
              v18 = [a1 meterUnitWithMetricPrefix:4];
              v19 = [(HKUnit *)v4 isEqual:v18];

              if (v19)
              {
                v7 = NSLengthFormatterUnitMillimeter;
              }

              else
              {
                v20 = [a1 yardUnit];
                v21 = [(HKUnit *)v4 isEqual:v20];

                if (v21)
                {
                  v7 = NSLengthFormatterUnitYard;
                }

                else
                {
                  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSLengthFormatterUnit", v4}];
                  v7 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

+ (HKUnit)unitFromEnergyFormatterUnit:(NSEnergyFormatterUnit)energyFormatterUnit
{
  v4 = 0;
  if (energyFormatterUnit > 1792)
  {
    if (energyFormatterUnit == NSEnergyFormatterUnitKilocalorie)
    {
      v4 = [a1 kilocalorieUnit];
    }

    else if (energyFormatterUnit == NSEnergyFormatterUnitCalorie)
    {
      v4 = [a1 smallCalorieUnit];
    }
  }

  else if (energyFormatterUnit == NSEnergyFormatterUnitJoule)
  {
    v4 = [a1 jouleUnit];
  }

  else if (energyFormatterUnit == NSEnergyFormatterUnitKilojoule)
  {
    v4 = [a1 kilojoulesUnit];
  }

  return v4;
}

+ (NSEnergyFormatterUnit)energyFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [a1 smallCalorieUnit];
  v6 = [(HKUnit *)v4 isEqual:v5];

  if (v6)
  {
    v7 = NSEnergyFormatterUnitCalorie;
    goto LABEL_9;
  }

  v8 = [a1 jouleUnit];
  v9 = [(HKUnit *)v4 isEqual:v8];

  if (v9)
  {
    v7 = NSEnergyFormatterUnitJoule;
    goto LABEL_9;
  }

  v10 = [a1 kilocalorieUnit];
  if ([(HKUnit *)v4 isEqual:v10])
  {

LABEL_8:
    v7 = NSEnergyFormatterUnitKilocalorie;
    goto LABEL_9;
  }

  v11 = [a1 largeCalorieUnit];
  v12 = [(HKUnit *)v4 isEqual:v11];

  if (v12)
  {
    goto LABEL_8;
  }

  v14 = [a1 kilojoulesUnit];
  v15 = [(HKUnit *)v4 isEqual:v14];

  if (v15)
  {
    v7 = NSEnergyFormatterUnitKilojoule;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSEnergyFormatterUnit", v4}];
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (BOOL)isNull
{
  v3 = +[HKUnit _nullUnit];
  LOBYTE(self) = [(HKUnit *)self isEqual:v3];

  return self;
}

- (BOOL)_isMetricDistance
{
  v3 = [HKUnit meterUnitWithMetricPrefix:9];
  if ([(HKUnit *)self isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [HKUnit meterUnitWithMetricPrefix:5];
    if ([(HKUnit *)self isEqual:v5])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[HKUnit meterUnit];
      v4 = [(HKUnit *)self isEqual:v6];
    }
  }

  return v4;
}

+ (BOOL)_isValidUnitString:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() unitFromString:v3];

  return 1;
}

- (double)_valueByConvertingValue:(double)a3 toUnit:(id)a4
{
  v6 = a4;
  if (![(HKUnit *)self _isCompatibleWithUnit:v6])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to convert incompatible units: %@, %@", self, v6}];
  }

  if (![(HKUnit *)self isEqual:v6])
  {
    [(HKUnit *)self _convertToBaseUnit:a3];
    [v6 _convertFromBaseUnit:?];
    a3 = v7;
  }

  return a3;
}

- (BOOL)_isCompatibleWithUnit:(id)a3
{
  v4 = a3;
  v5 = [(HKUnit *)self _dimensionReduction];
  v6 = [v4 _dimensionReduction];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)_isCompatibleWithDimension:(id)a3
{
  v4 = a3;
  v5 = [(HKUnit *)self _dimensionReduction];
  v6 = [v4 reduction];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (void)_reduceIfNecessaryWithCycleSet:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dimensionReductionLock);
  if (!self->_dimensionReduction)
  {
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFA8] set];
    }

    v6 = v5;
    v7 = [(HKUnit *)self _computeBaseUnitReductionAndProportionalSize:&self->_reducedProportionalSize withCycleSet:v5];
    baseUnitReduction = self->_baseUnitReduction;
    self->_baseUnitReduction = v7;

    v9 = +[(_HKFactorization *)_HKMutableFactorization];
    v10 = self->_baseUnitReduction;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HKUnit__reduceIfNecessaryWithCycleSet___block_invoke;
    v14[3] = &unk_1E737FBD8;
    v11 = v9;
    v15 = v11;
    [(_HKFactorization *)v10 enumerateFactorsWithHandler:v14];
    dimensionReduction = self->_dimensionReduction;
    self->_dimensionReduction = v11;
    v13 = v11;
  }

  os_unfair_lock_unlock(&self->_dimensionReductionLock);
}

void __41__HKUnit__reduceIfNecessaryWithCycleSet___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dimension];
  [v4 multiplyByFactor:v5 exponent:a3];
}

- (id)_baseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4
{
  [(HKUnit *)self _reduceIfNecessaryWithCycleSet:a4];
  if (a3)
  {
    *a3 = self->_reducedProportionalSize;
  }

  baseUnitReduction = self->_baseUnitReduction;

  return baseUnitReduction;
}

- (id)_baseUnitReduction
{
  [(HKUnit *)self _reduceIfNecessaryWithCycleSet:0];
  baseUnitReduction = self->_baseUnitReduction;

  return baseUnitReduction;
}

- (double)_convertToBaseUnit:(double)a3
{
  [(HKUnit *)self _reducedProportionalSize];
  v6 = v5;
  [(HKUnit *)self scaleOffset];
  return v7 + a3 * v6;
}

- (double)_convertFromBaseUnit:(double)a3
{
  [(HKUnit *)self scaleOffset];
  v6 = a3 - v5;
  [(HKUnit *)self _reducedProportionalSize];
  return v6 / v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKUnit *)self unitString];
  [v4 encodeObject:v5 forKey:@"HKUnitStringKey"];
}

- (HKUnit)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"HKUnitStringKey"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKUnitStringKey"];
    v6 = [HKUnit unitFromString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HKUnit;
    self = [(HKUnit *)&v8 init];
    v6 = self;
  }

  return v6;
}

+ (id)_heightUnitForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E695DA08]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [HKUnit meterUnitWithMetricPrefix:5];
  }

  else
  {
    +[HKUnit footUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_distanceUnitForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E695DA08]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [HKUnit meterUnitWithMetricPrefix:9];
  }

  else
  {
    +[HKUnit mileUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_personMassUnitForLocale:(id)a3
{
  v3 = a3;
  v4 = [v3 localeIdentifier];
  v5 = [v4 isEqualToString:@"en_GB"];

  if (v5)
  {
    v6 = +[HKUnit stoneUnit];
  }

  else
  {
    v7 = [v3 objectForKey:*MEMORY[0x1E695DA08]];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      [HKUnit gramUnitWithMetricPrefix:9];
    }

    else
    {
      +[HKUnit poundUnit];
    }
    v6 = ;
  }

  v9 = v6;

  return v9;
}

+ (id)_temperatureUnitForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E695DA08]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    +[HKUnit degreeCelsiusUnit];
  }

  else
  {
    +[HKUnit degreeFahrenheitUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_foodEnergyUnitForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E695DA08]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [HKUnit jouleUnitWithMetricPrefix:9];
  }

  else
  {
    +[HKUnit kilocalorieUnit];
  }
  v5 = ;

  return v5;
}

- (NSString)unitString
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return &stru_1F05FF230;
}

- (_HKDimension)dimension
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (_HKFactorization)_baseUnits
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)a3 withCycleSet:(id)a4
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

@end