@interface RenderFrameFromWindow
@end

@implementation RenderFrameFromWindow

void *__customVideoCompositor_RenderFrameFromWindow_block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 176);
  if (v2)
  {
    return v2(*(v1 + 184), result[5], 0, result[6], result[7]);
  }

  return result;
}

@end