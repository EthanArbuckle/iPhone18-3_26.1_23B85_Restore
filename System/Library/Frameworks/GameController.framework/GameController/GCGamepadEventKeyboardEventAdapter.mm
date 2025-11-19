@interface GCGamepadEventKeyboardEventAdapter
@end

@implementation GCGamepadEventKeyboardEventAdapter

void __68___GCGamepadEventKeyboardEventAdapter_initWithConfiguration_source___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(v20, 0, sizeof(v20));
  v4 = [*(*(a1 + 32) + 16) gamepadElementForUsagePage:objc_msgSend(v3 usage:{"usagePage"), objc_msgSend(v3, "usage")}];
  if (v4 <= 0x2E)
  {
    v5 = v4;
    v6 = [v3 down];
    v7 = 0.0;
    if (v6 > 0)
    {
      v7 = 1.0;
    }

    *(v20 + v5) = v7;
    v19 = 1 << v5;
    v8 = -[_GCGamepadEventImpl initWithTimeStamp:inputs:validMask:]([_GCGamepadEventImpl alloc], "initWithTimeStamp:inputs:validMask:", [v3 timestamp], v20, 1 << v5);
    v9 = objc_getProperty(*(a1 + 32), sel_observers, 24, 1);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v15 + 1) + 8 * i) + 16))();
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __60___GCGamepadEventKeyboardEventAdapter_observeGamepadEvents___block_invoke(uint64_t a1)
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