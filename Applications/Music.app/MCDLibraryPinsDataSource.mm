@interface MCDLibraryPinsDataSource
- (id)requestItemProperties;
@end

@implementation MCDLibraryPinsDataSource

- (id)requestItemProperties
{
  v25 = MPModelPropertyAlbumIsFavorite;
  v26 = MPModelPropertyAlbumTitle;
  v39[0] = MPModelPropertyAlbumTitle;
  v39[1] = MPModelPropertyAlbumIsFavorite;
  v24 = MPModelPropertyAlbumIsDisliked;
  v23 = MPModelPropertyAlbumIsCompilation;
  v39[2] = MPModelPropertyAlbumIsDisliked;
  v39[3] = MPModelPropertyAlbumIsCompilation;
  v21 = MPModelPropertyAlbumArtwork;
  v22 = MPModelPropertyAlbumYear;
  v39[4] = MPModelPropertyAlbumArtwork;
  v39[5] = MPModelPropertyAlbumYear;
  v2 = MPModelPropertyAlbumTrackCount;
  v39[6] = MPModelPropertyAlbumTrackCount;
  v39[7] = MPModelPropertyAlbumDownloadedTrackCount;
  v3 = MPModelPropertyAlbumSongPopularity;
  v39[8] = MPModelPropertyAlbumCleanSongCount;
  v39[9] = MPModelPropertyAlbumSongPopularity;
  v39[10] = MPModelPropertyAlbumHasExplicitContent;
  v4 = [NSArray arrayWithObjects:v39 count:11];
  v28 = [MPPropertySet propertySetWithProperties:v4];

  v38[0] = MPModelPropertyArtistName;
  v38[1] = MPModelPropertyArtistIsFavorite;
  v38[2] = MPModelPropertyArtistIsDisliked;
  v38[3] = MPModelPropertyArtistArtwork;
  v38[4] = MPModelPropertyArtistLibraryAddedDate;
  v38[5] = MPModelPropertyArtistSongCount;
  v38[6] = MPModelPropertyArtistDownloadedSongCount;
  v38[7] = MPModelPropertyArtistCleanSongCount;
  v38[8] = MPModelPropertyArtistCleanDownloadedSongCount;
  v5 = [NSArray arrayWithObjects:v38 count:9];
  v27 = [MPPropertySet propertySetWithProperties:v5];

  v37[0] = MPModelPropertyPlaylistName;
  v37[1] = MPModelPropertyPlaylistType;
  v37[2] = MPModelPropertyPlaylistArtwork;
  v37[3] = MPModelPropertyPlaylistTracksTiledArtwork;
  v37[4] = MPModelPropertyPlaylistCuratorPlaylist;
  v37[5] = MPModelPropertyPlaylistIsFavorite;
  v37[6] = MPModelPropertyPlaylistIsDisliked;
  v37[7] = MPModelPropertyPlaylistLastModifiedDateComponents;
  v37[8] = MPModelPropertyPlaylistIsOwner;
  v37[9] = MPModelPropertyPlaylistLibraryAdded;
  v37[10] = MPModelPropertyPlaylistTrackCount;
  v37[11] = MPModelPropertyPlaylistDownloadedTrackCount;
  v37[12] = MPModelPropertyPlaylistHasAnyCleanTracks;
  v37[13] = MPModelPropertyPlaylistHasAnyCleanDownloadedTracks;
  v6 = [NSArray arrayWithObjects:v37 count:14];
  v7 = [MPPropertySet propertySetWithProperties:v6];

  v8 = [MPPropertySet alloc];
  v36[0] = MPModelPropertySongTitle;
  v36[1] = MPModelPropertySongArtwork;
  v36[2] = MPModelPropertySongHasVideo;
  v36[3] = MPModelPropertySongArtistUploadedContent;
  v9 = [NSArray arrayWithObjects:v36 count:4];
  v34[0] = MPModelRelationshipSongStoreAsset;
  v33 = MPModelPropertyStoreAssetRedownloadable;
  v10 = [NSArray arrayWithObjects:&v33 count:1];
  v11 = [MPPropertySet propertySetWithProperties:v10];
  v35[0] = v11;
  v34[1] = MPModelRelationshipSongAlbum;
  v32[0] = v26;
  v32[1] = v25;
  v32[2] = v24;
  v32[3] = v23;
  v32[4] = v21;
  v32[5] = v2;
  v32[6] = v22;
  v32[7] = v3;
  v12 = [NSArray arrayWithObjects:v32 count:8];
  v13 = [MPPropertySet propertySetWithProperties:v12];
  v35[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v15 = [v8 initWithProperties:v9 relationships:v14];

  v16 = [MPPropertySet alloc];
  v31[0] = MPModelPropertyLibraryPinDefaultAction;
  v31[1] = MPModelPropertyLibraryPinPosition;
  v31[2] = MPModelPropertyLibraryPinEntityType;
  v31[3] = MPModelPropertyLibraryPinPositionUUID;
  v17 = [NSArray arrayWithObjects:v31 count:4];
  v29[0] = MPModelRelationshipLibraryPinAlbum;
  v29[1] = MPModelRelationshipLibraryPinArtist;
  v30[0] = v28;
  v30[1] = v27;
  v29[2] = MPModelRelationshipLibraryPinPlaylist;
  v29[3] = MPModelRelationshipLibraryPinSong;
  v30[2] = v7;
  v30[3] = v15;
  v18 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v19 = [v16 initWithProperties:v17 relationships:v18];

  return v19;
}

@end