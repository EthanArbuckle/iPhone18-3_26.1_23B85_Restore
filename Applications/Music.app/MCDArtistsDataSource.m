@interface MCDArtistsDataSource
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
@end

@implementation MCDArtistsDataSource

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:1];
  v3 = [MPModelAlbum kindWithSongKind:v2];
  v4 = [MPModelArtist kindWithAlbumKind:v3];

  return v4;
}

- (id)requestItemProperties
{
  v5[0] = MPModelPropertyArtistName;
  v5[1] = MPModelPropertyArtistIsFavorite;
  v5[2] = MPModelPropertyArtistIsDisliked;
  v5[3] = MPModelPropertyArtistArtwork;
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)itemSortDescriptors
{
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v2 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyArtistLibraryAddedDate ascending:0];
    v5 = v2;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end