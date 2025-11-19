@interface PHEntityKeyMap
+ (id)transposePropertyKeysByEntityKey:(id)a3;
+ (void)assertPropertyKey:(id)a3 doesNotExistForEntityKey:(id)a4 inEntityKeysByProperty:(id)a5;
- (PHEntityKeyMap)initWithPropertyKeysByEntityKey:(id)a3;
- (id)propertyKeyForEntityKey:(id)a3;
@end

@implementation PHEntityKeyMap

- (id)propertyKeyForEntityKey:(id)a3
{
  v3 = [(NSDictionary *)self->_propertyKeysByEntityKey objectForKeyedSubscript:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (PHEntityKeyMap)initWithPropertyKeysByEntityKey:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PHEntityKeyMap;
  v5 = [(PHEntityKeyMap *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    propertyKeysByEntityKey = v5->_propertyKeysByEntityKey;
    v5->_propertyKeysByEntityKey = v6;

    v8 = [objc_opt_class() transposePropertyKeysByEntityKey:v5->_propertyKeysByEntityKey];
    entityKeysByPropertyKey = v5->_entityKeysByPropertyKey;
    v5->_entityKeysByPropertyKey = v8;

    v10 = v5;
  }

  return v5;
}

+ (void)assertPropertyKey:(id)a3 doesNotExistForEntityKey:(id)a4 inEntityKeysByProperty:(id)a5
{
  v13[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:v11];
  if (v9)
  {
    v12[0] = @"existingEntityKey";
    v12[1] = @"entityKey";
    v13[0] = v9;
    v13[1] = v7;
    v12[2] = @"propertyKey";
    v13[2] = v11;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Duplicate property key" userInfo:objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v10);
  }
}

+ (id)transposePropertyKeysByEntityKey:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PHEntityKeyMap_transposePropertyKeysByEntityKey___block_invoke;
  v9[3] = &unk_1E75A4780;
  v11 = a1;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __51__PHEntityKeyMap_transposePropertyKeysByEntityKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [*(a1 + 40) assertPropertyKey:v11 doesNotExistForEntityKey:v5 inEntityKeysByProperty:*(a1 + 32)];
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end