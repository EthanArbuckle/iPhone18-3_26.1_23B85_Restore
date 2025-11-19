@interface SetMessageCallbacks
@end

@implementation SetMessageCallbacks

void *__stream_SetMessageCallbacks_block_invoke(void *result)
{
  *(result[4] + 112) = result[5];
  *(result[4] + 120) = result[6];
  if (result[7])
  {
    if (gLogCategory_APTransportStreamUnbuffered <= 60)
    {
      v1 = result;
      if (gLogCategory_APTransportStreamUnbuffered != -1)
      {
        return __stream_SetMessageCallbacks_block_invoke_cold_1(v1);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __stream_SetMessageCallbacks_block_invoke_cold_1(v1);
      }
    }
  }

  return result;
}

void *__stream_SetMessageCallbacks_block_invoke_0(void *result)
{
  *(result[4] + 200) = result[5];
  *(result[4] + 208) = result[6];
  *(result[4] + 192) = result[7];
  return result;
}

@end