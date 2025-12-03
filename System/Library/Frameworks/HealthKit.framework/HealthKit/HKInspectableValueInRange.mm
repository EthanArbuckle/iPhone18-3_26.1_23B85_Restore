@interface HKInspectableValueInRange
+ (id)valueInRangeWithLow:(id)low high:(id)high currentValue:(id)value unit:(id)unit;
- (BOOL)hasRenderableContent;
- (HKInspectableValueInRange)initWithCoder:(id)coder;
- (id)_currentValueDoubleRepresentation;
- (id)_initValueInRangeWithLow:(id)low high:(id)high currentValue:(id)value unit:(id)unit;
- (id)_numberForValue:(id)value;
- (id)_numberForValueCollection:(id)collection;
- (id)description;
- (int64_t)currentValueRelation;
- (void)_assertValidRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKInspectableValueInRange

- (id)_initValueInRangeWithLow:(id)low high:(id)high currentValue:(id)value unit:(id)unit
{
  lowCopy = low;
  highCopy = high;
  valueCopy = value;
  unitCopy = unit;
  v20.receiver = self;
  v20.super_class = HKInspectableValueInRange;
  v15 = [(HKInspectableValueInRange *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_lowValue, low);
    objc_storeStrong(&v16->_highValue, high);
    objc_storeStrong(&v16->_currentValue, value);
    v17 = [unitCopy copy];
    unitString = v16->_unitString;
    v16->_unitString = v17;

    [(HKInspectableValueInRange *)v16 _assertValidRange];
  }

  return v16;
}

+ (id)valueInRangeWithLow:(id)low high:(id)high currentValue:(id)value unit:(id)unit
{
  lowCopy = low;
  highCopy = high;
  valueCopy = value;
  unitCopy = unit;
  if (!valueCopy)
  {
    [HKInspectableValueInRange valueInRangeWithLow:a2 high:self currentValue:? unit:?];
  }

  v15 = [[HKInspectableValueInRange alloc] _initValueInRangeWithLow:lowCopy high:highCopy currentValue:valueCopy unit:unitCopy];

  return v15;
}

