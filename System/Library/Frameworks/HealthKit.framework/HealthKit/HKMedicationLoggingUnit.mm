@interface HKMedicationLoggingUnit
+ (id)loggingUnitByResolvingSingularLoggingUnitString:(id)string fallbackPluralLoggingUnitString:(id)unitString;
+ (uint64_t)_loggingUnitCodeForSingularString:(uint64_t)string;
- (BOOL)isEqual:(id)equal;
- (HKMedicationLoggingUnit)init;
- (HKMedicationLoggingUnit)initWithCoder:(id)coder;
- (id)copyByOverridingFallbackLoggingUnitSingularString:(id)string fallbackLoggingUnitPluralString:(id)pluralString;
- (unint64_t)hash;
- (void)_initWithMedicationLoggingUnitCode:(void *)code fallbackLoggingUnitSingularString:(void *)string fallbackLoggingUnitPluralString:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationLoggingUnit

- (HKMedicationLoggingUnit)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)loggingUnitByResolvingSingularLoggingUnitString:(id)string fallbackPluralLoggingUnitString:(id)unitString
{
  stringCopy = string;
  unitStringCopy = unitString;
  v8 = [(HKMedicationLoggingUnit *)self _loggingUnitCodeForSingularString:stringCopy];
  v9 = [HKMedicationLoggingUnit alloc];
  if (v8)
  {
    v10 = [(HKMedicationLoggingUnit *)v9 initWithLoggingUnitCode:v8];
  }

  else
  {
    v10 = [(HKMedicationLoggingUnit *)v9 _initWithMedicationLoggingUnitCode:stringCopy fallbackLoggingUnitSingularString:unitStringCopy fallbackLoggingUnitPluralString:?];
  }

  v11 = v10;

  return v11;
}

+ (uint64_t)_loggingUnitCodeForSingularString:(uint64_t)string
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_1F06862E0 objectForKeyedSubscript:v2];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      loggingUnitCode = [(HKMedicationLoggingUnit *)v5 loggingUnitCode];
      if (loggingUnitCode != [(HKMedicationLoggingUnit *)self loggingUnitCode])
      {
        goto LABEL_16;
      }

      fallbackLoggingUnitSingularString = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitSingularString];
      fallbackLoggingUnitSingularString2 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
      v9 = fallbackLoggingUnitSingularString2;
      if (fallbackLoggingUnitSingularString == fallbackLoggingUnitSingularString2)
      {
      }

      else
      {
        fallbackLoggingUnitSingularString3 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
        if (!fallbackLoggingUnitSingularString3)
        {
          goto LABEL_15;
        }

        v11 = fallbackLoggingUnitSingularString3;
        fallbackLoggingUnitSingularString4 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitSingularString];
        fallbackLoggingUnitSingularString5 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
        v14 = [fallbackLoggingUnitSingularString4 isEqualToString:fallbackLoggingUnitSingularString5];

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      fallbackLoggingUnitSingularString = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitPluralString];
      fallbackLoggingUnitPluralString = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
      v9 = fallbackLoggingUnitPluralString;
      if (fallbackLoggingUnitSingularString == fallbackLoggingUnitPluralString)
      {

LABEL_20:
        v15 = 1;
        goto LABEL_17;
      }

      fallbackLoggingUnitPluralString2 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
      if (fallbackLoggingUnitPluralString2)
      {
        v18 = fallbackLoggingUnitPluralString2;
        fallbackLoggingUnitPluralString3 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitPluralString];
        fallbackLoggingUnitPluralString4 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
        v21 = [fallbackLoggingUnitPluralString3 isEqualToString:fallbackLoggingUnitPluralString4];

        if (v21)
        {
          goto LABEL_20;
        }

LABEL_16:
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

LABEL_15:

      goto LABEL_16;
    }

    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (unint64_t)hash
{
  loggingUnitCode = self->_loggingUnitCode;
  v4 = [(NSString *)self->_fallbackLoggingUnitSingularString hash]^ loggingUnitCode;
  return v4 ^ [(NSString *)self->_fallbackLoggingUnitPluralString hash];
}

- (HKMedicationLoggingUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"LoggingUnitCodeKey"];
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HKMedicationLoggingUnit;
    v7 = [(HKMedicationLoggingUnit *)&v12 init];
    if (v7)
    {
      v7->_loggingUnitCode = v6;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FallbackLoggingUnitSingularStringKey"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FallbackLoggingUnitPluralStringKey"];
    selfCopy = [HKMedicationLoggingUnit loggingUnitByResolvingSingularLoggingUnitString:v9 fallbackPluralLoggingUnitString:v10];
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  loggingUnitCode = self->_loggingUnitCode;
  coderCopy = coder;
  [coderCopy encodeInteger:loggingUnitCode forKey:@"LoggingUnitCodeKey"];
  [coderCopy encodeObject:self->_fallbackLoggingUnitSingularString forKey:@"FallbackLoggingUnitSingularStringKey"];
  [coderCopy encodeObject:self->_fallbackLoggingUnitPluralString forKey:@"FallbackLoggingUnitPluralStringKey"];
}

- (void)_initWithMedicationLoggingUnitCode:(void *)code fallbackLoggingUnitSingularString:(void *)string fallbackLoggingUnitPluralString:
{
  codeCopy = code;
  stringCopy = string;
  v9 = stringCopy;
  if (self)
  {
    if (!a2 && (!codeCopy || !stringCopy))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithMedicationLoggingUnitCode_fallbackLoggingUnitSingularString_fallbackLoggingUnitPluralString_ object:self file:@"HKMedicationLoggingUnit.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"fallbackLoggingUnitSingularString != nil && fallbackLoggingUnitPluralString != nil"}];
    }

    v17.receiver = self;
    v17.super_class = HKMedicationLoggingUnit;
    v10 = objc_msgSendSuper2(&v17, sel_init);
    self = v10;
    if (v10)
    {
      v10[1] = a2;
      if (!a2)
      {
        v11 = [codeCopy copy];
        v12 = self[2];
        self[2] = v11;

        v13 = [v9 copy];
        v14 = self[3];
        self[3] = v13;
      }
    }
  }

  return self;
}

- (id)copyByOverridingFallbackLoggingUnitSingularString:(id)string fallbackLoggingUnitPluralString:(id)pluralString
{
  selfCopy = self;
  loggingUnitCode = selfCopy->_loggingUnitCode;

  return [(HKMedicationLoggingUnit *)selfCopy _initWithMedicationLoggingUnitCode:string fallbackLoggingUnitSingularString:pluralString fallbackLoggingUnitPluralString:?];
}

@end