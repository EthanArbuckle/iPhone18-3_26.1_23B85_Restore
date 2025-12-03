@interface CNTestSmartFetcher
- (BOOL)isEqual:(id)equal;
- (CNTestSmartFetcher)initWithCoder:(id)coder;
- (CNTestSmartFetcher)initWithRequiredKeys:(id)keys optionalKeys:(id)optionalKeys;
- (id)_cn_optionalKeys;
- (id)_cn_requiredKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)keys;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNTestSmartFetcher

- (CNTestSmartFetcher)initWithRequiredKeys:(id)keys optionalKeys:(id)optionalKeys
{
  keysCopy = keys;
  optionalKeysCopy = optionalKeys;
  v15.receiver = self;
  v15.super_class = CNTestSmartFetcher;
  v8 = [(CNTestSmartFetcher *)&v15 init];
  if (v8)
  {
    v9 = [keysCopy copy];
    requiredKeys = v8->_requiredKeys;
    v8->_requiredKeys = v9;

    v11 = [optionalKeysCopy copy];
    optionalKeys = v8->_optionalKeys;
    v8->_optionalKeys = v11;

    v13 = v8;
  }

  return v8;
}

- (CNTestSmartFetcher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CNTestSmartFetcher;
  v5 = [(CNTestSmartFetcher *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"requiredKeys"];
    requiredKeys = v5->_requiredKeys;
    v5->_requiredKeys = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"optionalKeys"];
    optionalKeys = v5->_optionalKeys;
    v5->_optionalKeys = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requiredKeys = self->_requiredKeys;
  coderCopy = coder;
  [coderCopy encodeObject:requiredKeys forKey:@"requiredKeys"];
  [coderCopy encodeObject:self->_optionalKeys forKey:@"optionalKeys"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNTestSmartFetcher alloc];
  requiredKeys = [(CNTestSmartFetcher *)self requiredKeys];
  optionalKeys = [(CNTestSmartFetcher *)self optionalKeys];
  v7 = [(CNTestSmartFetcher *)v4 initWithRequiredKeys:requiredKeys optionalKeys:optionalKeys];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__CNTestSmartFetcher_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __30__CNTestSmartFetcher_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  selfCopy = self;
  v15 = equalCopy;
  v7 = equalCopy;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, selfCopy}];

  return self;
}

uint64_t __30__CNTestSmartFetcher_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) requiredKeys];
  v4 = [*(a1 + 40) requiredKeys];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __30__CNTestSmartFetcher_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) optionalKeys];
  v4 = [*(a1 + 40) optionalKeys];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CNTestSmartFetcher_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__CNTestSmartFetcher_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __26__CNTestSmartFetcher_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) requiredKeys];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNTestSmartFetcher_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) optionalKeys];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)keys
{
  v27 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  requiredKeys = [(CNTestSmartFetcher *)self requiredKeys];
  v6 = [requiredKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(requiredKeys);
        }

        v10 = keysCopy[2](keysCopy, *(*(&v21 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [requiredKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  optionalKeys = [(CNTestSmartFetcher *)self optionalKeys];
  v12 = [optionalKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(optionalKeys);
        }

        v16 = keysCopy[2](keysCopy, *(*(&v17 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [optionalKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)_cn_requiredKeys
{
  requiredKeys = [(CNTestSmartFetcher *)self requiredKeys];
  v3 = [CNContactKeyVector keyVectorWithKeys:requiredKeys];

  return v3;
}

- (id)_cn_optionalKeys
{
  optionalKeys = [(CNTestSmartFetcher *)self optionalKeys];
  v3 = [CNContactKeyVector keyVectorWithKeys:optionalKeys];

  return v3;
}

@end