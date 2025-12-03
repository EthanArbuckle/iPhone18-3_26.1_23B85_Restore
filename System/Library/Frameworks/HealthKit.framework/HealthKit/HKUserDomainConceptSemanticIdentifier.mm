@interface HKUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)components;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptSemanticIdentifier)init;
- (HKUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier;
- (NSString)stringValue;
- (id)healthConceptIdentifier;
- (unint64_t)hash;
@end

@implementation HKUserDomainConceptSemanticIdentifier

- (HKUserDomainConceptSemanticIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKUserDomainConceptSemanticIdentifier;
  v6 = [(HKUserDomainConceptSemanticIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typeIdentifier, identifier);
  }

  return v7;
}

- (NSString)stringValue
{
  v12[2] = *MEMORY[0x1E69E9840];
  schema = [(HKUserDomainConceptTypeIdentifier *)self->_typeIdentifier schema];
  v4 = schema;
  v5 = @"(null)";
  if (schema)
  {
    v5 = schema;
  }

  v12[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKUserDomainConceptTypeIdentifier code](self->_typeIdentifier, "code")}];
  stringValue = [v6 stringValue];
  v12[1] = stringValue;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v8 componentsJoinedByString:@"|█|"];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)healthConceptIdentifier
{
  stringValue = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
  v3 = [HKHealthConceptIdentifier baseConceptIdentifierWithSemanticIdentifierString:stringValue];

  return v3;
}

- (unint64_t)hash
{
  stringValue = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stringValue = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
      stringValue2 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
      if (stringValue == stringValue2)
      {
        v11 = 1;
      }

      else
      {
        stringValue3 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
        if (stringValue3)
        {
          stringValue4 = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
          stringValue5 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
          v11 = [stringValue4 isEqualToString:stringValue5];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)semanticIdentifierWithComponents:(id)components
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end