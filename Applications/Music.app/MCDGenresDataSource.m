@interface MCDGenresDataSource
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
- (id)requestSectionProperties;
@end

@implementation MCDGenresDataSource

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:1];
  v3 = [MPModelAlbum kindWithSongKind:v2];
  v4 = [MPModelGenre kindWithAlbumKind:v3];

  return v4;
}

- (id)requestItemProperties
{
  v5 = MPModelPropertyGenreName;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)requestSectionProperties
{
  v5 = MPModelPropertySectionTitle;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)itemSortDescriptors
{
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v2 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyGenreLibraryAddedDate ascending:0];
    v7 = v2;
    v3 = &v7;
  }

  else
  {
    v2 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyGenreName ascending:1];
    v6 = v2;
    v3 = &v6;
  }

  v4 = [NSArray arrayWithObjects:v3 count:1];

  return v4;
}

@end