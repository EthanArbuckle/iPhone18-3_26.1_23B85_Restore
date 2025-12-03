@interface CNContactHandleIndexableString
+ (id)equivalenceStrategyWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (CNContactHandleIndexableString)initWithCoder:(id)coder;
- (CNContactHandleIndexableString)initWithFullString:(id)string indexKey:(id)key equivalenceStrategy:(id)strategy;
- (CNContactHandleIndexableString)initWithString:(id)string;
- (id)description;
@end

@implementation CNContactHandleIndexableString

- (CNContactHandleIndexableString)initWithString:(id)string
{
  stringCopy = string;
  v5 = [objc_opt_class() equivalenceStrategyWithString:stringCopy];
  v6 = [objc_opt_class() indexKeyForString:stringCopy];
  v7 = [(CNContactHandleIndexableString *)self initWithFullString:stringCopy indexKey:v6 equivalenceStrategy:v5];

  return v7;
}

- (CNContactHandleIndexableString)initWithFullString:(id)string indexKey:(id)key equivalenceStrategy:(id)strategy
{
  stringCopy = string;
  keyCopy = key;
  strategyCopy = strategy;
  v18.receiver = self;
  v18.super_class = CNContactHandleIndexableString;
  v11 = [(CNContactHandleIndexableString *)&v18 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    stringValue = v11->_stringValue;
    v11->_stringValue = v12;

    v14 = [keyCopy copy];
    indexKey = v11->_indexKey;
    v11->_indexKey = v14;

    objc_storeStrong(&v11->_equivalenceStrategy, strategy);
    v16 = v11;
  }

  return v11;
}

+ (id)equivalenceStrategyWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy _cn_containsSubstring:@"@"])
  {
    v4 = [[_CNContactEmailAddressEquivalence alloc] initWithEmailAddress:stringCopy];
  }

  else
  {
    v4 = [[_CNContactPhoneNumberEquivalence alloc] initWithPhoneNumberString:stringCopy];
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
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (stringValue = self->_stringValue, stringValue | equalCopy->_stringValue) && ![(NSString *)stringValue isEqual:?]|| (indexKey = self->_indexKey, indexKey | equalCopy->_indexKey) && ![(NSString *)indexKey isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CNContactHandleIndexableString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v6 = [(CNContactHandleIndexableString *)self initWithString:v5];
  return v6;
}

@end