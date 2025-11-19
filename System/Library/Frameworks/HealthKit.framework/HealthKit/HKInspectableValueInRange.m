@interface HKInspectableValueInRange
+ (id)valueInRangeWithLow:(id)a3 high:(id)a4 currentValue:(id)a5 unit:(id)a6;
- (BOOL)hasRenderableContent;
- (HKInspectableValueInRange)initWithCoder:(id)a3;
- (id)_currentValueDoubleRepresentation;
- (id)_initValueInRangeWithLow:(id)a3 high:(id)a4 currentValue:(id)a5 unit:(id)a6;
- (id)_numberForValue:(id)a3;
- (id)_numberForValueCollection:(id)a3;
- (id)description;
- (int64_t)currentValueRelation;
- (void)_assertValidRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKInspectableValueInRange

- (id)_initValueInRangeWithLow:(id)a3 high:(id)a4 currentValue:(id)a5 unit:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HKInspectableValueInRange;
  v15 = [(HKInspectableValueInRange *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_lowValue, a3);
    objc_storeStrong(&v16->_highValue, a4);
    objc_storeStrong(&v16->_currentValue, a5);
    v17 = [v14 copy];
    unitString = v16->_unitString;
    v16->_unitString = v17;

    [(HKInspectableValueInRange *)v16 _assertValidRange];
  }

  return v16;
}

+ (id)valueInRangeWithLow:(id)a3 high:(id)a4 currentValue:(id)a5 unit:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    [HKInspectableValueInRange valueInRangeWithLow:a2 high:a1 currentValue:? unit:?];
  }

  v15 = [[HKInspectableValueInRange alloc] _initValueInRangeWithLow:v11 high:v12 currentValue:v13 unit:v14];

  return v15;
}

- (void)_assertValidRange
{
  v3 = [(HKInspectableValueInRange *)self lowValue];
  if (v3)
  {
  }

  else
  {
    v4 = [(HKInspectableValueInRange *)self highValue];

    if (!v4)
    {
      return;
    }
  }

  v5 = [(HKInspectableValueInRange *)self lowValue];
  if (v5)
  {
    v6 = [(HKInspectableValueInRange *)self lowValue];
    v7 = [v6 valueType] == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HKInspectableValueInRange *)self highValue];
  if (v8)
  {
    v9 = [(HKInspectableValueInRange *)self highValue];
    v10 = [v9 valueType] == 0;

    if (!v10 && !v7)
    {
      return;
    }
  }

  else
  {

    if (!v7)
    {
      return;
    }
  }

  lowValue = self->_lowValue;
  self->_lowValue = 0;

  highValue = self->_highValue;
  self->_highValue = 0;
}

- (id)_currentValueDoubleRepresentation
{
  v3 = [(HKInspectableValueInRange *)self currentValue];
  v4 = [(HKInspectableValueInRange *)self _numberForValueCollection:v3];

  return v4;
}

- (int64_t)currentValueRelation
{
  v3 = [(HKInspectableValueInRange *)self lowValue];
  if (v3)
  {
  }

  else
  {
    v4 = [(HKInspectableValueInRange *)self highValue];

    if (!v4)
    {
      return 3;
    }
  }

  v5 = [(HKInspectableValueInRange *)self _currentValueDoubleRepresentation];
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_9;
  }

  [v5 doubleValue];
  v8 = v7;
  v9 = [(HKInspectableValueInRange *)self lowValue];
  v10 = 0.0;
  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = [(HKInspectableValueInRange *)self lowValue];
  v12 = +[HKInspectableValue inspectableValueWithNull];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v16 = [(HKInspectableValueInRange *)self lowValueNumberRepresentation];
  v9 = v16;
  if (!v16)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  [v16 doubleValue];
  v10 = v17;
LABEL_13:
  v18 = [(HKInspectableValueInRange *)self highValue];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [(HKInspectableValueInRange *)self highValue];
  v21 = +[HKInspectableValue inspectableValueWithNull];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
