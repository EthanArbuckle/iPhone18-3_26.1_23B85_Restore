@interface MPStoreModelTVEpisodeBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelTVEpisodeBuilder

+ (id)allSupportedProperties
{
  v25[15] = *MEMORY[0x1E69E9840];
  v17 = [MPPropertySet alloc];
  v25[0] = @"MPModelPropertyTVEpisodeTitle";
  v25[1] = @"MPModelPropertyTVEpisodeDescriptionText";
  v25[2] = @"MPModelPropertyTVEpisodeDuration";
  v25[3] = @"MPModelPropertyTVEpisodeMusicShow";
  v25[4] = @"MPModelPropertyTVEpisodeNumber";
  v25[5] = @"MPModelPropertyTVEpisodeExplicitRating";
  v25[6] = @"MPModelPropertyTVEpisodeArtwork";
  v25[7] = @"MPModelPropertyTVEpisodeHasCloudSyncSource";
  v25[8] = @"MPModelPropertyTVEpisodeLibraryAdded";
  v25[9] = @"MPModelPropertyTVEpisodeLibraryAddEligible";
  v25[10] = @"MPModelPropertyTVEpisodeKeepLocalEnableState";
  v25[11] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatus";
  v25[12] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason";
  v25[13] = @"MPModelPropertyTVEpisodeKeepLocalConstraints";
  v25[14] = @"MPModelPropertyTVEpisodeStoreCanonicalID";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:15];
  v23[0] = @"MPModelRelationshipTVEpisodeShow";
  v2 = [MPPropertySet alloc];
  v22 = @"MPModelPropertyTVShowTitle";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v19[0] = @"MPModelPropertyPersonName";
  v19[1] = @"MPModelPropertyTVShowCreatorArtwork";
  v20 = @"MPModelRelationshipTVShowCreator";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [MPPropertySet propertySetWithProperties:v15];
  v21 = v14;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v4 = [(MPPropertySet *)v2 initWithProperties:v13 relationships:v3];
  v24[0] = v4;
  v23[1] = @"MPModelRelationshipTVEpisodeStoreAsset";
  v5 = +[MPStoreModelStoreAssetBuilder allSupportedProperties];
  v24[1] = v5;
  v23[2] = @"MPModelRelationshipTVEpisodeLocalFileAsset";
  v6 = +[MPModelFileAsset allSupportedProperties];
  v24[2] = v6;
  v23[3] = @"MPModelRelationshipTVEpisodeSeason";
  v18[0] = @"MPModelPropertyTVSeasonYear";
  v18[1] = @"MPModelPropertyTVSeasonNumber";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v8 = [MPPropertySet propertySetWithProperties:v7];
  v24[3] = v8;
  v23[4] = @"MPModelRelationshipTVEpisodePlaybackPosition";
  v9 = +[MPStoreModelPlaybackPositionBuilder allSupportedProperties];
  v24[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v11 = [(MPPropertySet *)v17 initWithProperties:v16 relationships:v10];

  return v11;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  v11 = identityCopy;
  p_requestedEpisodeProperties = &self->_requestedEpisodeProperties;
  if ((*&self->_requestedEpisodeProperties & 1) == 0)
  {
    v76 = metadataCopy;
    v77 = objectCopy;
    v78 = identityCopy;
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyTVEpisodeTitle"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFFFD | v15;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeDescriptionText"])
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFFFB | v16;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeDuration"])
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFFF7 | v17;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeArtwork"])
    {
      v18 = 16;
    }

    else
    {
      v18 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFFEF | v18;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeLibraryAdded"])
    {
      v19 = 4096;
    }

    else
    {
      v19 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFEFFF | v19;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeKeepLocalEnableState"])
    {
      v20 = 64;
    }

    else
    {
      v20 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFFBF | v20;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus"])
    {
      v21 = 128;
    }

    else
    {
      v21 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFF7F | v21;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFEFF | v22;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeKeepLocalConstraints"])
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFDFF | v23;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeLibraryAddEligible"])
    {
      v24 = 0x2000;
    }

    else
    {
      v24 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFDFFF | v24;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeHasCloudSyncSource"])
    {
      v25 = 1024;
    }

    else
    {
      v25 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFFBFF | v25;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeNumber"])
    {
      v26 = 0x8000;
    }

    else
    {
      v26 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFF7FFF | v26;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeMusicShow"])
    {
      v27 = 0x4000;
    }

    else
    {
      v27 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFFBFFF | v27;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeExplicitRating"])
    {
      v28 = 0x10000;
    }

    else
    {
      v28 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFEFFFF | v28;
    if ([properties containsObject:@"MPModelPropertyTVEpisodeStoreCanonicalID"])
    {
      v29 = 0x20000;
    }

    else
    {
      v29 = 0;
    }

    *p_requestedEpisodeProperties = *p_requestedEpisodeProperties & 0xFFFDFFFF | v29;
    v75 = requestedPropertySet;
    relationships = [requestedPropertySet relationships];
    v31 = [relationships objectForKey:@"MPModelRelationshipTVEpisodeSeason"];
    v32 = v31;
    if (v31)
    {
      *&self->_requestedEpisodeProperties.season |= 1u;
      properties2 = [v31 properties];
      if ([properties2 containsObject:@"MPModelPropertyTVSeasonNumber"])
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      *&self->_requestedEpisodeProperties.season = *&self->_requestedEpisodeProperties.season & 0xFD | v34;
      if ([properties2 containsObject:@"MPModelPropertyTVSeasonYear"])
      {
        v35 = 4;
      }

      else
      {
        v35 = 0;
      }

      *&self->_requestedEpisodeProperties.season = *&self->_requestedEpisodeProperties.season & 0xFB | v35;
      relationships2 = [v32 relationships];
      v37 = [relationships2 objectForKey:@"MPModelRelationshipTVSeasonShow"];

      if (v37)
      {
        properties3 = [v37 properties];
        *&self->_requestedEpisodeProperties.season.show |= 1u;
        if ([properties3 containsObject:@"MPModelPropertyTVShowTitle"])
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        *&self->_requestedEpisodeProperties.season.show = *&self->_requestedEpisodeProperties.season.show & 0xFD | v39;
        relationships3 = [v37 relationships];
        v41 = [relationships3 objectForKey:@"MPModelRelationshipTVShowCreator"];

        if (v41)
        {
          properties4 = [v41 properties];
          *&self->_requestedEpisodeProperties.season.show.showCreator |= 1u;
          if ([properties4 containsObject:@"MPModelPropertyPersonName"])
          {
            v43 = 2;
          }

          else
          {
            v43 = 0;
          }

          *&self->_requestedEpisodeProperties.season.show.showCreator = *&self->_requestedEpisodeProperties.season.show.showCreator & 0xFD | v43;
          if ([properties4 containsObject:@"MPModelPropertyTVShowCreatorArtwork"])
          {
            v44 = 4;
          }

          else
          {
            v44 = 0;
          }

          *&self->_requestedEpisodeProperties.season.show.showCreator = *&self->_requestedEpisodeProperties.season.show.showCreator & 0xFB | v44;
        }
      }
    }

    v45 = [relationships objectForKey:@"MPModelRelationshipTVEpisodeShow"];
    v46 = v45;
    if (v45)
    {
      properties5 = [v45 properties];
      *&self->_requestedEpisodeProperties.show |= 1u;
      if ([properties5 containsObject:@"MPModelPropertyTVShowTitle"])
      {
        v48 = 2;
      }

      else
      {
        v48 = 0;
      }

      *&self->_requestedEpisodeProperties.show = *&self->_requestedEpisodeProperties.show & 0xFD | v48;
      relationships4 = [v46 relationships];
      v50 = [relationships4 objectForKey:@"MPModelRelationshipTVShowCreator"];

      if (v50)
      {
        properties6 = [v50 properties];
        *&self->_requestedEpisodeProperties.show.showCreator |= 1u;
        if ([properties6 containsObject:@"MPModelPropertyPersonName"])
        {
          v52 = 2;
        }

        else
        {
          v52 = 0;
        }

        *&self->_requestedEpisodeProperties.show.showCreator = *&self->_requestedEpisodeProperties.show.showCreator & 0xFD | v52;
        if ([properties6 containsObject:@"MPModelPropertyTVShowCreatorArtwork"])
        {
          v53 = 4;
        }

        else
        {
          v53 = 0;
        }

        *&self->_requestedEpisodeProperties.show.showCreator = *&self->_requestedEpisodeProperties.show.showCreator & 0xFB | v53;
      }
    }

    v54 = [relationships objectForKey:@"MPModelRelationshipTVEpisodeStoreAsset"];
    storeAssetProperties = self->_storeAssetProperties;
    self->_storeAssetProperties = v54;

    v56 = [relationships objectForKey:@"MPModelRelationshipTVEpisodeLocalFileAsset"];
    if (v56)
    {
      *p_requestedEpisodeProperties |= 0x800u;
    }

    v57 = [relationships objectForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];
    if (v57)
    {
      v58 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaybackPositionBuilder alloc] initWithRequestedPropertySet:v57];
      playbackPositionBuilder = self->_playbackPositionBuilder;
      self->_playbackPositionBuilder = v58;
    }

    *p_requestedEpisodeProperties |= 1u;

    objectCopy = v77;
    v11 = v78;
    metadataCopy = v76;
  }

  hasSubscriptionOffer = [metadataCopy hasSubscriptionOffer];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E7680B28;
  v61 = metadataCopy;
  v85 = v61;
  v62 = _Block_copy(aBlock);
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v79[3] = &unk_1E767F1C8;
  v79[4] = self;
  v63 = v61;
  v80 = v63;
  v64 = objectCopy;
  v81 = v64;
  v65 = v11;
  v82 = v65;
  v83 = hasSubscriptionOffer;
  v66 = _Block_copy(v79);
  if (v64)
  {
    identifiers = [v64 identifiers];
    v68 = [identifiers copyWithSource:@"StorePlatform" block:v62];
    v69 = [v64 copyWithIdentifiers:v68 block:v66];
  }

  else
  {
    v70 = [MPModelTVEpisode alloc];
    v71 = [MPIdentifierSet alloc];
    identifiers = +[MPModelTVEpisodeKind identityKind];
    v68 = [(MPIdentifierSet *)v71 initWithSource:@"StorePlatform" modelKind:identifiers block:v62];
    v69 = [(MPModelObject *)v70 initWithIdentifiers:v68 block:v66];
  }

  v72 = v69;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v73 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v73 addStoreItemMetadata:v63];
  }

  return v72;
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v13[3] = &unk_1E767F058;
  v4 = v3;
  v14 = v4;
  v15 = *(a1 + 32);
  [v4 setUniversalStoreIdentifiersWithBlock:v13];
  v5 = [v4 personalizedStore];
  v6 = [v5 personID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E69E4680] activeAccount];
    v8 = [v9 accountDSID];
  }

  if ([v8 length])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v10[3] = &unk_1E767F080;
    v11 = v4;
    v12 = *(a1 + 32);
    [v11 setPersonalStoreIdentifiersWithPersonID:v8 block:v10];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 48) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeTitle"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setTitle:v5];
  }

  if ((*(*(a1 + 32) + 48) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeDescriptionText"] & 1) == 0)
  {
    v6 = [*(a1 + 40) descriptionText];
    [v4 setDescriptionText:v6];
  }

  if ((*(*(a1 + 32) + 48) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeDuration"] & 1) == 0)
  {
    [*(a1 + 40) duration];
    [v4 setDuration:?];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  if (!v8 && (*(v7 + 49) & 0x20) == 0)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v10 = *(v7 + 32);
  if (!v10)
  {
    if ((*(v7 + 49) & 0x20) != 0)
    {
      v68[0] = @"MPModelPropertyStoreAssetRedownloadable";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
      v12 = [MPPropertySet propertySetWithProperties:v13];

      v14 = *(*(a1 + 32) + 40);
      if (v14)
      {
        v15 = v14;
        if (v12)
        {
          v16 = [v14 propertySetByCombiningWithPropertySet:v12];

          v15 = v16;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v11 = v8;
      v12 = 0;
      if (v8)
      {
LABEL_21:
        v15 = v11;
LABEL_22:
        v17 = [(MPStoreModelObjectBuilder *)[MPStoreModelStoreAssetBuilder alloc] initWithRequestedPropertySet:v15];
        v18 = *(a1 + 32);
        v19 = *(v18 + 32);
        *(v18 + 32) = v17;

        v10 = *(*(a1 + 32) + 32);
        goto LABEL_23;
      }
    }

    v11 = v12;
    v12 = v11;
    goto LABEL_21;
  }

LABEL_23:
  v20 = *(a1 + 40);
  v21 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipTVEpisodeStoreAsset"];
  if (v21)
  {
    v22 = [*(a1 + 48) storeAsset];
  }

  else
  {
    v22 = 0;
  }

  v9 = [v10 modelObjectWithStoreItemMetadata:v20 sourceModelObject:v22 userIdentity:*(a1 + 56)];
  if (v21)
  {
  }

  v7 = *(a1 + 32);
  if (*(v7 + 40))
  {
    [v4 setStoreAsset:v9];
    v7 = *(a1 + 32);
  }

LABEL_30:
  if ((*(v7 + 49) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeLibraryAddEligible"] & 1) == 0)
  {
    v23 = [*(a1 + 40) videoSubtype];
    v24 = [v23 isEqualToString:@"tvtrailer"];

    [v4 setLibraryAddEligible:{objc_msgSend(v9, "isRedownloadable") & (v24 ^ 1)}];
  }

  if ((*(*(a1 + 32) + 49) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeLibraryAdded"] & 1) == 0)
  {
    [v4 setLibraryAdded:0];
  }

  if ((*(*(a1 + 32) + 49) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource"] & 1) == 0)
  {
    [v4 setHasCloudSyncSource:0];
  }

  if ((*(*(a1 + 32) + 48) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState"] & 1) == 0)
  {
    [v4 setKeepLocalEnableState:0];
  }

  if ((*(*(a1 + 32) + 48) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatus:0];
  }

  if ((*(*(a1 + 32) + 49) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatusReason:0];
  }

  if ((*(*(a1 + 32) + 49) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints"] & 1) == 0)
  {
    [v4 setKeepLocalConstraints:0];
  }

  if ((*(*(a1 + 32) + 49) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelRelationshipTVEpisodeLocalFileAsset"] & 1) == 0)
  {
    [v4 setLocalFileAsset:0];
  }

  if ((*(*(a1 + 32) + 48) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeArtwork"] & 1) == 0)
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v66[3] = &unk_1E767F0B8;
    v67 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v66];
  }

  if ((*(*(a1 + 32) + 49) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeMusicShow"] & 1) == 0)
  {
    [v4 setMusicShow:1];
  }

  if ((*(*(a1 + 32) + 49) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeNumber"] & 1) == 0)
  {
    [v4 setEpisodeNumber:{objc_msgSend(*(a1 + 40), "trackNumber")}];
  }

  if ((*(*(a1 + 32) + 50) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeExplicitRating"] & 1) == 0)
  {
    [v4 setExplicitRating:{objc_msgSend(*(a1 + 40), "explicitRating")}];
  }

  if ((*(*(a1 + 32) + 50) & 2) != 0 && ([*(a1 + 48) hasLoadedValueForKey:@"MPModelPropertyTVEpisodeStoreCanonicalID"] & 1) == 0)
  {
    [v4 setStoreCanonicalID:&stru_1F149ECA8];
  }

  v25 = *(a1 + 32);
  if (*(v25 + 64))
  {
    v26 = [*(a1 + 40) artistStoreID];
    v27 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v26);

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    aBlock[3] = &__block_descriptor_41_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
    aBlock[4] = v27;
    v65 = *(a1 + 64);
    v28 = _Block_copy(aBlock);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8;
    v62[3] = &unk_1E767F128;
    v29 = *(a1 + 40);
    v62[4] = *(a1 + 32);
    v63 = v29;
    v30 = _Block_copy(v62);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipTVEpisodeShow"])
    {
      v31 = [*(a1 + 48) show];
      v32 = [v31 identifiers];
      v33 = [(MPIdentifierSet *)v32 copyWithSource:@"StorePlatform" block:v28];
      v34 = [v31 copyWithIdentifiers:v33 block:v30];
    }

    else
    {
      v35 = [MPModelTVShow alloc];
      v36 = [MPIdentifierSet alloc];
      v31 = +[MPModelTVShowKind identityKind];
      v32 = [(MPIdentifierSet *)v36 initWithSource:@"StorePlatform" modelKind:v31 block:v28];
      v34 = [(MPModelObject *)v35 initWithIdentifiers:v32 block:v30];
    }

    [v4 setShow:v34];
    v25 = *(a1 + 32);
  }

  if (*(v25 + 52))
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9;
    v58[3] = &unk_1E767F178;
    v59 = *(a1 + 40);
    v61 = *(a1 + 64);
    v60 = *(a1 + 56);
    v37 = _Block_copy(v58);
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12;
    v54 = &unk_1E767F1A0;
    v38 = *(a1 + 40);
    v55 = *(a1 + 32);
    v56 = v38;
    v57 = *(a1 + 64);
    v39 = _Block_copy(&v51);
    if ([*(a1 + 48) hasLoadedValueForKey:{@"MPModelRelationshipTVEpisodeSeason", v51, v52, v53, v54, v55}])
    {
      v40 = [*(a1 + 48) season];
      v41 = [v40 identifiers];
      v42 = [(MPIdentifierSet *)v41 copyWithSource:@"StorePlatform" block:v37];
      v43 = [v40 copyWithIdentifiers:v42 block:v39];
    }

    else
    {
      v44 = [MPModelTVSeason alloc];
      v45 = [MPIdentifierSet alloc];
      v40 = +[MPModelTVSeasonKind identityKind];
      v41 = [(MPIdentifierSet *)v45 initWithSource:@"StorePlatform" modelKind:v40 block:v37];
      v43 = [(MPModelObject *)v44 initWithIdentifiers:v41 block:v39];
    }

    [v4 setSeason:v43];
    v25 = *(a1 + 32);
  }

  v46 = *(v25 + 24);
  if (v46)
  {
    v47 = *(a1 + 40);
    v48 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];
    if (v48)
    {
      v49 = [*(a1 + 48) playbackPosition];
    }

    else
    {
      v49 = 0;
    }

    v50 = [v46 modelObjectWithStoreItemMetadata:v47 sourceModelObject:v49 userIdentity:*(a1 + 56)];
    [v4 setPlaybackPosition:v50];

    if (v48)
    {
    }
  }
}

MPArtworkCatalog *__96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestTokenForScreenshotArtwork];
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

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
  v6[3] = &unk_1E767F0E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v5 setUniversalStoreIdentifiersWithBlock:v6];
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if ((*(v3 + 64) & 2) != 0)
  {
    v4 = [*(a1 + 40) artistName];
    [v5 setTitle:v4];

    v3 = *(a1 + 32);
  }

  if (*(v3 + 68))
  {
    [v5 setCreator:0];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10;
  v12[3] = &unk_1E767F150;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  [v3 setUniversalStoreIdentifiersWithBlock:v12];
  v4 = [v3 personalizedStore];
  v5 = [v4 personID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v9 = [v8 DSIDForUserIdentity:*(a1 + 40) outError:0];
    v7 = [v9 stringValue];
  }

  if ([v7 length])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11;
    v10[3] = &unk_1E767FA78;
    v11 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v7 block:v10];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 52);
  if ((v5 & 2) != 0)
  {
    [v3 setNumber:{objc_msgSend(*(a1 + 40), "seasonNumber")}];
    v4 = *(a1 + 32);
    v5 = *(v4 + 52);
  }

  if ((v5 & 4) != 0)
  {
    v6 = [*(a1 + 40) releaseDate];
    if (v6)
    {
      v7 = +[MPStoreItemMetadata storeServerCalendar];
      v8 = [v7 component:4 fromDate:v6];
    }

    else
    {
      v8 = 0;
    }

    [v3 setYear:v8];

    v4 = *(a1 + 32);
  }

  if (*(v4 + 56))
  {
    v9 = [*(a1 + 40) artistStoreID];
    v10 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v9);

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13;
    aBlock[3] = &__block_descriptor_41_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
    aBlock[4] = v10;
    v27 = *(a1 + 48);
    v11 = _Block_copy(aBlock);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_15;
    v23 = &unk_1E767F128;
    v12 = *(a1 + 40);
    v24 = *(a1 + 32);
    v25 = v12;
    v13 = _Block_copy(&v20);
    if ([v3 hasLoadedValueForKey:{@"MPModelRelationshipTVSeasonShow", v20, v21, v22, v23, v24}])
    {
      v14 = [v3 show];
      v15 = [v14 identifiers];
      v16 = [(MPIdentifierSet *)v15 copyWithSource:@"StorePlatform" block:v11];
      v17 = [v14 copyWithIdentifiers:v16 block:v13];
    }

    else
    {
      v18 = [MPModelTVShow alloc];
      v19 = [MPIdentifierSet alloc];
      v14 = +[MPModelTVShowKind identityKind];
      v15 = [(MPIdentifierSet *)v19 initWithSource:@"StorePlatform" modelKind:v14 block:v11];
      v17 = [(MPModelObject *)v18 initWithIdentifiers:v15 block:v13];
    }

    if (*(*(a1 + 32) + 64))
    {
      [v3 setShow:v17];
    }
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_14;
  v6[3] = &unk_1E767F0E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v5 setUniversalStoreIdentifiersWithBlock:v6];
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if ((*(v3 + 56) & 2) != 0)
  {
    v4 = [*(a1 + 40) artistName];
    [v5 setTitle:v4];

    v3 = *(a1 + 32);
  }

  if (*(v3 + 60))
  {
    [v5 setCreator:0];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_14(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) universalStore];
  v4 = [v3 adamID];

  if (!v4)
  {
    [v7 setAdamID:*(a1 + 40)];
  }

  if (*(a1 + 48) == 1)
  {
    v5 = [*(a1 + 32) universalStore];
    v6 = [v5 subscriptionAdamID];

    if (!v6)
    {
      [v7 setSubscriptionAdamID:*(a1 + 40)];
    }
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) collectionStoreID];
  v4 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v3);

  [v5 setAdamID:v4];
  if (*(a1 + 40) == 1)
  {
    [v5 setSubscriptionAdamID:v4];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) universalStore];
  v4 = [v3 adamID];

  if (!v4)
  {
    [v7 setAdamID:*(a1 + 40)];
  }

  if (*(a1 + 48) == 1)
  {
    v5 = [*(a1 + 32) universalStore];
    v6 = [v5 subscriptionAdamID];

    if (!v6)
    {
      [v7 setSubscriptionAdamID:*(a1 + 40)];
    }
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) universalStore];
  v4 = [v3 adamID];

  if (!v4)
  {
    v5 = [*(a1 + 40) storeID];
    [v13 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v5)];
  }

  v6 = [*(a1 + 32) universalStore];
  v7 = [v6 subscriptionAdamID];

  if (!v7)
  {
    [v13 setSubscriptionAdamID:{objc_msgSend(*(a1 + 40), "subscriptionAdamID")}];
  }

  v8 = [*(a1 + 32) universalStore];
  v9 = [v8 purchasedAdamID];

  if (!v9)
  {
    [v13 setPurchasedAdamID:{objc_msgSend(*(a1 + 40), "purchasedAdamID")}];
  }

  v10 = [*(a1 + 32) universalStore];
  v11 = [v10 universalCloudLibraryID];

  if (!v11)
  {
    v12 = [*(a1 + 40) cloudUniversalLibraryID];
    [v13 setUniversalCloudLibraryID:v12];
  }
}

void __96__MPStoreModelTVEpisodeBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) personalizedStore];
  v4 = [v3 cloudID];

  if (!v4)
  {
    [v9 setCloudID:{objc_msgSend(*(a1 + 40), "cloudID")}];
  }

  v5 = [*(a1 + 32) personalizedStore];
  v6 = [v5 cloudAlbumID];

  if (!v6)
  {
    v7 = [*(a1 + 40) cloudAlbumID];
    [v9 setCloudAlbumID:v7];
  }

  v8 = [*(a1 + 40) recommendationID];
  [v9 setRecommendationID:v8];
}

@end