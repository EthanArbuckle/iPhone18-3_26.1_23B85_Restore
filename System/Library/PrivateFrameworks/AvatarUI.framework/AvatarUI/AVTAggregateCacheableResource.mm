@interface AVTAggregateCacheableResource
- (AVTAggregateCacheableResource)initWithCacheableResources:(id)resources;
- (BOOL)requiresEncryption;
- (id)identifierForScope:(id)scope persistent:(BOOL)persistent;
@end

@implementation AVTAggregateCacheableResource

- (AVTAggregateCacheableResource)initWithCacheableResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = AVTAggregateCacheableResource;
  v6 = [(AVTAggregateCacheableResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheableResources, resources);
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
  cacheableResources = [(AVTAggregateCacheableResource *)self cacheableResources];
  v3 = [cacheableResources countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(cacheableResources);
        }

        if ([*(*(&v7 + 1) + 8 * i) requiresEncryption])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [cacheableResources countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (id)identifierForScope:(id)scope persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v24 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  string = [MEMORY[0x1E696AD60] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  cacheableResources = [(AVTAggregateCacheableResource *)self cacheableResources];
  v8 = [cacheableResources countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(cacheableResources);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (persistentCopy && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = [v12 persistentIdentifierForScope:0];
        }

        else
        {
          v13 = [v12 volatileIdentifierForScope:0];
        }

        v14 = v13;
        [string appendFormat:@"%@_", v13];
      }

      v9 = [cacheableResources countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ([string length])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 1, 1}];
  }

  if (scopeCopy)
  {
    cacheableResourceAssociatedIdentifier = [scopeCopy cacheableResourceAssociatedIdentifier];
    [string appendString:cacheableResourceAssociatedIdentifier];
  }

  v16 = [string copy];

  return v16;
}

@end