@interface MPStoreModelSocialPersonBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelSocialPersonBuilder

+ (id)allSupportedProperties
{
  v5[8] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPersonName";
  v5[1] = @"MPModelPropertySocialPersonUncensoredName";
  v5[2] = @"MPModelPropertySocialPersonHandle";
  v5[3] = @"MPModelPropertySocialPersonBiography";
  v5[4] = @"MPModelPropertySocialPersonArtwork";
  v5[5] = @"MPModelPropertySocialPersonIsPrivate";
  v5[6] = @"MPModelPropertySocialPersonIsVerified";
  v5[7] = @"MPModelPropertySocialPersonHasLightweightProfile";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*&self->_requestedSocialPersonProperties & 1) == 0)
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

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFFD | v13;
    if ([v12 containsObject:@"MPModelPropertySocialPersonUncensoredName"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFFB | v14;
    if ([v12 containsObject:@"MPModelPropertySocialPersonHandle"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFF7 | v15;
    if ([v12 containsObject:@"MPModelPropertySocialPersonBiography"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFEF | v16;
    if ([v12 containsObject:@"MPModelPropertySocialPersonArtwork"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFDF | v17;
    if ([v12 containsObject:@"MPModelPropertySocialPersonIsPrivate"])
    {
      v18 = 128;
    }

    else
    {
      v18 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFF7F | v18;
    if ([v12 containsObject:@"MPModelPropertySocialPersonIsVerified"])
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    *&self->_requestedSocialPersonProperties = *&self->_requestedSocialPersonProperties & 0xFFBF | v19;
    if ([v12 containsObject:@"MPModelPropertySocialPersonHasLightweightProfile"])
    {
      v20 = 257;
    }

    else
    {
      v20 = 1;
    }

    *&self->_requestedSocialPersonProperties = v20 | *&self->_requestedSocialPersonProperties & 0xFEFE;
  }

  v21 = [v8 storeID];
  v22 = MPStoreItemMetadataStringNormalizeStoreIDValue(v21);

  if (![v22 length])
  {
    v23 = [v8 socialProfileID];
    v24 = MPStoreItemMetadataStringNormalizeStoreIDValue(v23);

    v22 = v24;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E7680B28;
  v25 = v22;
  v39 = v25;
  v26 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
  v36[3] = &unk_1E767EDA0;
  v36[4] = self;
  v27 = v8;
  v37 = v27;
  v28 = _Block_copy(v36);
  if (v9)
  {
    v29 = [v9 identifiers];
    v30 = [v29 copyWithSource:@"StorePlatform" block:v26];
    v31 = [v9 copyWithIdentifiers:v30 block:v28];
  }

  else
  {
    v32 = [MPModelSocialPerson alloc];
    v33 = [MPIdentifierSet alloc];
    v29 = +[MPModelSocialPerson kind];
    v30 = [(MPIdentifierSet *)v33 initWithSource:@"StorePlatform" modelKind:v29 block:v26];
    v31 = [(MPModelObject *)v32 initWithIdentifiers:v30 block:v28];
  }

  v34 = v31;

  return v34;
}

void __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 socialProfileID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
    v6[3] = &unk_1E767FAA0;
    v7 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v6];
  }
}

void __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonUncensoredName"] & 1) == 0)
  {
    v6 = [*(a1 + 40) nameRaw];
    [v4 setUncensoredName:v6];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonHandle"] & 1) == 0)
  {
    v7 = [*(a1 + 40) handle];
    [v4 setHandle:v7];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonArtwork"] & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
    v8[3] = &unk_1E767ED78;
    v9 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v8];
  }

  if ((*(*(a1 + 32) + 24) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonIsPrivate"] & 1) == 0)
  {
    [v4 setPrivatePerson:{objc_msgSend(*(a1 + 40), "isPrivatePerson")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonIsVerified"] & 1) == 0)
  {
    [v4 setVerified:{objc_msgSend(*(a1 + 40), "isVerifiedPerson")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x100) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySocialPersonHasLightweightProfile"] & 1) == 0)
  {
    [v4 setHasLightweightProfile:{objc_msgSend(*(a1 + 40), "isOnboardedPerson") ^ 1}];
  }
}

MPArtworkCatalog *__99__MPStoreModelSocialPersonBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarArtworkRequestToken];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:@"sr"];
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