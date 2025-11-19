@interface APEndpointPlaybackSessionCreateVideoSyncTimeHistogram
@end

@implementation APEndpointPlaybackSessionCreateVideoSyncTimeHistogram

__CFDictionary *__APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_histogramCreationOptions = result;
  if (result)
  {
    CFDictionarySetValue(result, *MEMORY[0x277CEA338], @"second");
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();

    return FigCFDictionarySetInt32();
  }

  return result;
}

@end