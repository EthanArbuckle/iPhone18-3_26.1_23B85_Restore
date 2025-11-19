@interface FigEndpointStreamRemoteXPC
@end

@implementation FigEndpointStreamRemoteXPC

uint64_t __FigEndpointStreamRemoteXPC_runAllCallbacks_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 24);
  *(*(result + 40) + 24) = 0;
  return result;
}

void __FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1[5]);
  v3 = *(DerivedStorage + 32);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 32) = v4;
  *(*(a1[4] + 8) + 24) = v3;
  v5 = *(a1[6] + 24);
  if (v5)
  {
    v6 = *(*(a1[4] + 8) + 24);

    CFDictionarySetValue(v5, v6, a1 + 7);
  }
}

void __FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 24);
  if (v2)
  {
    if (CFDictionaryGetValueIfPresent(v2, *(*(a1[4] + 8) + 24), 0))
    {
      *(*(a1[5] + 8) + 24) = 1;
    }

    v3 = *(a1[6] + 24);
    v4 = *(*(a1[4] + 8) + 24);

    CFDictionaryRemoveValue(v3, v4);
  }
}

@end