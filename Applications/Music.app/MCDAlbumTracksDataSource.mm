@interface MCDAlbumTracksDataSource
- (MCDAlbumTracksDataSource)initWithAlbum:(id)a3 storeContent:(BOOL)a4;
- (id)allowedSectionIdentifiers;
- (id)itemSortDescriptors;
- (id)requestIdentifierSet;
- (id)requestItemProperties;
- (id)requestSectionKind;
- (id)requestSectionProperties;
- (id)scopedContainers;
@end

@implementation MCDAlbumTracksDataSource

- (MCDAlbumTracksDataSource)initWithAlbum:(id)a3 storeContent:(BOOL)a4
{
  v7 = a3;
  v8 = [(MCDAlbumTracksDataSource *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_album, a3);
    v9->_storeContent = a4;
  }

  return v9;
}

- (id)requestSectionKind
{
  v2 = [(MCDAlbumTracksDataSource *)self requestItemKind];
  v3 = [MPModelAlbum kindWithSongKind:v2];

  return v3;
}

- (id)itemSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongDiscNumber ascending:1];
  v3 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTrackNumber ascending:1, v2];
  v7[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTitle ascending:1];
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)requestItemProperties
{
  v3 = [MPPropertySet alloc];
  v10[0] = MPModelPropertySongTitle;
  v10[1] = MPModelPropertySongArtwork;
  v10[2] = MPModelPropertySongTrackNumber;
  v10[3] = MPModelPropertySongExplicit;
  v10[4] = MPModelPropertySongIsFavorite;
  v10[5] = MPModelPropertySongIsDisliked;
  v10[6] = MPModelPropertySongDuration;
  v10[7] = MPModelPropertySongArtistUploadedContent;
  v4 = [NSArray arrayWithObjects:v10 count:8];
  v5 = [v3 initWithProperties:v4 relationships:0];

  v9.receiver = self;
  v9.super_class = MCDAlbumTracksDataSource;
  v6 = [(MCDPlayableItemsDataSource *)&v9 requestItemProperties];
  v7 = [v6 propertySetByCombiningWithPropertySet:v5];

  return v7;
}

- (id)requestSectionProperties
{
  v19 = MPModelRelationshipAlbumArtist;
  v18 = MPModelPropertyArtistName;
  v3 = [NSArray arrayWithObjects:&v18 count:1];
  v4 = [MPPropertySet propertySetWithProperties:v3];
  v20 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v6 = [MPPropertySet alloc];
  v17[0] = MPModelPropertyAlbumTitle;
  v17[1] = MPModelPropertyAlbumIsFavorite;
  v17[2] = MPModelPropertyAlbumIsDisliked;
  v17[3] = MPModelPropertyAlbumIsCompilation;
  v17[4] = MPModelPropertyAlbumArtwork;
  v17[5] = MPModelPropertyAlbumTrackCount;
  v17[6] = MPModelPropertyAlbumYear;
  v17[7] = MPModelPropertyAlbumSongPopularity;
  v7 = [NSArray arrayWithObjects:v17 count:8];
  v8 = [v6 initWithProperties:v7 relationships:v5];

  if ([(MCDAlbumTracksDataSource *)self storeContent])
  {
    v15 = MPModelStoreBrowseContentItemRelationshipAlbum;
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [MPPropertySet alloc];
    v14 = MPModelStoreBrowseContentItemPropertyItemType;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [v10 initWithProperties:v11 relationships:v9];
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (id)scopedContainers
{
  v2 = [(MCDAlbumTracksDataSource *)self album];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)allowedSectionIdentifiers
{
  v2 = [(MCDAlbumTracksDataSource *)self album];
  v3 = [v2 identifiers];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)requestIdentifierSet
{
  v2 = [(MCDAlbumTracksDataSource *)self album];
  v3 = [v2 identifiers];

  return v3;
}

@end