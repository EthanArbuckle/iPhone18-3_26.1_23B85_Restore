@interface FigEndpointStreamAudioEngineRemoteXPC
@end

@implementation FigEndpointStreamAudioEngineRemoteXPC

void __FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"EndpointStreamAudioEngine_ServerConnectionDied");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633D0], *MEMORY[0x1E695E4D0]);
  FigCFDictionarySetInt32();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __FigEndpointStreamAudioEngineRemoteXPC_runAllCallbacks_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1[6] + 24));
  if (*(*(a1[4] + 8) + 24))
  {
    v2 = *(a1[6] + 24);

    CFDictionaryRemoveAllValues(v2);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = -15480;
  }
}

uint64_t __FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 32) = v4;
  *(*(*(a1 + 32) + 8) + 24) = v3;

  return FigCFDictionarySetValue();
}

void __FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsKey(*(*(a1 + 40) + 24), *(a1 + 48)))
  {
    CFDictionaryRemoveValue(*(*(a1 + 40) + 24), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

@end