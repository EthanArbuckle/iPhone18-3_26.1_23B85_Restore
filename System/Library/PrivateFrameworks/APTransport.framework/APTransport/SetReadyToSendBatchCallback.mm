@interface SetReadyToSendBatchCallback
@end

@implementation SetReadyToSendBatchCallback

void __stream_SetReadyToSendBatchCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 24))
  {
    __stream_SetReadyToSendBatchCallback_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = v3;
  }
}

void *__stream_SetReadyToSendBatchCallback_block_invoke_2(void *result)
{
  v1 = result[4];
  v2 = result[5];
  if (v1)
  {
    *(v2 + 88) = v1;
    v1 = result[6];
  }

  else
  {
    *(v2 + 88) = 0;
  }

  *(result[5] + 96) = v1;
  return result;
}

@end