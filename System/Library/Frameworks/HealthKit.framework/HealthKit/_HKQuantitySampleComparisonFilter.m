@interface _HKQuantitySampleComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (int64_t)acceptsDataObjectWithStartTimestamp:(double)a3 endTimestamp:(double)a4 valueInCanonicalUnit:(double)a5;
@end

@implementation _HKQuantitySampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"quantity"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"count"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"quantity"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"count"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:52 description:@"Unreachable code has been executed"];

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
  if (!objc_msgSendSuper2(&v12, sel_areValidTypes_forKeyPath_error_, v8, v9, a5))
  {
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"quantity"] && objc_msgSend(v8, "count") != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(v8, "count"), v8}];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, v14, a7))
  {
    if ([v13 isEqualToString:@"quantity"])
    {
      v15 = [v14 anyObject];
      v16 = [v12 _unit];
      v17 = [v15 isCompatibleWithUnit:v16];

      if ((v17 & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 format:{@"Invalid quantity %@ for data type %@", v12, v15}];
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

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"quantity"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"count"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:104 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKQuantitySampleComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (v7 == 1)
    {
      v15 = [(_HKComparisonFilter *)self value];
      v16 = [v15 integerValue];

      v17 = HKCompareIntegers([v6 count], v16);
      v14 = HKComparisonResultMatchesPredicateOperator(v17, [(_HKComparisonFilter *)self operatorType]);
    }

    else if (v7)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:132 description:@"Unreachable code has been executed"];

      v14 = 0;
    }

    else
    {
      v8 = [(_HKComparisonFilter *)self value];
      v9 = [v6 quantityType];
      v10 = [v8 _unit];
      v11 = [v9 isCompatibleWithUnit:v10];

      if (v11)
      {
        v12 = [v6 quantity];
        v13 = [v12 compare:v8];

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

- (int64_t)acceptsDataObjectWithStartTimestamp:(double)a3 endTimestamp:(double)a4 valueInCanonicalUnit:(double)a5
{
  v8 = [(_HKComparisonFilter *)self dataTypes:a3];
  v9 = [v8 anyObject];

  v10 = [(_HKComparisonFilter *)self keyPathIntegerValue];
  if (v10 == 1)
  {
    v16 = [(_HKComparisonFilter *)self value];
    v17 = [v16 integerValue];

    v18 = HKCompareIntegers(a5, v17);
    v15 = HKComparisonResultMatchesPredicateOperator(v18, [(_HKComparisonFilter *)self operatorType]);
  }

  else if (v10)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter.m" lineNumber:153 description:@"Unreachable code has been executed"];

    v15 = 0;
  }

  else
  {
    v11 = [(_HKComparisonFilter *)self value];
    v12 = [v9 canonicalUnit];
    [v11 doubleValueForUnit:v12];
    v14 = HKCompareDoubles(a5, v13);

    v15 = HKComparisonResultMatchesPredicateOperator(v14, [(_HKComparisonFilter *)self operatorType]);
  }

  return v15;
}

@end