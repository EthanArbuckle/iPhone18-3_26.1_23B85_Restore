@interface MCDFuseDataSource
- (MPPropertySet)albumProperties;
- (MPPropertySet)curatorProperties;
- (MPPropertySet)playlistProperties;
- (MPPropertySet)radioStationProperties;
- (MPPropertySet)songProperties;
@end

@implementation MCDFuseDataSource

- (MPPropertySet)albumProperties
{
  v2 = [MPPropertySet alloc];
  v15[0] = MPModelPropertyAlbumTitle;
  v15[1] = MPModelPropertyAlbumIsFavorite;
  v15[2] = MPModelPropertyAlbumIsDisliked;
  v15[3] = MPModelPropertyAlbumIsClassical;
  v15[4] = MPModelPropertyAlbumArtwork;
  v15[5] = MPModelPropertyAlbumSuperHeroTallEditorialArtwork;
  v15[6] = MPModelPropertyAlbumSongPopularity;
  v15[7] = MPModelPropertyAlbumLibraryAddEligible;
  v15[8] = MPModelPropertyAlbumIsCompilation;
  v3 = [NSArray arrayWithObjects:v15 count:9];
  v13[0] = MPModelRelationshipAlbumArtist;
  v12 = MPModelPropertyArtistName;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v14[0] = v5;
  v13[1] = MPModelRelationshipAlbumGenre;
  v11 = MPModelPropertyGenreName;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [v2 initWithProperties:v3 relationships:v8];

  return v9;
}

- (MPPropertySet)songProperties
{
  v2 = [MPPropertySet alloc];
  v23[0] = MPModelPropertySongTitle;
  v23[1] = MPModelPropertySongExplicit;
  v23[2] = MPModelPropertySongIsFavorite;
  v23[3] = MPModelPropertySongIsDisliked;
  v23[4] = MPModelPropertySongArtwork;
  v23[5] = MPModelPropertySongShouldShowComposer;
  v15 = [NSArray arrayWithObjects:v23 count:6];
  v21[0] = MPModelRelationshipSongAlbum;
  v3 = [MPPropertySet alloc];
  v20[0] = MPModelPropertyAlbumTitle;
  v20[1] = MPModelPropertyAlbumIsFavorite;
  v20[2] = MPModelPropertyAlbumIsDisliked;
  v20[3] = MPModelPropertyAlbumReleaseDateComponents;
  v20[4] = MPModelPropertyAlbumYear;
  v14 = [NSArray arrayWithObjects:v20 count:5];
  v18 = MPModelRelationshipAlbumArtist;
  v4 = [MPPropertySet propertySetWithProperties:&__NSArray0__struct];
  v19 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v6 = [v3 initWithProperties:v14 relationships:v5];
  v22[0] = v6;
  v21[1] = MPModelRelationshipSongArtist;
  v17 = MPModelPropertyArtistName;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [MPPropertySet propertySetWithProperties:v7];
  v22[1] = v8;
  v21[2] = MPModelRelationshipSongComposer;
  v16 = MPModelPropertyComposerName;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [MPPropertySet propertySetWithProperties:v9];
  v22[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v12 = [v2 initWithProperties:v15 relationships:v11];

  return v12;
}

- (MPPropertySet)playlistProperties
{
  v2 = [MPPropertySet alloc];
  v12[0] = MPModelPropertyPlaylistName;
  v12[1] = MPModelPropertyPlaylistArtwork;
  v12[2] = MPModelPropertyPlaylistSuperHeroTallEditorialArtwork;
  v12[3] = MPModelPropertyPlaylistEditorialArtwork;
  v12[4] = MPModelPropertyPlaylistTracksTiledArtwork;
  v12[5] = MPModelPropertyPlaylistType;
  v12[6] = MPModelPropertyPlaylistCuratorPlaylist;
  v12[7] = MPModelPropertyPlaylistIsFavorite;
  v12[8] = MPModelPropertyPlaylistIsDisliked;
  v12[9] = MPModelPropertyPlaylistPublicPlaylist;
  v12[10] = MPModelPropertyPlaylistVisiblePlaylist;
  v12[11] = MPModelPropertyPlaylistLastModifiedDateComponents;
  v12[12] = MPModelPropertyPlaylistLibraryAdded;
  v3 = [NSArray arrayWithObjects:v12 count:13];
  v10 = MPModelRelationshipPlaylistCurator;
  v9 = MPModelPropertyCuratorName;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v2 initWithProperties:v3 relationships:v6];

  return v7;
}

- (MPPropertySet)curatorProperties
{
  v5[0] = MPModelPropertyCuratorName;
  v5[1] = MPModelPropertyCuratorShortName;
  v5[2] = MPModelPropertyCuratorKind;
  v5[3] = MPModelPropertyCuratorEditorialArtwork;
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (MPPropertySet)radioStationProperties
{
  v5[0] = MPModelPropertyRadioStationBeats1;
  v5[1] = MPModelPropertyRadioStationSubtype;
  v5[2] = MPModelPropertyRadioStationName;
  v5[3] = MPModelPropertyRadioStationProviderName;
  v5[4] = MPModelPropertyRadioStationEditorNotes;
  v5[5] = MPModelPropertyRadioStationShortEditorNotes;
  v5[6] = MPModelPropertyRadioStationArtwork;
  v5[7] = MPModelPropertyRadioStationGlyph;
  v5[8] = MPModelPropertyRadioStationEditorialArtwork;
  v2 = [NSArray arrayWithObjects:v5 count:9];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end