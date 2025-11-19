@interface CNContactHandleIndexableString
+ (id)equivalenceStrategyWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNContactHandleIndexableString)initWithCoder:(id)a3;
- (CNContactHandleIndexableString)initWithFullString:(id)a3 indexKey:(id)a4 equivalenceStrategy:(id)a5;
- (CNContactHandleIndexableString)initWithString:(id)a3;
- (id)description;
@end

@implementation CNContactHandleIndexableString

- (CNContactHandleIndexableString)initWithString:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() equivalenceStrategyWithString:v4];
  v6 = [objc_opt_class() indexKeyForString:v4];
  v7 = [(CNContactHandleIndexableString *)self initWithFullString:v4 indexKey:v6 equivalenceStrategy:v5];

  return v7;
}

- (CNContactHandleIndexableString)initWithFullString:(id)a3 indexKey:(id)a4 equivalenceStrategy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CNContactHandleIndexableString;
  v11 = [(CNContactHandleIndexableString *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    stringValue = v11->_stringValue;
    v11->_stringValue = v12;

    v14 = [v9 copy];
    indexKey = v11->_indexKey;
    v11->_indexKey = v14;

    objc_storeStrong(&v11->_equivalenceStrategy, a5);
    v16 = v11;
  }

  return v11;
}

+ (id)equivalenceStrategyWithString:(id)a3
{
  v3 = a3;
  if ([v3 _cn_containsSubstring:@"@"])
  {
    v4 = [[_CNContactEmailAddressEquivalence alloc] initWithEmailAddress:v3];
  }

  else
  {
    v4 = [[_CNContactPhoneNumberEquivalence alloc] initWithPhoneNumberString:v3];
  }

  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"string" object:self->_stringValue];
  v5 = [v3 appendName:@"indexKey" object:self->_indexKey];
  v6 = [v3 appendName:@"equivalence strategy" object:self->_equivalenceStrategy];
  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (stringValue = self->_stringValue, stringValue | v4->_stringValue) && ![(NSString *)stringValue isEqual:?]|| (indexKey = self->_indexKey, indexKey | v4->_indexKey) && ![(NSString *)indexKey isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CNContactHandleIndexableString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v6 = [(CNContactHandleIndexableString *)self initWithString:v5];
  return v6;
}

@end