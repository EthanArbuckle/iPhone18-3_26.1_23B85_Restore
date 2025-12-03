@interface MPStoreModelTVShowBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelTVShowBuilder

+ (id)allSupportedProperties
{
  v5[9] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyTVShowTitle";
  v5[1] = @"MPModelPropertyTVShowShortTitle";
  v5[2] = @"MPModelPropertyTVShowEditorNotes";
  v5[3] = @"MPModelPropertyTVShowShortEditorNotes";
  v5[4] = @"MPModelPropertyTVShowArtwork";
  v5[5] = @"MPModelPropertyTVShowEditorialArtwork";
  v5[6] = @"MPModelPropertyTVShowEpisodeCount";
  v5[7] = @"MPModelPropertyTVShowTagline";
  v5[8] = @"MPModelPropertyTVShowStoreCanonicalID";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:9];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedTVShowProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyTVShowTitle"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFFD | v13;
    if ([properties containsObject:@"MPModelPropertyTVShowShortTitle"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFFB | v14;
    if ([properties containsObject:@"MPModelPropertyTVShowArtwork"])
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFBF | v15;
    if ([properties containsObject:@"MPModelPropertyTVShowEditorialArtwork"])
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFDF | v16;
    if ([properties containsObject:@"MPModelPropertyTVShowEditorNotes"])
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFF7 | v17;
    if ([properties containsObject:@"MPModelPropertyTVShowShortEditorNotes"])
    {
      v18 = 16;
    }

    else
    {
      v18 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFFEF | v18;
    if ([properties containsObject:@"MPModelPropertyTVShowTagline"])
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFEFF | v19;
    if ([properties containsObject:@"MPModelPropertyTVShowEpisodeCount"])
    {
      v20 = 128;
    }

    else
    {
      v20 = 0;
    }

    *&self->_requestedTVShowProperties = *&self->_requestedTVShowProperties & 0xFF7F | v20;
    if ([properties containsObject:@"MPModelPropertyTVShowStoreCanonicalID"])
    {
      v21 = 513;
    }

    else
    {
      v21 = 1;
    }

    *&self->_requestedTVShowProperties = v21 | *&self->_requestedTVShowProperties & 0xFDFE;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E7680B28;
  v22 = metadataCopy;
  v44 = v22;
  v23 = _Block_copy(aBlock);
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
  v39 = &unk_1E767F268;
  selfCopy = self;
  v24 = objectCopy;
  v41 = v24;
  v25 = v22;
  v42 = v25;
  v26 = _Block_copy(&v36);
  if (v24)
  {
    identifiers = [v24 identifiers];
    v28 = [identifiers copyWithSource:@"StorePlatform" block:v23];
    v29 = [v24 copyWithIdentifiers:v28 block:v26];
  }

  else
  {
    v30 = [MPModelTVEpisode kindWithVariants:2, v36, v37, v38, v39, selfCopy, v41];
    v31 = [MPModelTVSeason kindWithEpisodeKind:v30];
    identifiers = [MPModelTVShow kindWithSeasonKind:v31];

    v32 = [MPModelTVShow alloc];
    v28 = [[MPIdentifierSet alloc] initWithSource:@"StorePlatform" modelKind:identifiers block:v23];
    v29 = [(MPModelObject *)v32 initWithIdentifiers:v28 block:v26];
  }

  v33 = v29;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v34 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v34 addStoreItemMetadata:v25];
  }

  return v33;
}

void __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeID];
  v5 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v4);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v6[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v6[4] = v5;
  [v3 setUniversalStoreIdentifiersWithBlock:v6];
}

void __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 40) & 2) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowTitle"] & 1) == 0)
  {
    v4 = [*(a1 + 48) name];
    [v3 setTitle:v4];
  }

  if ((*(*(a1 + 32) + 40) & 4) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowShortTitle"] & 1) == 0)
  {
    v5 = [*(a1 + 48) shortName];
    [v3 setShortTitle:v5];
  }

  if ((*(*(a1 + 32) + 40) & 0x80) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowEpisodeCount"] & 1) == 0)
  {
    [v3 setEpisodesCount:{objc_msgSend(*(a1 + 48), "episodeCount")}];
  }

  if ((*(*(a1 + 32) + 40) & 0x100) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowTagline"] & 1) == 0)
  {
    v6 = [*(a1 + 48) editorNotesWithStyle:@"tagline"];
    [v3 setTagline:v6];
  }

  if ((*(*(a1 + 32) + 40) & 0x200) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowStoreCanonicalID"] & 1) == 0)
  {
    [v3 setStoreCanonicalID:&stru_1F149ECA8];
  }

  if ((*(*(a1 + 32) + 40) & 0x40) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowArtwork"] & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
    v9[3] = &unk_1E767F240;
    v10 = *(a1 + 48);
    [v3 setArtworkCatalogBlock:v9];
  }

  if ((*(*(a1 + 32) + 40) & 0x20) != 0 && ([*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyTVShowEditorialArtwork"] & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v7[3] = &unk_1E767F240;
    v8 = *(a1 + 48);
    [v3 setEditorialArtworkCatalogBlock:v7];
  }
}

MPArtworkCatalog *__93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestToken];
  if (v1)
  {
    v2 = [MPArtworkCatalog alloc];
    v3 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
    v4 = [(MPArtworkCatalog *)v2 initWithToken:v1 dataSource:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

MPArtworkCatalog *__93__MPStoreModelTVShowBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) tvShowArtworkRequestToken];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:@"fc"];
    v3 = [MPArtworkCatalog alloc];
    v4 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
    v5 = [(MPArtworkCatalog *)v3 initWithToken:v2 dataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end