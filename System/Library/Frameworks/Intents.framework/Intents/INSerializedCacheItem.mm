@interface INSerializedCacheItem
+ (void)deserializeCacheItem:(id)item completion:(id)completion;
+ (void)deserializeCacheItems:(id)items completion:(id)completion;
+ (void)serializeCacheableObjects:(id)objects completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (INSerializedCacheItem)initWithCoder:(id)coder;
- (INSerializedCacheItem)initWithType:(int64_t)type identifier:(id)identifier payload:(id)payload;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSerializedCacheItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = INSerializedCacheItem;
  v4 = [(INSerializedCacheItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {type = %zd, identifier = %@, payload = %@}", v4, self->_type, self->_identifier, self->_payload];

  return v5;
}

- (INSerializedCacheItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"payload"];

  v15 = [(INSerializedCacheItem *)self initWithType:v5 identifier:v6 payload:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = 0;
      if (self->_type == v5->_type)
      {
        identifier = self->_identifier;
        if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
        {
          payload = self->_payload;
          if (payload == v5->_payload || [(NSDictionary *)payload isEqual:?])
          {
            v8 = 1;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_identifier hash];
  v6 = v5 ^ [(NSDictionary *)self->_payload hash];

  return v6 ^ v4;
}

- (INSerializedCacheItem)initWithType:(int64_t)type identifier:(id)identifier payload:(id)payload
{
  identifierCopy = identifier;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = INSerializedCacheItem;
  v10 = [(INSerializedCacheItem *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [payloadCopy copy];
    payload = v11->_payload;
    v11->_payload = v14;
  }

  return v11;
}

+ (void)deserializeCacheItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if (completionCopy)
  {
    type = [itemCopy type];
    if (type == 1)
    {
      v8 = off_1E727B008;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_8;
      }

      v8 = 0x1E69636A8;
    }

    v9 = *v8;
    v10 = objc_opt_class();
    if (v10)
    {
      v11 = v10;
      payload = [itemCopy payload];
      identifier = [itemCopy identifier];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__INSerializedCacheItem_deserializeCacheItem_completion___block_invoke;
      v14[3] = &unk_1E72812D0;
      v15 = completionCopy;
      [v11 buildFromCachePayload:payload identifier:identifier completion:v14];

      goto LABEL_9;
    }

LABEL_8:
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_9:
}

void __57__INSerializedCacheItem_deserializeCacheItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 conformsToProtocol:&unk_1F02FF8D8];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

+ (void)deserializeCacheItems:(id)items completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      *buf = 136315394;
      v23 = "+[INSerializedCacheItem deserializeCacheItems:completion:]";
      v24 = 2048;
      v25 = [itemsCopy count];
      _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Deserializing %tu serialized cache items...", buf, 0x16u);
    }

    v9 = dispatch_group_create();
    v10 = INCacheableGetSerializationQueue();
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke;
    block[3] = &unk_1E7285658;
    v17 = itemsCopy;
    v18 = v9;
    v19 = v11;
    v20 = v10;
    v21 = completionCopy;
    v12 = v10;
    v13 = v11;
    v14 = v9;
    dispatch_async(v12, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        dispatch_group_enter(*(a1 + 40));
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke_2;
        v15[3] = &unk_1E72812A8;
        v16 = *(a1 + 48);
        v17 = v6;
        v18 = *(a1 + 40);
        [INSerializedCacheItem deserializeCacheItem:v6 completion:v15];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  v7 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke_7;
  block[3] = &unk_1E72858F0;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  dispatch_group_notify(v8, v7, block);

  v9 = *MEMORY[0x1E69E9840];
}

void __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v7 = 136315650;
      v8 = "+[INSerializedCacheItem deserializeCacheItems:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Deserialized %@ to %@", &v7, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v6 = *MEMORY[0x1E69E9840];
}

void __58__INSerializedCacheItem_deserializeCacheItems_completion___block_invoke_7(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) count];
    v10 = 136315650;
    v11 = "+[INSerializedCacheItem deserializeCacheItems:completion:]_block_invoke";
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Deserialized %tu serialized cache items to %tu cacheable objects.", &v10, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) copy];
  (*(v7 + 16))(v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)serializeCacheableObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = dispatch_group_create();
    v8 = INCacheableGetSerializationQueue();
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke;
    block[3] = &unk_1E7285658;
    v14 = objectsCopy;
    v15 = v7;
    v16 = v9;
    v17 = v8;
    v18 = completionCopy;
    v10 = v8;
    v11 = v9;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        dispatch_group_enter(*(a1 + 40));
        v8 = [v7 cacheIdentifier];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke_2;
        v17[3] = &unk_1E7281280;
        v17[4] = v7;
        v18 = v8;
        v19 = *(a1 + 48);
        v20 = *(a1 + 40);
        v9 = v8;
        [v7 generateCachePayloadWithCompletion:v17];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke_4;
  block[3] = &unk_1E72858F0;
  v11 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  dispatch_group_notify(v11, v10, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = 2;
  }

  v7 = [[INSerializedCacheItem alloc] initWithType:v5 identifier:*(a1 + 40) payload:v3];
  [*(a1 + 48) addObject:v7];
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v11 = 136315650;
    v12 = "+[INSerializedCacheItem serializeCacheableObjects:completion:]_block_invoke_2";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Serialized cacheableObject %@ to %@", &v11, 0x20u);
  }

LABEL_8:
  dispatch_group_leave(*(a1 + 56));

  v10 = *MEMORY[0x1E69E9840];
}

void __62__INSerializedCacheItem_serializeCacheableObjects_completion___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) count];
    v10 = 136315650;
    v11 = "+[INSerializedCacheItem serializeCacheableObjects:completion:]_block_invoke";
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Serialized %tu cacheable objects to %tu serialized cache items.", &v10, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) copy];
  (*(v7 + 16))(v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

@end