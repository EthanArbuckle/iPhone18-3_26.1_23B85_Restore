@interface AXXIPCSendData
@end

@implementation AXXIPCSendData

void ____AXXIPCSendData_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____AXXIPCSendData_block_invoke_2;
  block[3] = &unk_1E71EB1C8;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void ____AXXIPCSendData_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = AXLogIPC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ____AXXIPCSendData_block_invoke_2_cold_2();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v3 = _AXIPCAsyncSendDataReply(*(a1 + 48), 0, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));
    if (!v3)
    {
      return;
    }

    v4 = v3;
    v2 = AXLogIPC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ____AXXIPCSendData_block_invoke_2_cold_1(v4);
    }
  }
}

void ____AXXIPCSendData_block_invoke_2_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_18B15E000, v1, v2, "reply to message failed: %{public}s", v3, v4, v5, v6, v7);
}

@end