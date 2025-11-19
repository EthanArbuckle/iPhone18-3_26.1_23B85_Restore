@interface HKInspectableValue
+ (HKInspectableValue)inspectableValueWithBoolean:(id)a3;
+ (HKInspectableValue)inspectableValueWithCodedQuantity:(id)a3;
+ (HKInspectableValue)inspectableValueWithCodedValueCollection:(id)a3;
+ (HKInspectableValue)inspectableValueWithDataAbsentReasonCodings:(id)a3;
+ (HKInspectableValue)inspectableValueWithDateComponents:(id)a3;
+ (HKInspectableValue)inspectableValueWithInteger:(id)a3;
+ (HKInspectableValue)inspectableValueWithMedicalCodings:(id)a3;
+ (HKInspectableValue)inspectableValueWithMedicalDate:(id)a3;
+ (HKInspectableValue)inspectableValueWithMedicalDateInterval:(id)a3;
+ (HKInspectableValue)inspectableValueWithNull;
+ (HKInspectableValue)inspectableValueWithRatio:(id)a3;
+ (HKInspectableValue)inspectableValueWithString:(id)a3;
+ (HKInspectableValue)inspectableValueWithValueType:(int64_t)a3 value:(id)a4;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKCodedQuantity)codedQuantityValue;
- (HKCodedValueCollection)codedValueCollection;
- (HKConcept)dataAbsentReason;
- (HKConcept)ontologyConcept;
- (HKInspectableValue)init;
- (HKInspectableValue)initWithCoder:(id)a3;
- (HKMedicalDate)medicalDateValue;
- (HKMedicalDateInterval)medicalDateIntervalValue;
- (HKRatioValue)ratioValue;
- (HKUCUMUnitDisplayConverter)converter;
- (NSArray)dataAbsentReasonCodings;
- (NSArray)medicalCodings;
- (NSDate)dateValueForUTC;
- (NSDateComponents)dateComponentsValue;
- (NSNumber)BOOLeanValue;
- (NSNumber)inspectableIntegerValue;
- (NSString)stringValue;
- (NSString)unitString;
- (id)_initWithValueType:(int64_t)a3 value:(id)a4;
- (id)_unitStringForCodedValueCollection:(id)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_assertValueClass:(Class)a3;
- (void)_assertValueType;
- (void)_setDataAbsentReason:(id)a3;
- (void)_setOntologyConcept:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKInspectableValue

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [HKCodedValueCollection indexableKeyPathsWithPrefix:@"codedValueCollection"];
  v5 = [v4 firstObject];

  if (v5)
  {
    v15 = @"medicalCodings";
    v16 = @"dataAbsentReasonCodings";
    v17 = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v15;
    v8 = 3;
  }

  else
  {
    v13 = @"medicalCodings";
    v14 = @"dataAbsentReasonCodings";
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v13;
    v8 = 2;
  }

  v9 = [v6 arrayWithObjects:v7 count:{v8, v13, v14, v15, v16, v17, v18}];
  v10 = [HKConceptIndexUtilities keyPaths:v9 prefix:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (HKInspectableValue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKInspectableValue)inspectableValueWithValueType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] _initWithValueType:a3 value:v6];

  return v7;
}

+ (HKInspectableValue)inspectableValueWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:0 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithCodedQuantity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:6 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithRatio:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:1 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithMedicalDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:2 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithMedicalDateInterval:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:3 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithDateComponents:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:4 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithInteger:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:10 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithBoolean:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:11 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithNull
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKInspectableValue_inspectableValueWithNull__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inspectableValueWithNull_onceToken != -1)
  {
    dispatch_once(&inspectableValueWithNull_onceToken, block);
  }

  v2 = inspectableValueWithNull__null;

  return v2;
}

void __46__HKInspectableValue_inspectableValueWithNull__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x1E695DFB0] null];
  v2 = [v1 _initWithValueType:5 value:v4];
  v3 = inspectableValueWithNull__null;
  inspectableValueWithNull__null = v2;
}

