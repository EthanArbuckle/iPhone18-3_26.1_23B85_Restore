@interface MCDPlaylistDataSource
- (MCDPlaylistDataSource)initWithPlaylist:(id)playlist;
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
- (id)requestSectionProperties;
- (id)scopedContainers;
@end

@implementation MCDPlaylistDataSource

- (MCDPlaylistDataSource)initWithPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v6 = [(MCDPlaylistDataSource *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playlist, playlist);
  }

  return v7;
}

- (id)requestItemKind
{
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v2 = 215;
  }

  else
  {
    v2 = 223;
  }

  v3 = [MPModelSong kindWithVariants:3];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [MPModelPlaylistEntry kindWithKinds:v4];
  v6 = [MPModelPlaylist kindWithVariants:v2 playlistEntryKind:v5 options:4];

  return v6;
}

- (id)requestItemProperties
{
  v11[0] = MPModelPropertyPlaylistName;
  v11[1] = MPModelPropertyPlaylistType;
  v11[2] = MPModelPropertyPlaylistArtwork;
  v11[3] = MPModelPropertyPlaylistTracksTiledArtwork;
  v11[4] = MPModelPropertyPlaylistCuratorPlaylist;
  v11[5] = MPModelPropertyPlaylistIsFavorite;
  v11[6] = MPModelPropertyPlaylistIsDisliked;
  v11[7] = MPModelPropertyPlaylistLastModifiedDateComponents;
  v11[8] = MPModelPropertyPlaylistIsOwner;
  v11[9] = MPModelPropertyPlaylistLibraryAdded;
  v2 = [NSArray arrayWithObjects:v11 count:10];
  v9 = MPModelRelationshipPlaylistCurator;
  v8 = MPModelPropertyCuratorName;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = [MPPropertySet propertySetWithProperties:v3];
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v6 = [[MPPropertySet alloc] initWithProperties:v2 relationships:v5];

  return v6;
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
  sortingPreference = [(_MCDLibraryDataSource *)self sortingPreference];
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v4 = MCDSortByRecentlyPlayed;

    sortingPreference = v4;
  }

  if ([sortingPreference isEqualToString:MCDSortByRecentlyAdded])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLibraryAddedDate ascending:0];
    v12 = v5;
    v6 = &v12;
LABEL_11:
    v7 = [NSArray arrayWithObjects:v6 count:1];

    goto LABEL_12;
  }

  if ([sortingPreference isEqualToString:MCDSortByRecentlyPlayed])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLastDevicePlaybackDate ascending:0];
    v11 = v5;
    v6 = &v11;
    goto LABEL_11;
  }

  if ([sortingPreference isEqualToString:MCDSortByRecentlyUpdated])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLastModifiedDateComponents ascending:0];
    v10 = v5;
    v6 = &v10;
    goto LABEL_11;
  }

  if ([sortingPreference isEqualToString:MCDSortByTitle])
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

- (id)scopedContainers
{
  playlist = [(MCDPlaylistDataSource *)self playlist];

  if (playlist)
  {
    playlist2 = [(MCDPlaylistDataSource *)self playlist];
    v7 = playlist2;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end