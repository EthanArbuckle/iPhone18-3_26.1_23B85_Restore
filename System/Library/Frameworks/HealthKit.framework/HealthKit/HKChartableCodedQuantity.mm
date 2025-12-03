@interface HKChartableCodedQuantity
+ (id)_valueFromCodedQuantity:(id)quantity inUnit:(id)unit error:(id *)error;
+ (id)chartableCodedQuantityWithCodings:(id)codings originalCodedQuantity:(id)quantity originalRangeLowCodedQuantity:(id)codedQuantity originalRangeHighCodedQuantity:(id)highCodedQuantity error:(id *)error;
+ (id)converter;
- (BOOL)isInRange;
- (HKChartableCodedQuantity)init;
- (HKChartableCodedQuantity)initWithCodings:(id)codings quantity:(id)quantity rangeLow:(id)low rangeHigh:(id)high;
- (double)doubleValue;
- (id)chartableCodedQuantityInUnit:(id)unit adoptUnitIfNullUnit:(BOOL)nullUnit error:(id *)error;
- (id)description;
@end

@implementation HKChartableCodedQuantity

- (HKChartableCodedQuantity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKChartableCodedQuantity)initWithCodings:(id)codings quantity:(id)quantity rangeLow:(id)low rangeHigh:(id)high
{
  codingsCopy = codings;
  quantityCopy = quantity;
  lowCopy = low;
  highCopy = high;
  v24.receiver = self;
  v24.super_class = HKChartableCodedQuantity;
  v14 = [(HKChartableCodedQuantity *)&v24 init];
  if (v14)
  {
    v15 = [codingsCopy copy];
    codings = v14->_codings;
    v14->_codings = v15;

    v17 = [quantityCopy copy];
    quantity = v14->_quantity;
    v14->_quantity = v17;

    v19 = [lowCopy copy];
    rangeLow = v14->_rangeLow;
    v14->_rangeLow = v19;

    v21 = [highCopy copy];
    rangeHigh = v14->_rangeHigh;
    v14->_rangeHigh = v21;
  }

  return v14;
}

