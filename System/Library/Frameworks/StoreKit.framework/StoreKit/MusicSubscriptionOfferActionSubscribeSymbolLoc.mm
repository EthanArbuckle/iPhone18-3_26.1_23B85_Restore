@interface MusicSubscriptionOfferActionSubscribeSymbolLoc
@end

@implementation MusicSubscriptionOfferActionSubscribeSymbolLoc

void *__get_MusicSubscriptionOfferActionSubscribeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = _MusicKit_SwiftUILibrary();
  result = dlsym(v2, "_MusicSubscriptionOfferActionSubscribe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MusicSubscriptionOfferActionSubscribeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end