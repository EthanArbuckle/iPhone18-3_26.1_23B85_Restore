@interface GCCollectionEventHIDAdapter
@end

@implementation GCCollectionEventHIDAdapter

void __66___GCCollectionEventHIDAdapter_initWithRootParser_source_service___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 37)
  {
    v4 = *(a1 + 40);
    if (!v4 || v4 == IOHIDEventGetSenderID() || IOHIDEventGetSenderID() == -1)
    {
      v5 = [[_GCCollectionEventImpl alloc] initWithTimeStamp:IOHIDEventGetTimeStamp() keys:0 values:0 count:0];
      [*(a1 + 32) parse:a2 into:v5];
      v6 = objc_getProperty(*(a1 + 48), sel_observers, 32, 1);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56___GCCollectionEventHIDAdapter_observeCollectionEvents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = _Block_copy(*(a1 + 40));
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    do
    {
      v5 = [*(a1 + 32) observers];
      v6 = [v5 mutableCopy];

      v7 = _Block_copy(*(a1 + 40));
      [v6 removeObject:v7];

      [*(a1 + 32) setObservers:v6];
      v8 = [*(a1 + 32) observers];
      v9 = _Block_copy(*(a1 + 40));
      v10 = [v8 containsObject:v9];
    }

    while ((v10 & 1) != 0);
  }
}

@end