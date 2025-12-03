@interface MusicModelLiveRadioCaseItem
+ (id)requiredStoreLibraryPersonalizationProperties;
- (BOOL)isEqual:(id)equal;
- (id)backgroundArtworkCatalog;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object;
- (id)personalizationScopedPropertiesForProperties:(id)properties;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (id)videoBackgroundArtworkCatalog;
@end

@implementation MusicModelLiveRadioCaseItem

- (id)backgroundArtworkCatalog
{
  backgroundArtworkCatalogBlock = [(MusicModelLiveRadioCaseItem *)self backgroundArtworkCatalogBlock];
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

- (id)videoBackgroundArtworkCatalog
{
  videoBackgroundArtworkCatalogBlock = [(MusicModelLiveRadioCaseItem *)self videoBackgroundArtworkCatalogBlock];
  v4 = videoBackgroundArtworkCatalogBlock;
  if (videoBackgroundArtworkCatalogBlock)
  {
    v5 = (*(videoBackgroundArtworkCatalogBlock + 16))(videoBackgroundArtworkCatalogBlock, self);
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
    v7 = @"MusicModelRelationshipLiveRadioCaseItemContentItem";
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
  contentItem = [(MusicModelLiveRadioCaseItem *)self contentItem];
  relationships = [propertiesCopy relationships];

  v7 = [relationships objectForKey:@"MusicModelRelationshipLiveRadioCaseItemContentItem"];
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
  contentItem = [(MusicModelLiveRadioCaseItem *)self contentItem];
  relativeModelObjectForStoreLibraryPersonalization = [contentItem relativeModelObjectForStoreLibraryPersonalization];

  return relativeModelObjectForStoreLibraryPersonalization;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object
{
  objectCopy = object;
  identifiers = [(MusicModelLiveRadioCaseItem *)self identifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __88__MusicModelLiveRadioCaseItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_CEF158;
  v9[4] = self;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [(MusicModelLiveRadioCaseItem *)self copyWithIdentifiers:identifiers block:v9];

  return v7;
}

void __88__MusicModelLiveRadioCaseItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contentItem];
  v6 = [v5 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 40)];

  [v4 setContentItem:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contentItem = [(MusicModelLiveRadioCaseItem *)self contentItem];
      contentItem2 = [(MusicModelLiveRadioCaseItem *)v5 contentItem];
      if (contentItem == contentItem2 || [contentItem isEqual:contentItem2])
      {
        headerTitleText = [(MusicModelLiveRadioCaseItem *)self headerTitleText];
        headerTitleText2 = [(MusicModelLiveRadioCaseItem *)v5 headerTitleText];
        if (headerTitleText == headerTitleText2 || [headerTitleText isEqual:headerTitleText2])
        {
          headerSubtitleText = [(MusicModelLiveRadioCaseItem *)self headerSubtitleText];
          headerSubtitleText2 = [(MusicModelLiveRadioCaseItem *)v5 headerSubtitleText];
          if (headerSubtitleText == headerSubtitleText2 || [headerSubtitleText isEqual:headerSubtitleText2])
          {
            v38 = headerSubtitleText;
            accessoryButtonTitleText = [(MusicModelLiveRadioCaseItem *)self accessoryButtonTitleText];
            accessoryButtonTitleText2 = [(MusicModelLiveRadioCaseItem *)v5 accessoryButtonTitleText];
            if (accessoryButtonTitleText == accessoryButtonTitleText2 || [accessoryButtonTitleText isEqual:accessoryButtonTitleText2])
            {
              v36 = headerSubtitleText2;
              v37 = accessoryButtonTitleText2;
              headlineText = [(MusicModelLiveRadioCaseItem *)self headlineText];
              headlineText2 = [(MusicModelLiveRadioCaseItem *)v5 headlineText];
              if (headlineText == headlineText2 || [headlineText isEqual:headlineText2])
              {
                v34 = headerTitleText;
                v35 = headlineText2;
                subtitleText = [(MusicModelLiveRadioCaseItem *)self subtitleText];
                subtitleText2 = [(MusicModelLiveRadioCaseItem *)v5 subtitleText];
                v33 = subtitleText;
                if (subtitleText == subtitleText2 || [subtitleText isEqual:subtitleText2])
                {
                  v32 = subtitleText2;
                  titleText = [(MusicModelLiveRadioCaseItem *)self titleText];
                  titleText2 = [(MusicModelLiveRadioCaseItem *)v5 titleText];
                  v31 = titleText;
                  if (titleText == titleText2 || [titleText isEqual:titleText2])
                  {
                    v30 = titleText2;
                    backgroundArtworkCatalog = [(MusicModelLiveRadioCaseItem *)self backgroundArtworkCatalog];
                    backgroundArtworkCatalog2 = [(MusicModelLiveRadioCaseItem *)v5 backgroundArtworkCatalog];
                    if (backgroundArtworkCatalog == backgroundArtworkCatalog2 || [backgroundArtworkCatalog isEqual:backgroundArtworkCatalog2])
                    {
                      videoBackgroundArtworkCatalog = [(MusicModelLiveRadioCaseItem *)self videoBackgroundArtworkCatalog];
                      videoBackgroundArtworkCatalog2 = [(MusicModelLiveRadioCaseItem *)v5 videoBackgroundArtworkCatalog];
                      if (videoBackgroundArtworkCatalog == videoBackgroundArtworkCatalog2)
                      {
                        v26 = videoBackgroundArtworkCatalog;
                        v27 = 1;
                      }

                      else
                      {
                        v24 = videoBackgroundArtworkCatalog2;
                        v25 = [videoBackgroundArtworkCatalog isEqual:videoBackgroundArtworkCatalog2];
                        videoBackgroundArtworkCatalog2 = v24;
                        v26 = videoBackgroundArtworkCatalog;
                        v27 = v25;
                      }

                      backgroundArtworkCatalog2 = v29;
                    }

                    else
                    {
                      v27 = 0;
                    }

                    titleText2 = v30;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  subtitleText2 = v32;
                }

                else
                {
                  v27 = 0;
                }

                headerTitleText = v34;
                headlineText2 = v35;
              }

              else
              {
                v27 = 0;
              }

              headerSubtitleText2 = v36;
              accessoryButtonTitleText2 = v37;
            }

            else
            {
              v27 = 0;
            }

            headerSubtitleText = v38;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

@end