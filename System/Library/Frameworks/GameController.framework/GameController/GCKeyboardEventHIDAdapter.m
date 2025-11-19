@interface GCKeyboardEventHIDAdapter
@end

@implementation GCKeyboardEventHIDAdapter

void __53___GCKeyboardEventHIDAdapter_initWithSource_service___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 3)
  {
    v2 = *(a1 + 32);
    if (!v2 || v2 == IOHIDEventGetSenderID() || IOHIDEventGetSenderID() == -1)
    {
      v3 = objc_opt_new();
      [v3 setTimestamp:IOHIDEventGetTimeStamp()];
      [v3 setUsagePage:IOHIDEventGetIntegerValue()];
      [v3 setUsage:IOHIDEventGetIntegerValue()];
      [v3 setDown:IOHIDEventGetIntegerValue()];
      [v3 setSender:IOHIDEventGetSenderID()];
      v4 = objc_getProperty(*(a1 + 40), sel_observers, 24, 1);
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __52___GCKeyboardEventHIDAdapter_observeKeyboardEvents___block_invoke(uint64_t a1)
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