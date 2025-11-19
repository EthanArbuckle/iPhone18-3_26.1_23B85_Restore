@interface CNContactProperty
+ (CNContactProperty)contactPropertyWithContact:(id)a3 propertyKey:(id)a4 identifier:(id)a5;
+ (CNContactProperty)contactPropertyWithContactNoCopy:(id)a3 propertyKey:(id)a4 identifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CNContactProperty)initWithCoder:(id)a3;
- (NSString)label;
- (id)description;
- (id)labeledValue;
- (id)labeledValueForContact:(void *)a1;
- (id)primitiveValue;
- (id)sourceContact;
- (id)value;
- (int)multiValueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)isMultiValueProperty;
@end

@implementation CNContactProperty

- (NSString)label
{
  v2 = [(CNContactProperty *)self labeledValue];
  v3 = [v2 label];

  return v3;
}

- (id)labeledValue
{
  v3 = [(CNContactProperty *)self contact];
  v4 = [(CNContactProperty *)self labeledValueForContact:v3];

  return v4;
}

- (id)primitiveValue
{
  v1 = a1;
  if (a1)
  {
    v2 = +[CN contactPropertiesByKey];
    v3 = [v1 key];
    v4 = [v2 objectForKeyedSubscript:v3];

    v5 = [v1 contact];
    v1 = [v4 CNValueForContact:v5];
  }

  return v1;
}

- (void)isMultiValueProperty
{
  if (result)
  {
    v1 = result;
    v2 = +[CN contactPropertiesByKey];
    v3 = [v1 key];
    v4 = [v2 objectForKeyedSubscript:v3];

    v5 = [v4 isMultiValue];
    return v5;
  }

  return result;
}

- (id)value
{
  if ([(CNContactProperty *)self isMultiValueProperty])
  {
    v3 = [(CNContactProperty *)self labeledValue];
    v4 = [v3 value];
  }

  else
  {
    v4 = [(CNContactProperty *)self primitiveValue];
  }

  return v4;
}

- (CNContactProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNContactProperty;
  v5 = [(CNContactProperty *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_internalContact"];
    v7 = [v6 copy];
    internalContact = v5->_internalContact;
    v5->_internalContact = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    v10 = [v9 copy];
    key = v5->_key;
    v5->_key = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v13 = [v12 copy];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  internalContact = self->_internalContact;
  v5 = a3;
  [v5 encodeObject:internalContact forKey:@"_internalContact"];
  [v5 encodeObject:self->_key forKey:@"_key"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__CNContactProperty_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
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
  v4 = [(CNContact *)self->_internalContact identifier];
  v5 = [v3 appendName:@"contact identifier" object:v4];

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

  v13 = [(CNContactProperty *)self value];
  v14 = [v3 appendName:@"value" object:v13];

  v15 = [v3 build];

  return v15;
}

- (id)sourceContact
{
  v3 = [(CNContactProperty *)self value];
  v4 = [(CNContactProperty *)self identifier];
  v5 = [(CNContactProperty *)self key];
  v6 = [(CNContactProperty *)self contact];
  v7 = [CN sourceContactForValue:v3 labeledValueIdentifier:v4 propertyKey:v5 inUnifiedContact:v6];

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
  v3 = [(CNContactProperty *)self contact];
  v4 = [v3 isUnified];

  if (v4)
  {
    v7 = [(CNContactProperty *)self sourceContact];
    v5 = [(CNContactProperty *)self labeledValueForContact:v7];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = -1;
    goto LABEL_6;
  }

  v5 = [(CNContactProperty *)self labeledValue];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v5 iOSLegacyIdentifier];
LABEL_6:

  return v6;
}

+ (CNContactProperty)contactPropertyWithContact:(id)a3 propertyKey:(id)a4 identifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = [v10 copy];

  [(CNChangesNotifierProxy *)v11 setRemovalBlocks:v12];
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v13, v8, 8);
    objc_setProperty_nonatomic_copy(v11, v14, v9, 16);
  }

  return v11;
}

+ (CNContactProperty)contactPropertyWithContactNoCopy:(id)a3 propertyKey:(id)a4 identifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [(CNChangesNotifierProxy *)v11 setRemovalBlocks:v10];

  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, v8, 8);
    objc_setProperty_nonatomic_copy(v11, v13, v9, 16);
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

- (id)labeledValueForContact:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *MEMORY[0x1E6996568];
    v5 = [a1 identifier];
    LOBYTE(v4) = (*(v4 + 16))(v4, v5);

    if (v4)
    {
      a1 = 0;
    }

    else
    {
      objc_opt_class();
      v7 = [(CNContactProperty *)a1 primitiveValue];
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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
      v10[4] = a1;
      a1 = [v9 _cn_firstObjectPassingTest:v10];
    }
  }

  return a1;
}

@end