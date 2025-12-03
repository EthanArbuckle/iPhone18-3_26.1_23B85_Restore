@interface MPStoreModelRadioStationBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelRadioStationBuilder

+ (id)allSupportedProperties
{
  v5[16] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyRadioStationBeats1";
  v5[1] = @"MPModelPropertyRadioStationName";
  v5[2] = @"MPModelPropertyRadioStationEditorNotes";
  v5[3] = @"MPModelPropertyRadioStationShortEditorNotes";
  v5[4] = @"MPModelPropertyRadioStationHasExplicitContent";
  v5[5] = @"MPModelPropertyRadioStationType";
  v5[6] = @"MPModelPropertyRadioStationSubtype";
  v5[7] = @"MPModelPropertyRadioStationStartingAirDate";
  v5[8] = @"MPModelPropertyRadioStationEndingAirDate";
  v5[9] = @"MPModelPropertyRadioStationArtwork";
  v5[10] = @"MPModelPropertyRadioStationGlyph";
  v5[11] = @"MPModelPropertyRadioStationEditorialArtwork";
  v5[12] = @"MPModelPropertyRadioStationAttributionLabel";
  v5[13] = @"MPModelPropertyRadioStationProviderName";
  v5[14] = @"MPModelPropertyRadioStationLive";
  v5[15] = @"MPModelPropertyRadioStationSubscriptionRequired";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:16];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedRadioStationProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyRadioStationBeats1"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFFD | v13);
    if ([properties containsObject:@"MPModelPropertyRadioStationName"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFFB | v14);
    if ([properties containsObject:@"MPModelPropertyRadioStationEditorNotes"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFF7 | v15);
    if ([properties containsObject:@"MPModelPropertyRadioStationShortEditorNotes"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFEF | v16);
    if ([properties containsObject:@"MPModelPropertyRadioStationHasExplicitContent"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFDF | v17);
    if ([properties containsObject:@"MPModelPropertyRadioStationType"])
    {
      v18 = 64;
    }

    else
    {
      v18 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFFBF | v18);
    if ([properties containsObject:@"MPModelPropertyRadioStationSubtype"])
    {
      v19 = 128;
    }

    else
    {
      v19 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFF7F | v19);
    if ([properties containsObject:@"MPModelPropertyRadioStationArtwork"])
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFEFF | v20);
    if ([properties containsObject:@"MPModelPropertyRadioStationGlyph"])
    {
      v21 = 512;
    }

    else
    {
      v21 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFDFF | v21);
    if ([properties containsObject:@"MPModelPropertyRadioStationEditorialArtwork"])
    {
      v22 = 1024;
    }

    else
    {
      v22 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFFBFF | v22);
    if ([properties containsObject:@"MPModelPropertyRadioStationAttributionLabel"])
    {
      v23 = 2048;
    }

    else
    {
      v23 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFF7FF | v23);
    if ([properties containsObject:@"MPModelPropertyRadioStationProviderName"])
    {
      v24 = 4096;
    }

    else
    {
      v24 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFEFFF | v24);
    if ([properties containsObject:@"MPModelPropertyRadioStationLive"])
    {
      v25 = 0x2000;
    }

    else
    {
      v25 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFDFFF | v25);
    if ([properties containsObject:@"MPModelPropertyRadioStationStartingAirDate"])
    {
      v26 = 0x4000;
    }

    else
    {
      v26 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFFBFFF | v26);
    if ([properties containsObject:@"MPModelPropertyRadioStationEndingAirDate"])
    {
      v27 = 0x8000;
    }

    else
    {
      v27 = 0;
    }

    self->_requestedRadioStationProperties = (*&self->_requestedRadioStationProperties & 0xFFFF7FFF | v27);
    if ([properties containsObject:@"MPModelPropertyRadioStationSubscriptionRequired"])
    {
      v28 = 65537;
    }

    else
    {
      v28 = 1;
    }

    self->_requestedRadioStationProperties = (v28 | *&self->_requestedRadioStationProperties & 0xFFFEFFFE);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v29 = metadataCopy;
  v49 = v29;
  v30 = identityCopy;
  v50 = v30;
  v31 = _Block_copy(aBlock);
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v45 = &unk_1E767EC90;
  selfCopy = self;
  v32 = v29;
  v47 = v32;
  v33 = _Block_copy(&v42);
  if (objectCopy)
  {
    identifiers = [objectCopy identifiers];
    v35 = [identifiers copyWithSource:@"StorePlatform" block:v31];
    v36 = [objectCopy copyWithIdentifiers:v35 block:v33];
  }

  else
  {
    v37 = [MPModelRadioStation alloc];
    v38 = [MPIdentifierSet alloc];
    identifiers = [MPModelRadioStationKind identityKind:v42];
    v35 = [(MPIdentifierSet *)v38 initWithSource:@"StorePlatform" modelKind:identifiers block:v31];
    v36 = [(MPModelObject *)v37 initWithIdentifiers:v35 block:v33];
  }

  v39 = v36;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v40 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v40 addStoreItemMetadata:v32];
  }

  return v39;
}

