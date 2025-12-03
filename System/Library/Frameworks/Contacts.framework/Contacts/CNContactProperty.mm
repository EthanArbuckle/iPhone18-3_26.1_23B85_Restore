@interface CNContactProperty
+ (CNContactProperty)contactPropertyWithContact:(id)contact propertyKey:(id)key identifier:(id)identifier;
+ (CNContactProperty)contactPropertyWithContactNoCopy:(id)copy propertyKey:(id)key identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CNContactProperty)initWithCoder:(id)coder;
- (NSString)label;
- (id)description;
- (id)labeledValue;
- (id)labeledValueForContact:(void *)contact;
- (id)primitiveValue;
- (id)sourceContact;
- (id)value;
- (int)multiValueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)isMultiValueProperty;
@end

@implementation CNContactProperty

- (NSString)label
{
  labeledValue = [(CNContactProperty *)self labeledValue];
  label = [labeledValue label];

  return label;
}

- (id)labeledValue
{
  contact = [(CNContactProperty *)self contact];
  v4 = [(CNContactProperty *)self labeledValueForContact:contact];

  return v4;
}

- (id)primitiveValue
{
  selfCopy = self;
  if (self)
  {
    v2 = +[CN contactPropertiesByKey];
    v3 = [selfCopy key];
    v4 = [v2 objectForKeyedSubscript:v3];

    contact = [selfCopy contact];
    selfCopy = [v4 CNValueForContact:contact];
  }

  return selfCopy;
}

- (void)isMultiValueProperty
{
  if (result)
  {
    v1 = result;
    v2 = +[CN contactPropertiesByKey];
    v3 = [v1 key];
    v4 = [v2 objectForKeyedSubscript:v3];

    isMultiValue = [v4 isMultiValue];
    return isMultiValue;
  }

  return result;
}

- (id)value
{
  if ([(CNContactProperty *)self isMultiValueProperty])
  {
    labeledValue = [(CNContactProperty *)self labeledValue];
    value = [labeledValue value];
  }

  else
  {
    value = [(CNContactProperty *)self primitiveValue];
  }

  return value;
}

- (CNContactProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CNContactProperty;
  v5 = [(CNContactProperty *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_internalContact"];
    v7 = [v6 copy];
    internalContact = v5->_internalContact;
    v5->_internalContact = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    v10 = [v9 copy];
    key = v5->_key;
    v5->_key = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v13 = [v12 copy];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  internalContact = self->_internalContact;
  coderCopy = coder;
  [coderCopy encodeObject:internalContact forKey:@"_internalContact"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__CNContactProperty_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__CNContactProperty_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v7 = v17;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__CNContactProperty_isEqual___block_invoke_3;
  v12[3] = &unk_1E7412228;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(v12);
  LOBYTE(self) = [v5 isObject:v9 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, v10, 0}];

  return self;
}

uint64_t __29__CNContactProperty_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contact];
  v4 = [*(a1 + 40) contact];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __29__CNContactProperty_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) key];
  v4 = [*(a1 + 40) key];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __29__CNContactProperty_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25__CNContactProperty_hash__block_invoke;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __25__CNContactProperty_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__CNContactProperty_hash__block_invoke_3;
  v8[3] = &unk_1E7412250;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __25__CNContactProperty_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) key];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __25__CNContactProperty_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  identifier = [(CNContact *)self->_internalContact identifier];
  v5 = [v3 appendName:@"contact identifier" object:identifier];

  internalContact = self->_internalContact;
  v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LODWORD(internalContact) = [(CNContact *)internalContact areKeysAvailable:v8];

  if (internalContact)
  {
    v9 = [CNContactFormatter stringFromContact:self->_internalContact style:0];
  }

  else
  {
    v9 = @"<not fetched>";
  }

  v10 = [v3 appendName:@"contact name" object:v9];
  v11 = [v3 appendName:@"key" object:self->_key];
  if (self->_identifier)
  {
    v12 = [v3 appendName:@"identifier" object:?];
  }

  value = [(CNContactProperty *)self value];
  v14 = [v3 appendName:@"value" object:value];

  build = [v3 build];

  return build;
}

- (id)sourceContact
{
  value = [(CNContactProperty *)self value];
  identifier = [(CNContactProperty *)self identifier];
  v5 = [(CNContactProperty *)self key];
  contact = [(CNContactProperty *)self contact];
  v7 = [CN sourceContactForValue:value labeledValueIdentifier:identifier propertyKey:v5 inUnifiedContact:contact];

  return v7;
}

uint64_t __44__CNContactProperty_labeledValueForContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (int)multiValueIdentifier
{
  contact = [(CNContactProperty *)self contact];
  isUnified = [contact isUnified];

  if (isUnified)
  {
    sourceContact = [(CNContactProperty *)self sourceContact];
    labeledValue = [(CNContactProperty *)self labeledValueForContact:sourceContact];

    if (labeledValue)
    {
      goto LABEL_3;
    }

LABEL_5:
    iOSLegacyIdentifier = -1;
    goto LABEL_6;
  }

  labeledValue = [(CNContactProperty *)self labeledValue];
  if (!labeledValue)
  {
    goto LABEL_5;
  }

LABEL_3:
  iOSLegacyIdentifier = [labeledValue iOSLegacyIdentifier];
LABEL_6:

  return iOSLegacyIdentifier;
}

+ (CNContactProperty)contactPropertyWithContact:(id)contact propertyKey:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  contactCopy = contact;
  v11 = objc_alloc_init(self);
  v12 = [contactCopy copy];

  [(CNChangesNotifierProxy *)v11 setRemovalBlocks:v12];
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v13, keyCopy, 8);
    objc_setProperty_nonatomic_copy(v11, v14, identifierCopy, 16);
  }

  return v11;
}

+ (CNContactProperty)contactPropertyWithContactNoCopy:(id)copy propertyKey:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  copyCopy = copy;
  v11 = objc_alloc_init(self);
  [(CNChangesNotifierProxy *)v11 setRemovalBlocks:copyCopy];

  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, keyCopy, 8);
    objc_setProperty_nonatomic_copy(v11, v13, identifierCopy, 16);
  }

  return v11;
}

uint64_t __25__CNContactProperty_hash__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return [MEMORY[0x1E6996730] objectHash:v2];
}

- (id)labeledValueForContact:(void *)contact
{
  v3 = a2;
  if (contact)
  {
    v4 = *MEMORY[0x1E6996568];
    identifier = [contact identifier];
    LOBYTE(v4) = (*(v4 + 16))(v4, identifier);

    if (v4)
    {
      contact = 0;
    }

    else
    {
      objc_opt_class();
      primitiveValue = [(CNContactProperty *)contact primitiveValue];
      if (objc_opt_isKindOfClass())
      {
        v8 = primitiveValue;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CNContactProperty_labeledValueForContact___block_invoke;
      v10[3] = &unk_1E7413588;
      v10[4] = contact;
      contact = [v9 _cn_firstObjectPassingTest:v10];
    }
  }

  return contact;
}

@end