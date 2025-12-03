@interface HKListUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)components;
- (HKListUserDomainConceptSemanticIdentifier)init;
- (HKListUserDomainConceptSemanticIdentifier)initWithListType:(unint64_t)type;
- (HKListUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier;
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

- (HKListUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConceptSemanticIdentifier)initWithListType:(unint64_t)type
{
  v5 = +[HKUserDomainConceptTypeIdentifier listUserDomainConceptIdentifier];
  v8.receiver = self;
  v8.super_class = HKListUserDomainConceptSemanticIdentifier;
  v6 = [(HKUserDomainConceptSemanticIdentifier *)&v8 initWithTypeIdentifier:v5];

  if (v6)
  {
    v6->_listType = type;
  }

  return v6;
}

+ (id)semanticIdentifierWithComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count] == 1)
  {
    firstObject = [componentsCopy firstObject];
    v5 = 0;
    if (([firstObject isEqualToString:@"(null)"] & 1) == 0 && firstObject)
    {
      v6 = MEMORY[0x1E696ADA0];
      v7 = firstObject;
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
  stringValue = [(HKUserDomainConceptSemanticIdentifier *)&v9 stringValue];
  v10[0] = stringValue;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_listType];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"|█|"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end