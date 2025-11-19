@interface HKQuantityType
+ (id)_quantityTypeWithCode:(int64_t)a3;
- (BOOL)isCompatibleWithUnit:(HKUnit *)unit;
- (BOOL)supportsStatisticOptions:(unint64_t)a3;
- (HKQuantityType)initWithIdentifier:(id)a3;
- (HKUnit)canonicalUnit;
- (_HKDimension)dimension;
- (id)_initWithCode:(int64_t)a3;
- (id)defaultUnitForLocale:(id)a3 version:(int64_t)a4;
- (void)validateUnit:(id)a3;
- (void)validateUnitForStatistic:(id)a3;
- (void)validateUnitFromString:(id)a3;
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

- (id)defaultUnitForLocale:(id)a3 version:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKObjectType *)self code];
  if (v7 <= 187)
  {
    switch(v7)
    {
      case 2:
        v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
        v18 = [v9 BOOLValue];
        if (v18 && ([v6 localeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isEqual:", @"en_GB") & 1) == 0))
        {
          v14 = [HKUnit meterUnitWithMetricPrefix:5];
        }

        else
        {
          v14 = +[HKUnit footUnit];
          if (!v18)
          {
            goto LABEL_41;
          }
        }

        break;
      case 3:
      case 4:
        v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
        v10 = [v9 BOOLValue];
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
        v13 = _HKEnergyUnitForLocale(v6);
        goto LABEL_10;
      case 15:
        v13 = _HKBloodGlucoseUnitForLocale(v6);
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
        v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
        v10 = [v9 BOOLValue];
        v11 = @"yd";
        goto LABEL_36;
      case 114:
        goto LABEL_32;
      default:
        if (v7 == 138)
        {
          goto LABEL_24;
        }

        if (v7 != 187)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (v7 > 273)
  {
    v15 = v7 - 25;
    if ((v7 - 281) <= 0x16)
    {
      if (((1 << v15) & 0x700001) != 0)
      {
        goto LABEL_28;
      }

      if (((1 << v15) & 0x1A000) != 0)
      {
LABEL_24:
        v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
        v10 = [v9 BOOLValue];
        v11 = @"mi";
        v12 = @"km";
        goto LABEL_37;
      }

      if (v7 == 295)
      {
        v8 = @"km";
        goto LABEL_9;
      }
    }

    if (v7 != 274)
    {
      if (v7 != 277)
      {
LABEL_34:
        v13 = [(HKQuantityType *)self canonicalUnit];
        goto LABEL_10;
      }

LABEL_27:
      v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
      v10 = [v9 BOOLValue];
      v11 = @"degF";
      v12 = @"degC";
      goto LABEL_37;
    }

LABEL_28:
    v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
    v10 = [v9 BOOLValue];
    v11 = @"mi/hr";
    v12 = @"km/hr";
    goto LABEL_37;
  }

  if (v7 > 196)
  {
    if (v7 != 197)
    {
      if (v7 != 256)
      {
        if (v7 == 269)
        {
          v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
          v10 = [v9 BOOLValue];
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
    v13 = [HKUnit unitFromString:v8];
LABEL_10:
    v14 = v13;
    goto LABEL_42;
  }

  if ((v7 - 195) >= 2)
  {
    if (v7 == 188)
    {
LABEL_32:
      v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
      v10 = [v9 BOOLValue];
      v11 = @"in";
      v12 = @"cm";
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v9 = [v6 objectForKey:*MEMORY[0x1E695DA08]];
  v10 = [v9 BOOLValue];
  v11 = @"ft/s";
  v12 = @"m/s";
LABEL_37:
  if (v10)
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

- (BOOL)supportsStatisticOptions:(unint64_t)a3
{
  v5 = [(HKQuantityType *)self aggregationStyle];
  if ((v5 - 1) >= 3)
  {
    if (v5 == HKQuantityAggregationStyleCumulative)
    {
      if ((a3 & 2) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteAverage";
      }

      else if ((a3 & 4) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteMin";
      }

      else if ((a3 & 8) != 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"HKStatisticsOptionDiscreteMax";
      }

      else
      {
        v6 = _HKStatisticsOptionPercentile() & a3;
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

  if ((a3 & 0x10) == 0)
  {
    return 1;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Statistics option %@ is not compatible with discrete data type %@", @"HKStatisticsOptionCumulativeSum", self}];
  return 0;
}

- (void)validateUnitForStatistic:(id)a3
{
  v6 = a3;
  v4 = [(HKSampleType *)self _unitForChangeInCanonicalUnit];
  v5 = [v4 _isCompatibleWithUnit:v6];

  if ((v5 & 1) == 0)
  {
    [(HKQuantityType *)self validateUnit:v6];
  }
}

- (id)_initWithCode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = HKQuantityType;
  result = [(HKObjectType *)&v4 _initWithCode:a3];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (HKQuantityType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HKObjectType quantityTypeForIdentifier:v4];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), v4}];
  }

  return v5;
}

- (BOOL)isCompatibleWithUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [(HKQuantityType *)self canonicalUnit];
  v6 = [v5 _isCompatibleWithUnit:v4];

  return v6;
}

- (_HKDimension)dimension
{
  v2 = [(HKQuantityType *)self canonicalUnit];
  v3 = [v2 dimension];

  return v3;
}

- (void)validateUnit:(id)a3
{
  v10 = a3;
  v4 = [(HKQuantityType *)self canonicalUnit];
  v5 = [v10 _isCompatibleWithUnit:v4];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v9 = [(HKQuantityType *)self dimension];
    [v6 raise:v7 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v8, self, v9, v10}];
  }
}

- (void)validateUnitFromString:(id)a3
{
  v4 = [HKUnit unitFromString:a3];
  [(HKQuantityType *)self validateUnit:v4];
}

+ (id)_quantityTypeWithCode:(int64_t)a3
{
  v5 = objc_opt_class();

  return [a1 _dataTypeWithCode:a3 expectedClass:v5];
}

@end