- (void)_assertValidRange
{
  lowValue = [(HKInspectableValueInRange *)self lowValue];
  if (lowValue)
  {
  }

  else
  {
    highValue = [(HKInspectableValueInRange *)self highValue];

    if (!highValue)
    {
      return;
    }
  }

  lowValue2 = [(HKInspectableValueInRange *)self lowValue];
  if (lowValue2)
  {
    lowValue3 = [(HKInspectableValueInRange *)self lowValue];
    v7 = [lowValue3 valueType] == 0;
  }

  else
  {
    v7 = 0;
  }

  highValue2 = [(HKInspectableValueInRange *)self highValue];
  if (highValue2)
  {
    highValue3 = [(HKInspectableValueInRange *)self highValue];
    v10 = [highValue3 valueType] == 0;

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
  currentValue = [(HKInspectableValueInRange *)self currentValue];
  v4 = [(HKInspectableValueInRange *)self _numberForValueCollection:currentValue];

  return v4;
}

- (int64_t)currentValueRelation
{
  lowValue = [(HKInspectableValueInRange *)self lowValue];
  if (lowValue)
  {
  }

  else
  {
    highValue = [(HKInspectableValueInRange *)self highValue];

    if (!highValue)
    {
      return 3;
    }
  }

  _currentValueDoubleRepresentation = [(HKInspectableValueInRange *)self _currentValueDoubleRepresentation];
  v6 = _currentValueDoubleRepresentation;
  if (!_currentValueDoubleRepresentation)
  {
    lowValue2 = 0;
    goto LABEL_9;
  }

  [_currentValueDoubleRepresentation doubleValue];
  v8 = v7;
  lowValue2 = [(HKInspectableValueInRange *)self lowValue];
  v10 = 0.0;
  if (!lowValue2)
  {
    goto LABEL_13;
  }

  lowValue3 = [(HKInspectableValueInRange *)self lowValue];
  v12 = +[HKInspectableValue inspectableValueWithNull];
  v13 = [lowValue3 isEqual:v12];

  if (v13)
  {
    lowValue2 = 0;
    goto LABEL_13;
  }

  lowValueNumberRepresentation = [(HKInspectableValueInRange *)self lowValueNumberRepresentation];
  lowValue2 = lowValueNumberRepresentation;
  if (!lowValueNumberRepresentation)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  [lowValueNumberRepresentation doubleValue];
  v10 = v17;
LABEL_13:
  highValue2 = [(HKInspectableValueInRange *)self highValue];
  if (!highValue2)
  {
    goto LABEL_15;
  }

  v19 = highValue2;
  highValue3 = [(HKInspectableValueInRange *)self highValue];
  v21 = +[HKInspectableValue inspectableValueWithNull];
  v22 = [highValue3 isEqual:v21];

  if (v22)
  {
LABEL_15:
    v23 = 0;
    v14 = 0;
    v24 = lowValue2 != 0;
    v25 = 0.0;
    goto LABEL_16;
  }

  highValueNumberRepresentation = [(HKInspectableValueInRange *)self highValueNumberRepresentation];
  v14 = highValueNumberRepresentation;
  if (highValueNumberRepresentation)
  {
    [highValueNumberRepresentation doubleValue];
    v24 = lowValue2 != 0;
    v23 = 1;
    if (!lowValue2 || v25 - v10 > 2.22044605e-16)
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
  currentValue = [(HKInspectableValueInRange *)self currentValue];
  if ([currentValue collectionType])
  {
    v4 = 0;
  }

  else
  {
    currentValue2 = [(HKInspectableValueInRange *)self currentValue];
    inspectableValue = [currentValue2 inspectableValue];
    valueType = [inspectableValue valueType];

    if (!valueType)
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

    currentValue = [(HKInspectableValueInRange *)self highValue];
    v4 = currentValue == 0;
  }

  return v4;
}

- (id)_numberForValueCollection:(id)collection
{
  collectionCopy = collection;
  collectionType = [collectionCopy collectionType];
  if ((collectionType - 2) < 2)
  {
    inspectableValues = [collectionCopy inspectableValues];
    firstObject = [inspectableValues firstObject];
    v9 = [(HKInspectableValueInRange *)self _numberForValue:firstObject];

LABEL_8:
    goto LABEL_9;
  }

  if (collectionType == 1)
  {
    inspectableValue = [collectionCopy min];
    goto LABEL_7;
  }

  if (!collectionType)
  {
    inspectableValue = [collectionCopy inspectableValue];
LABEL_7:
    inspectableValues = inspectableValue;
    v9 = [(HKInspectableValueInRange *)self _numberForValue:inspectableValue];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_numberForValue:(id)value
{
  valueCopy = value;
  valueType = [valueCopy valueType];
  if ((valueType - 5) < 2)
  {
    codedQuantityValue = [valueCopy codedQuantityValue];
    numberValue = [codedQuantityValue numberValue];
    goto LABEL_6;
  }

  if (valueType == 10)
  {
    numberValue = [valueCopy inspectableIntegerValue];
  }

  else
  {
    if (valueType == 1)
    {
      codedQuantityValue = [valueCopy ratioValue];
      numerator = [codedQuantityValue numerator];
      numberValue = [numerator numberValue];

LABEL_6:
      goto LABEL_9;
    }

    numberValue = 0;
  }

LABEL_9:

  return numberValue;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@, unit: %@, low: %@, high: %@", v5, self, self->_currentValue, self->_unitString, self->_lowValue, self->_highValue];

  return v6;
}

- (HKInspectableValueInRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKInspectableValueInRange;
  v5 = [(HKInspectableValueInRange *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LowValueKey"];
    lowValue = v5->_lowValue;
    v5->_lowValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HighValueKey"];
    highValue = v5->_highValue;
    v5->_highValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentValueKey"];
    currentValue = v5->_currentValue;
    v5->_currentValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnitStringKey"];
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

- (void)encodeWithCoder:(id)coder
{
  lowValue = self->_lowValue;
  coderCopy = coder;
  [coderCopy encodeObject:lowValue forKey:@"LowValueKey"];
  [coderCopy encodeObject:self->_highValue forKey:@"HighValueKey"];
  [coderCopy encodeObject:self->_currentValue forKey:@"CurrentValueKey"];
  [coderCopy encodeObject:self->_unitString forKey:@"UnitStringKey"];
}

+ (void)valueInRangeWithLow:(uint64_t)a1 high:(uint64_t)a2 currentValue:unit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInspectableValueInRange.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"currentValue != nil"}];
}

@end