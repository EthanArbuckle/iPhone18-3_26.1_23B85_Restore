@interface MCDPlaylistTracksDataSource
- (MCDPlaylistTracksDataSource)initWithPlaylist:(id)a3;
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
- (id)scopedContainers;
@end

@implementation MCDPlaylistTracksDataSource

- (MCDPlaylistTracksDataSource)initWithPlaylist:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCDPlaylistTracksDataSource;
  v6 = [(MCDPlaylistTracksDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playlist, a3);
  }

  return v7;
}

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:3];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [MPModelPlaylistEntry kindWithKinds:v3];

  return v4;
}

- (id)requestItemProperties
{
  v2 = [MPPropertySet alloc];
  v31[0] = MPModelPropertySongTitle;
  v31[1] = MPModelPropertySongDuration;
  v31[2] = MPModelPropertySongArtwork;
  v31[3] = MPModelPropertySongExplicit;
  v31[4] = MPModelPropertySongIsFavorite;
  v31[5] = MPModelPropertySongIsDisliked;
  v31[6] = MPModelPropertySongLibraryAdded;
  v31[7] = MPModelPropertySongShouldShowComposer;
  v31[8] = MPModelPropertySongArtistUploadedContent;
  v3 = [NSArray arrayWithObjects:v31 count:9];
  v29[0] = MPModelRelationshipSongArtist;
  v28 = MPModelPropertyArtistName;
  v4 = [NSArray arrayWithObjects:&v28 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v30[0] = v5;
  v29[1] = MPModelRelationshipSongAlbum;
  v27 = MPModelPropertyAlbumTitle;
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v30[1] = v7;
  v29[2] = MPModelRelationshipSongComposer;
  v26 = MPModelPropertyComposerName;
  v8 = [NSArray arrayWithObjects:&v26 count:1];
  v9 = [MPPropertySet propertySetWithProperties:v8];
  v30[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v11 = [v2 initWithProperties:v3 relationships:v10];

  v12 = objc_opt_class();
  v13 = [v12 requiredPlaylistEntryPropertiesForModelClass:objc_opt_class()];
  v14 = [v11 propertySetByCombiningWithPropertySet:v13];

  v25[0] = v14;
  v24[0] = MPModelRelationshipPlaylistEntrySong;
  v24[1] = MPModelRelationshipPlaylistEntrySocialContributor;
  v23[0] = MPModelPropertySocialPersonName;
  v23[1] = MPModelPropertySocialPersonArtwork;
  v15 = [NSArray arrayWithObjects:v23 count:2];
  v16 = [MPPropertySet propertySetWithProperties:v15];
  v25[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  v18 = [[MPPropertySet alloc] initWithProperties:0 relationships:v17];
  v19 = objc_opt_class();
  v20 = [v19 requiredPlaylistEntryPropertiesForModelClass:objc_opt_class()];
  v21 = [v18 propertySetByCombiningWithPropertySet:v20];

  return v21;
}

- (id)itemSortDescriptors
{
  v2 = [(MCDPlaylistTracksDataSource *)self playlist];
  v3 = [v2 preferredTracklistSortDescriptors];

  return v3;
}

- (id)scopedContainers
{
  v2 = [(MCDPlaylistTracksDataSource *)self playlist];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end