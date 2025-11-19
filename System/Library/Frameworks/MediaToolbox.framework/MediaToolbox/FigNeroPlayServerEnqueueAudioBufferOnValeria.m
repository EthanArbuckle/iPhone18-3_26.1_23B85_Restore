@interface FigNeroPlayServerEnqueueAudioBufferOnValeria
@end

@implementation FigNeroPlayServerEnqueueAudioBufferOnValeria

void ___FigNeroPlayServerEnqueueAudioBufferOnValeria_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    v4(v3, v2);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

@end