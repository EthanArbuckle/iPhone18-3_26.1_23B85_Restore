@interface MPStoreModelMovieBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelMovieBuilder

+ (id)allSupportedProperties
{
  v13[16] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v13[0] = @"MPModelPropertyMovieTitle";
  v13[1] = @"MPModelPropertyMovieDescriptionText";
  v13[2] = @"MPModelPropertyMovieDuration";
  v13[3] = @"MPModelPropertyMovieReleaseDate";
  v13[4] = @"MPModelPropertyMovieExplicitRating";
  v13[5] = @"MPModelPropertyMovieTagline";
  v13[6] = @"MPModelPropertyMovieArtwork";
  v13[7] = @"MPModelPropertyMovieEditorialArtwork";
  v13[8] = @"MPModelPropertyMovieHasCloudSyncSource";
  v13[9] = @"MPModelPropertyMovieLibraryAdded";
  v13[10] = @"MPModelPropertyMovieLibraryAddEligible";
  v13[11] = @"MPModelPropertyMovieKeepLocalEnableState";
  v13[12] = @"MPModelPropertyMovieKeepLocalManagedStatus";
  v13[13] = @"MPModelPropertyMovieKeepLocalManagedStatusReason";
  v13[14] = @"MPModelPropertyMovieKeepLocalConstraints";
  v13[15] = @"MPModelPropertyMovieStoreCanonicalID";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:16];
  v11[0] = @"MPModelRelationshipMovieClips";
  v4 = +[MPStoreModelMovieMediaClipBuilder allSupportedProperties];
  v12[0] = v4;
  v11[1] = @"MPModelRelationshipMovieStoreAsset";
  v5 = +[MPStoreModelStoreAssetBuilder allSupportedProperties];
  v12[1] = v5;
  v11[2] = @"MPModelRelationshipMovieLocalFileAsset";
  v6 = +[MPModelFileAsset allSupportedProperties];
  v12[2] = v6;
  v11[3] = @"MPModelRelationshipMoviePlaybackPosition";
  v7 = +[MPStoreModelPlaybackPositionBuilder allSupportedProperties];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedMovieProperties & 1) == 0)
  {
    v54 = objectCopy;
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyMovieTitle"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFFD | v13);
    if ([properties containsObject:@"MPModelPropertyMovieDescriptionText"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFFB | v14);
    if ([properties containsObject:@"MPModelPropertyMovieDuration"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFF7 | v15);
    if ([properties containsObject:@"MPModelPropertyMovieReleaseDate"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFEF | v16);
    if ([properties containsObject:@"MPModelPropertyMovieExplicitRating"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFDF | v17);
    if ([properties containsObject:@"MPModelPropertyMovieTagline"])
    {
      v18 = 64;
    }

    else
    {
      v18 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFFBF | v18);
    if ([properties containsObject:@"MPModelPropertyMovieArtwork"])
    {
      v19 = 128;
    }

    else
    {
      v19 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFF7F | v19);
    if ([properties containsObject:@"MPModelPropertyMovieEditorialArtwork"])
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFEFF | v20);
    if ([properties containsObject:@"MPModelPropertyMovieLibraryAdded"])
    {
      v21 = 0x8000;
    }

    else
    {
      v21 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFF7FFF | v21);
    if ([properties containsObject:@"MPModelPropertyMovieKeepLocalEnableState"])
    {
      v22 = 512;
    }

    else
    {
      v22 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFDFF | v22);
    if ([properties containsObject:@"MPModelPropertyMovieKeepLocalManagedStatus"])
    {
      v23 = 1024;
    }

    else
    {
      v23 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFFBFF | v23);
    if ([properties containsObject:@"MPModelPropertyMovieKeepLocalManagedStatusReason"])
    {
      v24 = 2048;
    }

    else
    {
      v24 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFF7FF | v24);
    if ([properties containsObject:@"MPModelPropertyMovieKeepLocalConstraints"])
    {
      v25 = 4096;
    }

    else
    {
      v25 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFEFFF | v25);
    if ([properties containsObject:@"MPModelPropertyMovieLibraryAddEligible"])
    {
      v26 = 0x10000;
    }

    else
    {
      v26 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFEFFFF | v26);
    if ([properties containsObject:@"MPModelPropertyMovieHasCloudSyncSource"])
    {
      v27 = 0x2000;
    }

    else
    {
      v27 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFFDFFF | v27);
    if ([properties containsObject:@"MPModelPropertyMovieStoreCanonicalID"])
    {
      v28 = 0x20000;
    }

    else
    {
      v28 = 0;
    }

    self->_requestedMovieProperties = (*&self->_requestedMovieProperties & 0xFFFDFFFF | v28);
    relationships = [requestedPropertySet relationships];
    v30 = [relationships objectForKey:@"MPModelRelationshipMovieStoreAsset"];
    storeAssetProperties = self->_storeAssetProperties;
    self->_storeAssetProperties = v30;

    v32 = [relationships objectForKey:@"MPModelRelationshipMovieLocalFileAsset"];
    if (v32)
    {
      *&self->_requestedMovieProperties |= 0x4000u;
    }

    v33 = [relationships objectForKey:@"MPModelRelationshipMoviePlaybackPosition"];
    if (v33)
    {
      v34 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaybackPositionBuilder alloc] initWithRequestedPropertySet:v33];
      playbackPositionBuilder = self->_playbackPositionBuilder;
      self->_playbackPositionBuilder = v34;
    }

    v36 = [relationships objectForKey:@"MPModelRelationshipMovieClips"];
    if (v36)
    {
      v37 = [(MPStoreModelObjectBuilder *)[MPStoreModelMovieMediaClipBuilder alloc] initWithRequestedPropertySet:v36];
      mediaClipBuilder = self->_mediaClipBuilder;
      self->_mediaClipBuilder = v37;
    }

    *&self->_requestedMovieProperties |= 1u;

    objectCopy = v54;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v39 = metadataCopy;
  v60 = v39;
  v40 = identityCopy;
  v61 = v40;
  v41 = _Block_copy(aBlock);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v55[3] = &unk_1E767E850;
  v55[4] = self;
  v42 = v39;
  v56 = v42;
  v43 = objectCopy;
  v57 = v43;
  v44 = v40;
  v58 = v44;
  v45 = _Block_copy(v55);
  if (v43)
  {
    identifiers = [v43 identifiers];
    v47 = [identifiers copyWithSource:@"StorePlatform" block:v41];
    v48 = [v43 copyWithIdentifiers:v47 block:v45];
  }

  else
  {
    v49 = [MPModelMovie alloc];
    v50 = [MPIdentifierSet alloc];
    identifiers = +[MPModelMovieKind identityKind];
    v47 = [(MPIdentifierSet *)v50 initWithSource:@"StorePlatform" modelKind:identifiers block:v41];
    v48 = [(MPModelObject *)v49 initWithIdentifiers:v47 block:v45];
  }

  v51 = v48;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v52 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v52 addStoreItemMetadata:v42];
  }

  return v51;
}

