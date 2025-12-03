@interface HKCodedQuantity
+ (HKCodedQuantity)codedQuantityWithValue:(id)value comparatorCoding:(id)coding unitCoding:(id)unitCoding;
+ (HKCodedQuantity)codedQuantityWithValue:(id)value unitCoding:(id)coding;
+ (id)_numberFormatter;
- (BOOL)isEqual:(id)equal;
- (HKCodedQuantity)init;
- (HKCodedQuantity)initWithCoder:(id)coder;
- (HKCodedQuantity)initWithRawValue:(id)value comparatorCoding:(id)coding unitCoding:(id)unitCoding;
- (NSNumber)numberValue;
- (NSString)localizedValue;
- (double)doubleValue;
- (id)description;
- (id)quantityRepresentationWithUCUMConverter:(id)converter error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCodedQuantity

+ (HKCodedQuantity)codedQuantityWithValue:(id)value comparatorCoding:(id)coding unitCoding:(id)unitCoding
{
  unitCodingCopy = unitCoding;
  codingCopy = coding;
  valueCopy = value;
  v11 = [[self alloc] initWithRawValue:valueCopy comparatorCoding:codingCopy unitCoding:unitCodingCopy];

  return v11;
}

+ (HKCodedQuantity)codedQuantityWithValue:(id)value unitCoding:(id)coding
{
  codingCopy = coding;
  valueCopy = value;
  v8 = [[self alloc] initWithRawValue:valueCopy comparatorCoding:0 unitCoding:codingCopy];

  return v8;
}

- (HKCodedQuantity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKCodedQuantity)initWithRawValue:(id)value comparatorCoding:(id)coding unitCoding:(id)unitCoding
{
  valueCopy = value;
  codingCopy = coding;
  unitCodingCopy = unitCoding;
  if (!valueCopy)
  {
    [HKCodedQuantity initWithRawValue:a2 comparatorCoding:self unitCoding:?];
  }

  v20.receiver = self;
  v20.super_class = HKCodedQuantity;
  v12 = [(HKCodedQuantity *)&v20 init];
  if (v12)
  {
    v13 = [valueCopy copy];
    rawValue = v12->_rawValue;
    v12->_rawValue = v13;

    v15 = [codingCopy copy];
    comparatorCoding = v12->_comparatorCoding;
    v12->_comparatorCoding = v15;

    v17 = [unitCodingCopy copy];
    unitCoding = v12->_unitCoding;
    v12->_unitCoding = v17;
  }

  return v12;
}

- (double)doubleValue
{
  rawValue = [(HKCodedQuantity *)self rawValue];
  [rawValue doubleValue];
  v4 = v3;

  return v4;
}

- (NSString)localizedValue
{
  numberValue = [(HKCodedQuantity *)self numberValue];
  if (numberValue)
  {
    _numberFormatter = [objc_opt_class() _numberFormatter];
    rawValue = [_numberFormatter stringFromNumber:numberValue];
  }

  else
  {
    rawValue = [(HKCodedQuantity *)self rawValue];
  }

  return rawValue;
}

- (NSNumber)numberValue
{
  v2 = MEMORY[0x1E696ACB0];
  rawValue = [(HKCodedQuantity *)self rawValue];
  v4 = [rawValue dataUsingEncoding:4];
  v5 = [v2 JSONObjectWithData:v4 options:4 error:0];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_numberFormatter
{
  if (_numberFormatter_onceToken != -1)
  {
    +[HKCodedQuantity _numberFormatter];
  }

  v3 = _numberFormatter_numberFormatter;

  return v3;
}

uint64_t __35__HKCodedQuantity__numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _numberFormatter_numberFormatter;
  _numberFormatter_numberFormatter = v0;

  [_numberFormatter_numberFormatter setMaximumSignificantDigits:8];
  v2 = _numberFormatter_numberFormatter;

  return [v2 setRoundingMode:6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  rawValue = [(HKCodedQuantity *)self rawValue];
  comparatorCoding = [(HKCodedQuantity *)self comparatorCoding];
  unitCoding = [(HKCodedQuantity *)self unitCoding];
  v9 = [v3 stringWithFormat:@"<%@:%p value = %@, comparatorCoding = %@, unitCoding = %@>", v5, self, rawValue, comparatorCoding, unitCoding];

  return v9;
}

- (id)quantityRepresentationWithUCUMConverter:(id)converter error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  converterCopy = converter;
  if (self->_comparatorCoding)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Unable to create HKQuantity from a coded quantity that has a comparator: %@", self}];
    v7 = 0;
    goto LABEL_23;
  }

  unitCoding = self->_unitCoding;
  if (!unitCoding)
  {
    v23 = +[HKUnit _nullUnit];
    [(HKCodedQuantity *)self doubleValue];
    v7 = [HKQuantity quantityWithUnit:v23 doubleValue:?];

    goto LABEL_23;
  }

  displayString = [(HKMedicalCoding *)unitCoding displayString];
  code = [(HKMedicalCoding *)self->_unitCoding code];
  if (code)
  {
    codingSystem = [(HKMedicalCoding *)self->_unitCoding codingSystem];
    v12 = +[HKMedicalCodingSystem UCUMSystem];
    v13 = [codingSystem isEqual:v12];

    if (v13)
    {
      if (converterCopy)
      {
        code2 = [(HKMedicalCoding *)self->_unitCoding code];
        v15 = [converterCopy hkUnitNameForUCUMUnitCode:code2];

        displayString = v15;
        if (v15)
        {
          goto LABEL_20;
        }

        _HKInitializeLogging();
        v16 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          v17 = self->_unitCoding;
          v18 = v16;
          code3 = [(HKMedicalCoding *)v17 code];
          *buf = 138543362;
          v29 = code3;
          _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_INFO, "Got a UCUM unit code the UCUM converter doesn't know: %{public}@", buf, 0xCu);
        }

        displayString2 = [(HKMedicalCoding *)self->_unitCoding displayString];
        v21 = displayString2;
        if (displayString2)
        {
          code4 = displayString2;
        }

        else
        {
          code4 = [(HKMedicalCoding *)self->_unitCoding code];
        }

        displayString = code4;
      }

      else
      {
        _HKInitializeLogging();
        v24 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19197B000, v24, OS_LOG_TYPE_INFO, "Got a UCUM unit code but you didn't provide a UCUM code converter. Will prefer unitCoding.displayString to unitCoding.code.", buf, 2u);
        }

        if (displayString)
        {
          goto LABEL_20;
        }

        displayString = [(HKMedicalCoding *)self->_unitCoding code];
      }
    }
  }

  if (!displayString)
  {
    v7 = 0;
    goto LABEL_22;
  }

