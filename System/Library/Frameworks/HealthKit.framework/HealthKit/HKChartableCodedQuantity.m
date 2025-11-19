@interface HKChartableCodedQuantity
+ (id)_valueFromCodedQuantity:(id)a3 inUnit:(id)a4 error:(id *)a5;
+ (id)chartableCodedQuantityWithCodings:(id)a3 originalCodedQuantity:(id)a4 originalRangeLowCodedQuantity:(id)a5 originalRangeHighCodedQuantity:(id)a6 error:(id *)a7;
+ (id)converter;
- (BOOL)isInRange;
- (HKChartableCodedQuantity)init;
- (HKChartableCodedQuantity)initWithCodings:(id)a3 quantity:(id)a4 rangeLow:(id)a5 rangeHigh:(id)a6;
- (double)doubleValue;
- (id)chartableCodedQuantityInUnit:(id)a3 adoptUnitIfNullUnit:(BOOL)a4 error:(id *)a5;
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

- (HKChartableCodedQuantity)initWithCodings:(id)a3 quantity:(id)a4 rangeLow:(id)a5 rangeHigh:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKChartableCodedQuantity;
  v14 = [(HKChartableCodedQuantity *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    codings = v14->_codings;
    v14->_codings = v15;

    v17 = [v11 copy];
    quantity = v14->_quantity;
    v14->_quantity = v17;

    v19 = [v12 copy];
    rangeLow = v14->_rangeLow;
    v14->_rangeLow = v19;

    v21 = [v13 copy];
    rangeHigh = v14->_rangeHigh;
    v14->_rangeHigh = v21;
  }

  return v14;
}

+ (id)chartableCodedQuantityWithCodings:(id)a3 originalCodedQuantity:(id)a4 originalRangeLowCodedQuantity:(id)a5 originalRangeHighCodedQuantity:(id)a6 error:(id *)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 converter];
  v17 = [v13 quantityRepresentationWithUCUMConverter:v16 error:a7];

  if (v17)
  {
    v37 = v12;
    if (v14)
    {
      v18 = [v17 _unit];
      v39 = 0;
      v19 = [a1 _valueFromCodedQuantity:v14 inUnit:v18 error:&v39];
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

    if (v15)
    {
      v24 = [v17 _unit];
      v38 = 0;
      v25 = [a1 _valueFromCodedQuantity:v15 inUnit:v24 error:&v38];
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

    v22 = [[a1 alloc] initWithCodings:v37 quantity:v17 rangeLow:v19 rangeHigh:v25];
    v29 = [v13 copy];
    v30 = v22[5];
    v22[5] = v29;

    if (v21)
    {
      v31 = 0;
    }

    else
    {
      v31 = [v14 copy];
    }

    v32 = v22[6];
    v22[6] = v31;

    v12 = v37;
    if (v27)
    {
      v33 = 0;
    }

    else
    {
      v33 = [v15 copy];
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

+ (id)_valueFromCodedQuantity:(id)a3 inUnit:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 converter];
  v11 = [v9 quantityRepresentationWithUCUMConverter:v10 error:a5];

  if (v11)
  {
    if ([v11 isCompatibleWithUnit:v8])
    {
      v12 = MEMORY[0x1E696AD98];
      [v11 doubleValueForUnit:v8];
      v13 = [v12 numberWithDouble:?];
      goto LABEL_6;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"value %@ is not compatible with unit %@", v11, v8}];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)chartableCodedQuantityInUnit:(id)a3 adoptUnitIfNullUnit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(HKQuantity *)self->_quantity _unit];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11 = [(HKChartableCodedQuantity *)self copy];
    goto LABEL_27;
  }

  v12 = self->_quantity;
  v13 = v12;
  if (v6)
  {
    v14 = [(HKQuantity *)v12 _unit];
    v15 = [v14 isNull];

    if (v15)
    {
      [v13 _value];
      v16 = [HKQuantity quantityWithUnit:v8 doubleValue:?];

      v13 = v16;
      goto LABEL_7;
    }
  }

  if ([v13 isCompatibleWithUnit:v8])
  {
LABEL_7:
    [v13 doubleValueForUnit:v8];
    v17 = [HKQuantity quantityWithUnit:v8 doubleValue:?];
    if (self->_rangeLow)
    {
      v18 = [v13 _unit];
      [(NSNumber *)self->_rangeLow doubleValue];
      v19 = [HKQuantity quantityWithUnit:v18 doubleValue:?];
    }

    else
    {
      v19 = 0;
    }

    if (self->_rangeHigh)
    {
      v20 = [v13 _unit];
      [(NSNumber *)self->_rangeHigh doubleValue];
      v21 = [HKQuantity quantityWithUnit:v20 doubleValue:?];
    }

    else
    {
      v21 = 0;
    }

    if (v19)
    {
      v22 = MEMORY[0x1E696AD98];
      [v19 doubleValueForUnit:v8];
      v23 = [v22 numberWithDouble:?];
      if (v21)
      {
LABEL_16:
        v24 = MEMORY[0x1E696AD98];
        [v21 doubleValueForUnit:v8];
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

  [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"Cannot convert %@ to unit %@", self, v8}];
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
  v3 = [(HKQuantity *)quantity _unit];
  [(HKQuantity *)quantity doubleValueForUnit:v3];
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