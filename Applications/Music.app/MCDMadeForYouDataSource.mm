@interface MCDMadeForYouDataSource
- (id)itemSortDescriptors;
- (id)requestItemKind;
@end

@implementation MCDMadeForYouDataSource

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
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLibraryAddedDate ascending:0];
    v12 = v5;
    v6 = &v12;
LABEL_11:
    v7 = [NSArray arrayWithObjects:v6 count:1];

    goto LABEL_12;
  }

  if ([v3 isEqualToString:MCDSortByRecentlyPlayed])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLastDevicePlaybackDate ascending:0];
    v11 = v5;
    v6 = &v11;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:MCDSortByRecentlyUpdated])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLastModifiedDateComponents ascending:0];
    v10 = v5;
    v6 = &v10;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:MCDSortByTitle])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistName ascending:1];
    v9 = v5;
    v6 = &v9;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:3];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v4 = [MPModelPlaylistEntry kindWithKinds:v3];
  v5 = [MPModelPlaylist kindWithVariants:64 playlistEntryKind:v4 options:4];

  return v5;
}

@end