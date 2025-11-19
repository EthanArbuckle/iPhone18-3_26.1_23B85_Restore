@interface HKMedicalCoding
+ (HKMedicalCoding)medicalCodingWithSystem:(id)a3 codingVersion:(id)a4 code:(id)a5 displayString:(id)a6;
+ (id)ICD10CodingWithCode:(id)a3 displayString:(id)a4;
+ (id)ICD9CodingWithCode:(id)a3 displayString:(id)a4;
+ (id)LOINCCodingWithCode:(id)a3 displayString:(id)a4;
+ (id)RxNormCodingWithCode:(id)a3 displayString:(id)a4;
+ (id)SNOMEDCodingWithCode:(id)a3 displayString:(id)a4;
+ (id)appleOntologyCodingWithIdentifier:(id)a3;
+ (id)appleOntologyCodingWithRawIdentifier:(int64_t)a3;
+ (id)text_codingWithDisplayString:(id)a3;
+ (id)ucum_codingWithCode:(id)a3 displayString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (HKMedicalCoding)init;
- (HKMedicalCoding)initWithCoder:(id)a3;
- (HKMedicalCoding)initWithCodingSystem:(id)a3 codingVersion:(id)a4 code:(id)a5 displayString:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicalCoding

+ (id)ICD10CodingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKMedicalCoding(ICD10) ICD10CodingWithCode:a2 displayString:a1];
  }

  v9 = +[HKMedicalCodingSystem ICD10System];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:v7 displayString:v8];

  return v10;
}

+ (id)ucum_codingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKMedicalCoding(UCUM) ucum_codingWithCode:a2 displayString:a1];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HKMedicalCoding(UCUM) ucum_codingWithCode:a2 displayString:a1];
LABEL_3:
  v10 = +[HKMedicalCodingSystem UCUMSystem];
  v11 = [HKMedicalCoding medicalCodingWithSystem:v10 codingVersion:0 code:v7 displayString:v9];

  return v11;
}

+ (id)LOINCCodingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKMedicalCoding(LOINC) LOINCCodingWithCode:a2 displayString:a1];
  }

  v9 = +[HKMedicalCodingSystem LOINCCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:v7 displayString:v8];

  return v10;
}

+ (id)ICD9CodingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKMedicalCoding(ICD9) ICD9CodingWithCode:a2 displayString:a1];
  }

  v9 = +[HKMedicalCodingSystem ICD9System];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:v7 displayString:v8];

  return v10;
}

+ (id)RxNormCodingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKMedicalCoding(RxNorm) RxNormCodingWithCode:a2 displayString:a1];
  }

  v9 = +[HKMedicalCodingSystem RxNormCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:v7 displayString:v8];

  return v10;
}

+ (id)text_codingWithDisplayString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKMedicalCoding(Text) *)a2 text_codingWithDisplayString:a1];
  }

  v6 = +[HKMedicalCodingSystem textSystem];
  v7 = [HKMedicalCoding medicalCodingWithSystem:v6 codingVersion:@"1" code:v5 displayString:v5];

  return v7;
}

+ (id)SNOMEDCodingWithCode:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKMedicalCoding(SNOMED) SNOMEDCodingWithCode:a2 displayString:a1];
  }

  v9 = +[HKMedicalCodingSystem SNOMEDCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:v7 displayString:v8];

  return v10;
}

+ (id)appleOntologyCodingWithRawIdentifier:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", a3];
  v4 = [HKMedicalCoding alloc];
  v5 = +[HKMedicalCodingSystem appleOntologySystem];
  v6 = [(HKMedicalCoding *)v4 initWithCodingSystem:v5 codingVersion:0 code:v3 displayString:0];

  return v6;
}

+ (id)appleOntologyCodingWithIdentifier:(id)a3
{
  v4 = [a3 rawIdentifier];

  return [a1 appleOntologyCodingWithRawIdentifier:v4];
}

+ (HKMedicalCoding)medicalCodingWithSystem:(id)a3 codingVersion:(id)a4 code:(id)a5 displayString:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCodingSystem:v13 codingVersion:v12 code:v11 displayString:v10];

  return v14;
}

- (HKMedicalCoding)initWithCodingSystem:(id)a3 codingVersion:(id)a4 code:(id)a5 displayString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = HKMedicalCoding;
  v14 = [(HKMedicalCoding *)&v29 init];
  if (v14)
  {
    v15 = [v10 copy];
    codingSystem = v14->_codingSystem;
    v14->_codingSystem = v15;

    v17 = [v11 copy];
    codingVersion = v14->_codingVersion;
    v14->_codingVersion = v17;

    v19 = [v12 copy];
    code = v14->_code;
    v14->_code = v19;

    v21 = [v13 copy];
    displayString = v14->_displayString;
    v14->_displayString = v21;

    v23 = [(HKMedicalCoding *)v14 _validateConfiguration];
    v24 = v23;
    if (v23)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = [v23 localizedDescription];
      [v25 raise:v26 format:{@"%@", v27}];
    }
  }

  return v14;
}

