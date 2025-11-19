@interface CopyCurrentViewArea
@end

@implementation CopyCurrentViewArea

uint64_t __carEndpoint_CopyCurrentViewArea_block_invoke(uint64_t a1)
{
  result = carEndpoint_getScreenStreamForDisplayUUID();
  if (result)
  {
    v3 = *(*(a1 + 40) + 8);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(CMBaseObject, *MEMORY[0x277CC1908], 0, v3 + 24);
    }

    else
    {
      v6 = -12782;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
    result = *(*(*(a1 + 32) + 8) + 24);
    if (result)
    {
      return __carEndpoint_CopyCurrentViewArea_block_invoke_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16725;
  }

  return result;
}

@end