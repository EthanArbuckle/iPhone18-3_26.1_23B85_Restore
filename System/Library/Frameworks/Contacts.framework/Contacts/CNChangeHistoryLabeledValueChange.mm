@interface CNChangeHistoryLabeledValueChange
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryLabeledValueChange)initWithCoder:(id)a3;
- (CNChangeHistoryLabeledValueChange)initWithContactIdentifier:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 changeType:(int64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryLabeledValueChange

- (CNChangeHistoryLabeledValueChange)initWithContactIdentifier:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 changeType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = CNChangeHistoryLabeledValueChange;
  v13 = [(CNChangeHistoryLabeledValueChange *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v14;

    v16 = [v11 copy];
    propertyKey = v13->_propertyKey;
    v13->_propertyKey = v16;

    v18 = [v12 copy];
    labeledValueIdentifier = v13->_labeledValueIdentifier;
    v13->_labeledValueIdentifier = v18;

    v13->_changeType = a6;
    v20 = v13;
  }

  return v13;
}

- (CNChangeHistoryLabeledValueChange)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNChangeHistoryLabeledValueChange;
  v5 = [(CNChangeHistoryLabeledValueChange *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_propertyKey"];
    v10 = [v9 copy];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_labeledValueIdentifier"];
    v13 = [v12 copy];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v13;

    v5->_changeType = [v4 decodeIntegerForKey:@"_changeType"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"_contactIdentifier"];
  [v5 encodeObject:self->_propertyKey forKey:@"_propertyKey"];
  [v5 encodeObject:self->_labeledValueIdentifier forKey:@"_labeledValueIdentifier"];
  [v5 encodeInteger:self->_changeType forKey:@"_changeType"];
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  v4 = [(CNChangeHistoryLabeledValueChange *)self contactIdentifier];
  v5 = [(CNChangeHistoryLabeledValueChange *)self propertyKey];
  v6 = [(CNChangeHistoryLabeledValueChange *)self labeledValueIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryLabeledValueChange changeType](self, "changeType")}];
  v8 = [v3 descriptionForObject:self withNamesAndObjects:{@"contactIdentifier", v4, @"propertyKey", v5, @"labeledValueIdentifier", v6, @"changeType", v7, 0}];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__CNChangeHistoryLabeledValueChange_isEqual___block_invoke;
  v23[3] = &unk_1E7412228;
  v23[4] = self;
  v24 = v4;
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
  v17 = self;
  v18 = v8;
  v10 = v8;
  v11 = _Block_copy(&v13);
  LOBYTE(self) = [v5 isObject:v10 memberOfSameClassAndEqualTo:self withBlocks:{v23, v7, v9, v11, 0, v13, v14, v15, v16, v17}];

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