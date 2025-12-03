@interface HKQuantityType
+ (id)_quantityTypeWithCode:(int64_t)code;
- (BOOL)isCompatibleWithUnit:(HKUnit *)unit;
- (BOOL)supportsStatisticOptions:(unint64_t)options;
- (HKQuantityType)initWithIdentifier:(id)identifier;
- (HKUnit)canonicalUnit;
- (_HKDimension)dimension;
- (id)_initWithCode:(int64_t)code;
- (id)defaultUnitForLocale:(id)locale version:(int64_t)version;
- (void)validateUnit:(id)unit;
- (void)validateUnitForStatistic:(id)statistic;
- (void)validateUnitFromString:(id)string;
@end

@implementation HKQuantityType

- (HKUnit)canonicalUnit
{
  os_unfair_lock_lock(&self->_canonicalUnitLock);
  if (!self->_canonicalUnit)
  {
    v3 = [HKUnit unitFromString:[(HKObjectType *)self _definition][24]];
    canonicalUnit = self->_canonicalUnit;
    self->_canonicalUnit = v3;
  }

  os_unfair_lock_unlock(&self->_canonicalUnitLock);
  v5 = self->_canonicalUnit;

  return v5;
}

- (id)defaultUnitForLocale:(id)locale version:(int64_t)version
{
  localeCopy = locale;
  code = [(HKObjectType *)self code];
  if (code <= 187)
  {
    switch(code)
    {
      case 2:
        v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
        bOOLValue = [v9 BOOLValue];
        if (bOOLValue && ([localeCopy localeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isEqual:", @"en_GB") & 1) == 0))
        {
          v14 = [HKUnit meterUnitWithMetricPrefix:5];
        }

        else
        {
          v14 = +[HKUnit footUnit];
          if (!bOOLValue)
          {
            goto LABEL_41;
          }
        }

        break;
      case 3:
      case 4:
        v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
        bOOLValue2 = [v9 BOOLValue];
        v11 = @"lb";
        v12 = @"kg";
        goto LABEL_37;
      case 5:
      case 61:
        v8 = @"count/min";
        goto LABEL_9;
      case 6:
      case 7:
      case 11:
      case 12:
      case 13:
      case 14:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 26:
      case 27:
      case 28:
      case 30:
      case 57:
      case 59:
      case 60:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 79:
      case 80:
      case 81:
      case 82:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
      case 112:
        goto LABEL_34;
      case 8:
      case 83:
      case 113:
        goto LABEL_24;
      case 9:
      case 10:
      case 29:
        canonicalUnit = _HKEnergyUnitForLocale(localeCopy);
        goto LABEL_10;
      case 15:
        canonicalUnit = _HKBloodGlucoseUnitForLocale(localeCopy);
        goto LABEL_10;
      case 24:
      case 25:
      case 32:
      case 34:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 45:
      case 46:
      case 48:
      case 49:
      case 51:
      case 52:
      case 55:
      case 56:
      case 78:
        v8 = @"mg";
        goto LABEL_9;
      case 31:
      case 33:
      case 35:
      case 37:
      case 43:
      case 44:
      case 47:
      case 50:
      case 53:
      case 54:
        v8 = @"mcg";
        goto LABEL_9;
      case 58:
        v8 = @"mcS";
        goto LABEL_9;
      case 62:
      case 90:
        goto LABEL_27;
      case 89:
        v8 = @"count";
        goto LABEL_9;
      case 110:
        v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
        bOOLValue2 = [v9 BOOLValue];
        v11 = @"yd";
        goto LABEL_36;
      case 114:
        goto LABEL_32;
      default:
        if (code == 138)
        {
          goto LABEL_24;
        }

        if (code != 187)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (code > 273)
  {
    v15 = code - 25;
    if ((code - 281) <= 0x16)
    {
      if (((1 << v15) & 0x700001) != 0)
      {
        goto LABEL_28;
      }

      if (((1 << v15) & 0x1A000) != 0)
      {
LABEL_24:
        v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
        bOOLValue2 = [v9 BOOLValue];
        v11 = @"mi";
        v12 = @"km";
        goto LABEL_37;
      }

      if (code == 295)
      {
        v8 = @"km";
        goto LABEL_9;
      }
    }

    if (code != 274)
    {
      if (code != 277)
      {
LABEL_34:
        canonicalUnit = [(HKQuantityType *)self canonicalUnit];
        goto LABEL_10;
      }

LABEL_27:
      v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
      bOOLValue2 = [v9 BOOLValue];
      v11 = @"degF";
      v12 = @"degC";
      goto LABEL_37;
    }

LABEL_28:
    v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
    bOOLValue2 = [v9 BOOLValue];
    v11 = @"mi/hr";
    v12 = @"km/hr";
    goto LABEL_37;
  }

  if (code > 196)
  {
    if (code != 197)
    {
      if (code != 256)
      {
        if (code == 269)
        {
          v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
          bOOLValue2 = [v9 BOOLValue];
          v11 = @"ft";
LABEL_36:
          v12 = @"m";
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    v8 = @"hr";
LABEL_9:
    canonicalUnit = [HKUnit unitFromString:v8];
LABEL_10:
    v14 = canonicalUnit;
    goto LABEL_42;
  }

  if ((code - 195) >= 2)
  {
    if (code == 188)
    {
LABEL_32:
      v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
      bOOLValue2 = [v9 BOOLValue];
      v11 = @"in";
      v12 = @"cm";
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v9 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
  bOOLValue2 = [v9 BOOLValue];
  v11 = @"ft/s";
  v12 = @"m/s";
LABEL_37:
  if (bOOLValue2)
  {
    v16 = v12;
  }

  else
  {
    v16 = v11;
  }

  v14 = [HKUnit unitFromString:v16];
LABEL_41:

LABEL_42:

  return v14;
}

- (BOOL)supportsStatisticOptions:(unint64_t)options
{
  aggregationStyle = [(HKQuantityType *)self aggregationStyle];
  if ((aggregationStyle - 1) >= 3)
  {
    if (aggregationStyle == HKQuantityAggregationStyleCumulative)
    {
      if ((options & 2) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteAverage";
      }

      else if ((options & 4) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteMin";
      }

      else if ((options & 8) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteMax";
      }

      else
      {
        v6 = _HKStatisticsOptionPercentile() & options;
        if (v6 != _HKStatisticsOptionPercentile())
        {
          return 1;
        }

        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"_HKStatisticsOptionPercentile()";
      }

      [v7 raise:v8 format:{@"Statistics option %@ is not compatible with cumulative data type %@", v9, self}];
      return 0;
    }

    return 1;
  }

  if ((options & 0x10) == 0)
  {
    return 1;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Statistics option %@ is not compatible with discrete data type %@", @"HKStatisticsOptionCumulativeSum", self}];
  return 0;
}

- (void)validateUnitForStatistic:(id)statistic
{
  statisticCopy = statistic;
  _unitForChangeInCanonicalUnit = [(HKSampleType *)self _unitForChangeInCanonicalUnit];
  v5 = [_unitForChangeInCanonicalUnit _isCompatibleWithUnit:statisticCopy];

  if ((v5 & 1) == 0)
  {
    [(HKQuantityType *)self validateUnit:statisticCopy];
  }
}

- (id)_initWithCode:(int64_t)code
{
  v4.receiver = self;
  v4.super_class = HKQuantityType;
  result = [(HKObjectType *)&v4 _initWithCode:code];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (HKQuantityType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType quantityTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

- (BOOL)isCompatibleWithUnit:(HKUnit *)unit
{
  v4 = unit;
  canonicalUnit = [(HKQuantityType *)self canonicalUnit];
  v6 = [canonicalUnit _isCompatibleWithUnit:v4];

  return v6;
}

- (_HKDimension)dimension
{
  canonicalUnit = [(HKQuantityType *)self canonicalUnit];
  dimension = [canonicalUnit dimension];

  return dimension;
}

- (void)validateUnit:(id)unit
{
  unitCopy = unit;
  canonicalUnit = [(HKQuantityType *)self canonicalUnit];
  v5 = [unitCopy _isCompatibleWithUnit:canonicalUnit];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    dimension = [(HKQuantityType *)self dimension];
    [v6 raise:v7 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v8, self, dimension, unitCopy}];
  }
}

- (void)validateUnitFromString:(id)string
{
  v4 = [HKUnit unitFromString:string];
  [(HKQuantityType *)self validateUnit:v4];
}

+ (id)_quantityTypeWithCode:(int64_t)code
{
  v5 = objc_opt_class();

  return [self _dataTypeWithCode:code expectedClass:v5];
}

@end