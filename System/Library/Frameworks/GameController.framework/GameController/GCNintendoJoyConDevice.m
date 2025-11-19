@interface GCNintendoJoyConDevice
@end

@implementation GCNintendoJoyConDevice

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_3;
  v3[3] = &unk_1E8419C88;
  v3[4] = v2;
  v4 = v1;
  [v4 connectToDeviceService:&unk_1F4EB3018 withClient:v2 reply:v3];
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2 && gc_isInternalBuild())
  {
    __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_3_cold_1(a1);
  }
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_106;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB3078 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_106(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 10, a2);
      v10 = [v9 readBattery];
      [v9 propagateBattery:v10];
    }

    else if (gc_isInternalBuild())
    {
      __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_106_cold_1(a1);
    }
  }
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_107(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_109;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB30D8 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_109(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 9, a2);
    }

    else if (gc_isInternalBuild())
    {
      __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_109_cold_1(a1);
    }
  }
}

void __46___GCNintendoJoyConDevice_Client___addClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeClient:v2];
}

intptr_t __50___GCNintendoJoyConDevice_Components__readBattery__block_invoke(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = [GCDeviceBattery alloc];
  *&v7 = a2;
  v8 = [(GCDeviceBattery *)v6 initWithLevel:a3 batteryState:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 32);

  return dispatch_semaphore_signal(v11);
}

void __56___GCNintendoJoyConDevice_Components__propagateBattery___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = *(WeakRetained + 11);
    (*(*(WeakRetained + 8) + 16))();
    v2 = v4;
  }
}

void __62___GCNintendoJoyConDevice_Fusion__homeButtonLongPressGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained device:*(a1 + 32) fusionGestureActive:*(a1 + 40)];
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_3_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_106_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2_109_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end