@interface HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc
@end

@implementation HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc

void *__get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstParty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end