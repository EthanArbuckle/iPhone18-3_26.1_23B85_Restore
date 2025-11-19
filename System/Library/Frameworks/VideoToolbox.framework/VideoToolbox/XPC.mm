@interface XPC
@end

@implementation XPC

void __dsrxpc_callback_handleEmitFrame_XPC_block_invoke(void *a1)
{
  if (OUTLINED_FUNCTION_11_2(a1))
  {
    OUTLINED_FUNCTION_4_9();
    dsrxpc_handleEmitFrame(v2, v3, v4, v5, v6, v7, v8);
  }

  if (!OUTLINED_FUNCTION_15_2())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRelease();
  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[4];
  if (v11)
  {
    CFRelease(v11);
  }
}

void __dsrxpc_callback_handleEmitTile_XPC_block_invoke(uint64_t a1)
{
  if (OUTLINED_FUNCTION_11_2(a1))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 40);
      v2(*(a1 + 56), v3[3], v3[12], v3[13], v3[11], v3[14], *(a1 + 80), *(a1 + 84));
    }

    dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(*(a1 + 32), *(a1 + 64));
  }

  if (!FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRelease();
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __dsrxpc_callback_handleEmitMultiImage_XPC_block_invoke(void *a1)
{
  if (OUTLINED_FUNCTION_11_2(a1))
  {
    OUTLINED_FUNCTION_4_9();
    dsrxpc_handleEmitMultiImage(v2, v3, v4, v5, v6, v7, v8);
  }

  if (!OUTLINED_FUNCTION_15_2())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRelease();
  v9 = a1[5];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[4];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }
}

@end