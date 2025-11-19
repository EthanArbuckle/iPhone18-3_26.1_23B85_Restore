@interface MusicSubscriptionOfferOptionsClass
@end

@implementation MusicSubscriptionOfferOptionsClass

Class __get_MusicSubscriptionOfferOptionsClass_block_invoke(uint64_t a1)
{
  _MusicKit_SwiftUILibrary();
  result = objc_getClass("_MusicSubscriptionOfferOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_MusicSubscriptionOfferOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_MusicSubscriptionOfferOptionsClass_block_invoke_cold_1();
    return +[(SKServiceProxy *)v3];
  }

  return result;
}

@end