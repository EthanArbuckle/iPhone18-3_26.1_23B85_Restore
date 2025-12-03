@interface HKMedicalUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)components;
- (HKMedicalUserDomainConceptSemanticIdentifier)init;
- (HKMedicalUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier;
- (HKMedicalUserDomainConceptSemanticIdentifier)initWithUUID:(id)d countryCode:(id)code medicalCoding:(id)coding;
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

- (HKMedicalUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKMedicalUserDomainConceptSemanticIdentifier)initWithUUID:(id)d countryCode:(id)code medicalCoding:(id)coding
{
  dCopy = d;
  codeCopy = code;
  codingCopy = coding;
  if ((dCopy != 0) != (codingCopy == 0))
  {
    [HKMedicalUserDomainConceptSemanticIdentifier initWithUUID:a2 countryCode:self medicalCoding:?];
  }

  v13 = +[HKUserDomainConceptTypeIdentifier medicalUserDomainConceptIdentifier];
  v16.receiver = self;
  v16.super_class = HKMedicalUserDomainConceptSemanticIdentifier;
  v14 = [(HKUserDomainConceptSemanticIdentifier *)&v16 initWithTypeIdentifier:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_UUID, d);
    objc_storeStrong(&v14->_countryCode, code);
    objc_storeStrong(&v14->_medicalCoding, coding);
  }

  return v14;
}

+ (id)semanticIdentifierWithComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count] != 3)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v4 = [componentsCopy objectAtIndexedSubscript:0];
  if ([v4 isEqualToString:@"(null)"])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [componentsCopy objectAtIndexedSubscript:1];
  if ([v7 isEqualToString:@"(null)"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [componentsCopy objectAtIndexedSubscript:2];
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
  stringValue = [(HKUserDomainConceptSemanticIdentifier *)&v19 stringValue];
  [v3 addObject:stringValue];

  uppercaseString = [(NSString *)self->_countryCode uppercaseString];
  v6 = uppercaseString;
  if (uppercaseString)
  {
    v7 = uppercaseString;
  }

  else
  {
    v7 = @"(null)";
  }

  [v3 addObject:v7];

  medicalCoding = self->_medicalCoding;
  if (medicalCoding)
  {
    codingSystem = [(HKMedicalCoding *)medicalCoding codingSystem];
    identifier = [codingSystem identifier];
    v11 = identifier;
    if (identifier)
    {
      v12 = identifier;
    }

    else
    {
      v12 = @"(null)";
    }

    [v3 addObject:v12];

    code = [(HKMedicalCoding *)self->_medicalCoding code];
    uUID = code;
    if (code)
    {
      v15 = code;
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
    uUID = [(HKMedicalUserDomainConceptSemanticIdentifier *)self UUID];
    uUIDString = [uUID UUIDString];
    [v3 addObject:uUIDString];
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