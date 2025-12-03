@interface MusicModelGridItem
+ (id)requiredStoreLibraryPersonalizationProperties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFavoritedModelObject:(id)object;
- (id)backgroundArtworkCatalog;
- (id)editorialArtworkCatalog;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object;
- (id)personalizationScopedPropertiesForProperties:(id)properties;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (id)storeContentItemObjectPropertiesFor:(id)for;
- (id)videoBackgroundArtworkCatalog;
@end

@implementation MusicModelGridItem

- (id)backgroundArtworkCatalog
{
  backgroundArtworkCatalogBlock = [(MusicModelGridItem *)self backgroundArtworkCatalogBlock];
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

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MusicModelGridItem *)self editorialArtworkCatalogBlock];
  v4 = editorialArtworkCatalogBlock;
  if (editorialArtworkCatalogBlock)
  {
    v5 = (*(editorialArtworkCatalogBlock + 16))(editorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)videoBackgroundArtworkCatalog
{
  videoBackgroundArtworkCatalogBlock = [(MusicModelGridItem *)self videoBackgroundArtworkCatalogBlock];
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
    v7 = @"MusicModelRelationshipGridItemContentItem";
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
  contentItem = [(MusicModelGridItem *)self contentItem];
  relationships = [propertiesCopy relationships];

  v7 = [relationships objectForKey:@"MusicModelRelationshipGridItemContentItem"];
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
  contentItem = [(MusicModelGridItem *)self contentItem];
  relativeModelObjectForStoreLibraryPersonalization = [contentItem relativeModelObjectForStoreLibraryPersonalization];

  return relativeModelObjectForStoreLibraryPersonalization;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object
{
  objectCopy = object;
  identifiers = [(MusicModelGridItem *)self identifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __79__MusicModelGridItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_CEF1E8;
  v9[4] = self;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [(MusicModelGridItem *)self copyWithIdentifiers:identifiers block:v9];

  return v7;
}

void __79__MusicModelGridItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
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
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __30__MusicModelGridItem_isEqual___block_invoke;
    v7[3] = &unk_CEF210;
    selfCopy = self;
    v10 = &v11;
    v8 = equalCopy;
    [MPModelObject performWithoutEnforcement:v7];
    v5 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __30__MusicModelGridItem_isEqual___block_invoke(uint64_t a1)
{
  v76 = *(a1 + 32);
  v2 = [*(a1 + 40) contentItem];
  v3 = [v2 identifiers];
  v4 = [v76 contentItem];
  v5 = [v4 identifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v3 intersectsSet:v5];

  v6 = *(*(a1 + 48) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [*(a1 + 40) contentItem];
    v8 = [v7 innerObject];
    v9 = [v8 identifiers];
    v10 = [v76 contentItem];
    v11 = [v10 innerObject];
    v12 = [v11 identifiers];
    if (v9 == v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v74 = [*(a1 + 40) contentItem];
      v73 = [v74 innerObject];
      v13 = [v73 identifiers];
      [v76 contentItem];
      v14 = v75 = v7;
      v15 = [v14 innerObject];
      [v15 identifiers];
      v17 = v16 = v9;
      *(*(*(a1 + 48) + 8) + 24) = [v13 intersectsSet:v17];

      v9 = v16;
      v7 = v75;
    }
  }

  else
  {
    *(v6 + 24) = 0;
  }

  v18 = *(*(a1 + 48) + 8);
  if (*(v18 + 24))
  {
    v19 = *(a1 + 40);
    v20 = [v19 contentItem];
    v21 = [v20 innerObject];
    LOBYTE(v19) = [v19 isFavoritedModelObject:v21];
    v22 = *(a1 + 40);
    v23 = [v76 contentItem];
    v24 = [v23 innerObject];
    *(*(*(a1 + 48) + 8) + 24) = v19 ^ [v22 isFavoritedModelObject:v24] ^ 1;
  }

  else
  {
    *(v18 + 24) = 0;
  }

  v25 = *(*(a1 + 48) + 8);
  if (*(v25 + 24) == 1)
  {
    v26 = [*(a1 + 40) titleText];
    v27 = [v76 titleText];
    if (v26 == v27)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v28 = [*(a1 + 40) titleText];
      v29 = [v76 titleText];
      *(*(*(a1 + 48) + 8) + 24) = [v28 isEqualToString:v29];
    }
  }

  else
  {
    *(v25 + 24) = 0;
  }

  v30 = *(*(a1 + 48) + 8);
  if (*(v30 + 24) == 1)
  {
    v31 = [*(a1 + 40) subtitleText];
    v32 = [v76 subtitleText];
    if (v31 == v32)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v33 = [*(a1 + 40) subtitleText];
      v34 = [v76 subtitleText];
      *(*(*(a1 + 48) + 8) + 24) = [v33 isEqualToString:v34];
    }
  }

  else
  {
    *(v30 + 24) = 0;
  }

  v35 = *(*(a1 + 48) + 8);
  if (*(v35 + 24) == 1)
  {
    v36 = [*(a1 + 40) overlayTitleText];
    v37 = [v76 overlayTitleText];
    if (v36 == v37)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v38 = [*(a1 + 40) overlayTitleText];
      v39 = [v76 overlayTitleText];
      *(*(*(a1 + 48) + 8) + 24) = [v38 isEqualToString:v39];
    }
  }

  else
  {
    *(v35 + 24) = 0;
  }

  v40 = *(*(a1 + 48) + 8);
  if (*(v40 + 24) == 1)
  {
    v41 = [*(a1 + 40) overlaySubtitleText];
    v42 = [v76 overlaySubtitleText];
    if (v41 == v42)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v43 = [*(a1 + 40) overlaySubtitleText];
      v44 = [v76 overlaySubtitleText];
      *(*(*(a1 + 48) + 8) + 24) = [v43 isEqualToString:v44];
    }
  }

  else
  {
    *(v40 + 24) = 0;
  }

  v45 = *(*(a1 + 48) + 8);
  if (*(v45 + 24) == 1)
  {
    v46 = [*(a1 + 40) descriptionText];
    v47 = [v76 descriptionText];
    if (v46 == v47)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v48 = [*(a1 + 40) descriptionText];
      v49 = [v76 descriptionText];
      *(*(*(a1 + 48) + 8) + 24) = [v48 isEqualToString:v49];
    }
  }

  else
  {
    *(v45 + 24) = 0;
  }

  v50 = *(*(a1 + 48) + 8);
  if (*(v50 + 24) == 1)
  {
    v51 = [*(a1 + 40) headlineText];
    v52 = [v76 headlineText];
    if (v51 == v52)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v53 = [*(a1 + 40) headlineText];
      v54 = [v76 headlineText];
      *(*(*(a1 + 48) + 8) + 24) = [v53 isEqualToString:v54];
    }
  }

  else
  {
    *(v50 + 24) = 0;
  }

  v55 = *(*(a1 + 48) + 8);
  if (*(v55 + 24) == 1)
  {
    v56 = [*(a1 + 40) headlineColor];
    v57 = v56 == [v76 headlineColor];
    v55 = *(*(a1 + 48) + 8);
  }

  else
  {
    v57 = 0;
  }

  *(v55 + 24) = v57;
  v58 = *(*(a1 + 48) + 8);
  if (*(v58 + 24) == 1)
  {
    v59 = [*(a1 + 40) buttonText];
    v60 = [v76 buttonText];
    if (v59 == v60)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v61 = [*(a1 + 40) buttonText];
      v62 = [v76 buttonText];
      *(*(*(a1 + 48) + 8) + 24) = [v61 isEqualToString:v62];
    }
  }

  else
  {
    *(v58 + 24) = 0;
  }

  v63 = v76;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v64 = [*(a1 + 40) backgroundArtworkCatalog];
    v65 = [v76 backgroundArtworkCatalog];
    v66 = v64 == v65 ? 1 : [v64 isEqual:v65];
    *(*(*(a1 + 48) + 8) + 24) = v66;

    v63 = v76;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v67 = [*(a1 + 40) editorialArtworkCatalog];
      v68 = [v76 editorialArtworkCatalog];
      v69 = v67 == v68 ? 1 : [v67 isEqual:v68];
      *(*(*(a1 + 48) + 8) + 24) = v69;

      v63 = v76;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v70 = [*(a1 + 40) videoBackgroundArtworkCatalog];
        v71 = [v76 videoBackgroundArtworkCatalog];
        if (v70 == v71)
        {
          v72 = 1;
        }

        else
        {
          v72 = [v70 isEqual:v71];
        }

        *(*(*(a1 + 48) + 8) + 24) = v72;

        v63 = v76;
      }
    }
  }
}

- (BOOL)isFavoritedModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isFavorite = [objectCopy isFavorite];
  }

  else
  {
    isFavorite = 0;
  }

  return isFavorite;
}

- (id)storeContentItemObjectPropertiesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_272264(forCopy);

  return v6;
}

@end