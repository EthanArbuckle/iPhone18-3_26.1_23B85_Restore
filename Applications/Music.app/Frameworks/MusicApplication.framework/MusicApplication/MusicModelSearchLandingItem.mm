@interface MusicModelSearchLandingItem
+ (id)requiredStoreLibraryPersonalizationProperties;
- (id)backgroundArtworkCatalog;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object;
- (id)personalizationScopedPropertiesForProperties:(id)properties;
- (id)relativeModelObjectForStoreLibraryPersonalization;
@end

@implementation MusicModelSearchLandingItem

- (id)backgroundArtworkCatalog
{
  backgroundArtworkCatalogBlock = [(MusicModelSearchLandingItem *)self backgroundArtworkCatalogBlock];
  v4 = backgroundArtworkCatalogBlock;
  if (backgroundArtworkCatalogBlock)
  {
    v5 = (*(backgroundArtworkCatalogBlock + 16))(backgroundArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v2 = +[MPModelStoreBrowseContentItem requiredStoreLibraryPersonalizationProperties];
  if (v2)
  {
    v3 = [MPPropertySet alloc];
    v7 = @"MusicModelRelationshipSearchLandingItemContentItem";
    v8 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = [v3 initWithProperties:&__NSArray0__struct relationships:v4];
  }

  else
  {
    v5 = +[MPPropertySet emptyPropertySet];
  }

  return v5;
}

- (id)personalizationScopedPropertiesForProperties:(id)properties
{
  propertiesCopy = properties;
  contentItem = [(MusicModelSearchLandingItem *)self contentItem];
  relationships = [propertiesCopy relationships];

  v7 = [relationships objectForKey:@"MusicModelRelationshipSearchLandingItemContentItem"];
  v8 = v7;
  if (!v7)
  {
    v8 = +[MPPropertySet emptyPropertySet];
  }

  v9 = [contentItem personalizationScopedPropertiesForProperties:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[MPPropertySet emptyPropertySet];
  }

  v12 = v11;

  if (!v7)
  {
  }

  return v12;
}

- (id)relativeModelObjectForStoreLibraryPersonalization
{
  contentItem = [(MusicModelSearchLandingItem *)self contentItem];
  relativeModelObjectForStoreLibraryPersonalization = [contentItem relativeModelObjectForStoreLibraryPersonalization];

  return relativeModelObjectForStoreLibraryPersonalization;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object
{
  objectCopy = object;
  identifiers = [(MusicModelSearchLandingItem *)self identifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __88__MusicModelSearchLandingItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_CEF018;
  v9[4] = self;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [(MusicModelSearchLandingItem *)self copyWithIdentifiers:identifiers block:v9];

  return v7;
}

void __88__MusicModelSearchLandingItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contentItem];
  v6 = [v5 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 40)];

  [v4 setContentItem:v6];
}

@end