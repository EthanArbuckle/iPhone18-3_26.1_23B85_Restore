@interface AVTAggregateCacheableResource
- (AVTAggregateCacheableResource)initWithCacheableResources:(id)a3;
- (BOOL)requiresEncryption;
- (id)identifierForScope:(id)a3 persistent:(BOOL)a4;
@end

@implementation AVTAggregateCacheableResource

- (AVTAggregateCacheableResource)initWithCacheableResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAggregateCacheableResource;
  v6 = [(AVTAggregateCacheableResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheableResources, a3);
  }

  return v7;
}

- (BOOL)requiresEncryption
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AVTAggregateCacheableResource *)self cacheableResources];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) requiresEncryption])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)identifierForScope:(id)a3 persistent:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = [MEMORY[0x1E696AD60] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(AVTAggregateCacheableResource *)self cacheableResources];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = [v12 persistentIdentifierForScope:0];
        }

        else
        {
          v13 = [v12 volatileIdentifierForScope:0];
        }

        v14 = v13;
        [v6 appendFormat:@"%@_", v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ([v6 length])
  {
    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  }

  if (v18)
  {
    v15 = [v18 cacheableResourceAssociatedIdentifier];
    [v6 appendString:v15];
  }

  v16 = [v6 copy];

  return v16;
}

@end