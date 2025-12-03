@interface CNAggregateKeyDescriptor
+ (id)keyDescriptorWithKeyDescriptors:(id)descriptors description:(id)description;
- (BOOL)isEqual:(id)equal;
- (CNAggregateKeyDescriptor)initWithCoder:(id)coder;
- (CNAggregateKeyDescriptor)initWithKeyDescriptors:(id)descriptors description:(id)description;
- (NSString)description;
- (id)_cn_optionalKeys;
- (id)_cn_recursiveDescriptionWithPrefix:(id)prefix;
- (id)_cn_requiredKeys;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)keys;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNAggregateKeyDescriptor

- (id)_cn_requiredKeys
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requiredKeys = selfCopy->_requiredKeys;
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
    keyDescriptors = [(CNAggregateKeyDescriptor *)selfCopy keyDescriptors];
    v7 = [keyDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(keyDescriptors);
          }

          _cn_requiredKeys = [*(*(&v14 + 1) + 8 * i) _cn_requiredKeys];
          [v5 unionKeyVector:_cn_requiredKeys];
        }

        v7 = [keyDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v5 copy];
    v12 = selfCopy->_requiredKeys;
    selfCopy->_requiredKeys = v11;

    v4 = selfCopy->_requiredKeys;
  }

  objc_sync_exit(selfCopy);

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
  keyDescriptors = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v5 = [keyDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyDescriptors);
        }

        _cn_optionalKeys = [*(*(&v12 + 1) + 8 * i) _cn_optionalKeys];
        [v3 unionKeyVector:_cn_optionalKeys];
      }

      v6 = [keyDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  privateDescription = [(CNAggregateKeyDescriptor *)self privateDescription];
  v5 = [v3 appendName:@"kind" object:privateDescription];

  unauthorizedKeys = [(CNAggregateKeyDescriptor *)self unauthorizedKeys];

  if (unauthorizedKeys)
  {
    unauthorizedKeys2 = [(CNAggregateKeyDescriptor *)self unauthorizedKeys];
    v8 = [v3 appendName:@"unauthorized keys" object:unauthorizedKeys2];
  }

  build = [v3 build];

  return build;
}

+ (id)keyDescriptorWithKeyDescriptors:(id)descriptors description:(id)description
{
  descriptionCopy = description;
  descriptorsCopy = descriptors;
  v8 = [[self alloc] initWithKeyDescriptors:descriptorsCopy description:descriptionCopy];

  return v8;
}

- (CNAggregateKeyDescriptor)initWithKeyDescriptors:(id)descriptors description:(id)description
{
  descriptorsCopy = descriptors;
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = CNAggregateKeyDescriptor;
  v8 = [(CNAggregateKeyDescriptor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CNAggregateKeyDescriptor *)v8 setKeyDescriptors:descriptorsCopy];
    [(CNAggregateKeyDescriptor *)v9 setPrivateDescription:descriptionCopy];
    v10 = v9;
  }

  return v9;
}

- (CNAggregateKeyDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CNAggregateKeyDescriptor;
  v5 = [(CNAggregateKeyDescriptor *)&v15 init];
  if (v5)
  {
    v6 = +[CNSecureCodingClassSets keyDescriptorClasses];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_keyDescriptors"];
    v8 = [v7 copy];
    keyDescriptors = v5->_keyDescriptors;
    v5->_keyDescriptors = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_privateDescription"];
    v11 = [v10 copy];
    privateDescription = v5->_privateDescription;
    v5->_privateDescription = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  keyDescriptors = self->_keyDescriptors;
  coderCopy = coder;
  [coderCopy encodeObject:keyDescriptors forKey:@"_keyDescriptors"];
  [coderCopy encodeObject:self->_privateDescription forKey:@"_privateDescription"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__CNAggregateKeyDescriptor_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __36__CNAggregateKeyDescriptor_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  selfCopy = self;
  v15 = equalCopy;
  v7 = equalCopy;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, selfCopy}];

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

- (id)_cn_recursiveDescriptionWithPrefix:(id)prefix
{
  v24 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:prefixCopy];
  v6 = [(CNAggregateKeyDescriptor *)self description];
  [string appendString:v6];

  [string appendString:@"\n"];
  v18 = prefixCopy;
  v7 = [prefixCopy stringByAppendingString:@"\t"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keyDescriptors = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v9 = [keyDescriptors countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(keyDescriptors);
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

        [string appendString:v14];
        [string appendString:@"\n"];
      }

      v10 = [keyDescriptors countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [string copy];

  return v16;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)keys
{
  v15 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyDescriptors = [(CNAggregateKeyDescriptor *)self keyDescriptors];
  v6 = [keyDescriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyDescriptors);
        }

        [*(*(&v10 + 1) + 8 * v9++) _cn_executeGetterForRepresentedKeys:keysCopy];
      }

      while (v7 != v9);
      v7 = [keyDescriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end