LABEL_20:
  v25 = [HKUnit unitFromString:displayString];
  [(HKCodedQuantity *)self doubleValue];
  v7 = [HKQuantity quantityWithUnit:v25 doubleValue:?];

LABEL_22:
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HKCodedQuantity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKCodedQuantity;
  v5 = [(HKCodedQuantity *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    rawValue = v5->_rawValue;
    v5->_rawValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ComparatorCoding"];
    comparatorCoding = v5->_comparatorCoding;
    v5->_comparatorCoding = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnitCoding"];
    unitCoding = v5->_unitCoding;
    v5->_unitCoding = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rawValue = self->_rawValue;
  coderCopy = coder;
  [coderCopy encodeObject:rawValue forKey:@"Value"];
  [coderCopy encodeObject:self->_comparatorCoding forKey:@"ComparatorCoding"];
  [coderCopy encodeObject:self->_unitCoding forKey:@"UnitCoding"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rawValue hash];
  v4 = [(HKMedicalCoding *)self->_comparatorCoding hash]^ v3;
  return v4 ^ [(HKMedicalCoding *)self->_unitCoding hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rawValue = self->_rawValue;
      rawValue = [(HKCodedQuantity *)v5 rawValue];
      v8 = rawValue;
      if (rawValue == rawValue)
      {
      }

      else
      {
        rawValue2 = [(HKCodedQuantity *)v5 rawValue];
        if (!rawValue2)
        {
          goto LABEL_19;
        }

        v10 = rawValue2;
        v11 = self->_rawValue;
        rawValue3 = [(HKCodedQuantity *)v5 rawValue];
        LODWORD(v11) = [(NSString *)v11 isEqualToString:rawValue3];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      comparatorCoding = self->_comparatorCoding;
      comparatorCoding = [(HKCodedQuantity *)v5 comparatorCoding];
      v8 = comparatorCoding;
      if (comparatorCoding == comparatorCoding)
      {
      }

      else
      {
        comparatorCoding2 = [(HKCodedQuantity *)v5 comparatorCoding];
        if (!comparatorCoding2)
        {
          goto LABEL_19;
        }

        v17 = comparatorCoding2;
        v18 = self->_comparatorCoding;
        comparatorCoding3 = [(HKCodedQuantity *)v5 comparatorCoding];
        LODWORD(v18) = [(HKMedicalCoding *)v18 isEqual:comparatorCoding3];

        if (!v18)
        {
          goto LABEL_20;
        }
      }

      unitCoding = self->_unitCoding;
      unitCoding = [(HKCodedQuantity *)v5 unitCoding];
      v8 = unitCoding;
      if (unitCoding == unitCoding)
      {

LABEL_24:
        v13 = 1;
        goto LABEL_21;
      }

      unitCoding2 = [(HKCodedQuantity *)v5 unitCoding];
      if (unitCoding2)
      {
        v23 = unitCoding2;
        v24 = self->_unitCoding;
        unitCoding3 = [(HKCodedQuantity *)v5 unitCoding];
        LOBYTE(v24) = [(HKMedicalCoding *)v24 isEqual:unitCoding3];

        if (v24)
        {
          goto LABEL_24;
        }

LABEL_20:
        v13 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v13 = 0;
  }

LABEL_22:

  return v13;
}

- (void)initWithRawValue:(uint64_t)a1 comparatorCoding:(uint64_t)a2 unitCoding:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCodedQuantity.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"rawValue"}];
}

@end