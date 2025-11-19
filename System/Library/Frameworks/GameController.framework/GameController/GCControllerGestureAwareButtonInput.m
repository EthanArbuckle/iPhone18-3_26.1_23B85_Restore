@interface GCControllerGestureAwareButtonInput
@end

@implementation GCControllerGestureAwareButtonInput

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    *(v3 + 8) = v5;

    v6 = *(a1 + 56);
    [*(a1 + 32) deadzone];
    *(v3 + 16) = v6 > v7;
    if (([*(a1 + 32) isDoublePressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 20) = 1;
    }

    if (([*(a1 + 32) isSinglePressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 21) = 1;
    }

    if (([*(a1 + 32) isLongPressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 19) = 1;
    }

    if ([*(a1 + 32) isDoublePressGestureRecognizerEnabled])
    {
      [*(a1 + 32) __onqueue_executeDoublePressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild())
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_1((v3 + 16));
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }

    if ([*(a1 + 32) isSinglePressGestureRecognizerEnabled])
    {
      [*(a1 + 32) __onqueue_executeSinglePressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild())
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_2((v3 + 16));
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }

    if ([*(a1 + 32) isLongPressGestureRecognizerEnabled])
    {
      [*(a1 + 32) __onqueue_executeLongPressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild())
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_3((v3 + 16));
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  *(*(a1 + 32) + 20) = 1;
  if (gc_isInternalBuild())
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_cold_1(v2);
  }

  v3 = *v2;
  if ((*(*v2 + 17) & 1) == 0 && v3[18] == 1 && v3[19] == 1)
  {
    v3[17] = 1;
    if (*(*(a1 + 40) + 224))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112;
      block[3] = &unk_1E8418C28;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v4 = *(a1 + 48);
    [*(a1 + 40) __onqueue_forwardEvent:? queue:?];
  }
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 216) + 16))();
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 17) & 1) == 0)
  {
    if (gc_isInternalBuild())
    {
      __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 17) = 1;
    if (*(*(a1 + 40) + 208))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114;
      block[3] = &unk_1E8418C28;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 208) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_115(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 208) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117_cold_1(a1);
  }

  return [*(a1 + 40) __onqueue_forwardEvent:*(a1 + 32) queue:*(a1 + 48)];
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118_cold_1(a1);
  }

  return [*(a1 + 40) __onqueue_forwardEvent:*(a1 + 32) queue:*(a1 + 48)];
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_1(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_2(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_3(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(*a1 + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v5, v6, "Double recognizer failed, triggering single press gesture handler for %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v5, v6, "Triggering multi press gesture handler for %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v5, v6, "Triggering long press gesture handler for %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v5, v6, "Long press recognizer failed, triggering single press gesture handler for %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(*(a1 + 32) + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v5, v6, "Directly triggering single press gesture handler for %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(*(a1 + 32) + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end