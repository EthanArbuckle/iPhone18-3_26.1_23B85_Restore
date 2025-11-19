@interface FigEndpointPlaybackSessionRemoteXPC
@end

@implementation FigEndpointPlaybackSessionRemoteXPC

uint64_t __FigEndpointPlaybackSessionRemoteXPC_runAllCallbacks_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 24);
  *(*(result + 40) + 24) = 0;
  return result;
}

void __FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1[5]);
  v3 = *(DerivedStorage + 56);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 56) = v4;
  *(*(a1[4] + 8) + 24) = v3;
  v5 = *(a1[6] + 24);
  if (v5)
  {
    v6 = *(*(a1[4] + 8) + 24);
    v7 = a1[7];

    CFDictionarySetValue(v5, v6, v7);
  }
}

void __FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
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

void __FigEndpointPlaybackSessionRemoteXPC_SetEventHandler_block_invoke(void *a1)
{
  *(a1[4] + 40) = a1[5];
  *(a1[4] + 32) = a1[6];
  v1 = a1[4];
  v2 = *(v1 + 48);
  v3 = a1[7];
  *(v1 + 48) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

@end