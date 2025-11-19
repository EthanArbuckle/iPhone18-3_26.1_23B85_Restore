@interface MCDRecentlyAddedDataSource
- (_NSRange)contentRange;
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
@end

@implementation MCDRecentlyAddedDataSource

- (id)requestItemKind
{
  v12[0] = MPModelRelationshipGenericAlbum;
  v2 = [MPModelSong kindWithVariants:3];
  v3 = [MPModelAlbum kindWithSongKind:v2];
  v13[0] = v3;
  v12[1] = MPModelRelationshipGenericPlaylist;
  v4 = [MPModelSong kindWithVariants:3];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = [MPModelPlaylistEntry kindWithKinds:v5];
  v7 = [MPModelPlaylist kindWithVariants:81 playlistEntryKind:v6 options:4];
  v13[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [MPModelGenericObject kindWithRelationshipKinds:v8];

  return v9;
}

- (id)requestItemProperties
{
  v30[0] = MPModelPropertyAlbumTitle;
  v30[1] = MPModelPropertyAlbumIsFavorite;
  v30[2] = MPModelPropertyAlbumIsDisliked;
  v30[3] = MPModelPropertyAlbumArtwork;
  v30[4] = MPModelPropertyAlbumIsCompilation;
  v30[5] = MPModelPropertyAlbumTrackCount;
  v30[6] = MPModelPropertyAlbumSongPopularity;
  v2 = [NSArray arrayWithObjects:v30 count:7];
  v28[0] = MPModelRelationshipAlbumArtist;
  v27 = MPModelPropertyArtistName;
  v3 = [NSArray arrayWithObjects:&v27 count:1];
  v4 = [MPPropertySet propertySetWithProperties:v3];
  v29[0] = v4;
  v28[1] = MPModelRelationshipAlbumRepresentativeSong;
  v26[0] = MPModelPropertySongTitle;
  v26[1] = MPModelPropertySongHasVideo;
  v5 = [NSArray arrayWithObjects:v26 count:2];
  v6 = [MPPropertySet propertySetWithProperties:v5];
  v29[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

  v8 = [[MPPropertySet alloc] initWithProperties:v2 relationships:v7];
  v9 = +[MPModelAlbum orphanMusicVideoPropertySet];
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  v25[0] = MPModelPropertyPlaylistName;
  v25[1] = MPModelPropertyPlaylistIsFavorite;
  v25[2] = MPModelPropertyPlaylistIsDisliked;
  v25[3] = MPModelPropertyPlaylistArtwork;
  v25[4] = MPModelPropertyPlaylistType;
  v25[5] = MPModelPropertyPlaylistTracksTiledArtwork;
  v25[6] = MPModelPropertyPlaylistLastModifiedDateComponents;
  v25[7] = MPModelPropertyPlaylistLibraryAdded;
  v11 = [NSArray arrayWithObjects:v25 count:8];
  v23 = MPModelRelationshipPlaylistCurator;
  v22 = MPModelPropertyCuratorName;
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  v13 = [MPPropertySet propertySetWithProperties:v12];
  v24 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v15 = [[MPPropertySet alloc] initWithProperties:v11 relationships:v14];
  v16 = [MPPropertySet alloc];
  v20[0] = MPModelRelationshipGenericAlbum;
  v20[1] = MPModelRelationshipGenericPlaylist;
  v21[0] = v10;
  v21[1] = v15;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v16 initWithProperties:0 relationships:v17];

  return v18;
}

- (id)itemSortDescriptors
{
  v6[0] = MPModelRelationshipGenericAlbum;
  v6[1] = MPModelRelationshipGenericPlaylist;
  v7[0] = MPModelPropertyAlbumLibraryAddedDate;
  v7[1] = MPModelPropertyPlaylistLibraryAddedDate;
  v2 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v3 = [MPMultiSortDescriptor sortDescriptorWithRelatedProperties:v2 ascending:0];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  return v4;
}

- (_NSRange)contentRange
{
  v2 = 0;
  v3 = 20;
  result.length = v3;
  result.location = v2;
  return result;
}

@end