@interface MPModelPropertySongTrackCountSymbolLoc
@end

@implementation MPModelPropertySongTrackCountSymbolLoc

void *__get_MPModelPropertySongTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "_MPModelPropertySongTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MPModelPropertySongTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end