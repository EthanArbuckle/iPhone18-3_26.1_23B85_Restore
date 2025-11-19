@interface HKCodedQuantity
+ (HKCodedQuantity)codedQuantityWithValue:(id)a3 comparatorCoding:(id)a4 unitCoding:(id)a5;
+ (HKCodedQuantity)codedQuantityWithValue:(id)a3 unitCoding:(id)a4;
+ (id)_numberFormatter;
- (BOOL)isEqual:(id)a3;
- (HKCodedQuantity)init;
- (HKCodedQuantity)initWithCoder:(id)a3;
- (HKCodedQuantity)initWithRawValue:(id)a3 comparatorCoding:(id)a4 unitCoding:(id)a5;
- (NSNumber)numberValue;
- (NSString)localizedValue;
- (double)doubleValue;
- (id)description;
- (id)quantityRepresentationWithUCUMConverter:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCodedQuantity

+ (HKCodedQuantity)codedQuantityWithValue:(id)a3 comparatorCoding:(id)a4 unitCoding:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithRawValue:v10 comparatorCoding:v9 unitCoding:v8];

  return v11;
}

+ (HKCodedQuantity)codedQuantityWithValue:(id)a3 unitCoding:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRawValue:v7 comparatorCoding:0 unitCoding:v6];

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

- (HKCodedQuantity)initWithRawValue:(id)a3 comparatorCoding:(id)a4 unitCoding:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HKCodedQuantity initWithRawValue:a2 comparatorCoding:self unitCoding:?];
  }

  v20.receiver = self;
  v20.super_class = HKCodedQuantity;
  v12 = [(HKCodedQuantity *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    rawValue = v12->_rawValue;
    v12->_rawValue = v13;

    v15 = [v10 copy];
    comparatorCoding = v12->_comparatorCoding;
    v12->_comparatorCoding = v15;

    v17 = [v11 copy];
    unitCoding = v12->_unitCoding;
    v12->_unitCoding = v17;
  }

  return v12;
}

- (double)doubleValue
{
  v2 = [(HKCodedQuantity *)self rawValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (NSString)localizedValue
{
  v3 = [(HKCodedQuantity *)self numberValue];
  if (v3)
  {
    v4 = [objc_opt_class() _numberFormatter];
    v5 = [v4 stringFromNumber:v3];
  }

  else
  {
    v5 = [(HKCodedQuantity *)self rawValue];
  }

  return v5;
}

- (NSNumber)numberValue
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(HKCodedQuantity *)self rawValue];
  v4 = [v3 dataUsingEncoding:4];
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
  v6 = [(HKCodedQuantity *)self rawValue];
  v7 = [(HKCodedQuantity *)self comparatorCoding];
  v8 = [(HKCodedQuantity *)self unitCoding];
  v9 = [v3 stringWithFormat:@"<%@:%p value = %@, comparatorCoding = %@, unitCoding = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)quantityRepresentationWithUCUMConverter:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_comparatorCoding)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Unable to create HKQuantity from a coded quantity that has a comparator: %@", self}];
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

  v9 = [(HKMedicalCoding *)unitCoding displayString];
  v10 = [(HKMedicalCoding *)self->_unitCoding code];
  if (v10)
  {
    v11 = [(HKMedicalCoding *)self->_unitCoding codingSystem];
    v12 = +[HKMedicalCodingSystem UCUMSystem];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      if (v6)
      {
        v14 = [(HKMedicalCoding *)self->_unitCoding code];
        v15 = [v6 hkUnitNameForUCUMUnitCode:v14];

        v9 = v15;
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
          v19 = [(HKMedicalCoding *)v17 code];
          *buf = 138543362;
          v29 = v19;
          _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_INFO, "Got a UCUM unit code the UCUM converter doesn't know: %{public}@", buf, 0xCu);
        }

        v20 = [(HKMedicalCoding *)self->_unitCoding displayString];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [(HKMedicalCoding *)self->_unitCoding code];
        }

        v9 = v22;
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

        if (v9)
        {
          goto LABEL_20;
        }

        v9 = [(HKMedicalCoding *)self->_unitCoding code];
      }
    }
  }

  if (!v9)
  {
    v7 = 0;
    goto LABEL_22;
  }

LABEL_20:
  v25 = [HKUnit unitFromString:v9];
  [(HKCodedQuantity *)self doubleValue];
  v7 = [HKQuantity quantityWithUnit:v25 doubleValue:?];

LABEL_22:
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HKCodedQuantity)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKCodedQuantity;
  v5 = [(HKCodedQuantity *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    rawValue = v5->_rawValue;
    v5->_rawValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ComparatorCoding"];
    comparatorCoding = v5->_comparatorCoding;
    v5->_comparatorCoding = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnitCoding"];
    unitCoding = v5->_unitCoding;
    v5->_unitCoding = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rawValue = self->_rawValue;
  v5 = a3;
  [v5 encodeObject:rawValue forKey:@"Value"];
  [v5 encodeObject:self->_comparatorCoding forKey:@"ComparatorCoding"];
  [v5 encodeObject:self->_unitCoding forKey:@"UnitCoding"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rawValue hash];
  v4 = [(HKMedicalCoding *)self->_comparatorCoding hash]^ v3;
  return v4 ^ [(HKMedicalCoding *)self->_unitCoding hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      rawValue = self->_rawValue;
      v7 = [(HKCodedQuantity *)v5 rawValue];
      v8 = v7;
      if (rawValue == v7)
      {
      }

      else
      {
        v9 = [(HKCodedQuantity *)v5 rawValue];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = self->_rawValue;
        v12 = [(HKCodedQuantity *)v5 rawValue];
        LODWORD(v11) = [(NSString *)v11 isEqualToString:v12];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      comparatorCoding = self->_comparatorCoding;
      v15 = [(HKCodedQuantity *)v5 comparatorCoding];
      v8 = v15;
      if (comparatorCoding == v15)
      {
      }

      else
      {
        v16 = [(HKCodedQuantity *)v5 comparatorCoding];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = self->_comparatorCoding;
        v19 = [(HKCodedQuantity *)v5 comparatorCoding];
        LODWORD(v18) = [(HKMedicalCoding *)v18 isEqual:v19];

        if (!v18)
        {
          goto LABEL_20;
        }
      }

      unitCoding = self->_unitCoding;
      v21 = [(HKCodedQuantity *)v5 unitCoding];
      v8 = v21;
      if (unitCoding == v21)
      {

LABEL_24:
        v13 = 1;
        goto LABEL_21;
      }

      v22 = [(HKCodedQuantity *)v5 unitCoding];
      if (v22)
      {
        v23 = v22;
        v24 = self->_unitCoding;
        v25 = [(HKCodedQuantity *)v5 unitCoding];
        LOBYTE(v24) = [(HKMedicalCoding *)v24 isEqual:v25];

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