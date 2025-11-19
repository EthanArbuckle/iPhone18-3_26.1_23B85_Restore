@interface MXAssetStorage
@end

@implementation MXAssetStorage

void __47___MXAssetStorage_fetchAssetForKey_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v6 = [*(a1[4] + 32) objectForKey:a1[5]];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      [*(a1[4] + 32) setObject:? forKey:?];
    }

    v5 = MEMORY[0x1A58E9F30](a1[6]);
    [v6 addObject:v5];
  }
}

uint64_t __35___MXAssetStorage_setAsset_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 16);
  if (v2)
  {
    [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    [v3 removeObjectForKey:a1[6]];
  }

  [*(a1[5] + 24) removeObject:a1[6]];
  v4 = [*(a1[5] + 32) objectForKey:a1[6]];
  v5 = [v4 copy];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  v9 = *(a1[5] + 32);

  return [v9 removeObjectForKey:v8];
}

void __35___MXAssetStorage_setAsset_forKey___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __45___MXAssetStorage_loadAssetForKey_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];

  if (!v2 && ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    v3 = dispatch_get_global_queue(21, 0);
    dispatch_async(v3, *(a1 + 48));
  }
}

@end