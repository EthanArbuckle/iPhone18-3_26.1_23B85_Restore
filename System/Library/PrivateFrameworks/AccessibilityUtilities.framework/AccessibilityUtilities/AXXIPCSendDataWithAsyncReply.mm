@interface AXXIPCSendDataWithAsyncReply
@end

@implementation AXXIPCSendDataWithAsyncReply

void ____AXXIPCSendDataWithAsyncReply_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ____AXXIPCSendData_block_invoke_2_cold_2();
    }

LABEL_7:

    goto LABEL_8;
  }

  *(v5 + 24) = 1;
  v7 = _AXIPCReplyToAsyncRequest(*(a1 + 40), [v3 bytes], objc_msgSend(v3, "length"));
  if (v7)
  {
    v8 = v7;
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ____AXXIPCSendDataWithAsyncReply_block_invoke_cold_1(v8);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void ____AXXIPCSendDataWithAsyncReply_block_invoke_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_18B15E000, v1, v2, "async reply to message failed: %{public}s", v3, v4, v5, v6, v7);
}

@end