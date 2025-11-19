@interface SendMessageCreatingReply
@end

@implementation SendMessageCreatingReply

void __stream_SendMessageCreatingReply_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 72))
  {
    __stream_SendMessageCreatingReply_block_invoke_2_cold_1();
  }

  else
  {
    if (*(a1 + 56))
    {
      v3 = -6722;
    }

    else
    {
      v3 = *(v2 + 152);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __stream_SendMessageCreatingReply_block_invoke_2_cold_2();
    }

    else
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        *v4 = *(v2 + 160);
        *(*(a1 + 40) + 160) = 0;
      }
    }
  }

  v5 = *(*(a1 + 40) + 168);
  if (v5)
  {
    dispatch_release(v5);
    *(*(a1 + 40) + 168) = 0;
  }
}

void __stream_SendMessageCreatingReply_block_invoke(uint64_t a1)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v9 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (*(v2 + 72))
  {
    __stream_SendMessageCreatingReply_block_invoke_cold_1();
    return;
  }

  if (!*(*(a1 + 80) + 9))
  {
    __stream_SendMessageCreatingReply_block_invoke_cold_2();
    return;
  }

  if (*(v2 + 168))
  {
    if (gLogCategory_APTransportStream <= 90)
    {
      if (gLogCategory_APTransportStream == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v2 = *(a1 + 72);
      }

      v6 = *(v2 + 88);
      LogPrintF();
    }

LABEL_11:
    *(*(*(a1 + 32) + 8) + 24) = -6709;
    return;
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 176);
  *(*(*(a1 + 48) + 8) + 24) = dispatch_semaphore_create(0);
  v3 = *(a1 + 72);
  *(v3 + 152) = 0;
  *(v3 + 168) = *(*(*(a1 + 48) + 8) + 24);
  dispatch_retain(*(*(a1 + 72) + 168));
  CFRetain(*(a1 + 56));
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(*(a1 + 72) + 64);
  APSDispatchAsyncFHelper();
}

void __stream_SendMessageCreatingReply_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 160) = 0;
  }
}

void __stream_SendMessageCreatingReply_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -16614;
}

@end