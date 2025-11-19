@interface MPStoreModelArtistBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelArtistBuilder

+ (id)allSupportedProperties
{
  v12[11] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v12[0] = @"MPModelPropertyPersonName";
  v12[1] = @"MPModelPropertyArtistHasBiography";
  v12[2] = @"MPModelPropertyPersonHasSocialPosts";
  v12[3] = @"MPModelPropertyArtistArtwork";
  v12[4] = @"MPModelPropertyArtistEditorialArtwork";
  v12[5] = @"MPModelPropertyArtistClassicalExperienceAvailable";
  v12[6] = @"MPModelPropertyArtistIsFavorite";
  v12[7] = @"MPModelPropertyArtistIsDisliked";
  v12[8] = @"MPModelPropertyArtistDateFavorited";
  v12[9] = @"MPModelPropertyArtistLibraryAdded";
  v12[10] = @"MPModelPropertyArtistIsPinned";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:11];
  v9 = @"MPModelPropertyGenreName";
  v10 = @"MPModelRelationshipArtistGenre";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v6];

  return v7;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  p_requestedArtistProperties = &self->_requestedArtistProperties;
  if ((*&self->_requestedArtistProperties & 1) == 0)
  {
    v12 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v13 = [v12 properties];
    if ([v13 containsObject:@"MPModelPropertyPersonName"])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFFD | v14;
    if ([v13 containsObject:@"MPModelPropertyArtistHasBiography"])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFFB | v15;
    if ([v13 containsObject:@"MPModelPropertyPersonHasSocialPosts"])
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFF7 | v16;
    if ([v13 containsObject:@"MPModelPropertyArtistArtwork"])
    {
      v17 = 16;
    }

    else
    {
      v17 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFEF | v17;
    if ([v13 containsObject:@"MPModelPropertyArtistEditorialArtwork"])
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFDF | v18;
    if ([v13 containsObject:@"MPModelPropertyArtistClassicalExperienceAvailable"])
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFFBF | v19;
    if ([v13 containsObject:@"MPModelPropertyArtistIsFavorite"])
    {
      v20 = 128;
    }

    else
    {
      v20 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFF7F | v20;
    if ([v13 containsObject:@"MPModelPropertyArtistIsDisliked"])
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFEFF | v21;
    if ([v13 containsObject:@"MPModelPropertyArtistDateFavorited"])
    {
      v22 = 512;
    }

    else
    {
      v22 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFDFF | v22;
    if ([v13 containsObject:@"MPModelPropertyArtistLibraryAdded"])
    {
      v23 = 1024;
    }

    else
    {
      v23 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xFBFF | v23;
    if ([v13 containsObject:@"MPModelPropertyArtistIsPinned"])
    {
      v24 = 2048;
    }

    else
    {
      v24 = 0;
    }

    *p_requestedArtistProperties = *p_requestedArtistProperties & 0xF7FF | v24;
    v25 = [v12 relationships];
    v26 = [v25 objectForKey:@"MPModelRelationshipArtistGenre"];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 properties];
      *&self->_requestedArtistProperties.genre |= 1u;
      if ([v28 containsObject:@"MPModelPropertyGenreName"])
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

      *&self->_requestedArtistProperties.genre = *&self->_requestedArtistProperties.genre & 0xFD | v29;
    }

    *p_requestedArtistProperties |= 1u;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v30 = v8;
  v48 = v30;
  v31 = v10;
  v49 = v31;
  v32 = _Block_copy(aBlock);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v44[3] = &unk_1E767E558;
  v44[4] = self;
  v33 = v30;
  v45 = v33;
  v34 = v9;
  v46 = v34;
  v35 = _Block_copy(v44);
  if (v34)
  {
    v36 = [v34 identifiers];
    v37 = [v36 copyWithSource:@"StorePlatform" block:v32];
    v38 = [v34 copyWithIdentifiers:v37 block:v35];
  }

  else
  {
    v39 = [MPModelArtist alloc];
    v40 = [MPIdentifierSet alloc];
    v36 = +[MPModelArtistKind identityKind];
    v37 = [(MPIdentifierSet *)v40 initWithSource:@"StorePlatform" modelKind:v36 block:v32];
    v38 = [(MPModelObject *)v39 initWithIdentifiers:v37 block:v35];
  }

  v41 = v38;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v42 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v42 addStoreItemMetadata:v33];
  }

  return v41;
}

