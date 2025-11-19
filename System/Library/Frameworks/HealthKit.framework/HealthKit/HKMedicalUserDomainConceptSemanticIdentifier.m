@interface HKMedicalUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)a3;
- (HKMedicalUserDomainConceptSemanticIdentifier)init;
- (HKMedicalUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3;
- (HKMedicalUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3 countryCode:(id)a4 medicalCoding:(id)a5;
- (id)stringValue;
@end

@implementation HKMedicalUserDomainConceptSemanticIdentifier

- (HKMedicalUserDomainConceptSemanticIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicalUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKMedicalUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3 countryCode:(id)a4 medicalCoding:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((v10 != 0) != (v12 == 0))
  {
    [HKMedicalUserDomainConceptSemanticIdentifier initWithUUID:a2 countryCode:self medicalCoding:?];
  }

  v13 = +[HKUserDomainConceptTypeIdentifier medicalUserDomainConceptIdentifier];
  v16.receiver = self;
  v16.super_class = HKMedicalUserDomainConceptSemanticIdentifier;
  v14 = [(HKUserDomainConceptSemanticIdentifier *)&v16 initWithTypeIdentifier:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_UUID, a3);
    objc_storeStrong(&v14->_countryCode, a4);
    objc_storeStrong(&v14->_medicalCoding, a5);
  }

  return v14;
}

+ (id)semanticIdentifierWithComponents:(id)a3
{
  v3 = a3;
  if ([v3 count] != 3)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  if ([v4 isEqualToString:@"(null)"])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:1];
  if ([v7 isEqualToString:@"(null)"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [v3 objectAtIndexedSubscript:2];
  if ([v10 isEqualToString:@"(null)"])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  if (![v9 isEqualToString:@"UUID"])
  {
    if (v9)
    {
      v19 = [HKMedicalCoding alloc];
      v20 = [HKMedicalCodingSystem codeSystemWithIdentifier:v9];
      v13 = [(HKMedicalCoding *)v19 initWithCodingSystem:v20 codingVersion:0 code:v12 displayString:0];

      v14 = objc_alloc(objc_opt_class());
      v15 = 0;
      v16 = v6;
      v17 = v13;
      goto LABEL_18;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
  if (!v13)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v14 = objc_alloc(objc_opt_class());
  v15 = v13;
  v16 = v6;
  v17 = 0;
LABEL_18:
  v18 = [v14 initWithUUID:v15 countryCode:v16 medicalCoding:v17];
LABEL_19:

LABEL_21:
LABEL_22:

  return v18;
}

- (id)stringValue
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19.receiver = self;
  v19.super_class = HKMedicalUserDomainConceptSemanticIdentifier;
  v4 = [(HKUserDomainConceptSemanticIdentifier *)&v19 stringValue];
  [v3 addObject:v4];

  v5 = [(NSString *)self->_countryCode uppercaseString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"(null)";
  }

  [v3 addObject:v7];

  medicalCoding = self->_medicalCoding;
  if (medicalCoding)
  {
    v9 = [(HKMedicalCoding *)medicalCoding codingSystem];
    v10 = [v9 identifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"(null)";
    }

    [v3 addObject:v12];

    v13 = [(HKMedicalCoding *)self->_medicalCoding code];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"(null)";
    }

    [v3 addObject:v15];
  }

  else
  {
    [v3 addObject:@"UUID"];
    v14 = [(HKMedicalUserDomainConceptSemanticIdentifier *)self UUID];
    v16 = [v14 UUIDString];
    [v3 addObject:v16];
  }

  v17 = [v3 componentsJoinedByString:@"|█|"];

  return v17;
}

- (void)initWithUUID:(uint64_t)a1 countryCode:(uint64_t)a2 medicalCoding:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalUserDomainConceptSemanticIdentifier.m" lineNumber:32 description:{@"Trying to initialize a medical user domain concept semantic identifier, but UUID and Medical coding are both populated, or both unpopulated"}];
}

@end