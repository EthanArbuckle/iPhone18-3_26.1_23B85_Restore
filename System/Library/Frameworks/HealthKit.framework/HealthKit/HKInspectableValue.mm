@interface HKInspectableValue
+ (HKInspectableValue)inspectableValueWithBoolean:(id)boolean;
+ (HKInspectableValue)inspectableValueWithCodedQuantity:(id)quantity;
+ (HKInspectableValue)inspectableValueWithCodedValueCollection:(id)collection;
+ (HKInspectableValue)inspectableValueWithDataAbsentReasonCodings:(id)codings;
+ (HKInspectableValue)inspectableValueWithDateComponents:(id)components;
+ (HKInspectableValue)inspectableValueWithInteger:(id)integer;
+ (HKInspectableValue)inspectableValueWithMedicalCodings:(id)codings;
+ (HKInspectableValue)inspectableValueWithMedicalDate:(id)date;
+ (HKInspectableValue)inspectableValueWithMedicalDateInterval:(id)interval;
+ (HKInspectableValue)inspectableValueWithNull;
+ (HKInspectableValue)inspectableValueWithRatio:(id)ratio;
+ (HKInspectableValue)inspectableValueWithString:(id)string;
+ (HKInspectableValue)inspectableValueWithValueType:(int64_t)type value:(id)value;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKCodedQuantity)codedQuantityValue;
- (HKCodedValueCollection)codedValueCollection;
- (HKConcept)dataAbsentReason;
- (HKConcept)ontologyConcept;
- (HKInspectableValue)init;
- (HKInspectableValue)initWithCoder:(id)coder;
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
- (id)_initWithValueType:(int64_t)type value:(id)value;
- (id)_unitStringForCodedValueCollection:(id)collection;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)_assertValueClass:(Class)class;
- (void)_assertValueType;
- (void)_setDataAbsentReason:(id)reason;
- (void)_setOntologyConcept:(id)concept;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKInspectableValue

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  v18 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v4 = [HKCodedValueCollection indexableKeyPathsWithPrefix:@"codedValueCollection"];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v15 = @"medicalCodings";
    v16 = @"dataAbsentReasonCodings";
    v17 = firstObject;
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
  v10 = [HKConceptIndexUtilities keyPaths:v9 prefix:prefixCopy];

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

+ (HKInspectableValue)inspectableValueWithValueType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v7 = [[self alloc] _initWithValueType:type value:valueCopy];

  return v7;
}

