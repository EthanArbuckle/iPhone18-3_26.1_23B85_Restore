@interface MusicModelLiveRadioCaseItem
+ (id)requiredStoreLibraryPersonalizationProperties;
- (BOOL)isEqual:(id)a3;
- (id)backgroundArtworkCatalog;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3;
- (id)personalizationScopedPropertiesForProperties:(id)a3;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (id)videoBackgroundArtworkCatalog;
@end

@implementation MusicModelLiveRadioCaseItem

- (id)backgroundArtworkCatalog
{
  v3 = [(MusicModelLiveRadioCaseItem *)self backgroundArtworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)videoBackgroundArtworkCatalog
{
  v3 = [(MusicModelLiveRadioCaseItem *)self videoBackgroundArtworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
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

- (id)personalizationScopedPropertiesForProperties:(id)a3
{
  v4 = a3;
  v5 = [(MusicModelLiveRadioCaseItem *)self contentItem];
  v6 = [v4 relationships];

  v7 = [v6 objectForKey:@"MusicModelRelationshipLiveRadioCaseItemContentItem"];
  v8 = v7;
  if (!v7)
  {
    v8 = +[MPPropertySet emptyPropertySet];
  }

  v9 = [v5 personalizationScopedPropertiesForProperties:v8];
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
  v2 = [(MusicModelLiveRadioCaseItem *)self contentItem];
  v3 = [v2 relativeModelObjectForStoreLibraryPersonalization];

  return v3;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3
{
  v4 = a3;
  v5 = [(MusicModelLiveRadioCaseItem *)self identifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __88__MusicModelLiveRadioCaseItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_CEF158;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(MusicModelLiveRadioCaseItem *)self copyWithIdentifiers:v5 block:v9];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MusicModelLiveRadioCaseItem *)self contentItem];
      v7 = [(MusicModelLiveRadioCaseItem *)v5 contentItem];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(MusicModelLiveRadioCaseItem *)self headerTitleText];
        v9 = [(MusicModelLiveRadioCaseItem *)v5 headerTitleText];
        if (v8 == v9 || [v8 isEqual:v9])
        {
          v10 = [(MusicModelLiveRadioCaseItem *)self headerSubtitleText];
          v11 = [(MusicModelLiveRadioCaseItem *)v5 headerSubtitleText];
          if (v10 == v11 || [v10 isEqual:v11])
          {
            v38 = v10;
            v12 = [(MusicModelLiveRadioCaseItem *)self accessoryButtonTitleText];
            v13 = [(MusicModelLiveRadioCaseItem *)v5 accessoryButtonTitleText];
            if (v12 == v13 || [v12 isEqual:v13])
            {
              v36 = v11;
              v37 = v13;
              v14 = [(MusicModelLiveRadioCaseItem *)self headlineText];
              v15 = [(MusicModelLiveRadioCaseItem *)v5 headlineText];
              if (v14 == v15 || [v14 isEqual:v15])
              {
                v34 = v8;
                v35 = v15;
                v16 = [(MusicModelLiveRadioCaseItem *)self subtitleText];
                v17 = [(MusicModelLiveRadioCaseItem *)v5 subtitleText];
                v33 = v16;
                if (v16 == v17 || [v16 isEqual:v17])
                {
                  v32 = v17;
                  v18 = [(MusicModelLiveRadioCaseItem *)self titleText];
                  v19 = [(MusicModelLiveRadioCaseItem *)v5 titleText];
                  v31 = v18;
                  if (v18 == v19 || [v18 isEqual:v19])
                  {
                    v30 = v19;
                    v20 = [(MusicModelLiveRadioCaseItem *)self backgroundArtworkCatalog];
                    v21 = [(MusicModelLiveRadioCaseItem *)v5 backgroundArtworkCatalog];
                    if (v20 == v21 || [v20 isEqual:v21])
                    {
                      v22 = [(MusicModelLiveRadioCaseItem *)self videoBackgroundArtworkCatalog];
                      v23 = [(MusicModelLiveRadioCaseItem *)v5 videoBackgroundArtworkCatalog];
                      if (v22 == v23)
                      {
                        v26 = v22;
                        v27 = 1;
                      }

                      else
                      {
                        v24 = v23;
                        v25 = [v22 isEqual:v23];
                        v23 = v24;
                        v26 = v22;
                        v27 = v25;
                      }

                      v21 = v29;
                    }

                    else
                    {
                      v27 = 0;
                    }

                    v19 = v30;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  v17 = v32;
                }

                else
                {
                  v27 = 0;
                }

                v8 = v34;
                v15 = v35;
              }

              else
              {
                v27 = 0;
              }

              v11 = v36;
              v13 = v37;
            }

            else
            {
              v27 = 0;
            }

            v10 = v38;
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