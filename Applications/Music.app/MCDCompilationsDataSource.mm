@interface MCDCompilationsDataSource
- (id)itemSortDescriptors;
- (id)requestItemKind;
@end

@implementation MCDCompilationsDataSource

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:1];
  v3 = [MPModelAlbum kindWithVariants:2 songKind:v2];

  return v3;
}

- (id)itemSortDescriptors
{
  v3 = [(_MCDLibraryDataSource *)self sortingPreference];
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v4 = MCDSortByRecentlyPlayed;

    v3 = v4;
  }

  if ([v3 isEqualToString:MCDSortByRecentlyAdded])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumLibraryAddedDate ascending:0];
    v14 = v5;
    v6 = &v14;
LABEL_7:
    v7 = [NSArray arrayWithObjects:v6 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqualToString:MCDSortByRecentlyPlayed])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumLastDevicePlaybackDate ascending:0];
    v13 = v5;
    v6 = &v13;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:MCDSortByArtist])
  {
    v11[0] = MPModelRelationshipAlbumArtist;
    v11[1] = MPModelPropertyArtistName;
    v5 = [NSArray arrayWithObjects:v11 count:2];
    v9 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v5 ascending:1];
    v12[0] = v9;
    v10 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumTitle ascending:1];
    v12[1] = v10;
    v7 = [NSArray arrayWithObjects:v12 count:2];

    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end