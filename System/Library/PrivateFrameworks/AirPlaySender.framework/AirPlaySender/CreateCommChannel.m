@interface CreateCommChannel
@end

@implementation CreateCommChannel

uint64_t __carEndpoint_CreateCommChannel_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = carEndpoint_createCommChannelInternal(*(a1 + 56), *(a1 + 64), (*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_1();
  }

  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(a1 + 72);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v5 = v4(v2, carEndpoint_handleRemoteControlSessionEvent, v3);
  }

  else
  {
    v5 = -12782;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_2();
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v7)
  {
    v8 = v7(v6);
  }

  else
  {
    v8 = -12782;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_3();
  }

  return result;
}

@end