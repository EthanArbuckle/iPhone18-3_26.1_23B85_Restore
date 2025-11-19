@interface HKUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKUserDomainConceptSemanticIdentifier)init;
- (HKUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3;
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

- (HKUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKUserDomainConceptSemanticIdentifier;
  v6 = [(HKUserDomainConceptSemanticIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typeIdentifier, a3);
  }

  return v7;
}

- (NSString)stringValue
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKUserDomainConceptTypeIdentifier *)self->_typeIdentifier schema];
  v4 = v3;
  v5 = @"(null)";
  if (v3)
  {
    v5 = v3;
  }

  v12[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKUserDomainConceptTypeIdentifier code](self->_typeIdentifier, "code")}];
  v7 = [v6 stringValue];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v8 componentsJoinedByString:@"|█|"];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)healthConceptIdentifier
{
  v2 = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
  v3 = [HKHealthConceptIdentifier baseConceptIdentifierWithSemanticIdentifierString:v2];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
      v7 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
        if (v8)
        {
          v9 = [(HKUserDomainConceptSemanticIdentifier *)self stringValue];
          v10 = [(HKUserDomainConceptSemanticIdentifier *)v5 stringValue];
          v11 = [v9 isEqualToString:v10];
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

+ (id)semanticIdentifierWithComponents:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end