void __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 radio];
  v5 = [v4 stationStringID];

  if (!v5)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
    v14[3] = &unk_1E7680C00;
    v15 = *(a1 + 32);
    [v3 setRadioIdentifiersWithBlock:v14];
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
    v10 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v11 = [v10 DSIDForUserIdentity:*(a1 + 40) outError:0];
    v9 = [v11 stringValue];
  }

  if ([v9 length])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v12[3] = &unk_1E767FA78;
    v13 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v9 block:v12];
  }
}

void __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyRadioStationBeats1"] & 1) == 0)
  {
    [v4 setBeats1:{objc_msgSend(*(a1 + 40), "isBeats1")}];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationEditorNotes"] & 1) == 0)
  {
    v6 = [*(a1 + 40) editorNotes];
    [v4 setEditorNotes:v6];
  }

  if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationShortEditorNotes"] & 1) == 0)
  {
    v7 = [*(a1 + 40) shortEditorNotes];
    [v4 setShortEditorNotes:v7];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationHasExplicitContent"] & 1) == 0)
  {
    [v4 setHasExplicitContent:{objc_msgSend(*(a1 + 40), "isExplicitContent")}];
  }

  if ((*(*(a1 + 32) + 25) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationProviderName"] & 1) == 0)
  {
    v8 = [*(a1 + 40) radioStationProviderName];
    [v4 setProviderName:v8];
  }

  if ((*(*(a1 + 32) + 25) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationLive"] & 1) == 0)
  {
    [v4 setLive:{objc_msgSend(*(a1 + 40), "isLive")}];
  }

  if ((*(*(a1 + 32) + 26) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationSubscriptionRequired"] & 1) == 0)
  {
    [v4 setSubscriptionRequired:{objc_msgSend(*(a1 + 40), "radioStationIsSubscriptionOnly")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationType"] & 1) == 0)
  {
    v9 = [*(a1 + 40) radioStationTypeID] - 1;
    if (v9 > 9)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1A27419D8[v9];
    }

    [v4 setType:v10];
  }

  if ((*(*(a1 + 32) + 24) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationSubtype"] & 1) == 0)
  {
    v11 = [*(a1 + 40) radioStationSubtype];
    if ([v11 isEqualToString:@"Episode"])
    {
      v12 = 1;
    }

    else if ([v11 isEqualToString:@"Shoutcast"])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [v4 setSubtype:v12];
  }

  if ((*(*(a1 + 32) + 25) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationArtwork"] & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v20[3] = &unk_1E767EC58;
    v21 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v20];
  }

  if ((*(*(a1 + 32) + 25) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationGlyph"] & 1) == 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v18[3] = &unk_1E767EC58;
    v19 = *(a1 + 40);
    [v4 setStationGlyphBlock:v18];
  }

  if ((*(*(a1 + 32) + 25) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationEditorialArtwork"] & 1) == 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
    v16[3] = &unk_1E767EC58;
    v17 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v16];
  }

  if ((*(*(a1 + 32) + 25) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationAttributionLabel"] & 1) == 0)
  {
    [v4 setAttributionLabel:0];
  }

  if (([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationEvents"] & 1) == 0)
  {
    v13 = [*(a1 + 40) radioStationEvents];
    [v4 setStationEvents:v13];
  }

  if ((*(*(a1 + 32) + 25) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationStartingAirDate"] & 1) == 0)
  {
    v14 = [*(a1 + 40) startingAirDate];
    [v4 setStartingAirDate:v14];
  }

  if ((*(*(a1 + 32) + 25) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyRadioStationEndingAirDate"] & 1) == 0)
  {
    v15 = [*(a1 + 40) endingAirDate];
    [v4 setEndingAirDate:v15];
  }

  [v4 setContainsVideo:0];
}

MPArtworkCatalog *__99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestToken];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:*MEMORY[0x1E69E4250]];
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

MPArtworkCatalog *__99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) stationGlyphRequestToken];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:*MEMORY[0x1E69E4250]];
    [v2 setFormat:*MEMORY[0x1E69E4270]];
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

MPArtworkCatalog *__99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForEditorialArtworkKind:@"backgroundStatic1x1"];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:*MEMORY[0x1E69E4250]];
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

void __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 storeID];
  v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(v5);
  [v3 setStationStringID:v4];
}

void __99__MPStoreModelRadioStationBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end