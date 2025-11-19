@interface NSCloudKitMirroringRequest
+ (id)allRequestClasses;
- (NSCloudKitMirroringRequest)initWithActivity:(id)a3 options:(id)a4 completionBlock:(id)a5;
- (NSCloudKitMirroringRequest)initWithOptions:(id)a3 completionBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_invokeContainerBlocksWithResult:(uint64_t)result;
- (uint64_t)invokeCompletionBlockWithResult:(uint64_t)result;
- (void)addContainerBlock:(uint64_t)a1;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringRequest

- (void)dealloc
{
  self->_requestIdentifier = 0;

  self->_options = 0;
  self->_requestCompletionBlock = 0;

  self->_schedulerActivity = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (NSCloudKitMirroringRequest)initWithOptions:(id)a3 completionBlock:(id)a4
{
  v10.receiver = self;
  v10.super_class = NSCloudKitMirroringRequest;
  v6 = [(NSCloudKitMirroringRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = [a3 copy];
    }

    else
    {
      v8 = [(NSCloudKitMirroringRequest *)v6 createDefaultOptions];
    }

    v7->_options = v8;
    v7->_requestIdentifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v7->_requestCompletionBlock = [a4 copy];
    v7->_deferredByBackgroundTimeout = 0;
    v7->_containerBlocks = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v7;
}

- (NSCloudKitMirroringRequest)initWithActivity:(id)a3 options:(id)a4 completionBlock:(id)a5
{
  v6 = [(NSCloudKitMirroringRequest *)self initWithOptions:a4 completionBlock:a5];
  if (v6)
  {
    v6->_schedulerActivity = a3;
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v5), self, self->_requestIdentifier];
  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringRequest;
  v4 = [(NSPersistentStoreRequest *)&v6 copyWithZone:a3];
  v4[2] = self->_requestIdentifier;
  v4[3] = self->_options;
  v4[4] = self->_requestCompletionBlock;
  v4[8] = self->_schedulerActivity;
  *(v4 + 56) = self->_isContainerRequest;
  v4[6] = [(NSMutableArray *)self->_containerBlocks mutableCopy];
  *(v4 + 40) = self->_deferredByBackgroundTimeout;
  return v4;
}

- (uint64_t)invokeCompletionBlockWithResult:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, a2);
    }

    return [NSCloudKitMirroringRequest _invokeContainerBlocksWithResult:v2];
  }

  return result;
}

- (uint64_t)_invokeContainerBlocksWithResult:(uint64_t)result
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(result + 48);
    result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      do
      {
        v4 = 0;
        do
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          (*(*(*(&v6 + 1) + 8 * v4++) + 16))();
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addContainerBlock:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [a2 copy];
    [*(a1 + 48) addObject:v5];

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)allRequestClasses
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:11];
  result = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end