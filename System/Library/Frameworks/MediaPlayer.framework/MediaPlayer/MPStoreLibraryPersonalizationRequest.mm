@interface MPStoreLibraryPersonalizationRequest
+ (id)libraryViewAllowingEmptyCollectionsAndNonLibraryContentForUserIdentity:(id)a3;
+ (id)libraryViewAllowingEmptyCollectionsForUserIdentity:(id)a3;
+ (id)libraryViewIgnoringContentRestrictionsWithUserIdentity:(id)a3;
+ (id)libraryViewWithMediaLibraryOverrideForTestingOnly:(id)a3;
+ (id)libraryViewWithUserIdentity:(id)a3;
+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4;
+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4 matchAlbumArtistOnStoreIdAndName:(BOOL)a5;
+ (id)preferredQueue;
- (MPStoreLibraryPersonalizationRequest)init;
- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedContentDescriptors:(id)a3;
- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)a3 unpersonalizedContentDescriptors:(id)a4;
- (NSDictionary)itemIndexPathToOverridePropertySet;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (id)propertiesForItemAtIndexPath:(id)a3;
- (void)setProperties:(id)a3 forItemAtIndexPath:(id)a4;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPStoreLibraryPersonalizationRequest

- (NSDictionary)itemIndexPathToOverridePropertySet
{
  v2 = [(NSMutableDictionary *)self->_itemIndexPathToOverridePropertySet copy];

  return v2;
}

- (void)setUserIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
  }

  if (self->_userIdentity != v4)
  {
    v5 = v4;
    objc_storeStrong(&self->_userIdentity, v4);
    v4 = v5;
  }
}

- (void)setProperties:(id)a3 forItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  itemIndexPathToOverridePropertySet = self->_itemIndexPathToOverridePropertySet;
  if (v10)
  {
    if (!itemIndexPathToOverridePropertySet)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_itemIndexPathToOverridePropertySet;
      self->_itemIndexPathToOverridePropertySet = v8;

      itemIndexPathToOverridePropertySet = self->_itemIndexPathToOverridePropertySet;
    }

    [(NSMutableDictionary *)itemIndexPathToOverridePropertySet setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)itemIndexPathToOverridePropertySet removeObjectForKey:v6];
  }
}

- (id)propertiesForItemAtIndexPath:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_itemIndexPathToOverridePropertySet objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(MPModelRequest *)self itemProperties];
  }

  v7 = v6;

  return v7;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPStoreLibraryPersonalizationRequestOperation);
  v6 = [(MPStoreLibraryPersonalizationRequest *)self userIdentity];
  [(MPAsyncOperation *)v5 setUserIdentity:v6];

  [(MPStoreLibraryPersonalizationRequestOperation *)v5 setRequest:self];
  [(MPStoreLibraryPersonalizationRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MPStoreLibraryPersonalizationRequest;
  v4 = [(MPModelRequest *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_itemIndexPathToOverridePropertySet mutableCopy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    objc_storeStrong(v4 + 11, self->_unpersonalizedContentDescriptors);
    objc_storeStrong(v4 + 12, self->_representedObjects);
    objc_storeStrong(v4 + 13, self->_mediaLibraryOverrideForTestingOnly);
    *(v4 + 72) = self->_matchAlbumArtistsOnNameAndStoreID;
    *(v4 + 73) = self->_ignoreExplicitContentRestrictions;
  }

  return v4;
}

- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)a3 unpersonalizedContentDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPStoreLibraryPersonalizationRequest *)self initWithUnpersonalizedContentDescriptors:v7];
  if (v8)
  {
    v9 = [v6 itemProperties];
    [(MPModelRequest *)v8 setItemProperties:v9];

    v10 = [v6 sectionProperties];
    [(MPModelRequest *)v8 setSectionProperties:v10];
  }

  return v8;
}

- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedContentDescriptors:(id)a3
{
  v5 = a3;
  v6 = [(MPStoreLibraryPersonalizationRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unpersonalizedContentDescriptors, a3);
    v7->_matchAlbumArtistsOnNameAndStoreID = 1;
    v7->_ignoreExplicitContentRestrictions = 0;
  }

  return v7;
}

- (MPStoreLibraryPersonalizationRequest)init
{
  v3.receiver = self;
  v3.super_class = MPStoreLibraryPersonalizationRequest;
  result = [(MPStoreLibraryPersonalizationRequest *)&v3 init];
  if (result)
  {
    result->_matchAlbumArtistsOnNameAndStoreID = 1;
    result->_ignoreExplicitContentRestrictions = 0;
  }

  return result;
}

+ (id)libraryViewAllowingEmptyCollectionsAndNonLibraryContentForUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v3];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:4194308];

  return v6;
}

+ (id)libraryViewAllowingEmptyCollectionsForUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v3];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:0x400000];

  return v6;
}

+ (id)libraryViewIgnoringContentRestrictionsWithUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v3];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:65540];

  return v6;
}

+ (id)libraryViewWithUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v3];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:4];

  return v6;
}

+ (id)libraryViewWithMediaLibraryOverrideForTestingOnly:(id)a3
{
  v3 = a3;
  v4 = [[MPMediaLibraryView alloc] initWithLibrary:v3 filteringOptions:4];

  return v4;
}

+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4 matchAlbumArtistOnStoreIdAndName:(BOOL)a5
{
  v5 = [MPStoreLibraryPersonalizationRequestOperation personalizedResponseForContentDescriptor:a3 requestedProperties:a4 matchAlbumArtistOnStoreIdAndName:a5];

  return v5;
}

+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4
{
  v4 = [MPStoreLibraryPersonalizationRequest personalizedResponseForContentDescriptor:a3 requestedProperties:a4 matchAlbumArtistOnStoreIdAndName:1];

  return v4;
}

+ (id)preferredQueue
{
  if (+[MPStoreLibraryPersonalizationRequest preferredQueue]::onceToken != -1)
  {
    dispatch_once(&+[MPStoreLibraryPersonalizationRequest preferredQueue]::onceToken, &__block_literal_global_32535);
  }

  v3 = +[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue;

  return v3;
}

uint64_t __54__MPStoreLibraryPersonalizationRequest_preferredQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = +[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue;
  +[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue = v0;

  [+[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue setMaxConcurrentOperationCount:1];
  [+[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue setName:@"com.apple.MediaPlayer.MPStoreLibraryPersonalizationRequest.sharedQueue"];
  v2 = +[MPStoreLibraryPersonalizationRequest preferredQueue]::__sharedQueue;

  return [v2 setQualityOfService:25];
}

@end