@interface MCDPlayableItemsDataSource
+ (id)requiredPlaylistEntryPropertiesForModelClass:(Class)class;
+ (id)requiredPropertiesForSongs;
- (id)requestItemProperties;
@end

@implementation MCDPlayableItemsDataSource

- (id)requestItemProperties
{
  v2 = objc_opt_class();

  return [v2 requiredPropertiesForSongs];
}

+ (id)requiredPropertiesForSongs
{
  v2 = [MPPropertySet alloc];
  v18[0] = MPModelPropertySongExplicit;
  v18[1] = MPModelPropertySongCloudStatus;
  v18[2] = MPModelPropertySongHasVideo;
  v18[3] = MPModelPropertySongTraits;
  v3 = [NSArray arrayWithObjects:v18 count:4];
  v16[0] = MPModelRelationshipSongLocalFileAsset;
  v15[0] = MPModelPropertyFileAssetProtectionType;
  v15[1] = MPModelPropertyFileAssetNonPurgeable;
  v15[2] = MPModelPropertyFileAssetFilePath;
  v15[3] = MPModelPropertyFileAssetTraits;
  v4 = [NSArray arrayWithObjects:v15 count:4];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v17[0] = v5;
  v16[1] = MPModelRelationshipSongStoreAsset;
  v14[0] = MPModelPropertyStoreAssetRedownloadable;
  v14[1] = MPModelPropertyStoreAssetEndpointType;
  v14[2] = MPModelPropertyStoreAssetSubscriptionRequired;
  v14[3] = MPModelPropertyStoreAssetNeedsUserUpload;
  v6 = [NSArray arrayWithObjects:v14 count:4];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v17[1] = v7;
  v16[2] = MPModelRelationshipSongHomeSharingAsset;
  v13 = MPModelPropertyHomeSharingAssetAvailable;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [MPPropertySet propertySetWithProperties:v8];
  v17[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  v11 = [v2 initWithProperties:v3 relationships:v10];

  return v11;
}

+ (id)requiredPlaylistEntryPropertiesForModelClass:(Class)class
{
  v4 = +[MPPropertySet emptyPropertySet];
  requiredLibraryAddStatusObservationProperties = [(objc_class *)class requiredLibraryAddStatusObservationProperties];
  v6 = [v4 propertySetByCombiningWithPropertySet:requiredLibraryAddStatusObservationProperties];

  requiredLibraryRemovalProperties = [(objc_class *)class requiredLibraryRemovalProperties];
  v8 = [v6 propertySetByCombiningWithPropertySet:requiredLibraryRemovalProperties];

  if (objc_opt_class() == class)
  {
    requiredPropertiesForSongs = [objc_opt_class() requiredPropertiesForSongs];
    v10 = [v8 propertySetByCombiningWithPropertySet:requiredPropertiesForSongs];

    v8 = v10;
  }

  return v8;
}

@end