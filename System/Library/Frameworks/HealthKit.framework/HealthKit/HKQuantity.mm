@interface HKQuantity
+ (HKQuantity)quantityWithUnit:(HKUnit *)unit doubleValue:(double)value;
+ (id)_quantityWithBeatsPerMinute:(double)minute;
+ (id)hk_quantityWithMinutes:(id)minutes;
+ (id)hk_quantityWithSeconds:(id)seconds;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuantity:(id)quantity withAccuracy:(id)accuracy;
- (HKQuantity)init;
- (HKQuantity)initWithCoder:(id)coder;
- (NSComparisonResult)compare:(HKQuantity *)quantity;
- (double)_baselineRelativeDoubleValueForUnit:(id)unit;
- (double)_beatsPerMinute;
- (double)_valueScaledForDisplay;
- (double)doubleValueForUnit:(HKUnit *)unit;
- (id)_foundationMeasurement;
- (id)_initWithUnit:(id)unit doubleValue:(double)value;
- (id)_quantityByAddingQuantity:(id)quantity;
- (id)asJSONObject;
- (id)asJSONObjectForUnit:(id)unit;
- (id)hk_minutesNumber;
- (id)hk_secondsNumber;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuantity

- (HKQuantity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKQuantity)quantityWithUnit:(HKUnit *)unit doubleValue:(double)value
{
  v6 = unit;
  v7 = [[self alloc] _initWithUnit:v6 doubleValue:value];

  return v7;
}

- (id)_initWithUnit:(id)unit doubleValue:(double)value
{
  unitCopy = unit;
  if (!unitCopy)
  {
    unitCopy = +[HKUnit _nullUnit];
  }

  v10.receiver = self;
  v10.super_class = HKQuantity;
  v7 = [(HKQuantity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_unit, unitCopy);
    v8[2] = value;
  }

  return v8;
}

- (double)doubleValueForUnit:(HKUnit *)unit
{
  v4 = unit;
  if (!v4)
  {
    v4 = +[HKUnit _nullUnit];
  }

  [(HKUnit *)self->_unit _valueByConvertingValue:v4 toUnit:self->_value];
  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && (-[HKQuantity _unit](equalCopy, "_unit"), v5 = objc_opt_class();
  }

  return v8;
}

- (NSComparisonResult)compare:(HKQuantity *)quantity
{
  v4 = quantity;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E695D940];
  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Quantity %@ is of incorrect class", v4}];
  }

  _unit = [(HKQuantity *)v4 _unit];
  _unit2 = [(HKQuantity *)self _unit];
  v9 = [_unit _isCompatibleWithUnit:_unit2];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v6 format:{@"Quantity %@ has incompatible unit", v4}];
  }

  _unit3 = [(HKQuantity *)self _unit];
  [(HKQuantity *)self doubleValueForUnit:_unit3];
  v12 = v11;

  _unit4 = [(HKQuantity *)self _unit];
  [(HKQuantity *)v4 doubleValueForUnit:_unit4];
  v15 = v14;

  v16 = HKCompareDoubles(v12, v15);
  if (v16)
  {
    _unit5 = [(HKQuantity *)v4 _unit];
    [(HKQuantity *)self doubleValueForUnit:_unit5];
    v19 = v18;
    [(HKQuantity *)v4 doubleValueForUnit:_unit5];
    v21 = HKCompareDoubles(v19, v20);
  }

  else
  {
    v21 = 0;
  }

  if (v21 == v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = NSOrderedSame;
  }

  return v22;
}

- (id)_quantityByAddingQuantity:(id)quantity
{
  [quantity doubleValueForUnit:self->_unit];
  v5 = v4 + self->_value;
  unit = self->_unit;

  return [HKQuantity quantityWithUnit:unit doubleValue:v5];
}

