@interface FigSampleBufferConsumerRemoteXPC
@end

@implementation FigSampleBufferConsumerRemoteXPC

void __FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FigSampleBufferConsumer_ServerConnectionDied");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633D0], *MEMORY[0x1E695E4D0]);
  FigCFDictionarySetInt32();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

@end