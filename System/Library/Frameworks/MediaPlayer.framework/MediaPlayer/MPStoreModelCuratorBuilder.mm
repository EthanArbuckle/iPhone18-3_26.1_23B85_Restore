@interface MPStoreModelCuratorBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelCuratorBuilder

+ (id)allSupportedProperties
{
  v5[8] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPersonName";
  v5[1] = @"MPModelPropertyCuratorShortName";
  v5[2] = @"MPModelPropertyPersonHasSocialPosts";
  v5[3] = @"MPModelPropertyCuratorEditorNotes";
  v5[4] = @"MPModelPropertyCuratorKind";
  v5[5] = @"MPModelPropertyCuratorSubKind";
  v5[6] = @"MPModelPropertyCuratorEditorialArtwork";
  v5[7] = @"MPModelPropertyCuratorBrandLogoArtwork";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*&self->_requestedCuratorProperties & 1) == 0)
  {
    v11 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v12 = [v11 properties];
    if ([v12 containsObject:@"MPModelPropertyPersonName"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFFD | v13;
    if ([v12 containsObject:@"MPModelPropertyCuratorShortName"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFFB | v14;
    if ([v12 containsObject:@"MPModelPropertyPersonHasSocialPosts"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFF7 | v15;
    if ([v12 containsObject:@"MPModelPropertyCuratorEditorNotes"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFEF | v16;
    if ([v12 containsObject:@"MPModelPropertyCuratorShortEditorNotes"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFDF | v17;
    if ([v12 containsObject:@"MPModelPropertyCuratorKind"])
    {
      v18 = 64;
    }

    else
    {
      v18 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFFBF | v18;
    if ([v12 containsObject:@"MPModelPropertyCuratorSubKind"])
    {
      v19 = 128;
    }

    else
    {
      v19 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFF7F | v19;
    if ([v12 containsObject:@"MPModelPropertyCuratorEditorialArtwork"])
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    *&self->_requestedCuratorProperties = *&self->_requestedCuratorProperties & 0xFEFF | v20;
    if ([v12 containsObject:@"MPModelPropertyCuratorBrandLogoArtwork"])
    {
      v21 = 513;
    }

    else
    {
      v21 = 1;
    }

    *&self->_requestedCuratorProperties = v21 | *&self->_requestedCuratorProperties & 0xFDFE;
  }

  v22 = [v8 storeID];
  v23 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v22);

  if (!v23)
  {
    v24 = [v8 curatorID];
    v23 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v24);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
  aBlock[4] = v23;
  v25 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
  v38[3] = &unk_1E767EB88;
  v38[4] = self;
  v26 = v8;
  v39 = v26;
  v27 = _Block_copy(v38);
  if (v9)
  {
    v28 = [v9 identifiers];
    v29 = [v28 copyWithSource:@"StorePlatform" block:v25];
    v30 = [v9 copyWithIdentifiers:v29 block:v27];
  }

  else
  {
    v28 = [v26 itemKind];
    if ([v28 isEqualToString:@"iTunesBrand"])
    {
      v31 = [v26 iTunesBrandType];
      if ([v31 isEqualToString:@"Curator"])
      {
        v32 = 1;
      }

      else if ([v31 isEqualToString:@"Genre"])
      {
        v32 = 2;
      }

      else if ([v31 isEqualToString:@"Show"])
      {
        v32 = 4;
      }

      else
      {
        v32 = 0;
      }
    }

    else if ([v28 isEqualToString:@"brand"])
    {
      v32 = 8;
    }

    else if ([v28 isEqualToString:@"activity"])
    {
      v32 = 16;
    }

    else
    {
      v32 = 0;
    }

    v33 = [MPModelCurator alloc];
    v34 = [MPIdentifierSet alloc];
    v29 = [MPModelCurator kindWithVariants:v32];
    v35 = [(MPIdentifierSet *)v34 initWithSource:@"StorePlatform" modelKind:v29 block:v25];
    v30 = [(MPModelObject *)v33 initWithIdentifiers:v35 block:v27];
  }

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v36 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v36 addStoreItemMetadata:v26];
  }

  return v30;
}

void __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
    v6[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
    v6[4] = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v6];
  }
}

void __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorShortName"] & 1) == 0)
  {
    v6 = [*(a1 + 40) shortName];
    [v4 setShortName:v6];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPersonHasSocialPosts"] & 1) == 0)
  {
    [v4 setHasSocialPosts:{objc_msgSend(*(a1 + 40), "hasSocialPosts")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorEditorNotes"] & 1) == 0)
  {
    v7 = [*(a1 + 40) editorNotes];
    [v4 setEditorNotes:v7];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorShortEditorNotes"] & 1) == 0)
  {
    v8 = [*(a1 + 40) shortEditorNotes];
    [v4 setShortEditorNotes:v8];
  }

  if ((*(*(a1 + 32) + 24) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorKind"] & 1) == 0)
  {
    v9 = [*(a1 + 40) itemKind];
    if ([v9 isEqualToString:@"iTunesBrand"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"brand"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"activity"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [v4 setCuratorKind:v10];
  }

  if ((*(*(a1 + 32) + 24) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorSubKind"] & 1) == 0)
  {
    v11 = [*(a1 + 40) iTunesBrandType];
    if ([v11 isEqualToString:@"Curator"])
    {
      v12 = 1;
    }

    else if ([v11 isEqualToString:@"Genre"])
    {
      v12 = 2;
    }

    else if ([v11 isEqualToString:@"Show"])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    [v4 setCuratorSubKind:v12];
  }

  if ((*(*(a1 + 32) + 24) & 0x100) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorEditorialArtwork"] & 1) == 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
    v15[3] = &unk_1E767E658;
    v16 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v15];
  }

  if ((*(*(a1 + 32) + 24) & 0x200) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCuratorBrandLogoArtwork"] & 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v13[3] = &unk_1E767E658;
    v14 = *(a1 + 40);
    [v4 setBrandLogoArtworkCatalogBlock:v13];
  }
}

MPArtworkCatalog *__94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
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

MPArtworkCatalog *__94__MPStoreModelCuratorBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForEditorialArtworkKind:@"brandLogo"];
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

@end