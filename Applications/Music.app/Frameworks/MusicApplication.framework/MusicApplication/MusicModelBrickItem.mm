@interface MusicModelBrickItem
+ (id)requiredStoreLibraryPersonalizationProperties;
- (id)backgroundArtworkCatalog;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object;
- (id)personalizationScopedPropertiesForProperties:(id)properties;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (id)storeContentItemObjectPropertiesFor:(id)for;
@end

@implementation MusicModelBrickItem

- (id)backgroundArtworkCatalog
{
  backgroundArtworkCatalogBlock = [(MusicModelBrickItem *)self backgroundArtworkCatalogBlock];
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
    v7 = @"MusicModelRelationshipBrickItemContentItem";
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
  contentItem = [(MusicModelBrickItem *)self contentItem];
  relationships = [propertiesCopy relationships];

  v7 = [relationships objectForKey:@"MusicModelRelationshipBrickItemContentItem"];
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
  contentItem = [(MusicModelBrickItem *)self contentItem];
  relativeModelObjectForStoreLibraryPersonalization = [contentItem relativeModelObjectForStoreLibraryPersonalization];

  return relativeModelObjectForStoreLibraryPersonalization;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object
{
  objectCopy = object;
  identifiers = [(MusicModelBrickItem *)self identifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __80__MusicModelBrickItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_CEF2E0;
  v9[4] = self;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [(MusicModelBrickItem *)self copyWithIdentifiers:identifiers block:v9];

  return v7;
}

void __80__MusicModelBrickItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contentItem];
  v6 = [v5 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 40)];

  [v4 setContentItem:v6];
}

- (id)storeContentItemObjectPropertiesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_272264(forCopy);

  return v6;
}

@end