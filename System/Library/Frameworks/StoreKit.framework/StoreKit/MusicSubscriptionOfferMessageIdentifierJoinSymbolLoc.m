@interface MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc
@end

@implementation MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc

void *__get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = _MusicKit_SwiftUILibrary();
  result = dlsym(v2, "_MusicSubscriptionOfferMessageIdentifierJoin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end