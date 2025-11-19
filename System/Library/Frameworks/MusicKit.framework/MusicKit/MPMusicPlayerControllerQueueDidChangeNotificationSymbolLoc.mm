@interface MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc
@end

@implementation MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc

void *__get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "_MPMusicPlayerControllerQueueDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end