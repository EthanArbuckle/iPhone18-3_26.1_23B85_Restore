@interface MPMusicPlayerControllerClientIdentifierMusicKitSystemPlayerSymbolLoc
@end

@implementation MPMusicPlayerControllerClientIdentifierMusicKitSystemPlayerSymbolLoc

void *__get_MPMusicPlayerControllerClientIdentifierMusicKitSystemPlayerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "_MPMusicPlayerControllerClientIdentifierMusicKitSystemPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MPMusicPlayerControllerClientIdentifierMusicKitSystemPlayerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end