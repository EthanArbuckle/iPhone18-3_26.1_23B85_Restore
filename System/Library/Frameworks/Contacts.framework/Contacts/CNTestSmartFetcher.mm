@interface CNTestSmartFetcher
- (BOOL)isEqual:(id)a3;
- (CNTestSmartFetcher)initWithCoder:(id)a3;
- (CNTestSmartFetcher)initWithRequiredKeys:(id)a3 optionalKeys:(id)a4;
- (id)_cn_optionalKeys;
- (id)_cn_requiredKeys;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNTestSmartFetcher

- (CNTestSmartFetcher)initWithRequiredKeys:(id)a3 optionalKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNTestSmartFetcher;
  v8 = [(CNTestSmartFetcher *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    requiredKeys = v8->_requiredKeys;
    v8->_requiredKeys = v9;

    v11 = [v7 copy];
    optionalKeys = v8->_optionalKeys;
    v8->_optionalKeys = v11;

    v13 = v8;
  }

  return v8;
}

- (CNTestSmartFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNTestSmartFetcher;
  v5 = [(CNTestSmartFetcher *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"requiredKeys"];
    requiredKeys = v5->_requiredKeys;
    v5->_requiredKeys = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"optionalKeys"];
    optionalKeys = v5->_optionalKeys;
    v5->_optionalKeys = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requiredKeys = self->_requiredKeys;
  v5 = a3;
  [v5 encodeObject:requiredKeys forKey:@"requiredKeys"];
  [v5 encodeObject:self->_optionalKeys forKey:@"optionalKeys"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNTestSmartFetcher alloc];
  v5 = [(CNTestSmartFetcher *)self requiredKeys];
  v6 = [(CNTestSmartFetcher *)self optionalKeys];
  v7 = [(CNTestSmartFetcher *)v4 initWithRequiredKeys:v5 optionalKeys:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__CNTestSmartFetcher_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __30__CNTestSmartFetcher_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  v14 = self;
  v15 = v4;
  v7 = v4;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, v14}];

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

- (void)_cn_executeGetterForRepresentedKeys:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(CNTestSmartFetcher *)self requiredKeys];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = v4[2](v4, *(*(&v21 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(CNTestSmartFetcher *)self optionalKeys];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = v4[2](v4, *(*(&v17 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)_cn_requiredKeys
{
  v2 = [(CNTestSmartFetcher *)self requiredKeys];
  v3 = [CNContactKeyVector keyVectorWithKeys:v2];

  return v3;
}

- (id)_cn_optionalKeys
{
  v2 = [(CNTestSmartFetcher *)self optionalKeys];
  v3 = [CNContactKeyVector keyVectorWithKeys:v2];

  return v3;
}

@end