@interface EnsureClientEstablishedAndCopyRemoteClient
@end

@implementation EnsureClientEstablishedAndCopyRemoteClient

void __remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    FigRemote_ShouldConnectToMediaplaybackd();
  }

  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FormatReader_ServerConnectionDied");
  *(&gFormatReaderRemoteClients + 5 * *(a1 + 32) + 3) = FigSimpleMutexCreate();
  *(&gFormatReaderRemoteClients + 10 * *(a1 + 32) + 2) = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

@end