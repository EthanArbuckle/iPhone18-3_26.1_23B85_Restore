@interface MCDAlbumAddedDataSource
- (id)requestSectionProperties;
- (id)storeIDs;
@end

@implementation MCDAlbumAddedDataSource

- (id)requestSectionProperties
{
  v12 = MPModelRelationshipGenericAlbum;
  v11 = MPModelPropertyAlbumLibraryAdded;
  v2 = [NSArray arrayWithObjects:&v11 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];
  v13 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v5 = [MPPropertySet alloc];
  v6 = +[MPModelAlbum requiredLibraryAddStatusObservationProperties];
  properties = [v6 properties];
  allObjects = [properties allObjects];
  v9 = [v5 initWithProperties:allObjects relationships:v4];

  return v9;
}

- (id)storeIDs
{
  album = [(MCDAlbumTracksDataSource *)self album];
  identifiers = [album identifiers];
  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  if (adamID)
  {
    v6 = [NSString stringWithFormat:@"%lld", adamID];
    v8 = v6;
    adamID = [NSArray arrayWithObjects:&v8 count:1];
  }

  return adamID;
}

@end