+ (HKInspectableValue)inspectableValueWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] _initWithValueType:0 value:stringCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithCodedQuantity:(id)quantity
{
  quantityCopy = quantity;
  v5 = [[self alloc] _initWithValueType:6 value:quantityCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithRatio:(id)ratio
{
  ratioCopy = ratio;
  v5 = [[self alloc] _initWithValueType:1 value:ratioCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithMedicalDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] _initWithValueType:2 value:dateCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithMedicalDateInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [[self alloc] _initWithValueType:3 value:intervalCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithDateComponents:(id)components
{
  componentsCopy = components;
  v5 = [[self alloc] _initWithValueType:4 value:componentsCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithInteger:(id)integer
{
  integerCopy = integer;
  v5 = [[self alloc] _initWithValueType:10 value:integerCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithBoolean:(id)boolean
{
  booleanCopy = boolean;
  v5 = [[self alloc] _initWithValueType:11 value:booleanCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithNull
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKInspectableValue_inspectableValueWithNull__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (HKInspectableValue)inspectableValueWithMedicalCodings:(id)codings
{
  codingsCopy = codings;
  v5 = [[self alloc] _initWithValueType:7 value:codingsCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithCodedValueCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [[self alloc] _initWithValueType:8 value:collectionCopy];

  return v5;
}

+ (HKInspectableValue)inspectableValueWithDataAbsentReasonCodings:(id)codings
{
  codingsCopy = codings;
  v5 = [[self alloc] _initWithValueType:9 value:codingsCopy];

  return v5;
}

- (id)_initWithValueType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HKInspectableValue;
  v7 = [(HKInspectableValue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_valueType = type;
    v9 = [valueCopy copy];
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
    value = 0;
  }

  else
  {
    value = [(HKInspectableValue *)self value];
  }

  return value;
}

- (HKCodedQuantity)codedQuantityValue
{
  if ([(HKInspectableValue *)self valueType]== 6)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (HKRatioValue)ratioValue
{
  if ([(HKInspectableValue *)self valueType]== 1)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (HKMedicalDate)medicalDateValue
{
  if ([(HKInspectableValue *)self valueType]== 2)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (HKMedicalDateInterval)medicalDateIntervalValue
{
  if ([(HKInspectableValue *)self valueType]== 3)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSDateComponents)dateComponentsValue
{
  if ([(HKInspectableValue *)self valueType]== 4)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSArray)medicalCodings
{
  if ([(HKInspectableValue *)self valueType]== 7)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (HKCodedValueCollection)codedValueCollection
{
  if ([(HKInspectableValue *)self valueType]== 8)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSArray)dataAbsentReasonCodings
{
  if ([(HKInspectableValue *)self valueType]== 9)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSNumber)inspectableIntegerValue
{
  if ([(HKInspectableValue *)self valueType]== 10)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSNumber)BOOLeanValue
{
  if ([(HKInspectableValue *)self valueType]== 11)
  {
    value = [(HKInspectableValue *)self value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSDate)dateValueForUTC
{
  medicalDateValue = [(HKInspectableValue *)self medicalDateValue];
  v4 = medicalDateValue;
  if (medicalDateValue)
  {
    dateForUTC = [medicalDateValue dateForUTC];
    goto LABEL_9;
  }

  medicalDateIntervalValue = [(HKInspectableValue *)self medicalDateIntervalValue];
  startDate = [medicalDateIntervalValue startDate];

  if (startDate)
  {
    startDate2 = [medicalDateIntervalValue startDate];
LABEL_7:
    v9 = startDate2;
    dateForUTC = [startDate2 dateForUTC];

    goto LABEL_8;
  }

  dateForUTC = [medicalDateIntervalValue endDate];

  if (dateForUTC)
  {
    startDate2 = [medicalDateIntervalValue endDate];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return dateForUTC;
}

- (void)_setOntologyConcept:(id)concept
{
  conceptCopy = concept;
  v8 = conceptCopy;
  if (!conceptCopy)
  {
    [(HKInspectableValue *)a2 _setOntologyConcept:?];
    conceptCopy = 0;
  }

  v6 = [conceptCopy copy];
  ontologyConcept = self->_ontologyConcept;
  self->_ontologyConcept = v6;
}

- (void)_setDataAbsentReason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (!reasonCopy)
  {
    [(HKInspectableValue *)a2 _setDataAbsentReason:?];
    reasonCopy = 0;
  }

  v6 = [reasonCopy copy];
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
  valueType = [(HKInspectableValue *)self valueType];
  if (valueType == 1)
  {
    ratioValue = [(HKInspectableValue *)self ratioValue];
    numerator = [ratioValue numerator];

    unitCoding = [numerator unitCoding];
    code = [unitCoding code];
    v12 = code;
    if (code)
    {
      displayString = code;
    }

    else
    {
      unitCoding2 = [numerator unitCoding];
      displayString = [unitCoding2 displayString];
    }

    goto LABEL_14;
  }

  if (valueType == 6)
  {
    codedQuantityValue = [(HKInspectableValue *)self codedQuantityValue];
    numerator = [codedQuantityValue unitCoding];

    code2 = [numerator code];
    unitCoding = code2;
    if (code2)
    {
      displayString2 = code2;
    }

    else
    {
      displayString2 = [numerator displayString];
    }

    displayString = displayString2;
LABEL_14:

    goto LABEL_15;
  }

  if (valueType != 8)
  {
    displayString = 0;
    goto LABEL_16;
  }

  numerator = [(HKInspectableValue *)self codedValueCollection];
  displayString = [(HKInspectableValue *)self _unitStringForCodedValueCollection:numerator];
LABEL_15:

LABEL_16:
  if ([(__CFString *)displayString length])
  {
    converter = [(HKInspectableValue *)self converter];
    v15 = [converter synonymForUCUMUnitString:displayString];

    displayString = v15;
  }

  if (displayString)
  {
    v16 = displayString;
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
    medicalCodings = [(HKInspectableValue *)self medicalCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:medicalCodings];
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
    dataAbsentReasonCodings = [(HKInspectableValue *)self dataAbsentReasonCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:dataAbsentReasonCodings];
    v6 = HKSafeConcept(dataAbsentReason, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      valueType = self->_valueType;
      if (valueType == [(HKInspectableValue *)v5 valueType])
      {
        value = self->_value;
        value = [(HKInspectableValue *)v5 value];
        v9 = value;
        if (value == value)
        {

          goto LABEL_11;
        }

        value2 = [(HKInspectableValue *)v5 value];
        if (value2)
        {
          v11 = value2;
          v12 = self->_value;
          value3 = [(HKInspectableValue *)v5 value];
          LOBYTE(v12) = [v12 isEqual:value3];

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
  valueType = [(HKInspectableValue *)self valueType];
  value = [(HKInspectableValue *)self value];
  v5 = [value hash];

  return v5 ^ valueType;
}

- (void)_assertValueClass:(Class)class
{
  value = self->_value;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = self->_value;
    [MEMORY[0x1E695DF30] raise:@"HKInconsistentValueTypeException" format:{@"Inconsistent value type found in inspectable value, have: %@, expect: %@", objc_opt_class(), class}];
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

- (id)_unitStringForCodedValueCollection:(id)collection
{
  v23 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  codedValues = [collectionCopy codedValues];
  firstObject = [codedValues firstObject];
  value = [firstObject value];
  unitString = [value unitString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  codedValues2 = [collectionCopy codedValues];
  v9 = [codedValues2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(codedValues2);
        }

        value2 = [*(*(&v18 + 1) + 8 * i) value];
        unitString2 = [value2 unitString];

        LODWORD(value2) = [unitString2 isEqualToString:unitString];
        if (!value2)
        {

          v15 = &stru_1F05FF230;
          goto LABEL_11;
        }
      }

      v10 = [codedValues2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = unitString;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HKInspectableValue)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = HKInspectableValue;
  v5 = [(HKInspectableValue *)&v20 init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [coderCopy decodeIntegerForKey:@"ValueTypeKey"];
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
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ValueKey"];
    value = v5->_value;
    v5->_value = v13;

    goto LABEL_21;
  }

  if (v6 <= 2)
  {
    if (v6 <= 2)
    {
LABEL_20:
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ValueKey"];
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

- (void)encodeWithCoder:(id)coder
{
  valueType = self->_valueType;
  coderCopy = coder;
  [coderCopy encodeInteger:valueType forKey:@"ValueTypeKey"];
  [coderCopy encodeObject:self->_value forKey:@"ValueKey"];
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"dataAbsentReasonCodings"])
    {
      dataAbsentReasonCodings = [(HKInspectableValue *)self dataAbsentReasonCodings];

      if (dataAbsentReasonCodings)
      {
        dataAbsentReasonCodings2 = [(HKInspectableValue *)self dataAbsentReasonCodings];
        v11 = [HKMedicalCodingCollection collectionWithCodings:dataAbsentReasonCodings2];
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
      medicalCodings = [(HKInspectableValue *)self medicalCodings];

      if (medicalCodings)
      {
        dataAbsentReasonCodings2 = [(HKInspectableValue *)self medicalCodings];
        v11 = [HKMedicalCodingCollection collectionWithCodings:dataAbsentReasonCodings2];
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
      codedValueCollection = [(HKInspectableValue *)self codedValueCollection];

      if (codedValueCollection)
      {
        v18 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
        if (v18)
        {
          codedValueCollection2 = [(HKInspectableValue *)self codedValueCollection];
          v16 = [codedValueCollection2 codingsForKeyPath:v18 error:error];
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

    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
  }

  v16 = 0;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  if ([v10 isEqualToString:@"dataAbsentReasonCodings"])
  {
    v12 = [conceptsCopy count];
    dataAbsentReasonCodings = [(HKInspectableValue *)self dataAbsentReasonCodings];
    v14 = HKIndexableObjectCheckCardinalityForIndexRestore(v12, dataAbsentReasonCodings != 0, pathCopy, error);

    if (v14)
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      v17 = [object copy];
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
    v19 = [conceptsCopy count];
    medicalCodings = [(HKInspectableValue *)self medicalCodings];
    v21 = HKIndexableObjectCheckCardinalityForIndexRestore(v19, medicalCodings != 0, pathCopy, error);

    if (v21)
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      v22 = [object copy];
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
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    goto LABEL_14;
  }

  v24 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
  if (v24)
  {
    codedValueCollection = [(HKInspectableValue *)self codedValueCollection];

    if (codedValueCollection)
    {
      codedValueCollection2 = [(HKInspectableValue *)self codedValueCollection];
      v23 = [codedValueCollection2 applyConcepts:conceptsCopy forKeyPath:v24 error:error];
    }

    else
    {
      v23 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
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