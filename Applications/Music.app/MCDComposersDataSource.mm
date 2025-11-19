@interface MCDComposersDataSource
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
@end

@implementation MCDComposersDataSource

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:1];
  v3 = [MPModelAlbum kindWithSongKind:v2];
  v4 = [MPModelComposer kindWithAlbumKind:v3];

  return v4;
}

- (id)requestItemProperties
{
  v5 = MPModelPropertyComposerName;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)itemSortDescriptors
{
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v2 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyComposerLibraryAddedDate ascending:0];
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