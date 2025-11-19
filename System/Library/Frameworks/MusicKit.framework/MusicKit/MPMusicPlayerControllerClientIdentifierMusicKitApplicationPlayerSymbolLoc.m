@interface MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayerSymbolLoc
@end

@implementation MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayerSymbolLoc

void *__get_MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "_MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end