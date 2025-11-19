@interface GCHIDEventSubject
@end

@implementation GCHIDEventSubject

void __38___GCHIDEventSubject_publishHIDEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        (*(*(*(&v11 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v9 = [v5 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v6 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
  [v9 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [v9 copy];
  [v7 setObject:v8 forKey:v4];
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  v3 = *(*(a1 + 32) + 16);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_3;
  v12 = &unk_1E8419030;
  v4 = *(a1 + 40);
  v13 = v2;
  v14 = v4;
  v5 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v9];
  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v5 mutableCopy];
    v9 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
    [v8 removeObject:v9];

    v10 = *(a1 + 32);
    v11 = [v8 copy];
    [v10 setObject:v11 forKey:v12];
  }
}

@end