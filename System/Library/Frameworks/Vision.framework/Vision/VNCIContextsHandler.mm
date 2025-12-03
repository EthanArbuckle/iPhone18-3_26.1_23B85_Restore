@interface VNCIContextsHandler
- (id)initWithMaxCount:(void *)count metalDevice:;
- (id)waitAndGetAvailableContextReturnError:(uint64_t)error;
- (void)releaseCachedResources;
@end

@implementation VNCIContextsHandler

- (id)initWithMaxCount:(void *)count metalDevice:
{
  countCopy = count;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = VNCIContextsHandler;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, count);
      v8 = dispatch_semaphore_create(a2);
      v9 = self[2];
      self[2] = v8;

      *(self + 6) = 0;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = self[4];
      self[4] = v10;

      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = self[5];
      self[5] = v12;
    }
  }

  return self;
}

- (void)releaseCachedResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    [*(self + 32) removeAllObjects];

    os_unfair_lock_unlock((self + 24));
  }
}

- (id)waitAndGetAvailableContextReturnError:(uint64_t)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (error)
  {
    dispatch_semaphore_wait(*(error + 16), 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock((error + 24));
    if ([*(error + 32) count])
    {
      lastObject = [*(error + 32) lastObject];
      [*(error + 32) removeLastObject];
    }

    else
    {
      v3 = *(error + 8);
      v4 = MEMORY[0x1E695F620];
      v5 = *MEMORY[0x1E695F7F0];
      if (v3)
      {
        v18[0] = MEMORY[0x1E695E110];
        v6 = *MEMORY[0x1E695F830];
        v17[0] = v5;
        v17[1] = v6;
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNCIContextsHandler_MetalRegistryID_%llu", objc_msgSend(*(error + 8), "registryID")];
        v18[1] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
        v9 = [v4 contextWithMTLDevice:v3 options:v8];
      }

      else
      {
        v10 = *MEMORY[0x1E695F860];
        v19[0] = *MEMORY[0x1E695F7F0];
        v19[1] = v10;
        v20[0] = MEMORY[0x1E695E110];
        v20[1] = MEMORY[0x1E695E118];
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        v9 = [v4 contextWithOptions:v7];
      }

      v11 = [VNCIContext alloc];
      errorCopy = error;
      v13 = v9;
      if (v11)
      {
        v16.receiver = v11;
        v16.super_class = VNCIContext;
        v14 = objc_msgSendSuper2(&v16, sel_init);
        lastObject = v14;
        if (v14)
        {
          objc_storeWeak(v14 + 2, errorCopy);
          objc_storeStrong(lastObject + 1, v9);
        }
      }

      else
      {
        lastObject = 0;
      }
    }

    [*(error + 40) addObject:lastObject];
    os_unfair_lock_unlock((error + 24));
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end