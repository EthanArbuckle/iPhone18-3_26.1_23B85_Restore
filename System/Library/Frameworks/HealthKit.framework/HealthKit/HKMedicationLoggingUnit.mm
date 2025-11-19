@interface HKMedicationLoggingUnit
+ (id)loggingUnitByResolvingSingularLoggingUnitString:(id)a3 fallbackPluralLoggingUnitString:(id)a4;
+ (uint64_t)_loggingUnitCodeForSingularString:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (HKMedicationLoggingUnit)init;
- (HKMedicationLoggingUnit)initWithCoder:(id)a3;
- (id)copyByOverridingFallbackLoggingUnitSingularString:(id)a3 fallbackLoggingUnitPluralString:(id)a4;
- (unint64_t)hash;
- (void)_initWithMedicationLoggingUnitCode:(void *)a3 fallbackLoggingUnitSingularString:(void *)a4 fallbackLoggingUnitPluralString:;
- (void)encodeWithCoder:(id)a3;
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

+ (id)loggingUnitByResolvingSingularLoggingUnitString:(id)a3 fallbackPluralLoggingUnitString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKMedicationLoggingUnit *)a1 _loggingUnitCodeForSingularString:v6];
  v9 = [HKMedicationLoggingUnit alloc];
  if (v8)
  {
    v10 = [(HKMedicationLoggingUnit *)v9 initWithLoggingUnitCode:v8];
  }

  else
  {
    v10 = [(HKMedicationLoggingUnit *)v9 _initWithMedicationLoggingUnitCode:v6 fallbackLoggingUnitSingularString:v7 fallbackLoggingUnitPluralString:?];
  }

  v11 = v10;

  return v11;
}

+ (uint64_t)_loggingUnitCodeForSingularString:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_1F06862E0 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicationLoggingUnit *)v5 loggingUnitCode];
      if (v6 != [(HKMedicationLoggingUnit *)self loggingUnitCode])
      {
        goto LABEL_16;
      }

      v7 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitSingularString];
      v8 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = v10;
        v12 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitSingularString];
        v13 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitSingularString];
        v14 = [v12 isEqualToString:v13];

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      v7 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitPluralString];
      v16 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
      v9 = v16;
      if (v7 == v16)
      {

LABEL_20:
        v15 = 1;
        goto LABEL_17;
      }

      v17 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
      if (v17)
      {
        v18 = v17;
        v19 = [(HKMedicationLoggingUnit *)v5 fallbackLoggingUnitPluralString];
        v20 = [(HKMedicationLoggingUnit *)self fallbackLoggingUnitPluralString];
        v21 = [v19 isEqualToString:v20];

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

- (HKMedicationLoggingUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"LoggingUnitCodeKey"];
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
    v8 = self;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FallbackLoggingUnitSingularStringKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FallbackLoggingUnitPluralStringKey"];
    v8 = [HKMedicationLoggingUnit loggingUnitByResolvingSingularLoggingUnitString:v9 fallbackPluralLoggingUnitString:v10];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  loggingUnitCode = self->_loggingUnitCode;
  v5 = a3;
  [v5 encodeInteger:loggingUnitCode forKey:@"LoggingUnitCodeKey"];
  [v5 encodeObject:self->_fallbackLoggingUnitSingularString forKey:@"FallbackLoggingUnitSingularStringKey"];
  [v5 encodeObject:self->_fallbackLoggingUnitPluralString forKey:@"FallbackLoggingUnitPluralStringKey"];
}

- (void)_initWithMedicationLoggingUnitCode:(void *)a3 fallbackLoggingUnitSingularString:(void *)a4 fallbackLoggingUnitPluralString:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (!a2 && (!v7 || !v8))
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel__initWithMedicationLoggingUnitCode_fallbackLoggingUnitSingularString_fallbackLoggingUnitPluralString_ object:a1 file:@"HKMedicationLoggingUnit.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"fallbackLoggingUnitSingularString != nil && fallbackLoggingUnitPluralString != nil"}];
    }

    v17.receiver = a1;
    v17.super_class = HKMedicationLoggingUnit;
    v10 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v10;
    if (v10)
    {
      v10[1] = a2;
      if (!a2)
      {
        v11 = [v7 copy];
        v12 = a1[2];
        a1[2] = v11;

        v13 = [v9 copy];
        v14 = a1[3];
        a1[3] = v13;
      }
    }
  }

  return a1;
}

- (id)copyByOverridingFallbackLoggingUnitSingularString:(id)a3 fallbackLoggingUnitPluralString:(id)a4
{
  v6 = self;
  loggingUnitCode = v6->_loggingUnitCode;

  return [(HKMedicationLoggingUnit *)v6 _initWithMedicationLoggingUnitCode:a3 fallbackLoggingUnitSingularString:a4 fallbackLoggingUnitPluralString:?];
}

@end