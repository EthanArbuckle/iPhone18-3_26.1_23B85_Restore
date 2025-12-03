@interface HKMedicalCoding
+ (HKMedicalCoding)medicalCodingWithSystem:(id)system codingVersion:(id)version code:(id)code displayString:(id)string;
+ (id)ICD10CodingWithCode:(id)code displayString:(id)string;
+ (id)ICD9CodingWithCode:(id)code displayString:(id)string;
+ (id)LOINCCodingWithCode:(id)code displayString:(id)string;
+ (id)RxNormCodingWithCode:(id)code displayString:(id)string;
+ (id)SNOMEDCodingWithCode:(id)code displayString:(id)string;
+ (id)appleOntologyCodingWithIdentifier:(id)identifier;
+ (id)appleOntologyCodingWithRawIdentifier:(int64_t)identifier;
+ (id)text_codingWithDisplayString:(id)string;
+ (id)ucum_codingWithCode:(id)code displayString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (HKMedicalCoding)init;
- (HKMedicalCoding)initWithCoder:(id)coder;
- (HKMedicalCoding)initWithCodingSystem:(id)system codingVersion:(id)version code:(id)code displayString:(id)string;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalCoding

+ (id)ICD10CodingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if (!codeCopy)
  {
    [HKMedicalCoding(ICD10) ICD10CodingWithCode:a2 displayString:self];
  }

  v9 = +[HKMedicalCodingSystem ICD10System];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:codeCopy displayString:stringCopy];

  return v10;
}

+ (id)ucum_codingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  v9 = stringCopy;
  if (codeCopy)
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKMedicalCoding(UCUM) ucum_codingWithCode:a2 displayString:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HKMedicalCoding(UCUM) ucum_codingWithCode:a2 displayString:self];
LABEL_3:
  v10 = +[HKMedicalCodingSystem UCUMSystem];
  v11 = [HKMedicalCoding medicalCodingWithSystem:v10 codingVersion:0 code:codeCopy displayString:v9];

  return v11;
}

+ (id)LOINCCodingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if (!codeCopy)
  {
    [HKMedicalCoding(LOINC) LOINCCodingWithCode:a2 displayString:self];
  }

  v9 = +[HKMedicalCodingSystem LOINCCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:codeCopy displayString:stringCopy];

  return v10;
}

+ (id)ICD9CodingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if (!codeCopy)
  {
    [HKMedicalCoding(ICD9) ICD9CodingWithCode:a2 displayString:self];
  }

  v9 = +[HKMedicalCodingSystem ICD9System];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:codeCopy displayString:stringCopy];

  return v10;
}

+ (id)RxNormCodingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if (!codeCopy)
  {
    [HKMedicalCoding(RxNorm) RxNormCodingWithCode:a2 displayString:self];
  }

  v9 = +[HKMedicalCodingSystem RxNormCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:codeCopy displayString:stringCopy];

  return v10;
}

+ (id)text_codingWithDisplayString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(HKMedicalCoding(Text) *)a2 text_codingWithDisplayString:self];
  }

  v6 = +[HKMedicalCodingSystem textSystem];
  v7 = [HKMedicalCoding medicalCodingWithSystem:v6 codingVersion:@"1" code:stringCopy displayString:stringCopy];

  return v7;
}

+ (id)SNOMEDCodingWithCode:(id)code displayString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if (!codeCopy)
  {
    [HKMedicalCoding(SNOMED) SNOMEDCodingWithCode:a2 displayString:self];
  }

  v9 = +[HKMedicalCodingSystem SNOMEDCodeSystem];
  v10 = [HKMedicalCoding medicalCodingWithSystem:v9 codingVersion:0 code:codeCopy displayString:stringCopy];

  return v10;
}

+ (id)appleOntologyCodingWithRawIdentifier:(int64_t)identifier
{
  identifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", identifier];
  v4 = [HKMedicalCoding alloc];
  v5 = +[HKMedicalCodingSystem appleOntologySystem];
  v6 = [(HKMedicalCoding *)v4 initWithCodingSystem:v5 codingVersion:0 code:identifier displayString:0];

  return v6;
}

