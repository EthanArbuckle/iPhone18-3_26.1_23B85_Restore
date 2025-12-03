@interface _HKQuantitySampleComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
- (int64_t)acceptsDataObjectWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp valueInCanonicalUnit:(double)unit;
@end

@implementation _HKQuantitySampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"quantity"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"count"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"quantity"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([pathCopy isEqualToString:@"count"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:52 description:@"Unreachable code has been executed"];

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
  if (!objc_msgSendSuper2(&v12, sel_areValidTypes_forKeyPath_error_, typesCopy, pathCopy, error))
  {
    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"quantity"] && objc_msgSend(typesCopy, "count") != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(typesCopy, "count"), typesCopy}];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  typesCopy = types;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, typesCopy, error))
  {
    if ([pathCopy isEqualToString:@"quantity"])
    {
      anyObject = [typesCopy anyObject];
      _unit = [valueCopy _unit];
      v17 = [anyObject isCompatibleWithUnit:_unit];

      if ((v17 & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid quantity %@ for data type %@", valueCopy, anyObject}];
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"quantity"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"count"])
  {
    v6 = 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:104 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (keyPathIntegerValue == 1)
    {
      value = [(_HKComparisonFilter *)self value];
      integerValue = [value integerValue];

      v17 = HKCompareIntegers([v6 count], integerValue);
      v14 = HKComparisonResultMatchesPredicateOperator(v17, [(_HKComparisonFilter *)self operatorType]);
    }

    else if (keyPathIntegerValue)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:132 description:@"Unreachable code has been executed"];

      v14 = 0;
    }

    else
    {
      value2 = [(_HKComparisonFilter *)self value];
      quantityType = [v6 quantityType];
      _unit = [value2 _unit];
      v11 = [quantityType isCompatibleWithUnit:_unit];

      if (v11)
      {
        quantity = [v6 quantity];
        v13 = [quantity compare:value2];

        v14 = HKComparisonResultMatchesPredicateOperator(v13, [(_HKComparisonFilter *)self operatorType]);
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)acceptsDataObjectWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp valueInCanonicalUnit:(double)unit
{
  v8 = [(_HKComparisonFilter *)self dataTypes:timestamp];
  anyObject = [v8 anyObject];

  keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
  if (keyPathIntegerValue == 1)
  {
    value = [(_HKComparisonFilter *)self value];
    integerValue = [value integerValue];

    v18 = HKCompareIntegers(unit, integerValue);
    v15 = HKComparisonResultMatchesPredicateOperator(v18, [(_HKComparisonFilter *)self operatorType]);
  }

  else if (keyPathIntegerValue)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:153 description:@"Unreachable code has been executed"];

    v15 = 0;
  }

  else
  {
    value2 = [(_HKComparisonFilter *)self value];
    canonicalUnit = [anyObject canonicalUnit];
    [value2 doubleValueForUnit:canonicalUnit];
    v14 = HKCompareDoubles(unit, v13);

    v15 = HKComparisonResultMatchesPredicateOperator(v14, [(_HKComparisonFilter *)self operatorType]);
  }

  return v15;
}

@end