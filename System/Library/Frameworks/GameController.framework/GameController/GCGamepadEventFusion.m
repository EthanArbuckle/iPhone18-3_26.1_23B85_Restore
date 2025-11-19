@interface GCGamepadEventFusion
@end

@implementation GCGamepadEventFusion

void __55___GCGamepadEventFusion_initWithConfiguration_sources___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v5 + 8);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55___GCGamepadEventFusion_initWithConfiguration_sources___block_invoke_2;
  v20[3] = &unk_1E841AFB0;
  v22 = v5;
  v23 = v6;
  v8 = v4;
  v21 = v8;
  [v7 enumerateElementsForSourceAtIndex:v6 withBlock:v20];
  objc_storeStrong((*(*(a1 + 32) + 216) + 8 * *(a1 + 40)), a2);
  v9 = -[_GCGamepadEventImpl initWithTimeStamp:inputs:validMask:]([_GCGamepadEventImpl alloc], "initWithTimeStamp:inputs:validMask:", [v8 timestamp], *(a1 + 32) + 24, *(*(a1 + 32) + 16));
  v10 = objc_getProperty(*(a1 + 32), sel_observers, 232, 1);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55___GCGamepadEventFusion_initWithConfiguration_sources___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v5 = *(*(*(a1 + 40) + 216) + 8 * *(a1 + 48));
    v6 = [v5 hasValidValueForElement:a2];
    v7 = [*(a1 + 32) hasValidValueForElement:a2];
    [v5 floatValueForElement:a2];
    v9 = v8;
    [*(a1 + 32) floatValueForElement:a2];
    v11 = v10;

    if (v6 != v7 || v9 != v11)
    {
LABEL_7:
      v13 = [*(a1 + 32) hasValidValueForElement:a2];
      v14 = 1 << a2;
      v15 = *(a1 + 40);
      if (v13)
      {
        v16 = *(v15 + 16) | v14;
      }

      else
      {
        v16 = *(v15 + 16) & ~v14;
      }

      *(v15 + 16) = v16;
      [*(a1 + 32) floatValueForElement:a2];
      *(*(a1 + 40) + 4 * a2 + 24) = v17;
    }
  }
}

void __46___GCGamepadEventFusion_observeGamepadEvents___block_invoke(uint64_t a1)
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