- (id)_foundationMeasurement
{
  v18 = *MEMORY[0x1E69E9840];
  _foundationUnit = [(HKUnit *)self->_unit _foundationUnit];
  if (_foundationUnit)
  {
    _foundationUnit2 = _foundationUnit;
    v5 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:_foundationUnit unit:self->_value];
  }

  else
  {
    +[HKUnit _foundationBaseUnits];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v16 = 0u;
    _foundationUnit2 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (_foundationUnit2)
    {
      v7 = *v14;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if ([(HKQuantity *)self isCompatibleWithUnit:v9, v13])
        {
          break;
        }

        if (_foundationUnit2 == ++v8)
        {
          _foundationUnit2 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (_foundationUnit2)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

      _foundationUnit2 = [v9 _foundationUnit];
      if (!_foundationUnit2)
      {
        goto LABEL_14;
      }

      v10 = objc_alloc(MEMORY[0x1E696AD28]);
      [(HKQuantity *)self doubleValueForUnit:v9];
      v5 = [v10 initWithDoubleValue:_foundationUnit2 unit:?];
    }

    else
    {
LABEL_14:
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqualToQuantity:(id)quantity withAccuracy:(id)accuracy
{
  quantityCopy = quantity;
  accuracyCopy = accuracy;
  _unit = [quantityCopy _unit];
  _unit2 = [(HKQuantity *)self _unit];
  v10 = [_unit _isCompatibleWithUnit:_unit2];

  if ((v10 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Quantity %@ has incompatible unit", quantityCopy}];
  }

  _unit3 = [(HKQuantity *)self _unit];
  [(HKQuantity *)self doubleValueForUnit:_unit3];
  v13 = v12;

  _unit4 = [(HKQuantity *)self _unit];
  [quantityCopy doubleValueForUnit:_unit4];
  v16 = v15;

  _unit5 = [(HKQuantity *)self _unit];
  [accuracyCopy doubleValueForUnit:_unit5];
  v19 = v18;

  v20 = HKCompareDoublesWithAccuracy(v13, v16, v19) == 0;
  return v20;
}

- (double)_valueScaledForDisplay
{
  unit = self->_unit;
  v4 = +[HKUnit percentUnit];
  if ([(HKUnit *)unit isEqual:v4])
  {
    v5 = 100.0;
  }

  else
  {
    v5 = 1.0;
  }

  return v5 * self->_value;
}

- (double)_baselineRelativeDoubleValueForUnit:(id)unit
{
  unitCopy = unit;
  value = self->_value;
  v6 = 1.79769313e308;
  if (value != 1.79769313e308)
  {
    v6 = -1.79769313e308;
    if (value != -1.79769313e308)
    {
      [(HKQuantity *)self doubleValueForUnit:unitCopy];
      v6 = v7;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ValueKey" forKey:value];
  [coderCopy encodeObject:self->_unit forKey:@"UnitKey"];
}

- (HKQuantity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnitKey"];
  [coderCopy decodeDoubleForKey:@"ValueKey"];
  v7 = v6;

  v8 = [(HKQuantity *)self _initWithUnit:v5 doubleValue:v7];
  return v8;
}

+ (id)_quantityWithBeatsPerMinute:(double)minute
{
  v4 = +[HKUnit _countPerMinuteUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:minute];

  return v5;
}

- (double)_beatsPerMinute
{
  v3 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)self doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (id)asJSONObjectForUnit:(id)unit
{
  v4 = MEMORY[0x1E695DF90];
  unitCopy = unit;
  v6 = objc_alloc_init(v4);
  v7 = [unitCopy description];
  [v6 setObject:v7 forKeyedSubscript:@"unit"];

  v8 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self doubleValueForUnit:unitCopy];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [v6 setObject:v11 forKeyedSubscript:@"quantity"];

  return v6;
}

- (id)asJSONObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _unit = [(HKQuantity *)self _unit];
  v5 = [_unit description];
  [v3 setObject:v5 forKeyedSubscript:@"unit"];

  v6 = MEMORY[0x1E696AD98];
  _unit2 = [(HKQuantity *)self _unit];
  [(HKQuantity *)self doubleValueForUnit:_unit2];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"quantity"];

  return v3;
}

+ (id)hk_quantityWithSeconds:(id)seconds
{
  if (seconds)
  {
    secondsCopy = seconds;
    v4 = +[HKUnit secondUnit];
    [secondsCopy doubleValue];
    v6 = v5;

    v7 = [HKQuantity quantityWithUnit:v4 doubleValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hk_quantityWithMinutes:(id)minutes
{
  if (minutes)
  {
    minutesCopy = minutes;
    v4 = +[HKUnit minuteUnit];
    [minutesCopy doubleValue];
    v6 = v5;

    v7 = [HKQuantity quantityWithUnit:v4 doubleValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hk_secondsNumber
{
  v3 = MEMORY[0x1E696AD98];
  v4 = +[HKUnit secondUnit];
  [(HKQuantity *)self doubleValueForUnit:v4];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

- (id)hk_minutesNumber
{
  v3 = MEMORY[0x1E696AD98];
  v4 = +[HKUnit minuteUnit];
  [(HKQuantity *)self doubleValueForUnit:v4];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

@end