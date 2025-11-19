@interface MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc
@end

@implementation MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc

void *__get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end