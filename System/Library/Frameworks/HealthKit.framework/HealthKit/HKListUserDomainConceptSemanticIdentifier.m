@interface HKListUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)a3;
- (HKListUserDomainConceptSemanticIdentifier)init;
- (HKListUserDomainConceptSemanticIdentifier)initWithListType:(unint64_t)a3;
- (HKListUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3;
- (id)stringValue;
@end

@implementation HKListUserDomainConceptSemanticIdentifier

- (HKListUserDomainConceptSemanticIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConceptSemanticIdentifier)initWithListType:(unint64_t)a3
{
  v5 = +[HKUserDomainConceptTypeIdentifier listUserDomainConceptIdentifier];
  v8.receiver = self;
  v8.super_class = HKListUserDomainConceptSemanticIdentifier;
  v6 = [(HKUserDomainConceptSemanticIdentifier *)&v8 initWithTypeIdentifier:v5];

  if (v6)
  {
    v6->_listType = a3;
  }

  return v6;
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
      v6 = MEMORY[0x1E696ADA0];
      v7 = v4;
      v8 = objc_alloc_init(v6);
      v9 = [v8 numberFromString:v7];

      if (v9)
      {
        v5 = [objc_alloc(objc_opt_class()) initWithListType:{objc_msgSend(v9, "integerValue")}];
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
  v9.super_class = HKListUserDomainConceptSemanticIdentifier;
  v3 = [(HKUserDomainConceptSemanticIdentifier *)&v9 stringValue];
  v10[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_listType];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"|█|"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end