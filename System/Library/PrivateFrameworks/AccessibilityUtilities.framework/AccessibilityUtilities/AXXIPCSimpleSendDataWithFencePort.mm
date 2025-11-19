@interface AXXIPCSimpleSendDataWithFencePort
@end

@implementation AXXIPCSimpleSendDataWithFencePort

void ____AXXIPCSimpleSendDataWithFencePort_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ____AXXIPCSimpleSendDataWithFencePort_block_invoke_2;
  v1[3] = &unk_1E71EB218;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void ____AXXIPCSimpleSendDataWithFencePort_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
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
    if ((*(a1 + 40) + 1) >= 2)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2050000000;
      v4 = getUIWindowClass_softClass;
      v10 = getUIWindowClass_softClass;
      if (!getUIWindowClass_softClass)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __getUIWindowClass_block_invoke;
        v6[3] = &unk_1E71E9A80;
        v6[4] = &v7;
        __getUIWindowClass_block_invoke(v6);
        v4 = v8[3];
      }

      v5 = v4;
      _Block_object_dispose(&v7, 8);
      [v4 _synchronizeDrawingAcrossProcessesOverPort:*(a1 + 40)];
    }
  }
}

@end