+ (HKInspectableValue)inspectableValueWithMedicalCodings:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:7 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithCodedValueCollection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:8 value:v4];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithDataAbsentReasonCodings:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithValueType:9 value:v4];

  return v5;
}

- (id)_initWithValueType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKInspectableValue;
  v7 = [(HKInspectableValue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_valueType = a3;
    v9 = [v6 copy];
    value = v8->_value;
    v8->_value = v9;

    [(HKInspectableValue *)v8 _assertValueType];
  }

  return v8;
}

- (NSString)stringValue
{
  if ([(HKInspectableValue *)self valueType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HKInspectableValue *)self value];
  }

  return v3;
}

- (HKCodedQuantity)codedQuantityValue
{
  if ([(HKInspectableValue *)self valueType]== 6)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKRatioValue)ratioValue
{
  if ([(HKInspectableValue *)self valueType]== 1)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKMedicalDate)medicalDateValue
{
  if ([(HKInspectableValue *)self valueType]== 2)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKMedicalDateInterval)medicalDateIntervalValue
{
  if ([(HKInspectableValue *)self valueType]== 3)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDateComponents)dateComponentsValue
{
  if ([(HKInspectableValue *)self valueType]== 4)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)medicalCodings
{
  if ([(HKInspectableValue *)self valueType]== 7)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKCodedValueCollection)codedValueCollection
{
  if ([(HKInspectableValue *)self valueType]== 8)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)dataAbsentReasonCodings
{
  if ([(HKInspectableValue *)self valueType]== 9)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)inspectableIntegerValue
{
  if ([(HKInspectableValue *)self valueType]== 10)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)BOOLeanValue
{
  if ([(HKInspectableValue *)self valueType]== 11)
  {
    v3 = [(HKInspectableValue *)self value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)dateValueForUTC
{
  v3 = [(HKInspectableValue *)self medicalDateValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dateForUTC];
    goto LABEL_9;
  }

  v6 = [(HKInspectableValue *)self medicalDateIntervalValue];
  v7 = [v6 startDate];

  if (v7)
  {
    v8 = [v6 startDate];
LABEL_7:
    v9 = v8;
    v5 = [v8 dateForUTC];

    goto LABEL_8;
  }

  v5 = [v6 endDate];

  if (v5)
  {
    v8 = [v6 endDate];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return v5;
}

- (void)_setOntologyConcept:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(HKInspectableValue *)a2 _setOntologyConcept:?];
    v5 = 0;
  }

  v6 = [v5 copy];
  ontologyConcept = self->_ontologyConcept;
  self->_ontologyConcept = v6;
}

- (void)_setDataAbsentReason:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(HKInspectableValue *)a2 _setDataAbsentReason:?];
    v5 = 0;
  }

  v6 = [v5 copy];
  dataAbsentReason = self->_dataAbsentReason;
  self->_dataAbsentReason = v6;
}

- (HKUCUMUnitDisplayConverter)converter
{
  if (converter_onceToken != -1)
  {
    [HKInspectableValue converter];
  }

  v3 = converter_converter;

  return v3;
}

uint64_t __31__HKInspectableValue_converter__block_invoke()
{
  converter_converter = objc_alloc_init(HKUCUMUnitDisplayConverter);

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)unitString
{
  v3 = [(HKInspectableValue *)self valueType];
  if (v3 == 1)
  {
    v10 = [(HKInspectableValue *)self ratioValue];
    v4 = [v10 numerator];

    v8 = [v4 unitCoding];
    v11 = [v8 code];
    v12 = v11;
    if (v11)
    {
      v5 = v11;
    }

    else
    {
      v13 = [v4 unitCoding];
      v5 = [v13 displayString];
    }

    goto LABEL_14;
  }

  if (v3 == 6)
  {
    v6 = [(HKInspectableValue *)self codedQuantityValue];
    v4 = [v6 unitCoding];

    v7 = [v4 code];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v4 displayString];
    }

    v5 = v9;
