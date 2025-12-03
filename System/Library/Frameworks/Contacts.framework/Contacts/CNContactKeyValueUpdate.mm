@interface CNContactKeyValueUpdate
- (BOOL)applyToABPerson:(void *)person withPropertiesContext:(id)context logger:(id)logger error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CNContactKeyValueUpdate)initWithProperty:(id)property value:(id)value;
- (id)posterDataChangeRequestsWithContactIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)applyToMutableContact:(id)contact withIdentifierMap:(id)map;
@end

@implementation CNContactKeyValueUpdate

- (id)posterDataChangeRequestsWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  property = [(CNContactKeyValueUpdate *)self property];
  value = [(CNContactKeyValueUpdate *)self value];
  v7 = [property posterDataChangeRequestsForValue:value contactIdentifier:identifierCopy];

  return v7;
}

- (BOOL)applyToABPerson:(void *)person withPropertiesContext:(id)context logger:(id)logger error:(id *)error
{
  loggerCopy = logger;
  value = self->_value;
  property = self->_property;
  contextCopy = context;
  v14 = [(CNPropertyDescription *)property key];
  [loggerCopy applyContactUpdateOfKind:"single value" value:value property:v14];

  property = [(CNContactKeyValueUpdate *)self property];
  value = [(CNContactKeyValueUpdate *)self value];
  v17 = [property setCNValue:value onABPerson:person withDependentPropertiesContext:contextCopy error:error];

  if (!v17 || error && *error)
  {
    v18 = self->_value;
    v19 = [(CNPropertyDescription *)self->_property key];
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    [loggerCopy failedToApplyContactUpdateOfKind:"single value" value:v18 property:v19 error:v20];
  }

  return v17;
}

- (CNContactKeyValueUpdate)initWithProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNContactKeyValueUpdate;
  v9 = [(CNContactKeyValueUpdate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, property);
    objc_storeStrong(&v10->_value, value);
    v11 = v10;
  }

  return v10;
}

- (void)applyToMutableContact:(id)contact withIdentifierMap:(id)map
{
  value = self->_value;
  property = self->_property;
  contactCopy = contact;
  v7 = [(CNPropertyDescription *)property key];
  [contactCopy setValue:value forKey:v7];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__CNContactKeyValueUpdate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __35__CNContactKeyValueUpdate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = equalCopy;
  v6 = equalCopy;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

  return self;
}

uint64_t __35__CNContactKeyValueUpdate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) property];
  v4 = [*(a1 + 40) property];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35__CNContactKeyValueUpdate_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) value];
  v4 = [*(a1 + 40) value];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__CNContactKeyValueUpdate_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__CNContactKeyValueUpdate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __31__CNContactKeyValueUpdate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) property];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __31__CNContactKeyValueUpdate_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) value];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end