@interface SetCompletePrerollCallback
@end

@implementation SetCompletePrerollCallback

void *__customVideoCompositor_SetCompletePrerollCallback_block_invoke(void *result)
{
  v1 = result[4];
  v2 = result[5];
  if (*(v1 + 200) != v2 || *(v1 + 208) != result[6])
  {
    *(v1 + 200) = v2;
    *(result[4] + 208) = result[6];
  }

  return result;
}

@end