LABEL_15:
    v23 = 0;
    v14 = 0;
    v24 = v9 != 0;
    v25 = 0.0;
    goto LABEL_16;
  }

  v27 = [(HKInspectableValueInRange *)self highValueNumberRepresentation];
  v14 = v27;
  if (v27)
  {
    [v27 doubleValue];
    v24 = v9 != 0;
    v23 = 1;
    if (!v9 || v25 - v10 > 2.22044605e-16)
    {
LABEL_16:
      if (v24 && v8 < v10)
      {
        v15 = 1;
      }

      else if ((v23 & (v8 > v25)) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_10:
  v15 = 4;
LABEL_22:

  return v15;
}

- (BOOL)hasRenderableContent
{
  v3 = [(HKInspectableValueInRange *)self currentValue];
  if ([v3 collectionType])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HKInspectableValueInRange *)self currentValue];
    v6 = [v5 inspectableValue];
    v7 = [v6 valueType];

    if (!v7)
    {
      return 0;
    }

    lowValue = self->_lowValue;
    v9 = !lowValue || [(HKInspectableValue *)lowValue valueType]== 5;
    highValue = self->_highValue;
    v11 = !highValue || [(HKInspectableValue *)highValue valueType]== 5;
    if (v9 && v11)
    {
      return 0;
    }

    if (v9 || v11)
    {
      return 1;
    }

    v12 = [(HKInspectableValueInRange *)self _numberForValue:self->_highValue];
    [v12 doubleValue];
    v14 = v13;

    v15 = [(HKInspectableValueInRange *)self _numberForValue:self->_lowValue];
    [v15 doubleValue];
    v17 = v16;

    if (v14 - v17 > 2.22044605e-16)
    {
      return 1;
    }

    v3 = [(HKInspectableValueInRange *)self highValue];
    v4 = v3 == 0;
  }

  return v4;
}

- (id)_numberForValueCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionType];
  if ((v5 - 2) < 2)
  {
    v7 = [v4 inspectableValues];
    v8 = [v7 firstObject];
    v9 = [(HKInspectableValueInRange *)self _numberForValue:v8];

LABEL_8:
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v6 = [v4 min];
    goto LABEL_7;
  }

  if (!v5)
  {
    v6 = [v4 inspectableValue];
LABEL_7:
    v7 = v6;
    v9 = [(HKInspectableValueInRange *)self _numberForValue:v6];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_numberForValue:(id)a3
{
  v3 = a3;
  v4 = [v3 valueType];
  if ((v4 - 5) < 2)
  {
    v5 = [v3 codedQuantityValue];
    v7 = [v5 numberValue];
    goto LABEL_6;
  }

  if (v4 == 10)
  {
    v7 = [v3 inspectableIntegerValue];
  }

  else
  {
    if (v4 == 1)
    {
      v5 = [v3 ratioValue];
      v6 = [v5 numerator];
      v7 = [v6 numberValue];

LABEL_6:
      goto LABEL_9;
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@, unit: %@, low: %@, high: %@", v5, self, self->_currentValue, self->_unitString, self->_lowValue, self->_highValue];

  return v6;
}

- (HKInspectableValueInRange)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKInspectableValueInRange;
  v5 = [(HKInspectableValueInRange *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LowValueKey"];
    lowValue = v5->_lowValue;
    v5->_lowValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HighValueKey"];
    highValue = v5->_highValue;
    v5->_highValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentValueKey"];
    currentValue = v5->_currentValue;
    v5->_currentValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnitStringKey"];
    unitString = v5->_unitString;
    v5->_unitString = v12;

    if (!v5->_currentValue)
    {
      v14 = 0;
      goto LABEL_6;
    }

    [(HKInspectableValueInRange *)v5 _assertValidRange];
  }

  v14 = v5;
LABEL_6:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  lowValue = self->_lowValue;
  v5 = a3;
  [v5 encodeObject:lowValue forKey:@"LowValueKey"];
  [v5 encodeObject:self->_highValue forKey:@"HighValueKey"];
  [v5 encodeObject:self->_currentValue forKey:@"CurrentValueKey"];
  [v5 encodeObject:self->_unitString forKey:@"UnitStringKey"];
}

+ (void)valueInRangeWithLow:(uint64_t)a1 high:(uint64_t)a2 currentValue:unit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInspectableValueInRange.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"currentValue != nil"}];
}

@end