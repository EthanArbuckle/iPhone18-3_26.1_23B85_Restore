@interface CNChangeHistoryLabeledValueChange
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryLabeledValueChange)initWithCoder:(id)coder;
- (CNChangeHistoryLabeledValueChange)initWithContactIdentifier:(id)identifier propertyKey:(id)key labeledValueIdentifier:(id)valueIdentifier changeType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryLabeledValueChange

- (CNChangeHistoryLabeledValueChange)initWithContactIdentifier:(id)identifier propertyKey:(id)key labeledValueIdentifier:(id)valueIdentifier changeType:(int64_t)type
{
  identifierCopy = identifier;
  keyCopy = key;
  valueIdentifierCopy = valueIdentifier;
  v22.receiver = self;
  v22.super_class = CNChangeHistoryLabeledValueChange;
  v13 = [(CNChangeHistoryLabeledValueChange *)&v22 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v14;

    v16 = [keyCopy copy];
    propertyKey = v13->_propertyKey;
    v13->_propertyKey = v16;

    v18 = [valueIdentifierCopy copy];
    labeledValueIdentifier = v13->_labeledValueIdentifier;
    v13->_labeledValueIdentifier = v18;

    v13->_changeType = type;
    v20 = v13;
  }

  return v13;
}

- (CNChangeHistoryLabeledValueChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CNChangeHistoryLabeledValueChange;
  v5 = [(CNChangeHistoryLabeledValueChange *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_propertyKey"];
    v10 = [v9 copy];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_labeledValueIdentifier"];
    v13 = [v12 copy];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v13;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"_changeType"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeObject:self->_propertyKey forKey:@"_propertyKey"];
  [coderCopy encodeObject:self->_labeledValueIdentifier forKey:@"_labeledValueIdentifier"];
  [coderCopy encodeInteger:self->_changeType forKey:@"_changeType"];
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  contactIdentifier = [(CNChangeHistoryLabeledValueChange *)self contactIdentifier];
  propertyKey = [(CNChangeHistoryLabeledValueChange *)self propertyKey];
  labeledValueIdentifier = [(CNChangeHistoryLabeledValueChange *)self labeledValueIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryLabeledValueChange changeType](self, "changeType")}];
  v8 = [v3 descriptionForObject:self withNamesAndObjects:{@"contactIdentifier", contactIdentifier, @"propertyKey", propertyKey, @"labeledValueIdentifier", labeledValueIdentifier, @"changeType", v7, 0}];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke;
  v23[3] = &unk_1E7412228;
  v23[4] = self;
  v24 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v24;
  v22 = v6;
  v7 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_3;
  v19[3] = &unk_1E7412228;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = _Block_copy(v19);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_4;
  v16 = &unk_1E7412228;
  selfCopy = self;
  v18 = v8;
  v10 = v8;
  v11 = _Block_copy(&v13);
  LOBYTE(self) = [v5 isObject:v10 memberOfSameClassAndEqualTo:self withBlocks:{v23, v7, v9, v11, 0, v13, v14, v15, v16, selfCopy}];

  return self;
}

uint64_t __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactIdentifier];
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) propertyKey];
  v4 = [*(a1 + 40) propertyKey];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) labeledValueIdentifier];
  v4 = [*(a1 + 40) labeledValueIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) changeType];
  v4 = [*(a1 + 40) changeType];

  return [v2 isInteger:v3 equalToOther:v4];
}

@end