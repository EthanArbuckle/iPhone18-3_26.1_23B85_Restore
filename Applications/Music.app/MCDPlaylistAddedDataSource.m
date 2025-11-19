@interface MCDPlaylistAddedDataSource
- (id)requestSectionProperties;
- (id)storeIDs;
@end

@implementation MCDPlaylistAddedDataSource

- (id)requestSectionProperties
{
  v12 = MPModelRelationshipGenericPlaylist;
  v11 = MPModelPropertyPlaylistLibraryAdded;
  v2 = [NSArray arrayWithObjects:&v11 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];
  v13 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v5 = [MPPropertySet alloc];
  v6 = +[MPModelPlaylist requiredLibraryAddStatusObservationProperties];
  v7 = [v6 properties];
  v8 = [v7 allObjects];
  v9 = [v5 initWithProperties:v8 relationships:v4];

  return v9;
}

- (id)storeIDs
{
  v2 = [(MCDPlaylistTracksDataSource *)self playlist];
  v3 = [v2 identifiers];
  v4 = [v3 universalStore];
  v5 = [v4 globalPlaylistID];

  if (v5)
  {
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end