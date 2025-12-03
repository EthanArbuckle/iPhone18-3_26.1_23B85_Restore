@interface PHMemoryPropertySet
+ (NSString)propertySetName;
+ (id)entityName;
+ (id)keyPathFromPrimaryObject;
+ (id)keyPathToPrimaryObject;
+ (id)propertiesToFetch;
+ (id)propertiesToPrefetch;
- (PHMemory)memory;
- (PHMemoryPropertySet)initWithFetchDictionary:(id)dictionary memory:(id)memory prefetched:(BOOL)prefetched;
@end

@implementation PHMemoryPropertySet

- (PHMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

- (PHMemoryPropertySet)initWithFetchDictionary:(id)dictionary memory:(id)memory prefetched:(BOOL)prefetched
{
  dictionaryCopy = dictionary;
  memoryCopy = memory;
  selfCopy = self;
  v10 = PLAbstractMethodException();
  objc_exception_throw(v10);
}

+ (id)propertiesToPrefetch
{
  pl_dispatch_once();
  v2 = propertiesToPrefetch_propertiesToPrefetch;

  return v2;
}

void __43__PHMemoryPropertySet_propertiesToPrefetch__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) propertiesToFetch];
  v4 = [*(a1 + 32) keyPathFromPrimaryObject];

  if (v4)
  {
    v5 = [*(a1 + 32) keyPathFromPrimaryObject];
    v6 = [v5 stringByAppendingString:@"."];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to create a property path '%@' on '%@' with an unexpected property type: %@", v12, *(a1 + 32), objc_opt_class()];
            v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
            objc_exception_throw(v16);
          }

          v13 = [v6 stringByAppendingString:v12];

          [v2 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];
    v15 = propertiesToPrefetch_propertiesToPrefetch;
    propertiesToPrefetch_propertiesToPrefetch = v14;

    v3 = v17;
  }

  else
  {
    objc_storeStrong(&propertiesToPrefetch_propertiesToPrefetch, v3);
  }
}

+ (id)keyPathToPrimaryObject
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)keyPathFromPrimaryObject
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)entityName
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)propertiesToFetch
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (NSString)propertySetName
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end