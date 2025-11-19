@interface MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc
@end

@implementation MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc

void *__get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = _MusicKit_SwiftUILibrary();
  result = dlsym(v2, "_MusicSubscriptionOfferMessageIdentifierPlayMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end