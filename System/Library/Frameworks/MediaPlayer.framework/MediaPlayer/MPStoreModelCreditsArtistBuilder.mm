@interface MPStoreModelCreditsArtistBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelCreditsArtistBuilder

+ (id)allSupportedProperties
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v12[0] = @"MPModelPropertyPersonName";
  v12[1] = @"MPModelPropertyCreditsArtistArtwork";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = @"MPModelPropertyPersonName";
  v10 = @"MPModelRelationshipCreditsArtistRelatedArtist";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v6];

  return v7;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedCreditsArtistProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyPersonName"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedCreditsArtistProperties = *&self->_requestedCreditsArtistProperties & 0xFD | v13;
    if ([properties containsObject:@"MPModelPropertyCreditsArtistArtwork"])
    {
      v14 = 5;
    }

    else
    {
      v14 = 1;
    }

    *&self->_requestedCreditsArtistProperties = v14 | *&self->_requestedCreditsArtistProperties & 0xFA;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v15 = metadataCopy;
  v35 = v15;
  v16 = identityCopy;
  v36 = v16;
  v17 = _Block_copy(aBlock);
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v31 = &unk_1E767E5C0;
  selfCopy = self;
  v18 = v15;
  v33 = v18;
  v19 = _Block_copy(&v28);
  if (objectCopy)
  {
    identifiers = [objectCopy identifiers];
    v21 = [identifiers copyWithSource:@"StorePlatform" block:v17];
    v22 = [objectCopy copyWithIdentifiers:v21 block:v19];
  }

  else
  {
    v23 = [MPModelCreditsArtist alloc];
    v24 = [MPIdentifierSet alloc];
    identifiers = [MPModelArtistKind identityKind:v28];
    v21 = [(MPIdentifierSet *)v24 initWithSource:@"StorePlatform" modelKind:identifiers block:v17];
    v22 = [(MPModelObject *)v23 initWithIdentifiers:v21 block:v19];
  }

  v25 = v22;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v26 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v26 addStoreItemMetadata:v18];
  }

  return v25;
}

void __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
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
    v11[2] = __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v11[3] = &unk_1E767FA78;
    v12 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v10 block:v11];
  }
}

void __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyCreditsArtistArtwork"] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v6[3] = &unk_1E767E598;
    v7 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v6];
  }
}

MPArtworkCatalog *__100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

void __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

void __100__MPStoreModelCreditsArtistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end