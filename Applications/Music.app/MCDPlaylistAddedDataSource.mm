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
  properties = [v6 properties];
  allObjects = [properties allObjects];
  v9 = [v5 initWithProperties:allObjects relationships:v4];

  return v9;
}

- (id)storeIDs
{
  playlist = [(MCDPlaylistTracksDataSource *)self playlist];
  identifiers = [playlist identifiers];
  universalStore = [identifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if (globalPlaylistID)
  {
    v8 = globalPlaylistID;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end