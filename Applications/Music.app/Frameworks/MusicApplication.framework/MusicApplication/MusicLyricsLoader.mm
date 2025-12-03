@interface MusicLyricsLoader
+ (BOOL)supportsLyricsFor:(id)for;
- (MusicLyricsLoader)init;
@end

@implementation MusicLyricsLoader

+ (BOOL)supportsLyricsFor:(id)for
{
  forCopy = for;
  v4 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(forCopy);

  return v4 & 1;
}

- (MusicLyricsLoader)init
{
  v3 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  [v4 setMaxConcurrentOperationCount:1];
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LyricsLoader();
  return [(MusicLyricsLoader *)&v6 init];
}

@end