LABEL_14:

    goto LABEL_15;
  }

  if (v3 != 8)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [(HKInspectableValue *)self codedValueCollection];
  v5 = [(HKInspectableValue *)self _unitStringForCodedValueCollection:v4];
LABEL_15:

LABEL_16:
  if ([(__CFString *)v5 length])
  {
    v14 = [(HKInspectableValue *)self converter];
    v15 = [v14 synonymForUCUMUnitString:v5];

    v5 = v15;
  }

  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = &stru_1F05FF230;
  }

  v17 = v16;

  return &v16->isa;
}

- (HKConcept)ontologyConcept
{
  if ([(HKInspectableValue *)self valueType]== 7)
  {
    ontologyConcept = self->_ontologyConcept;
    v4 = [(HKInspectableValue *)self medicalCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:v4];
    v6 = HKSafeConcept(ontologyConcept, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HKConcept)dataAbsentReason
{
  if ([(HKInspectableValue *)self valueType]== 9)
  {
    dataAbsentReason = self->_dataAbsentReason;
    v4 = [(HKInspectableValue *)self dataAbsentReasonCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:v4];
    v6 = HKSafeConcept(dataAbsentReason, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      valueType = self->_valueType;
      if (valueType == [(HKInspectableValue *)v5 valueType])
      {
        value = self->_value;
        v8 = [(HKInspectableValue *)v5 value];
        v9 = v8;
        if (value == v8)
        {

          goto LABEL_11;
        }

        v10 = [(HKInspectableValue *)v5 value];
        if (v10)
        {
          v11 = v10;
          v12 = self->_value;
          v13 = [(HKInspectableValue *)v5 value];
          LOBYTE(v12) = [v12 isEqual:v13];

          if ((v12 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_11:
          v14 = 1;
LABEL_14:

          goto LABEL_15;
        }
      }

LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v14 = 0;
  }

LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(HKInspectableValue *)self valueType];
  v4 = [(HKInspectableValue *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)_assertValueClass:(Class)a3
{
  value = self->_value;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = self->_value;
    [MEMORY[0x1E695DF30] raise:@"HKInconsistentValueTypeException" format:{@"Inconsistent value type found in inspectable value, have: %@, expect: %@", objc_opt_class(), a3}];
  }
}

- (void)_assertValueType
{
  valueType = self->_valueType;
  if (valueType <= 0xB)
  {
    v5 = **(&unk_1E737D5C8 + valueType);
    v6 = objc_opt_class();

    [(HKInspectableValue *)self _assertValueClass:v6];
  }
}

- (id)_unitStringForCodedValueCollection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 codedValues];
  v5 = [v4 firstObject];
  v6 = [v5 value];
  v7 = [v6 unitString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v3 codedValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) value];
        v14 = [v13 unitString];

        LODWORD(v13) = [v14 isEqualToString:v7];
        if (!v13)
        {

          v15 = &stru_1F05FF230;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HKInspectableValue)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HKInspectableValue;
  v5 = [(HKInspectableValue *)&v20 init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [v4 decodeIntegerForKey:@"ValueTypeKey"];
  v5->_valueType = v6;
  if (v6 > 5)
  {
    if (v6 > 8)
    {
      if (v6 != 9)
      {
        if (v6 == 10 || v6 == 11)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      v8 = MEMORY[0x1E695DFD8];
      v21[0] = objc_opt_class();
      v21[1] = objc_opt_class();
      v9 = MEMORY[0x1E695DEC8];
      v10 = v21;
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_20;
      }

      v8 = MEMORY[0x1E695DFD8];
      v22[0] = objc_opt_class();
      v22[1] = objc_opt_class();
      v9 = MEMORY[0x1E695DEC8];
      v10 = v22;
    }

    v11 = [v9 arrayWithObjects:v10 count:2];
    v12 = [v8 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ValueKey"];
    value = v5->_value;
    v5->_value = v13;

    goto LABEL_21;
  }

  if (v6 <= 2)
  {
    if (v6 <= 2)
    {
LABEL_20:
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ValueKey"];
      v16 = v5->_value;
      v5->_value = v15;

LABEL_21:
      if (!v5->_value)
      {
        v17 = 0;
        goto LABEL_25;
      }
    }

LABEL_22:
    [(HKInspectableValue *)v5 _assertValueType];
LABEL_23:
    v7 = v5;
    goto LABEL_24;
  }

  if (v6 == 3 || v6 == 4)
  {
    goto LABEL_20;
  }

  v7 = +[HKInspectableValue inspectableValueWithNull];
LABEL_24:
  v17 = v7;
LABEL_25:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  valueType = self->_valueType;
  v5 = a3;
  [v5 encodeInteger:valueType forKey:@"ValueTypeKey"];
  [v5 encodeObject:self->_value forKey:@"ValueKey"];
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"dataAbsentReasonCodings"])
    {
      v9 = [(HKInspectableValue *)self dataAbsentReasonCodings];

      if (v9)
      {
        v10 = [(HKInspectableValue *)self dataAbsentReasonCodings];
        v11 = [HKMedicalCodingCollection collectionWithCodings:v10];
        v12 = [HKIndexableObject indexableObjectWithObject:v11];
        v23[0] = v12;
        v13 = MEMORY[0x1E695DEC8];
        v14 = v23;
LABEL_8:
        v16 = [v13 arrayWithObjects:v14 count:1];

        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"medicalCodings"])
    {
      v15 = [(HKInspectableValue *)self medicalCodings];

      if (v15)
      {
        v10 = [(HKInspectableValue *)self medicalCodings];
        v11 = [HKMedicalCodingCollection collectionWithCodings:v10];
        v12 = [HKIndexableObject indexableObjectWithObject:v11];
        v22 = v12;
        v13 = MEMORY[0x1E695DEC8];
        v14 = &v22;
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"codedValueCollection"])
    {
      v17 = [(HKInspectableValue *)self codedValueCollection];

      if (v17)
      {
        v18 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v6 error:a4];
        if (v18)
        {
          v19 = [(HKInspectableValue *)self codedValueCollection];
          v16 = [v19 codingsForKeyPath:v18 error:a4];
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_16;
      }

LABEL_13:
      v16 = MEMORY[0x1E695E0F0];
      goto LABEL_16;
    }

    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
  }

  v16 = 0;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  if ([v10 isEqualToString:@"dataAbsentReasonCodings"])
  {
    v12 = [v8 count];
    v13 = [(HKInspectableValue *)self dataAbsentReasonCodings];
    v14 = HKIndexableObjectCheckCardinalityForIndexRestore(v12, v13 != 0, v9, a5);

    if (v14)
    {
      v15 = [v8 firstObject];
      v16 = [v15 object];
      v17 = [v16 copy];
      dataAbsentReason = self->_dataAbsentReason;
      self->_dataAbsentReason = v17;
LABEL_8:

      v23 = 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([v11 isEqualToString:@"medicalCodings"])
  {
    v19 = [v8 count];
    v20 = [(HKInspectableValue *)self medicalCodings];
    v21 = HKIndexableObjectCheckCardinalityForIndexRestore(v19, v20 != 0, v9, a5);

    if (v21)
    {
      v15 = [v8 firstObject];
      v16 = [v15 object];
      v22 = [v16 copy];
      dataAbsentReason = self->_ontologyConcept;
      self->_ontologyConcept = v22;
      goto LABEL_8;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  if (![v11 isEqualToString:@"codedValueCollection"])
  {
    [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
    goto LABEL_14;
  }

  v24 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v9 error:a5];
  if (v24)
  {
    v25 = [(HKInspectableValue *)self codedValueCollection];

    if (v25)
    {
      v26 = [(HKInspectableValue *)self codedValueCollection];
      v23 = [v26 applyConcepts:v8 forKeyPath:v24 error:a5];
    }

    else
    {
      v23 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_15:
  return v23;
}

- (void)_setOntologyConcept:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInspectableValue.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"ontologyConcept"}];
}

- (void)_setDataAbsentReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInspectableValue.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"dataAbsentReason"}];
}

@end