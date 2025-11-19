@interface MusicSubscriptionOfferViewControllerClass
@end

@implementation MusicSubscriptionOfferViewControllerClass

Class __get_MusicSubscriptionOfferViewControllerClass_block_invoke(uint64_t a1)
{
  _MusicKit_SwiftUILibrary();
  result = objc_getClass("_MusicSubscriptionOfferViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_MusicSubscriptionOfferViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_MusicSubscriptionOfferViewControllerClass_block_invoke_cold_1();
    return _MusicKit_SwiftUILibrary();
  }

  return result;
}

@end