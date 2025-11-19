@interface HKBaseUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)a3;
- (HKBaseUserDomainConceptSemanticIdentifier)init;
- (HKBaseUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3;
- (HKBaseUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3;
- (id)stringValue;
@end

@implementation HKBaseUserDomainConceptSemanticIdentifier

- (HKBaseUserDomainConceptSemanticIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKBaseUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKBaseUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3
{
  v5 = a3;
  v6 = +[HKUserDomainConceptTypeIdentifier baseUserDomainConceptIdentifier];
  v9.receiver = self;
  v9.super_class = HKBaseUserDomainConceptSemanticIdentifier;
  v7 = [(HKUserDomainConceptSemanticIdentifier *)&v9 initWithTypeIdentifier:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_UUID, a3);
  }

  return v7;
}

+ (id)semanticIdentifierWithComponents:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = 0;
    if (([v4 isEqualToString:@"(null)"] & 1) == 0 && v4)
    {
      v6 = MEMORY[0x1E696AFB0];
      v7 = v4;
      v8 = [[v6 alloc] initWithUUIDString:v7];

      if (v8)
      {
        v5 = [objc_alloc(objc_opt_class()) initWithUUID:v8];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringValue
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = HKBaseUserDomainConceptSemanticIdentifier;
  v3 = [(HKUserDomainConceptSemanticIdentifier *)&v9 stringValue];
  v10[0] = v3;
  v4 = [(NSUUID *)self->_UUID UUIDString];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"|█|"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end