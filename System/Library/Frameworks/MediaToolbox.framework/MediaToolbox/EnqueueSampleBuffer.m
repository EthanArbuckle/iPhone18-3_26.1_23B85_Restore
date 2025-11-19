@interface EnqueueSampleBuffer
@end

@implementation EnqueueSampleBuffer

uint64_t __audioRendererCentral_EnqueueSampleBuffer_block_invoke()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 88))
  {
    v1 = result;
    FigServer_GetClientPIDFromAuditToken();
    result = FigOSTransactionCreate();
    *(v1 + 88) = result;
  }

  return result;
}

@end