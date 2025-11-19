@interface MCDSongsDataSource
- (id)itemSortDescriptors;
- (id)requestItemProperties;
@end

@implementation MCDSongsDataSource

- (id)requestItemProperties
{
  v21[0] = MPModelRelationshipSongArtist;
  v20 = MPModelPropertyArtistName;
  v3 = [NSArray arrayWithObjects:&v20 count:1];
  v4 = [MPPropertySet propertySetWithProperties:v3];
  v22[0] = v4;
  v21[1] = MPModelRelationshipSongAlbum;
  v19 = MPModelPropertyAlbumTitle;
  v5 = [NSArray arrayWithObjects:&v19 count:1];
  v6 = [MPPropertySet propertySetWithProperties:v5];
  v22[1] = v6;
  v21[2] = MPModelRelationshipSongComposer;
  v18 = MPModelPropertyComposerName;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [MPPropertySet propertySetWithProperties:v7];
  v22[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

  v10 = [MPPropertySet alloc];
  v17[0] = MPModelPropertySongTitle;
  v17[1] = MPModelPropertySongArtwork;
  v17[2] = MPModelPropertySongExplicit;
  v17[3] = MPModelPropertySongIsFavorite;
  v17[4] = MPModelPropertySongIsDisliked;
  v17[5] = MPModelPropertySongShouldShowComposer;
  v17[6] = MPModelPropertySongArtistUploadedContent;
  v11 = [NSArray arrayWithObjects:v17 count:7];
  v12 = [v10 initWithProperties:v11 relationships:v9];

  v16.receiver = self;
  v16.super_class = MCDSongsDataSource;
  v13 = [(MCDPlayableItemsDataSource *)&v16 requestItemProperties];
  v14 = [v13 propertySetByCombiningWithPropertySet:v12];

  return v14;
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
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongLibraryAddedDate ascending:0];
    v20 = v5;
    v6 = &v20;
LABEL_7:
    v7 = [NSArray arrayWithObjects:v6 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqualToString:MCDSortByRecentlyPlayed])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongLastDevicePlaybackDate ascending:0];
    v19 = v5;
    v6 = &v19;
    goto LABEL_7;
  }

  if (!v3 || [v3 isEqualToString:MCDSortByArtist])
  {
    v9 = MPModelRelationshipSongAlbum;
    v17[0] = MPModelRelationshipSongAlbum;
    v17[1] = MPModelRelationshipAlbumArtist;
    v17[2] = MPModelPropertyArtistName;
    v5 = [NSArray arrayWithObjects:v17 count:3];
    v10 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v5 ascending:1];
    v18[0] = v10;
    v16[0] = v9;
    v16[1] = MPModelPropertyAlbumTitle;
    v11 = [NSArray arrayWithObjects:v16 count:2];
    v12 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v11 ascending:1];
    v18[1] = v12;
    v13 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongDiscNumber ascending:1];
    v18[2] = v13;
    v14 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTrackNumber ascending:1];
    v18[3] = v14;
    v15 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTitle ascending:1];
    v18[4] = v15;
    v7 = [NSArray arrayWithObjects:v18 count:5];

    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end