void __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v14[3] = &unk_1E767F058;
  v4 = v3;
  v15 = v4;
  v16 = *(a1 + 32);
  [v4 setUniversalStoreIdentifiersWithBlock:v14];
  v5 = [v4 personalizedStore];
  v6 = [v5 personID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v10 = [v9 DSIDForUserIdentity:*(a1 + 40) outError:0];
    v8 = [v10 stringValue];
  }

  if ([v8 length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v11[3] = &unk_1E767F080;
    v12 = v4;
    v13 = *(a1 + 32);
    [v12 setPersonalStoreIdentifiersWithPersonID:v8 block:v11];
  }
}

void __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 56) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyMovieTitle"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setTitle:v5];
  }

  if ((*(*(a1 + 32) + 56) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieDescriptionText"] & 1) == 0)
  {
    v6 = [*(a1 + 40) descriptionText];
    [v4 setDescriptionText:v6];
  }

  if ((*(*(a1 + 32) + 56) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieDuration"] & 1) == 0)
  {
    [*(a1 + 40) duration];
    [v4 setDuration:?];
  }

  if ((*(*(a1 + 32) + 56) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieReleaseDate"] & 1) == 0)
  {
    v7 = [*(a1 + 40) releaseDate];
    [v4 setReleaseDate:v7];
  }

  if ((*(*(a1 + 32) + 56) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieExplicitRating"] & 1) == 0)
  {
    [v4 setExplicitRating:{objc_msgSend(*(a1 + 40), "explicitRating")}];
  }

  if ((*(*(a1 + 32) + 56) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieTagline"] & 1) == 0)
  {
    v8 = [*(a1 + 40) editorNotesWithStyle:@"tagline"];
    [v4 setTagline:v8];
  }

  if ((*(*(a1 + 32) + 58) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieStoreCanonicalID"] & 1) == 0)
  {
    [v4 setStoreCanonicalID:&stru_1F149ECA8];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (!v10 && (*(v9 + 58) & 1) == 0)
  {
    v11 = 0;
    goto LABEL_42;
  }

  v12 = *(v9 + 40);
  if (!v12)
  {
    if (*(v9 + 58))
    {
      v47[0] = @"MPModelPropertyStoreAssetRedownloadable";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      v14 = [MPPropertySet propertySetWithProperties:v15];

      v16 = *(*(a1 + 32) + 48);
      if (v16)
      {
        v17 = v16;
        if (v14)
        {
          v18 = [v16 propertySetByCombiningWithPropertySet:v14];

          v17 = v18;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v13 = v10;
      v14 = 0;
      if (v10)
      {
LABEL_33:
        v17 = v13;
LABEL_34:
        v19 = [(MPStoreModelObjectBuilder *)[MPStoreModelStoreAssetBuilder alloc] initWithRequestedPropertySet:v17];
        v20 = *(a1 + 32);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v12 = *(*(a1 + 32) + 40);
        goto LABEL_35;
      }
    }

    v13 = v14;
    v14 = v13;
    goto LABEL_33;
  }

LABEL_35:
  v22 = *(a1 + 40);
  v23 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipMovieStoreAsset"];
  if (v23)
  {
    v24 = [*(a1 + 48) storeAsset];
  }

  else
  {
    v24 = 0;
  }

  v11 = [v12 modelObjectWithStoreItemMetadata:v22 sourceModelObject:v24 userIdentity:*(a1 + 56)];
  if (v23)
  {
  }

  v9 = *(a1 + 32);
  if (*(v9 + 48))
  {
    [v4 setStoreAsset:v11];
    v9 = *(a1 + 32);
  }

LABEL_42:
  if ((*(v9 + 58) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieLibraryAddEligible"] & 1) == 0)
  {
    [v4 setLibraryAddEligible:{objc_msgSend(v11, "isRedownloadable")}];
  }

  if ((*(*(a1 + 32) + 57) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieLibraryAdded"] & 1) == 0)
  {
    [v4 setLibraryAdded:0];
  }

  if ((*(*(a1 + 32) + 57) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieHasCloudSyncSource"] & 1) == 0)
  {
    [v4 setHasCloudSyncSource:0];
  }

  if ((*(*(a1 + 32) + 57) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieKeepLocalEnableState"] & 1) == 0)
  {
    [v4 setKeepLocalEnableState:0];
  }

  if ((*(*(a1 + 32) + 57) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieKeepLocalManagedStatus"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatus:0];
  }

  if ((*(*(a1 + 32) + 57) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatusReason:0];
  }

  if ((*(*(a1 + 32) + 57) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieKeepLocalConstraints"] & 1) == 0)
  {
    [v4 setKeepLocalConstraints:0];
  }

  if ((*(*(a1 + 32) + 57) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelRelationshipMovieLocalFileAsset"] & 1) == 0)
  {
    [v4 setLocalFileAsset:0];
  }

  if ((*(*(a1 + 32) + 56) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieArtwork"] & 1) == 0)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v44[3] = &unk_1E767E828;
    v45 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v44];
  }

  if ((*(*(a1 + 32) + 57) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyMovieEditorialArtwork"] & 1) == 0)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v42[3] = &unk_1E767E828;
    v43 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v42];
  }

  v25 = *(*(a1 + 32) + 24);
  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipMoviePlaybackPosition"];
    if (v27)
    {
      v28 = [*(a1 + 48) playbackPosition];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v25 modelObjectWithStoreItemMetadata:v26 sourceModelObject:v28 userIdentity:*(a1 + 56)];
    [v4 setPlaybackPosition:v29];

    if (v27)
    {
    }
  }

  if (*(*(a1 + 32) + 32))
  {
    v37 = v11;
    [*(a1 + 40) movieClips];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v41 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v39;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = [*(*(a1 + 32) + 32) mediaClipWithStoreItemMetadata:*(a1 + 40) storeItemMovieClip:*(*(&v38 + 1) + 8 * i)];
          if (v36)
          {
            if (!v33)
            {
              v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v30, "count")}];
            }

            [v33 addObject:v36];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    [v4 setClips:v33];
    v11 = v37;
  }
}

MPArtworkCatalog *__92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

MPArtworkCatalog *__92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) movieArtworkRequestToken];
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

void __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
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

void __92__MPStoreModelMovieBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
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