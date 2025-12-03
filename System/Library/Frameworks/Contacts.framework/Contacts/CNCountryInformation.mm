@interface CNCountryInformation
- (BOOL)isEqual:(id)equal;
- (CNCountryInformation)initWithISOCountryCode:(id)code name:(id)name phoneticName:(id)phoneticName;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNCountryInformation

- (CNCountryInformation)initWithISOCountryCode:(id)code name:(id)name phoneticName:(id)phoneticName
{
  codeCopy = code;
  nameCopy = name;
  phoneticNameCopy = phoneticName;
  v20.receiver = self;
  v20.super_class = CNCountryInformation;
  v11 = [(CNCountryInformation *)&v20 init];
  if (v11)
  {
    v12 = [codeCopy copy];
    isoCountryCode = v11->_isoCountryCode;
    v11->_isoCountryCode = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [phoneticNameCopy copy];
    phoneticName = v11->_phoneticName;
    v11->_phoneticName = v16;

    v18 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32__CNCountryInformation_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CNCountryInformation_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v7 = v17;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__CNCountryInformation_isEqual___block_invoke_3;
  v12[3] = &unk_1E7412228;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(v12);
  LOBYTE(self) = [v5 isObject:v9 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, v10, 0}];

  return self;
}

uint64_t __32__CNCountryInformation_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) isoCountryCode];
  v4 = [*(a1 + 40) isoCountryCode];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __32__CNCountryInformation_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 40) name];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __32__CNCountryInformation_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) phoneticName];
  v4 = [*(a1 + 40) phoneticName];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__CNCountryInformation_hash__block_invoke;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__CNCountryInformation_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__CNCountryInformation_hash__block_invoke_3;
  v8[3] = &unk_1E7412250;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __28__CNCountryInformation_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) isoCountryCode];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __28__CNCountryInformation_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __28__CNCountryInformation_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) phoneticName];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  isoCountryCode = [(CNCountryInformation *)self isoCountryCode];
  name = [(CNCountryInformation *)self name];
  phoneticName = [(CNCountryInformation *)self phoneticName];
  v7 = [v3 descriptionForObject:self withNamesAndObjects:{@"country code", isoCountryCode, @"name", name, @"phonetic name", phoneticName, 0}];

  return v7;
}

@end