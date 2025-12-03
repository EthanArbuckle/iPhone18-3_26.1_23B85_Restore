@interface MPStoreLibraryPersonalizationRequest
+ (id)libraryViewAllowingEmptyCollectionsAndNonLibraryContentForUserIdentity:(id)identity;
+ (id)libraryViewAllowingEmptyCollectionsForUserIdentity:(id)identity;
+ (id)libraryViewIgnoringContentRestrictionsWithUserIdentity:(id)identity;
+ (id)libraryViewWithMediaLibraryOverrideForTestingOnly:(id)only;
+ (id)libraryViewWithUserIdentity:(id)identity;
+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties;
+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties matchAlbumArtistOnStoreIdAndName:(BOOL)name;
+ (id)preferredQueue;
- (MPStoreLibraryPersonalizationRequest)init;
- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedContentDescriptors:(id)descriptors;
- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)request unpersonalizedContentDescriptors:(id)descriptors;
- (NSDictionary)itemIndexPathToOverridePropertySet;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (id)propertiesForItemAtIndexPath:(id)path;
- (void)setProperties:(id)properties forItemAtIndexPath:(id)path;
- (void)setUserIdentity:(id)identity;
@end

@implementation MPStoreLibraryPersonalizationRequest

- (NSDictionary)itemIndexPathToOverridePropertySet
{
  v2 = [(NSMutableDictionary *)self->_itemIndexPathToOverridePropertySet copy];

  return v2;
}

- (void)setUserIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    identityCopy = [MEMORY[0x1E69E4680] activeAccount];
  }

  if (self->_userIdentity != identityCopy)
  {
    v5 = identityCopy;
    objc_storeStrong(&self->_userIdentity, identityCopy);
    identityCopy = v5;
  }
}

- (void)setProperties:(id)properties forItemAtIndexPath:(id)path
{
  propertiesCopy = properties;
  pathCopy = path;
  itemIndexPathToOverridePropertySet = self->_itemIndexPathToOverridePropertySet;
  if (propertiesCopy)
  {
    if (!itemIndexPathToOverridePropertySet)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_itemIndexPathToOverridePropertySet;
      self->_itemIndexPathToOverridePropertySet = v8;

      itemIndexPathToOverridePropertySet = self->_itemIndexPathToOverridePropertySet;
    }

    [(NSMutableDictionary *)itemIndexPathToOverridePropertySet setObject:propertiesCopy forKey:pathCopy];
  }

  else
  {
    [(NSMutableDictionary *)itemIndexPathToOverridePropertySet removeObjectForKey:pathCopy];
  }
}

- (id)propertiesForItemAtIndexPath:(id)path
{
  v4 = [(NSMutableDictionary *)self->_itemIndexPathToOverridePropertySet objectForKey:path];
  v5 = v4;
  if (v4)
  {
    itemProperties = v4;
  }

  else
  {
    itemProperties = [(MPModelRequest *)self itemProperties];
  }

  v7 = itemProperties;

  return v7;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPStoreLibraryPersonalizationRequestOperation);
  userIdentity = [(MPStoreLibraryPersonalizationRequest *)self userIdentity];
  [(MPAsyncOperation *)v5 setUserIdentity:userIdentity];

  [(MPStoreLibraryPersonalizationRequestOperation *)v5 setRequest:self];
  [(MPStoreLibraryPersonalizationRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MPStoreLibraryPersonalizationRequest;
  v4 = [(MPModelRequest *)&v8 copyWithZone:zone];
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

- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)request unpersonalizedContentDescriptors:(id)descriptors
{
  requestCopy = request;
  descriptorsCopy = descriptors;
  v8 = [(MPStoreLibraryPersonalizationRequest *)self initWithUnpersonalizedContentDescriptors:descriptorsCopy];
  if (v8)
  {
    itemProperties = [requestCopy itemProperties];
    [(MPModelRequest *)v8 setItemProperties:itemProperties];

    sectionProperties = [requestCopy sectionProperties];
    [(MPModelRequest *)v8 setSectionProperties:sectionProperties];
  }

  return v8;
}

- (MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedContentDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v6 = [(MPStoreLibraryPersonalizationRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unpersonalizedContentDescriptors, descriptors);
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

+ (id)libraryViewAllowingEmptyCollectionsAndNonLibraryContentForUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:identityCopy];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:4194308];

  return v6;
}

+ (id)libraryViewAllowingEmptyCollectionsForUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:identityCopy];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:0x400000];

  return v6;
}

+ (id)libraryViewIgnoringContentRestrictionsWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:identityCopy];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:65540];

  return v6;
}

+ (id)libraryViewWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [MPMediaLibraryView alloc];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:identityCopy];
  v6 = [(MPMediaLibraryView *)v4 initWithLibrary:v5 filteringOptions:4];

  return v6;
}

+ (id)libraryViewWithMediaLibraryOverrideForTestingOnly:(id)only
{
  onlyCopy = only;
  v4 = [[MPMediaLibraryView alloc] initWithLibrary:onlyCopy filteringOptions:4];

  return v4;
}

+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties matchAlbumArtistOnStoreIdAndName:(BOOL)name
{
  v5 = [MPStoreLibraryPersonalizationRequestOperation personalizedResponseForContentDescriptor:descriptor requestedProperties:properties matchAlbumArtistOnStoreIdAndName:name];

  return v5;
}

+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties
{
  v4 = [MPStoreLibraryPersonalizationRequest personalizedResponseForContentDescriptor:descriptor requestedProperties:properties matchAlbumArtistOnStoreIdAndName:1];

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