@interface MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc
@end

@implementation MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc

void *__get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = _MusicKit_SwiftUILibrary();
  result = dlsym(v2, "_MusicSubscriptionOfferMessageIdentifierAddMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end