void __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
    v13[3] = &unk_1E767FAA0;
    v14 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v13];
  }

  v6 = [v3 personalizedStore];
  v7 = [v6 personID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [*(a1 + 40) accountDSID];
  }

  v10 = v9;

  if ([v10 length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v11[3] = &unk_1E767FA78;
    v12 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v10 block:v11];
  }
}

void __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyArtistHasBiography"] & 1) == 0)
  {
    [v4 setHasBiography:{objc_msgSend(*(a1 + 40), "hasArtistBiography")}];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPersonHasSocialPosts"] & 1) == 0)
  {
    [v4 setHasSocialPosts:{objc_msgSend(*(a1 + 40), "hasSocialPosts")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyArtistArtwork"] & 1) == 0)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v25[3] = &unk_1E767E528;
    v26 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v25];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyArtistEditorialArtwork"] & 1) == 0)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v23[3] = &unk_1E767E528;
    v24 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v23];
  }

  v6 = *(a1 + 32);
  if (*(v6 + 28))
  {
    v7 = [*(a1 + 40) genreNames];
    v8 = [v7 firstObject];

    if (v8)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
      v20 = &unk_1E767EEC8;
      v21 = *(a1 + 32);
      v22 = v8;
      v9 = _Block_copy(&v17);
      if ([*(a1 + 48) hasLoadedValueForKey:{@"MPModelRelationshipArtistGenre", v17, v18, v19, v20, v21}] && (objc_msgSend(*(a1 + 48), "genre"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = [v10 identifiers];
        v13 = [v11 copyWithIdentifiers:v12 block:v9];
      }

      else
      {
        v14 = [MPModelGenre alloc];
        v11 = +[MPIdentifierSet emptyIdentifierSet];
        v13 = [(MPModelObject *)v14 initWithIdentifiers:v11 block:v9];
      }
    }

    else
    {
      v13 = 0;
    }

    [v4 setGenre:v13];

    v6 = *(a1 + 32);
  }

  v15 = *(v6 + 24);
  if ((v15 & 0x40) != 0)
  {
    v16 = [*(a1 + 40) classicalURL];
    [v4 setClassicalExperienceAvailable:v16 != 0];

    v15 = *(*(a1 + 32) + 24);
    if ((v15 & 0x80) == 0)
    {
LABEL_27:
      if ((v15 & 0x100) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  [v4 setIsFavorite:0];
  v15 = *(*(a1 + 32) + 24);
  if ((v15 & 0x100) == 0)
  {
LABEL_28:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v4 setIsDisliked:0];
  v15 = *(*(a1 + 32) + 24);
  if ((v15 & 0x200) == 0)
  {
LABEL_29:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    [v4 setLibraryAdded:0];
    if ((*(*(a1 + 32) + 24) & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_36:
  [v4 setDateFavorited:0];
  v15 = *(*(a1 + 32) + 24);
  if ((v15 & 0x400) != 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((v15 & 0x800) != 0)
  {
LABEL_31:
    [v4 setIsPinned:0];
  }

LABEL_32:
}

MPArtworkCatalog *__93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

MPArtworkCatalog *__93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForEditorialArtworkKind:@"bannerUber"];
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

uint64_t __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t result, void *a2)
{
  if ((*(*(result + 32) + 28) & 2) != 0)
  {
    return [a2 setName:*(result + 40)];
  }

  return result;
}

void __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

void __93__MPStoreModelArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end