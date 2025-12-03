@interface CNPerContactPropertyKeyDescriptor
- (BOOL)isEqual:(id)equal;
- (CNPerContactPropertyKeyDescriptor)init;
- (CNPerContactPropertyKeyDescriptor)initWithCoder:(id)coder;
- (id)_cn_optionalKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)keys;
@end

@implementation CNPerContactPropertyKeyDescriptor

- (CNPerContactPropertyKeyDescriptor)init
{
  v6.receiver = self;
  v6.super_class = CNPerContactPropertyKeyDescriptor;
  v2 = [(CNPerContactPropertyKeyDescriptor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    propertiesByIdentifier = v2->_propertiesByIdentifier;
    v2->_propertiesByIdentifier = v3;
  }

  return v2;
}

- (CNPerContactPropertyKeyDescriptor)initWithCoder:(id)coder
{
  if (self)
  {
    v4 = MEMORY[0x1E695DFD8];
    coderCopy = coder;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"propertiesByIdentifier"];

    propertiesByIdentifier = self->_propertiesByIdentifier;
    self->_propertiesByIdentifier = v9;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CNPerContactPropertyKeyDescriptor_isEqual___block_invoke;
  v9[3] = &unk_1E7412228;
  v9[4] = self;
  v10 = equalCopy;
  v7 = equalCopy;
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v9, 0}];

  return self;
}

uint64_t __45__CNPerContactPropertyKeyDescriptor_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) propertiesByIdentifier];
  if (!v3)
  {
    v1 = [*(a1 + 40) propertiesByIdentifier];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) propertiesByIdentifier];
  v5 = [*(a1 + 40) propertiesByIdentifier];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CNPerContactPropertyKeyDescriptor_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __41__CNPerContactPropertyKeyDescriptor_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) propertiesByIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)keys
{
  v19 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = keysCopy[2](keysCopy, @"identifier");
  v6 = [(NSMutableDictionary *)self->_propertiesByIdentifier objectForKey:v5];
  if (!v6)
  {
    v7 = keysCopy[2](keysCopy, @"linkIdentifier");
    v6 = [(NSMutableDictionary *)self->_propertiesByIdentifier objectForKey:v7];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = (keysCopy[2])(keysCopy, *(*(&v14 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)_cn_optionalKeys
{
  allValues = [(NSMutableDictionary *)self->_propertiesByIdentifier allValues];
  _cn_flatten = [allValues _cn_flatten];
  v4 = [CNContactKeyVector keyVectorWithKeys:_cn_flatten];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNPerContactPropertyKeyDescriptor);
  v5 = [(NSMutableDictionary *)self->_propertiesByIdentifier mutableCopy];
  [(CNPerContactPropertyKeyDescriptor *)v4 setPropertiesByIdentifier:v5];

  return v4;
}

@end