@interface CNContainerPermissions
- (BOOL)isEqual:(id)a3;
- (CNContainerPermissions)initWithCanCreateContacts:(BOOL)a3 canDeleteContacts:(BOOL)a4 canCreateGroups:(BOOL)a5;
- (CNContainerPermissions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContainerPermissions

- (CNContainerPermissions)initWithCanCreateContacts:(BOOL)a3 canDeleteContacts:(BOOL)a4 canCreateGroups:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = CNContainerPermissions;
  v8 = [(CNContainerPermissions *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_canCreateContacts = a3;
    v8->_canDeleteContacts = a4;
    v8->_canCreateGroups = a5;
    v10 = v8;
  }

  return v9;
}

- (CNContainerPermissions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNContainerPermissions *)self init];
  if (v5)
  {
    v5->_canCreateContacts = [v4 decodeIntegerForKey:@"canCreateContacts"] != 0;
    v5->_canDeleteContacts = [v4 decodeIntegerForKey:@"canDeleteContacts"] != 0;
    v5->_canCreateGroups = [v4 decodeIntegerForKey:@"canCreateGroups"] != 0;
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  canCreateContacts = self->_canCreateContacts;
  v5 = a3;
  [v5 encodeBool:canCreateContacts forKey:@"canCreateContacts"];
  [v5 encodeBool:self->_canDeleteContacts forKey:@"canDeleteContacts"];
  [v5 encodeBool:self->_canCreateGroups forKey:@"canCreateGroups"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__CNContainerPermissions_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__CNContainerPermissions_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v7 = v17;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__CNContainerPermissions_isEqual___block_invoke_3;
  v12[3] = &unk_1E7412228;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(v12);
  LOBYTE(self) = [v5 isObject:v9 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, v10, 0}];

  return self;
}

uint64_t __34__CNContainerPermissions_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) canCreateContacts];
  v4 = [*(a1 + 40) canCreateContacts];

  return [v2 isBool:v3 equalToOther:v4];
}

uint64_t __34__CNContainerPermissions_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) canDeleteContacts];
  v4 = [*(a1 + 40) canCreateGroups];

  return [v2 isBool:v3 equalToOther:v4];
}

uint64_t __34__CNContainerPermissions_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) canCreateGroups];
  v4 = [*(a1 + 40) canCreateGroups];

  return [v2 isBool:v3 equalToOther:v4];
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__CNContainerPermissions_hash__block_invoke;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__CNContainerPermissions_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__CNContainerPermissions_hash__block_invoke_3;
  v8[3] = &unk_1E7412250;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __30__CNContainerPermissions_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) canCreateContacts];

  return [v1 BOOLHash:v2];
}

uint64_t __30__CNContainerPermissions_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) canDeleteContacts];

  return [v1 BOOLHash:v2];
}

uint64_t __30__CNContainerPermissions_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) canCreateGroups];

  return [v1 BOOLHash:v2];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"canCreateContacts" BOOLValue:self->_canCreateContacts];
  v5 = [v3 appendName:@"canDeleteContacts" BOOLValue:self->_canDeleteContacts];
  v6 = [v3 appendName:@"canCreateGroups" BOOLValue:self->_canCreateGroups];
  v7 = [v3 build];

  return v7;
}

@end