+ (id)appleOntologyCodingWithIdentifier:(id)identifier
{
  rawIdentifier = [identifier rawIdentifier];

  return [self appleOntologyCodingWithRawIdentifier:rawIdentifier];
}

+ (HKMedicalCoding)medicalCodingWithSystem:(id)system codingVersion:(id)version code:(id)code displayString:(id)string
{
  stringCopy = string;
  codeCopy = code;
  versionCopy = version;
  systemCopy = system;
  v14 = [[self alloc] initWithCodingSystem:systemCopy codingVersion:versionCopy code:codeCopy displayString:stringCopy];

  return v14;
}

- (HKMedicalCoding)initWithCodingSystem:(id)system codingVersion:(id)version code:(id)code displayString:(id)string
{
  systemCopy = system;
  versionCopy = version;
  codeCopy = code;
  stringCopy = string;
  v29.receiver = self;
  v29.super_class = HKMedicalCoding;
  v14 = [(HKMedicalCoding *)&v29 init];
  if (v14)
  {
    v15 = [systemCopy copy];
    codingSystem = v14->_codingSystem;
    v14->_codingSystem = v15;

    v17 = [versionCopy copy];
    codingVersion = v14->_codingVersion;
    v14->_codingVersion = v17;

    v19 = [codeCopy copy];
    code = v14->_code;
    v14->_code = v19;

    v21 = [stringCopy copy];
    displayString = v14->_displayString;
    v14->_displayString = v21;

    _validateConfiguration = [(HKMedicalCoding *)v14 _validateConfiguration];
    v24 = _validateConfiguration;
    if (_validateConfiguration)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      localizedDescription = [_validateConfiguration localizedDescription];
      [v25 raise:v26 format:{@"%@", localizedDescription}];
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

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      codingSystem = [(HKMedicalCoding *)equivalentCopy codingSystem];
      v6 = +[HKMedicalCodingSystem LOINCCodeSystem];
      v7 = [codingSystem isEqual:v6];

      if (v7)
      {
        codingSystem2 = [(HKMedicalCoding *)self codingSystem];
        codingSystem3 = [(HKMedicalCoding *)equivalentCopy codingSystem];
        if (codingSystem2 == codingSystem3)
        {
          [(HKMedicalCoding *)self code:v22];
        }

        else
        {
          codingSystem4 = [(HKMedicalCoding *)equivalentCopy codingSystem];
          if (!codingSystem4)
          {
            v13 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v7 = codingSystem4;
          codingSystem5 = [(HKMedicalCoding *)self codingSystem];
          codingSystem6 = [(HKMedicalCoding *)equivalentCopy codingSystem];
          if (![codingSystem5 isEqual:codingSystem6])
          {
            v13 = 0;
LABEL_20:

            goto LABEL_21;
          }

          [(HKMedicalCoding *)self code:codingSystem6];
        }
        v14 = ;
        code = [(HKMedicalCoding *)equivalentCopy code];
        v16 = code;
        if (v14 == code)
        {

          v13 = 1;
        }

        else
        {
          code2 = [(HKMedicalCoding *)equivalentCopy code];
          if (code2)
          {
            v18 = code2;
            code3 = [(HKMedicalCoding *)self code];
            code4 = [(HKMedicalCoding *)equivalentCopy code];
            v13 = [code3 isEqual:code4];
          }

          else
          {

            v13 = 0;
          }
        }

        codingSystem6 = v23;
        codingSystem5 = v25;
        if (codingSystem2 == codingSystem3)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v13 = [(HKMedicalCoding *)self isEqual:equivalentCopy];
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
  codingSystem = [(HKMedicalCoding *)self codingSystem];
  identifier = [codingSystem identifier];
  codingVersion = [(HKMedicalCoding *)self codingVersion];
  code = [(HKMedicalCoding *)self code];
  displayString = [(HKMedicalCoding *)self displayString];
  v11 = [v3 stringWithFormat:@"<%@:%p, system='%@', version=%@, code='%@', displayString='%@'>", v5, self, identifier, codingVersion, code, displayString];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codingSystem = [(HKMedicalCoding *)v5 codingSystem];
      codingSystem2 = [(HKMedicalCoding *)self codingSystem];
      v8 = codingSystem2;
      if (codingSystem == codingSystem2)
      {
      }

      else
      {
        codingSystem3 = [(HKMedicalCoding *)self codingSystem];
        if (!codingSystem3)
        {
          goto LABEL_24;
        }

        v10 = codingSystem3;
        codingSystem4 = [(HKMedicalCoding *)v5 codingSystem];
        codingSystem5 = [(HKMedicalCoding *)self codingSystem];
        v13 = [codingSystem4 isEqual:codingSystem5];

        if (!v13)
        {
          goto LABEL_25;
        }
      }

      codingSystem = [(HKMedicalCoding *)v5 codingVersion];
      codingVersion = [(HKMedicalCoding *)self codingVersion];
      v8 = codingVersion;
      if (codingSystem == codingVersion)
      {
      }

      else
      {
        codingVersion2 = [(HKMedicalCoding *)self codingVersion];
        if (!codingVersion2)
        {
          goto LABEL_24;
        }

        v17 = codingVersion2;
        codingVersion3 = [(HKMedicalCoding *)v5 codingVersion];
        codingVersion4 = [(HKMedicalCoding *)self codingVersion];
        v20 = [codingVersion3 isEqualToString:codingVersion4];

        if (!v20)
        {
          goto LABEL_25;
        }
      }

      codingSystem = [(HKMedicalCoding *)v5 code];
      code = [(HKMedicalCoding *)self code];
      v8 = code;
      if (codingSystem == code)
      {
      }

      else
      {
        code2 = [(HKMedicalCoding *)self code];
        if (!code2)
        {
          goto LABEL_24;
        }

        v23 = code2;
        code3 = [(HKMedicalCoding *)v5 code];
        code4 = [(HKMedicalCoding *)self code];
        v26 = [code3 isEqualToString:code4];

        if (!v26)
        {
          goto LABEL_25;
        }
      }

      codingSystem = [(HKMedicalCoding *)v5 displayString];
      displayString = [(HKMedicalCoding *)self displayString];
      v8 = displayString;
      if (codingSystem == displayString)
      {

LABEL_29:
        v14 = 1;
        goto LABEL_26;
      }

      displayString2 = [(HKMedicalCoding *)self displayString];
      if (displayString2)
      {
        v29 = displayString2;
        displayString3 = [(HKMedicalCoding *)v5 displayString];
        displayString4 = [(HKMedicalCoding *)self displayString];
        v32 = [displayString3 isEqualToString:displayString4];

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

- (HKMedicalCoding)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKMedicalCoding;
  v5 = [(HKMedicalCoding *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CodingSystem"];
  codingSystem = v5->_codingSystem;
  v5->_codingSystem = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CodingVersion"];
  codingVersion = v5->_codingVersion;
  v5->_codingVersion = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Code"];
  code = v5->_code;
  v5->_code = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayString"];
  displayString = v5->_displayString;
  v5->_displayString = v12;

  _validateConfiguration = [(HKMedicalCoding *)v5 _validateConfiguration];

  if (_validateConfiguration)
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

- (void)encodeWithCoder:(id)coder
{
  codingSystem = self->_codingSystem;
  coderCopy = coder;
  [coderCopy encodeObject:codingSystem forKey:@"CodingSystem"];
  [coderCopy encodeObject:self->_codingVersion forKey:@"CodingVersion"];
  [coderCopy encodeObject:self->_code forKey:@"Code"];
  [coderCopy encodeObject:self->_displayString forKey:@"DisplayString"];
}

@end