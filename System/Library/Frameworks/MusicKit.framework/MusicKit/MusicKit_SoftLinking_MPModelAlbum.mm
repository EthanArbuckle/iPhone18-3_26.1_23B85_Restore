@interface MusicKit_SoftLinking_MPModelAlbum
+ (id)trackPopularityForIdentifiers:(id)identifiers underlyingModelAlbum:(id)album tracksPopularityBlock:(id)block;
@end

@implementation MusicKit_SoftLinking_MPModelAlbum

+ (id)trackPopularityForIdentifiers:(id)identifiers underlyingModelAlbum:(id)album tracksPopularityBlock:(id)block
{
  albumCopy = album;
  identifiersCopy = identifiers;
  v9 = _Block_copy(block);
  v10 = v9[2](v9, albumCopy, identifiersCopy);

  return v10;
}

@end