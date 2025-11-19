@interface PFRequestExecutor
@end

@implementation PFRequestExecutor

void __53___PFRequestExecutor_executeRequest_inContext_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [objc_msgSend(*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v15 + 1) + 8 * v7) isCloudKitEnabled])
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            v9 = *(v8 + 8);
          }

          else
          {
            v9 = 0;
          }

          dispatch_group_enter(v9);
          ++v5;
        }

        ++v7;
      }

      while (v4 != v7);
      v10 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v10;
    }

    while (v10);
    if (v5 && ![*(a1 + 32) executeRequest:*(a1 + 48) error:*(*(a1 + 56) + 8) + 40])
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v12 = *(*(*(a1 + 56) + 8) + 40);
      do
      {
        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = *(v13 + 8);
        }

        else
        {
          v14 = 0;
        }

        dispatch_group_leave(v14);
        --v5;
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end