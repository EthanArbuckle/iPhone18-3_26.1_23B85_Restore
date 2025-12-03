@interface MPStoreModelRecordLabelBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelRecordLabelBuilder

+ (id)allSupportedProperties
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v6[0] = @"MPModelPropertyRecordLabelName";
  v6[1] = @"MPModelPropertyRecordLabelDescriptionText";
  v6[2] = @"MPModelPropertyRecordLabelShortDescriptionText";
  v6[3] = @"MPModelPropertyRecordLabelArtwork";
  v6[4] = @"MPModelPropertyRecordLabelEditorialArtwork";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:0];

  return v4;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedRecordLabelProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyRecordLabelName"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedRecordLabelProperties = *&self->_requestedRecordLabelProperties & 0xFD | v13;
    if ([properties containsObject:@"MPModelPropertyRecordLabelDescriptionText"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedRecordLabelProperties = *&self->_requestedRecordLabelProperties & 0xFB | v14;
    if ([properties containsObject:@"MPModelPropertyRecordLabelShortDescriptionText"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedRecordLabelProperties = *&self->_requestedRecordLabelProperties & 0xF7 | v15;
    if ([properties containsObject:@"MPModelPropertyRecordLabelArtwork"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedRecordLabelProperties = *&self->_requestedRecordLabelProperties & 0xEF | v16;
    if ([properties containsObject:@"MPModelPropertyRecordLabelEditorialArtwork"])
    {
      v17 = 33;
    }

    else
    {
      v17 = 1;
    }

    *&self->_requestedRecordLabelProperties = v17 | *&self->_requestedRecordLabelProperties & 0xDE;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v18 = metadataCopy;
  v38 = v18;
  v19 = identityCopy;
  v39 = v19;
  v20 = _Block_copy(aBlock);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v34 = &unk_1E767ED10;
  selfCopy = self;
  v21 = v18;
  v36 = v21;
  v22 = _Block_copy(&v31);
  if (objectCopy)
  {
    identifiers = [objectCopy identifiers];
    v24 = [identifiers copyWithSource:@"StorePlatform" block:v20];
    v25 = [objectCopy copyWithIdentifiers:v24 block:v22];
  }

  else
  {
    v26 = [MPModelRecordLabel alloc];
    v27 = [MPIdentifierSet alloc];
    identifiers = [MPModelArtistKind identityKind:v31];
    v24 = [(MPIdentifierSet *)v27 initWithSource:@"StorePlatform" modelKind:identifiers block:v20];
    v25 = [(MPModelObject *)v26 initWithIdentifiers:v24 block:v22];
  }

  v28 = v25;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v29 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v29 addStoreItemMetadata:v21];
  }

  return v28;
}

void __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
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
    v11[2] = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v11[3] = &unk_1E767FA78;
    v12 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v10 block:v11];
  }
}

void __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyRecordLabelName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRecordLabelDescriptionText"] & 1) == 0)
  {
    v6 = [*(a1 + 40) descriptionText];
    [v4 setDescriptionText:v6];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRecordLabelShortDescriptionText"] & 1) == 0)
  {
    v7 = [*(a1 + 40) shortDescriptionText];
    [v4 setShortDescriptionText:v7];
  }

  if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRecordLabelArtwork"] & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v10[3] = &unk_1E767ECE0;
    v11 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v10];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRecordLabelEditorialArtwork"] & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v8[3] = &unk_1E767ECE0;
    v9 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v8];
  }
}

MPArtworkCatalog *__98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

MPArtworkCatalog *__98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
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

void __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

void __98__MPStoreModelRecordLabelBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end