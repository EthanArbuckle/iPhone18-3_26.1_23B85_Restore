@interface AAFSerialization
+ (id)dataFromDictionary:(id)a3 ofType:(id)a4;
+ (id)dictionaryFromObject:(id)a3 ofType:(id)a4;
+ (id)instance;
+ (id)ofType:(id)a3;
+ (id)stringFromDictionary:(id)a3 ofType:(id)a4;
- (AAFSerialization)init;
- (id)serializerOfType:(id)a3;
- (void)addSerializer:(id)a3;
@end

@implementation AAFSerialization

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__AAFSerialization_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (instance__instanceToken != -1)
  {
    dispatch_once(&instance__instanceToken, block);
  }

  v2 = instance__instance;

  return v2;
}

+ (id)dictionaryFromObject:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = [a1 ofType:a4];
  v8 = [v7 dictionaryFromObject:v6];

  return v8;
}

+ (id)dataFromDictionary:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = [a1 ofType:a4];
  v8 = [v7 dataFromDictionary:v6];

  return v8;
}

+ (id)stringFromDictionary:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = [a1 ofType:a4];
  v8 = [v7 stringFromDictionary:v6];

  return v8;
}

+ (id)ofType:(id)a3
{
  v4 = a3;
  v5 = [a1 instance];
  v6 = [v5 serializerOfType:v4];

  return v6;
}

uint64_t __28__AAFSerialization_instance__block_invoke(uint64_t a1)
{
  instance__instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (AAFSerialization)init
{
  v8.receiver = self;
  v8.super_class = AAFSerialization;
  v2 = [(AAFSerialization *)&v8 init];
  v3 = v2;
  if (v2)
  {
    serializersByType = v2->_serializersByType;
    v2->_serializersByType = MEMORY[0x1E695E0F8];

    v5 = objc_opt_new();
    [(AAFSerialization *)v3 addSerializer:v5];

    v6 = objc_opt_new();
    [(AAFSerialization *)v3 addSerializer:v6];
  }

  return v3;
}

- (id)serializerOfType:(id)a3
{
  serializersByType = self->_serializersByType;
  v4 = [a3 lowercaseString];
  v5 = [(NSDictionary *)serializersByType valueForKey:v4];

  return v5;
}

- (void)addSerializer:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mediaTypes];
  if ([v5 aaf_hasObjects])
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) lowercaseString];
          [v6 setValue:v4 forKey:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [(NSDictionary *)self->_serializersByType aaf_dictionaryByAddingEntriesFromDictionary:v6];
    serializersByType = self->_serializersByType;
    self->_serializersByType = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end