+ (id)chartableCodedQuantityWithCodings:(id)codings originalCodedQuantity:(id)quantity originalRangeLowCodedQuantity:(id)codedQuantity originalRangeHighCodedQuantity:(id)highCodedQuantity error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  codingsCopy = codings;
  quantityCopy = quantity;
  codedQuantityCopy = codedQuantity;
  highCodedQuantityCopy = highCodedQuantity;
  converter = [self converter];
  v17 = [quantityCopy quantityRepresentationWithUCUMConverter:converter error:error];

  if (v17)
  {
    v37 = codingsCopy;
    if (codedQuantityCopy)
    {
      _unit = [v17 _unit];
      v39 = 0;
      v19 = [self _valueFromCodedQuantity:codedQuantityCopy inUnit:_unit error:&v39];
      v20 = v39;

      if (v19)
      {
        v21 = 0;
      }

      else
      {
        _HKInitializeLogging();
        v23 = HKLogHealthRecords;
        v21 = 1;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v41 = v20;
          _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_INFO, "Unable to get reference range low as quantity, ignoring: %{public}@", buf, 0xCu);
        }

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
    }

    if (highCodedQuantityCopy)
    {
      _unit2 = [v17 _unit];
      v38 = 0;
      v25 = [self _valueFromCodedQuantity:highCodedQuantityCopy inUnit:_unit2 error:&v38];
      v26 = v38;

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        v27 = 1;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v41 = v26;
          _os_log_impl(&dword_19197B000, v28, OS_LOG_TYPE_INFO, "Unable to get reference range high as quantity: %{public}@", buf, 0xCu);
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 1;
    }

    v22 = [[self alloc] initWithCodings:v37 quantity:v17 rangeLow:v19 rangeHigh:v25];
    v29 = [quantityCopy copy];
    v30 = v22[5];
    v22[5] = v29;

    if (v21)
    {
      v31 = 0;
    }

    else
    {
      v31 = [codedQuantityCopy copy];
    }

    v32 = v22[6];
    v22[6] = v31;

    codingsCopy = v37;
    if (v27)
    {
      v33 = 0;
    }

    else
    {
      v33 = [highCodedQuantityCopy copy];
    }

    v34 = v22[7];
    v22[7] = v33;
  }

  else
  {
    v22 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_valueFromCodedQuantity:(id)quantity inUnit:(id)unit error:(id *)error
{
  unitCopy = unit;
  quantityCopy = quantity;
  converter = [self converter];
  v11 = [quantityCopy quantityRepresentationWithUCUMConverter:converter error:error];

  if (v11)
  {
    if ([v11 isCompatibleWithUnit:unitCopy])
    {
      v12 = MEMORY[0x1E696AD98];
      [v11 doubleValueForUnit:unitCopy];
      v13 = [v12 numberWithDouble:?];
      goto LABEL_6;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"value %@ is not compatible with unit %@", v11, unitCopy}];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)chartableCodedQuantityInUnit:(id)unit adoptUnitIfNullUnit:(BOOL)nullUnit error:(id *)error
{
  nullUnitCopy = nullUnit;
  unitCopy = unit;
  _unit = [(HKQuantity *)self->_quantity _unit];
  v10 = [_unit isEqual:unitCopy];

  if (v10)
  {
    v11 = [(HKChartableCodedQuantity *)self copy];
    goto LABEL_27;
  }

  v12 = self->_quantity;
  v13 = v12;
  if (nullUnitCopy)
  {
    _unit2 = [(HKQuantity *)v12 _unit];
    isNull = [_unit2 isNull];

    if (isNull)
    {
      [v13 _value];
      v16 = [HKQuantity quantityWithUnit:unitCopy doubleValue:?];

      v13 = v16;
      goto LABEL_7;
    }
  }

  if ([v13 isCompatibleWithUnit:unitCopy])
  {
LABEL_7:
    [v13 doubleValueForUnit:unitCopy];
    v17 = [HKQuantity quantityWithUnit:unitCopy doubleValue:?];
    if (self->_rangeLow)
    {
      _unit3 = [v13 _unit];
      [(NSNumber *)self->_rangeLow doubleValue];
      v19 = [HKQuantity quantityWithUnit:_unit3 doubleValue:?];
    }

    else
    {
      v19 = 0;
    }

    if (self->_rangeHigh)
    {
      _unit4 = [v13 _unit];
      [(NSNumber *)self->_rangeHigh doubleValue];
      v21 = [HKQuantity quantityWithUnit:_unit4 doubleValue:?];
    }

    else
    {
      v21 = 0;
    }

    if (v19)
    {
      v22 = MEMORY[0x1E696AD98];
      [v19 doubleValueForUnit:unitCopy];
      v23 = [v22 numberWithDouble:?];
      if (v21)
      {
LABEL_16:
        v24 = MEMORY[0x1E696AD98];
        [v21 doubleValueForUnit:unitCopy];
        v25 = [v24 numberWithDouble:?];
LABEL_19:
        v11 = [objc_alloc(objc_opt_class()) initWithCodings:self->_codings quantity:v17 rangeLow:v23 rangeHigh:v25];
        v26 = [(HKCodedQuantity *)self->_originalCodedQuantity copy];
        v27 = v11[5];
        v11[5] = v26;

        if (v23)
        {
          v28 = [(HKCodedQuantity *)self->_originalRangeLowCodedQuantity copy];
        }

        else
        {
          v28 = 0;
        }

        v29 = v11[6];
        v11[6] = v28;

        if (v25)
        {
          v30 = [(HKCodedQuantity *)self->_originalRangeHighCodedQuantity copy];
        }

        else
        {
          v30 = 0;
        }

        v31 = v11[7];
        v11[7] = v30;

        goto LABEL_26;
      }
    }

    else
    {
      v23 = 0;
      if (v21)
      {
        goto LABEL_16;
      }
    }

    v25 = 0;
    goto LABEL_19;
  }

  [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Cannot convert %@ to unit %@", self, unitCopy}];
  v11 = 0;
LABEL_26:

LABEL_27:

  return v11;
}

- (BOOL)isInRange
{
  [(HKChartableCodedQuantity *)self doubleValue];
  v4 = v3;
  rangeLow = self->_rangeLow;
  result = 0;
  if (!rangeLow || ([(NSNumber *)rangeLow doubleValue], v6 <= v4))
  {
    rangeHigh = self->_rangeHigh;
    if (!rangeHigh)
    {
      return 1;
    }

    [(NSNumber *)rangeHigh doubleValue];
    if (v8 >= v4)
    {
      return 1;
    }
  }

  return result;
}

- (double)doubleValue
{
  quantity = self->_quantity;
  _unit = [(HKQuantity *)quantity _unit];
  [(HKQuantity *)quantity doubleValueForUnit:_unit];
  v5 = v4;

  return v5;
}

+ (id)converter
{
  if (converter_onceToken_0 != -1)
  {
    +[HKChartableCodedQuantity converter];
  }

  v3 = converter_converter_0;

  return v3;
}

uint64_t __37__HKChartableCodedQuantity_converter__block_invoke()
{
  converter_converter_0 = objc_alloc_init(HKUCUMUnitDisplayConverter);

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v9 = *&self->_quantity;
  rangeHigh = self->_rangeHigh;
  v6 = [(NSArray *)self->_codings componentsJoinedByString:@" "];;
  v7 = [v3 stringWithFormat:@"<%@ %p> quantity: %@, low: %@, high: %@, codings: %@", v4, self, v9, rangeHigh, v6];

  return v7;
}

@end