@interface VNCIContextsHandler
- (id)initWithMaxCount:(void *)a3 metalDevice:;
- (id)waitAndGetAvailableContextReturnError:(uint64_t)a1;
- (void)releaseCachedResources;
@end

@implementation VNCIContextsHandler

- (id)initWithMaxCount:(void *)a3 metalDevice:
{
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = VNCIContextsHandler;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a3);
      v8 = dispatch_semaphore_create(a2);
      v9 = a1[2];
      a1[2] = v8;

      *(a1 + 6) = 0;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = a1[4];
      a1[4] = v10;

      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = a1[5];
      a1[5] = v12;
    }
  }

  return a1;
}

- (void)releaseCachedResources
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    [*(a1 + 32) removeAllObjects];

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (id)waitAndGetAvailableContextReturnError:(uint64_t)a1
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_semaphore_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock((a1 + 24));
    if ([*(a1 + 32) count])
    {
      v2 = [*(a1 + 32) lastObject];
      [*(a1 + 32) removeLastObject];
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = MEMORY[0x1E695F620];
      v5 = *MEMORY[0x1E695F7F0];
      if (v3)
      {
        v18[0] = MEMORY[0x1E695E110];
        v6 = *MEMORY[0x1E695F830];
        v17[0] = v5;
        v17[1] = v6;
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNCIContextsHandler_MetalRegistryID_%llu", objc_msgSend(*(a1 + 8), "registryID")];
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
      v12 = a1;
      v13 = v9;
      if (v11)
      {
        v16.receiver = v11;
        v16.super_class = VNCIContext;
        v14 = objc_msgSendSuper2(&v16, sel_init);
        v2 = v14;
        if (v14)
        {
          objc_storeWeak(v14 + 2, v12);
          objc_storeStrong(v2 + 1, v9);
        }
      }

      else
      {
        v2 = 0;
      }
    }

    [*(a1 + 40) addObject:v2];
    os_unfair_lock_unlock((a1 + 24));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end