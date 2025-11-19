@interface CNAggregateKeyDescriptor
+ (id)keyDescriptorWithKeyDescriptors:(id)a3 description:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNAggregateKeyDescriptor)initWithCoder:(id)a3;
- (CNAggregateKeyDescriptor)initWithKeyDescriptors:(id)a3 description:(id)a4;
- (NSString)description;
- (id)_cn_optionalKeys;
- (id)_cn_recursiveDescriptionWithPrefix:(id)a3;
- (id)_cn_requiredKeys;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNAggregateKeyDescriptor

- (id)_cn_requiredKeys
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  requiredKeys = v2->_requiredKeys;
  if (requiredKeys)
  {
    v4 = requiredKeys;
  }

  else
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CNAggregateKeyDescriptor *)v2 keyDescriptors];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) _cn_requiredKeys];
          [v5 unionKeyVector:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v5 copy];
    v12 = v2->_requiredKeys;
    v2->_requiredKeys = v11;

    v4 = v2->_requiredKeys;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)_cn_optionalKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) _cn_optionalKeys];
        [v3 unionKeyVector:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CNAggregateKeyDescriptor_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CNAggregateKeyDescriptor_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __32__CNAggregateKeyDescriptor_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) keyDescriptors];
  v3 = [v1 arrayHash:v2];

  return v3;
}

uint64_t __32__CNAggregateKeyDescriptor_hash__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) privateDescription];
  v2 = [v1 hash];

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNAggregateKeyDescriptor *)self privateDescription];
  v5 = [v3 appendName:@"kind" object:v4];

  v6 = [(CNAggregateKeyDescriptor *)self unauthorizedKeys];

  if (v6)
  {
    v7 = [(CNAggregateKeyDescriptor *)self unauthorizedKeys];
    v8 = [v3 appendName:@"unauthorized keys" object:v7];
  }

  v9 = [v3 build];

  return v9;
}

+ (id)keyDescriptorWithKeyDescriptors:(id)a3 description:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKeyDescriptors:v7 description:v6];

  return v8;
}

- (CNAggregateKeyDescriptor)initWithKeyDescriptors:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNAggregateKeyDescriptor;
  v8 = [(CNAggregateKeyDescriptor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CNAggregateKeyDescriptor *)v8 setKeyDescriptors:v6];
    [(CNAggregateKeyDescriptor *)v9 setPrivateDescription:v7];
    v10 = v9;
  }

  return v9;
}

- (CNAggregateKeyDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CNAggregateKeyDescriptor;
  v5 = [(CNAggregateKeyDescriptor *)&v15 init];
  if (v5)
  {
    v6 = +[CNSecureCodingClassSets keyDescriptorClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_keyDescriptors"];
    v8 = [v7 copy];
    keyDescriptors = v5->_keyDescriptors;
    v5->_keyDescriptors = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_privateDescription"];
    v11 = [v10 copy];
    privateDescription = v5->_privateDescription;
    v5->_privateDescription = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  keyDescriptors = self->_keyDescriptors;
  v5 = a3;
  [v5 encodeObject:keyDescriptors forKey:@"_keyDescriptors"];
  [v5 encodeObject:self->_privateDescription forKey:@"_privateDescription"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__CNAggregateKeyDescriptor_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __36__CNAggregateKeyDescriptor_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  v14 = self;
  v15 = v4;
  v7 = v4;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, v14}];

  return self;
}

uint64_t __36__CNAggregateKeyDescriptor_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) keyDescriptors];
  if (!v3)
  {
    v1 = [*(a1 + 40) keyDescriptors];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) keyDescriptors];
  v5 = [*(a1 + 40) keyDescriptors];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t __36__CNAggregateKeyDescriptor_isEqual___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) privateDescription];
  if (!v3)
  {
    v1 = [*(a1 + 40) privateDescription];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) privateDescription];
  v5 = [*(a1 + 40) privateDescription];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (id)_cn_recursiveDescriptionWithPrefix:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  [v5 appendString:v4];
  v6 = [(CNAggregateKeyDescriptor *)self description];
  [v5 appendString:v6];

  [v5 appendString:@"\n"];
  v18 = v4;
  v7 = [v4 stringByAppendingString:@"\t"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 _cn_recursiveDescriptionWithPrefix:v7];
        }

        else
        {
          v15 = [v13 description];
          v14 = [v7 stringByAppendingString:v15];
        }

        [v5 appendString:v14];
        [v5 appendString:@"\n"];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _cn_executeGetterForRepresentedKeys:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end