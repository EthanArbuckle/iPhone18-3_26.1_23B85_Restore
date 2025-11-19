@interface MPMusicPlayerMediaItemProxyClass
@end

@implementation MPMusicPlayerMediaItemProxyClass

Class __get_MPMusicPlayerMediaItemProxyClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("_MPMusicPlayerMediaItemProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_MPMusicPlayerMediaItemProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_MPMusicPlayerMediaItemProxyClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_10(v3);
  }

  return result;
}

@end