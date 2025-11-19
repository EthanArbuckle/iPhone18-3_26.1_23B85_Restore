@interface FigEndpointRemoteControlSessionRemoteXPC
@end

@implementation FigEndpointRemoteControlSessionRemoteXPC

uint64_t __FigEndpointRemoteControlSessionRemoteXPC_runAllCallbacks_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 24);
  *(*(result + 40) + 24) = 0;
  return result;
}

id __FigEndpointRemoteControlSessionRemoteXPC_postInvalidated_block_invoke(void *a1)
{
  result = FigCFWeakReferenceLoadAndRetain((a1[6] + 40));
  *(*(a1[4] + 8) + 24) = result;
  *(*(a1[5] + 8) + 24) = *(a1[6] + 32);
  return result;
}

void __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  v2 = (CMBaseObjectGetDerivedStorage(a1[5]) + 48);
  v3 = *v2;
  FigAtomicIncrement32(v2);
  if (!*v2)
  {
    FigAtomicIncrement32(v2);
  }

  *(*(a1[4] + 8) + 24) = v3;
  v4 = *(a1[6] + 24);
  if (v4)
  {
    v5 = *(*(a1[4] + 8) + 24);
    v6 = a1[7];

    CFDictionarySetValue(v4, v5, v6);
  }
}

void __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
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

void __FigEndpointRemoteControlSessionRemoteXPC_SetEventHandler_block_invoke(void *a1)
{
  FigCFWeakReferenceDestroy((a1[4] + 40));
  *(a1[4] + 40) = 0;
  v2 = a1[5];
  if (v2 && a1[6])
  {
    *(a1[4] + 32) = v2;
    v3 = a1[6];
    v4 = (a1[4] + 40);

    FigCFWeakReferenceStore(v4, v3);
  }

  else
  {
    *(a1[4] + 32) = 0;
  }
}

@end