- (HKMedicalCoding)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (BOOL)isEquivalent:(id)a3
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
      v5 = [(HKMedicalCoding *)v4 codingSystem];
      v6 = +[HKMedicalCodingSystem LOINCCodeSystem];
      v7 = [v5 isEqual:v6];

      if (v7)
      {
        v8 = [(HKMedicalCoding *)self codingSystem];
        v9 = [(HKMedicalCoding *)v4 codingSystem];
        if (v8 == v9)
        {
          [(HKMedicalCoding *)self code:v22];
        }

        else
        {
          v10 = [(HKMedicalCoding *)v4 codingSystem];
          if (!v10)
          {
            v13 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v7 = v10;
          v11 = [(HKMedicalCoding *)self codingSystem];
          v12 = [(HKMedicalCoding *)v4 codingSystem];
          if (![v11 isEqual:v12])
          {
            v13 = 0;
LABEL_20:

            goto LABEL_21;
          }

          [(HKMedicalCoding *)self code:v12];
        }
        v14 = ;
        v15 = [(HKMedicalCoding *)v4 code];
        v16 = v15;
        if (v14 == v15)
        {

          v13 = 1;
        }

        else
        {
          v17 = [(HKMedicalCoding *)v4 code];
          if (v17)
          {
            v18 = v17;
            v19 = [(HKMedicalCoding *)self code];
            v20 = [(HKMedicalCoding *)v4 code];
            v13 = [v19 isEqual:v20];
          }

          else
          {

            v13 = 0;
          }
        }

        v12 = v23;
        v11 = v25;
        if (v8 == v9)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v13 = [(HKMedicalCoding *)self isEqual:v4];
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_22:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HKMedicalCoding *)self codingSystem];
  v7 = [v6 identifier];
  v8 = [(HKMedicalCoding *)self codingVersion];
  v9 = [(HKMedicalCoding *)self code];
  v10 = [(HKMedicalCoding *)self displayString];
  v11 = [v3 stringWithFormat:@"<%@:%p, system='%@', version=%@, code='%@', displayString='%@'>", v5, self, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicalCoding *)v5 codingSystem];
      v7 = [(HKMedicalCoding *)self codingSystem];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKMedicalCoding *)self codingSystem];
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = v9;
        v11 = [(HKMedicalCoding *)v5 codingSystem];
        v12 = [(HKMedicalCoding *)self codingSystem];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_25;
        }
      }

      v6 = [(HKMedicalCoding *)v5 codingVersion];
      v15 = [(HKMedicalCoding *)self codingVersion];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKMedicalCoding *)self codingVersion];
        if (!v16)
        {
          goto LABEL_24;
        }

        v17 = v16;
        v18 = [(HKMedicalCoding *)v5 codingVersion];
        v19 = [(HKMedicalCoding *)self codingVersion];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_25;
        }
      }

      v6 = [(HKMedicalCoding *)v5 code];
      v21 = [(HKMedicalCoding *)self code];
      v8 = v21;
      if (v6 == v21)
      {
      }

      else
      {
        v22 = [(HKMedicalCoding *)self code];
        if (!v22)
        {
          goto LABEL_24;
        }

        v23 = v22;
        v24 = [(HKMedicalCoding *)v5 code];
        v25 = [(HKMedicalCoding *)self code];
        v26 = [v24 isEqualToString:v25];

        if (!v26)
        {
          goto LABEL_25;
        }
      }

      v6 = [(HKMedicalCoding *)v5 displayString];
      v27 = [(HKMedicalCoding *)self displayString];
      v8 = v27;
      if (v6 == v27)
      {

LABEL_29:
        v14 = 1;
        goto LABEL_26;
      }

      v28 = [(HKMedicalCoding *)self displayString];
      if (v28)
      {
        v29 = v28;
        v30 = [(HKMedicalCoding *)v5 displayString];
        v31 = [(HKMedicalCoding *)self displayString];
        v32 = [v30 isEqualToString:v31];

        if (v32)
        {
          goto LABEL_29;
        }

LABEL_25:
        v14 = 0;
LABEL_26:

        goto LABEL_27;
      }

LABEL_24:

      goto LABEL_25;
    }

    v14 = 0;
  }

LABEL_27:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_code hash];
  v4 = [(NSString *)self->_displayString hash];
  if (v3 == v4)
  {
    v5 = [(NSString *)self->_displayString hash];
  }

  else
  {
    v5 = v4 ^ v3;
  }

  v6 = [(HKMedicalCodingSystem *)self->_codingSystem hash];
  return v6 ^ [(NSString *)self->_codingVersion hash]^ v5;
}

- (HKMedicalCoding)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKMedicalCoding;
  v5 = [(HKMedicalCoding *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CodingSystem"];
  codingSystem = v5->_codingSystem;
  v5->_codingSystem = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CodingVersion"];
  codingVersion = v5->_codingVersion;
  v5->_codingVersion = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Code"];
  code = v5->_code;
  v5->_code = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayString"];
  displayString = v5->_displayString;
  v5->_displayString = v12;

  v14 = [(HKMedicalCoding *)v5 _validateConfiguration];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
LABEL_4:
    v15 = v5;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  codingSystem = self->_codingSystem;
  v5 = a3;
  [v5 encodeObject:codingSystem forKey:@"CodingSystem"];
  [v5 encodeObject:self->_codingVersion forKey:@"CodingVersion"];
  [v5 encodeObject:self->_code forKey:@"Code"];
  [v5 encodeObject:self->_displayString forKey:@"DisplayString"];
}

@end