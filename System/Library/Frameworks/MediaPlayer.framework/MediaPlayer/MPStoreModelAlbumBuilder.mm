@interface MPStoreModelAlbumBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelAlbumBuilder

+ (id)allSupportedProperties
{
  v15[33] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertyAlbumTitle";
  v15[1] = @"MPModelPropertyAlbumTrackCount";
  v15[2] = @"MPModelPropertyAlbumMaximumItemTrackNumber";
  v15[3] = @"MPModelPropertyAlbumDiscCount";
  v15[4] = @"MPModelPropertyAlbumHasCleanContent";
  v15[5] = @"MPModelPropertyAlbumHasExplicitContent";
  v15[6] = @"MPModelPropertyAlbumIsCompilation";
  v15[7] = @"MPModelPropertyAlbumIsClassical";
  v15[8] = @"MPModelPropertyAlbumReleaseDateComponents";
  v15[9] = @"MPModelPropertyAlbumArtwork";
  v15[10] = @"MPModelPropertyAlbumStaticTallEditorialArtwork";
  v15[11] = @"MPModelPropertyAlbumSuperHeroTallEditorialArtwork";
  v15[12] = @"MPModelPropertyAlbumLibraryAddEligible";
  v15[13] = @"MPModelPropertyAlbumYear";
  v15[14] = @"MPModelPropertyAlbumLibraryAdded";
  v15[15] = @"MPModelPropertyAlbumKeepLocalEnableState";
  v15[16] = @"MPModelPropertyAlbumKeepLocalManagedStatus";
  v15[17] = @"MPModelPropertyAlbumKeepLocalManagedStatusReason";
  v15[18] = @"MPModelPropertyAlbumKeepLocalConstraints";
  v15[19] = @"MPModelPropertyAlbumCopyrightText";
  v15[20] = @"MPModelPropertyAlbumPreorder";
  v15[21] = @"MPModelPropertyAlbumEditorNotes";
  v15[22] = @"MPModelPropertyAlbumShortEditorNotes";
  v15[23] = @"MPModelPropertyAlbumVolumeNormalization";
  v15[24] = @"MPModelPropertyAlbumSongPopularity";
  v15[25] = @"MPModelPropertyAlbumTraits";
  v15[26] = @"MPModelPropertyAlbumVersionHash";
  v15[27] = @"MPModelPropertyAlbumClassicalExperienceAvailable";
  v15[28] = @"MPModelPropertyAlbumIsFavorite";
  v15[29] = @"MPModelPropertyAlbumIsDisliked";
  v15[30] = @"MPModelPropertyAlbumDateFavorited";
  v15[31] = @"MPModelPropertyAlbumIsStoreRedownloadable";
  v15[32] = @"MPModelPropertyAlbumIsPinned";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:33];
  v12 = @"MPModelPropertyPersonName";
  v13[0] = @"MPModelRelationshipAlbumArtist";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipAlbumGenre";
  v14[0] = v5;
  v11 = @"MPModelPropertyGenreName";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  p_requestedAlbumProperties = &self->_requestedAlbumProperties;
  if ((*&self->_requestedAlbumProperties & 1) == 0)
  {
    v103 = v9;
    v12 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v13 = [v12 properties];
    v14 = [v13 containsObject:@"MPModelPropertyAlbumTitle"];
    v15 = 4;
    if (!v14)
    {
      v15 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFFBLL | v15;
    v16 = [v13 containsObject:@"MPModelPropertyAlbumTrackCount"];
    v17 = 8;
    if (!v16)
    {
      v17 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFF7 | v17;
    v18 = [v13 containsObject:@"MPModelPropertyAlbumMaximumItemTrackNumber"];
    v19 = 16;
    if (!v18)
    {
      v19 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFEFLL | v19;
    v20 = [v13 containsObject:@"MPModelPropertyAlbumDiscCount"];
    v21 = 32;
    if (!v20)
    {
      v21 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFDFLL | v21;
    v22 = [v13 containsObject:@"MPModelPropertyAlbumHasCleanContent"];
    v23 = 64;
    if (!v22)
    {
      v23 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFBFLL | v23;
    v24 = [v13 containsObject:@"MPModelPropertyAlbumHasExplicitContent"];
    v25 = 128;
    if (!v24)
    {
      v25 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFF7FLL | v25;
    v26 = [v13 containsObject:@"MPModelPropertyAlbumLibraryAdded"];
    v27 = 256;
    if (!v26)
    {
      v27 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFEFFLL | v27;
    v28 = [v13 containsObject:@"MPModelPropertyAlbumKeepLocalEnableState"];
    v29 = 512;
    if (!v28)
    {
      v29 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFDFFLL | v29;
    v30 = [v13 containsObject:@"MPModelPropertyAlbumKeepLocalManagedStatus"];
    v31 = 1024;
    if (!v30)
    {
      v31 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFBFFLL | v31;
    v32 = [v13 containsObject:@"MPModelPropertyAlbumKeepLocalManagedStatusReason"];
    v33 = 2048;
    if (!v32)
    {
      v33 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFF7FFLL | v33;
    v34 = [v13 containsObject:@"MPModelPropertyAlbumKeepLocalConstraints"];
    v35 = 4096;
    if (!v34)
    {
      v35 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFEFFFLL | v35;
    v36 = [v13 containsObject:@"MPModelPropertyAlbumLibraryAddEligible"];
    v37 = 0x2000;
    if (!v36)
    {
      v37 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFDFFFLL | v37;
    v38 = [v13 containsObject:@"MPModelPropertyAlbumIsCompilation"];
    v39 = 0x4000;
    if (!v38)
    {
      v39 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFBFFFLL | v39;
    v40 = [v13 containsObject:@"MPModelPropertyAlbumIsClassical"];
    v41 = 0x8000;
    if (!v40)
    {
      v41 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFF7FFFLL | v41;
    v42 = [v13 containsObject:@"MPModelPropertyAlbumReleaseDateComponents"];
    v43 = 0x10000;
    if (!v42)
    {
      v43 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFEFFFFLL | v43;
    v44 = [v13 containsObject:@"MPModelPropertyAlbumArtwork"];
    v45 = 0x20000;
    if (!v44)
    {
      v45 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFDFFFFLL | v45;
    v46 = [v13 containsObject:@"MPModelPropertyAlbumStaticTallEditorialArtwork"];
    v47 = 0x40000;
    if (!v46)
    {
      v47 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFBFFFFLL | v47;
    v48 = [v13 containsObject:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork"];
    v49 = 0x80000;
    if (!v48)
    {
      v49 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFF7FFFFLL | v49;
    v50 = [v13 containsObject:@"MPModelPropertyAlbumYear"];
    v51 = 0x100000;
    if (!v50)
    {
      v51 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFEFFFFFLL | v51;
    if ([v13 containsObject:@"MPModelPropertyAlbumCopyrightText"])
    {
      v52 = 2;
    }

    else
    {
      v52 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFFFFFFDLL | v52;
    v53 = [v13 containsObject:@"MPModelPropertyAlbumPreorder"];
    v54 = 0x200000;
    if (!v53)
    {
      v54 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFDFFFFFLL | v54;
    v55 = [v13 containsObject:@"MPModelPropertyAlbumEditorNotes"];
    v56 = 0x400000;
    if (!v55)
    {
      v56 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFFBFFFFFLL | v56;
    v57 = [v13 containsObject:@"MPModelPropertyAlbumShortEditorNotes"];
    v58 = 0x800000;
    if (!v57)
    {
      v58 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFF7FFFFFLL | v58;
    v59 = [v13 containsObject:@"MPModelPropertyAlbumVolumeNormalization"];
    v60 = 0x1000000;
    if (!v59)
    {
      v60 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFEFFFFFFLL | v60;
    v61 = [v13 containsObject:@"MPModelPropertyAlbumSongPopularity"];
    v62 = 0x2000000;
    if (!v61)
    {
      v62 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFDFFFFFFLL | v62;
    v63 = [v13 containsObject:@"MPModelPropertyAlbumTraits"];
    v64 = 0x8000000;
    if (!v63)
    {
      v64 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFF7FFFFFFLL | v64;
    v65 = [v13 containsObject:@"MPModelPropertyAlbumVersionHash"];
    v66 = 0x10000000;
    if (!v65)
    {
      v66 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFEFFFFFFFLL | v66;
    v67 = [v13 containsObject:@"MPModelPropertyAlbumClassicalExperienceAvailable"];
    v68 = 0x20000000;
    if (!v67)
    {
      v68 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFDFFFFFFFLL | v68;
    v69 = [v13 containsObject:@"MPModelPropertyAlbumIsFavorite"];
    v70 = 0x40000000;
    if (!v69)
    {
      v70 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFBFFFFFFFLL | v70;
    v71 = [v13 containsObject:@"MPModelPropertyAlbumIsDisliked"];
    v72 = 0x80000000;
    if (!v71)
    {
      v72 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFF7FFFFFFFLL | v72;
    v73 = [v13 containsObject:@"MPModelPropertyAlbumDateFavorited"];
    v74 = 0x100000000;
    if (!v73)
    {
      v74 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFEFFFFFFFFLL | v74;
    v75 = [v13 containsObject:@"MPModelPropertyAlbumIsStoreRedownloadable"];
    v76 = 0x200000000;
    if (!v75)
    {
      v76 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFDFFFFFFFFLL | v76;
    v77 = [v13 containsObject:@"MPModelPropertyAlbumIsPinned"];
    v78 = 0x400000000;
    if (!v77)
    {
      v78 = 0;
    }

    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFBFFFFFFFFLL | v78;
    v79 = [v12 relationships];
    v80 = [v79 objectForKey:@"MPModelRelationshipAlbumArtist"];
    v81 = v80;
    if (v80)
    {
      v82 = [v80 properties];
      *&self->_requestedAlbumProperties.artist |= 1u;
      if ([v82 containsObject:@"MPModelPropertyPersonName"])
      {
        v83 = 2;
      }

      else
      {
        v83 = 0;
      }

      *&self->_requestedAlbumProperties.artist = *&self->_requestedAlbumProperties.artist & 0xFD | v83;
    }

    v84 = [v79 objectForKey:@"MPModelRelationshipAlbumGenre"];
    v85 = v84;
    if (v84)
    {
      v86 = [v84 properties];
      *&self->_requestedAlbumProperties.genre |= 1u;
      if ([v86 containsObject:@"MPModelPropertyGenreName"])
      {
        v87 = 2;
      }

      else
      {
        v87 = 0;
      }

      *&self->_requestedAlbumProperties.genre = *&self->_requestedAlbumProperties.genre & 0xFD | v87;
    }

    v88 = [v79 objectForKey:@"MPModelRelationshipAlbumRepresentativeSong"];
    *p_requestedAlbumProperties = *p_requestedAlbumProperties & 0xFFFFFFFFFBFFFFFFLL | ((v88 != 0) << 26);

    *p_requestedAlbumProperties |= 1uLL;
    v9 = v103;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v89 = v8;
  v108 = v89;
  v90 = v10;
  v109 = v90;
  v91 = _Block_copy(aBlock);
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v104[3] = &unk_1E767E4D8;
  v104[4] = self;
  v92 = v89;
  v105 = v92;
  v93 = v9;
  v106 = v93;
  v94 = _Block_copy(v104);
  if (v93)
  {
    v95 = [v93 identifiers];
    v96 = [v95 copyWithSource:@"StorePlatform" block:v91];
    v97 = [v93 copyWithIdentifiers:v96 block:v94];
  }

  else
  {
    v98 = [MPModelAlbum alloc];
    v99 = [MPIdentifierSet alloc];
    v95 = +[MPModelAlbumKind identityKind];
    v96 = [(MPIdentifierSet *)v99 initWithSource:@"StorePlatform" modelKind:v95 block:v91];
    v97 = [(MPModelObject *)v98 initWithIdentifiers:v96 block:v94];
  }

  v100 = v97;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v101 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v101 addStoreItemMetadata:v92];
  }

  return v100;
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  v6 = [v3 universalStore];
  v7 = [v6 formerAdamIDs];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v21[3] = &unk_1E767E460;
  v24 = v5;
  v22 = *(a1 + 32);
  v8 = v7;
  v23 = v8;
  [v3 setUniversalStoreIdentifiersWithBlock:v21];
  v9 = [v3 personalizedStore];
  v10 = [v9 personID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v14 = [v13 DSIDForUserIdentity:*(a1 + 40) outError:0];
    v12 = [v14 stringValue];
  }

  if ([v12 length])
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v19 = &unk_1E767FA78;
    v20 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v12 block:&v16];
  }

  v15 = [*(a1 + 32) versionHash];
  [v3 setVersionHash:v15];
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setTitle:v5];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumTrackCount"] & 1) == 0)
  {
    [v4 setTrackCount:{objc_msgSend(*(a1 + 40), "trackCount")}];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumDiscCount"] & 1) == 0)
  {
    [v4 setDiscCount:{objc_msgSend(*(a1 + 40), "discCount")}];
  }

  v6 = *(*(a1 + 32) + 24);
  if ((v6 & 0x20D0) != 0)
  {
    v7 = [*(a1 + 40) childStoreItemMetadatas];
    if ([v7 count])
    {
      v74 = v7;
      v75 = v4;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        LOBYTE(v11) = 0;
        v12 = 0;
        v13 = 0;
        v14 = *v96;
LABEL_14:
        v15 = 0;
        while (1)
        {
          v16 = a1;
          if (*v96 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v95 + 1) + 8 * v15);
          v18 = [v17 isExplicitContent];
          if (v11)
          {
            v11 = 1;
          }

          else
          {
            v11 = [v17 isStoreRedownloadable];
          }

          v12 |= v18 ^ 1;
          v13 |= v18;
          v19 = [v17 trackNumber];
          if (v10 <= v19)
          {
            v10 = v19;
          }

          a1 = v16;
          v20 = *(v16 + 32);
          if ((v13 & 1) != 0 || (*(v20 + 24) & 0x80) == 0)
          {
            v21 = *(v20 + 24);
            if (v12 & 1 | ((v21 & 0x40) == 0))
            {
              v22 = (v21 & 0x2000) != 0 ? v11 : 1;
              v23 = v21 & 0x10;
              if (v22 == 1 && v23 == 0)
              {
                break;
              }
            }
          }

          if (v9 == ++v15)
          {
            v9 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
            if (v9)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      v7 = v74;
      v4 = v75;
    }

    else
    {
      v13 = [*(a1 + 40) isExplicitContent];
      v12 = v13 ^ 1;
      v11 = [*(a1 + 40) isStoreRedownloadable];
      v10 = 0;
    }

    if ((*(*(a1 + 32) + 24) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumHasExplicitContent"] & 1) == 0)
    {
      [v4 setHasExplicitContent:v13 & 1];
    }

    if ((*(*(a1 + 32) + 24) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumHasCleanContent"] & 1) == 0)
    {
      [v4 setHasCleanContent:v12 & 1];
    }

    if ((*(*(a1 + 32) + 25) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumLibraryAddEligible"] & 1) == 0)
    {
      [v4 setLibraryAddEligible:v11];
    }

    if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumMaximumItemTrackNumber"] & 1) == 0)
    {
      [v4 setMaximumItemTrackNumber:v10];
    }

    v6 = *(*(a1 + 32) + 24);
  }

  if ((v6 & 0x400000) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumEditorNotes"] & 1) == 0)
  {
    v25 = [*(a1 + 40) editorNotes];
    [v4 setEditorNotes:v25];
  }

  if ((*(*(a1 + 32) + 26) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumShortEditorNotes"] & 1) == 0)
  {
    v26 = [*(a1 + 40) shortEditorNotes];
    [v4 setShortEditorNotes:v26];
  }

  if ((*(*(a1 + 32) + 25) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumLibraryAdded"] & 1) == 0)
  {
    [v4 setLibraryAdded:0];
  }

  if ((*(*(a1 + 32) + 25) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumKeepLocalEnableState"] & 1) == 0)
  {
    [v4 setKeepLocalEnableState:0];
  }

  if ((*(*(a1 + 32) + 25) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumKeepLocalManagedStatus"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatus:0];
  }

  if ((*(*(a1 + 32) + 25) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumKeepLocalManagedStatusReason"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatusReason:0];
  }

  if ((*(*(a1 + 32) + 25) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumKeepLocalConstraints"] & 1) == 0)
  {
    [v4 setKeepLocalConstraints:0];
  }

  if ((*(*(a1 + 32) + 25) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumIsCompilation"] & 1) == 0)
  {
    [v4 setCompilation:{objc_msgSend(*(a1 + 40), "isCompilation")}];
  }

  if ((*(*(a1 + 32) + 25) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumIsClassical"] & 1) == 0)
  {
    [v4 setClassical:0];
  }

  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumCopyrightText"] & 1) == 0)
  {
    v27 = [*(a1 + 40) copyrightText];
    [v4 setCopyrightText:v27];
  }

  if ((*(*(a1 + 32) + 26) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumReleaseDateComponents"] & 1) == 0)
  {
    v28 = [*(a1 + 40) releaseDate];
    if (v28)
    {
      v29 = +[MPStoreItemMetadata storeServerCalendar];
      v30 = [v29 components:1048604 fromDate:v28];
      [v4 setReleaseDateComponents:v30];
    }

    else
    {
      [v4 setReleaseDateComponents:0];
    }
  }

  if ((*(*(a1 + 32) + 26) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumYear"] & 1) == 0)
  {
    v31 = [*(a1 + 40) releaseDate];
    if (v31)
    {
      v32 = +[MPStoreItemMetadata storeServerCalendar];
      v33 = [v32 component:4 fromDate:v31];
    }

    else
    {
      v33 = 0;
    }

    [v4 setYear:v33];
  }

  if ((*(*(a1 + 32) + 26) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumPreorder"] & 1) == 0)
  {
    [v4 setPreorder:{objc_msgSend(*(a1 + 40), "isPreorder")}];
  }

  if ((*(*(a1 + 32) + 27) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumIsFavorite"] & 1) == 0)
  {
    [v4 setIsFavorite:0];
  }

  if ((*(*(a1 + 32) + 27) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumIsDisliked"] & 1) == 0)
  {
    [v4 setIsDisliked:0];
  }

  if ((*(*(a1 + 32) + 28) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumDateFavorited"] & 1) == 0)
  {
    [v4 setDateFavorited:0];
  }

  if ((*(*(a1 + 32) + 28) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumIsPinned"] & 1) == 0)
  {
    [v4 setIsPinned:0];
  }

  if ((*(*(a1 + 32) + 26) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumArtwork"] & 1) == 0)
  {
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v93[3] = &unk_1E767E488;
    v94 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v93];
  }

  if ((*(*(a1 + 32) + 26) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork"] & 1) == 0)
  {
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v91[3] = &unk_1E767E488;
    v92 = *(a1 + 40);
    [v4 setStaticTallEditorialArtworkCatalogBlock:v91];
  }

  if ((*(*(a1 + 32) + 26) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork"] & 1) == 0)
  {
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
    v89[3] = &unk_1E767E488;
    v90 = *(a1 + 40);
    [v4 setSuperHeroTallEditorialArtworkCatalogBlock:v89];
  }

  if ((*(*(a1 + 32) + 27) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumVolumeNormalization"] & 1) == 0)
  {
    LODWORD(v34) = 1.0;
    [v4 setVolumeNormalization:v34];
  }

  if ((*(*(a1 + 32) + 27) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumTraits"] & 1) == 0)
  {
    v35 = [*(a1 + 40) isMasteredForiTunes];
    v36 = +[MPCloudController sharedCloudController];
    v37 = [v36 isEnhancedAudioAvailable];

    if (v37)
    {
      v38 = [*(a1 + 40) audioTraits];
      if ([v38 containsObject:@"spatial"])
      {
        v39 = v35 | 8;
      }

      else
      {
        v39 = v35;
      }

      if ([v38 containsObject:@"atmos"])
      {
        v39 |= 0x10uLL;
      }

      if ([v38 containsObject:@"surround"])
      {
        v39 |= 0x20uLL;
      }

      if ([v38 containsObject:@"lossless"])
      {
        v39 |= 2uLL;
      }

      if ([v38 containsObject:@"hi-res-lossless"])
      {
        v35 = v39 | 4;
      }

      else
      {
        v35 = v39;
      }
    }

    [v4 setTraits:v35];
  }

  v40 = *(a1 + 32);
  if (v40[32])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8;
    aBlock[3] = &unk_1E7680B28;
    v88 = *(a1 + 40);
    v41 = _Block_copy(aBlock);
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10;
    v85[3] = &unk_1E767EE78;
    v42 = *(a1 + 40);
    v85[4] = *(a1 + 32);
    v86 = v42;
    v43 = _Block_copy(v85);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipAlbumArtist"])
    {
      v44 = [*(a1 + 48) artist];
      v45 = [v44 identifiers];
      v46 = [(MPIdentifierSet *)v45 copyWithSource:@"StorePlatform" block:v41];
      v47 = [v44 copyWithIdentifiers:v46 block:v43];
    }

    else
    {
      v48 = [MPModelArtist alloc];
      v49 = [MPIdentifierSet alloc];
      v44 = +[MPModelArtistKind identityKind];
      v45 = [(MPIdentifierSet *)v49 initWithSource:@"StorePlatform" modelKind:v44 block:v41];
      v47 = [(MPModelObject *)v48 initWithIdentifiers:v45 block:v43];
    }

    [v4 setArtist:v47];
    v40 = *(a1 + 32);
  }

  if (v40[36])
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11;
    v83[3] = &unk_1E767EEC8;
    v83[4] = v40;
    v84 = *(a1 + 40);
    v50 = _Block_copy(v83);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipAlbumGenre"])
    {
      v51 = [*(a1 + 48) genre];
      v52 = [v51 identifiers];
      v53 = [v51 copyWithIdentifiers:v52 block:v50];
    }

    else
    {
      v54 = [MPModelGenre alloc];
      v51 = +[MPIdentifierSet emptyIdentifierSet];
      v53 = [(MPModelObject *)v54 initWithIdentifiers:v51 block:v50];
    }

    [v4 setGenre:v53];
    v40 = *(a1 + 32);
  }

  if ((v40[27] & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumSongPopularity"] & 1) == 0)
  {
    v55 = v4;
    v56 = [*(a1 + 40) childStoreItemMetadatas];
    v57 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v56, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v58 = v56;
    v59 = [v58 countByEnumeratingWithState:&v79 objects:v99 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v80;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v80 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v79 + 1) + 8 * i);
          v64 = [v63 storeID];
          v65 = MPStoreItemMetadataNumberNormalizeStoreIDValue(v64);

          v66 = [v63 popularity];
          v67 = v66;
          if (v65)
          {
            v68 = v66 == 0;
          }

          else
          {
            v68 = 1;
          }

          if (!v68)
          {
            [v57 setObject:v66 forKey:v65];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v60);
    }

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12;
    v77[3] = &unk_1E767E4B0;
    v69 = v57;
    v78 = v69;
    v4 = v55;
    [v55 setSongPopularityBlock:v77];
  }

  v70 = *(*(a1 + 32) + 24);
  if ((v70 & 0x4000000) != 0)
  {
    [v4 setRepresentativeSong:0];
    v70 = *(*(a1 + 32) + 24);
  }

  if ((v70 & 0x10000000) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyAlbumVersionHash"] & 1) == 0)
  {
    v71 = [*(a1 + 40) versionHash];
    [v4 setVersionHash:v71];
  }

  v72 = *(*(a1 + 32) + 24);
  if ((v72 & 0x20000000) != 0)
  {
    v73 = [*(a1 + 40) classicalURL];
    [v4 setClassicalExperienceAvailable:v73 != 0];

    v72 = *(*(a1 + 32) + 24);
  }

  if ((v72 & 0x200000000) != 0)
  {
    [v4 setStoreRedownloadable:1];
  }
}

MPArtworkCatalog *__92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

MPArtworkCatalog *__92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) staticTallEditorialArtworkRequestToken];
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

MPArtworkCatalog *__92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) superHeroTallEditorialArtworkRequestToken];
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

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9;
    v6[3] = &unk_1E767FAA0;
    v7 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v6];
  }
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 32) & 2) != 0)
  {
    v7 = v3;
    v5 = [v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"];
    v4 = v7;
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) artistName];
      [v7 setName:v6];

      v4 = v7;
    }
  }
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11(uint64_t a1, void *a2)
{
  if ((*(*(a1 + 32) + 36) & 2) != 0)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v6 = [v3 genreNames];
    v5 = [v6 firstObject];
    [v4 setName:v5];
  }
}

id __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 universalStore];
  v6 = [v5 adamID];

  if (!v6 || (v7 = *(a1 + 32), v8 = MEMORY[0x1E696AD98], [v4 universalStore], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "numberWithLongLong:", objc_msgSend(v9, "adamID")), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    v12 = [v4 universalStore];
    v13 = [v12 purchasedAdamID];

    if (!v13 || (v14 = *(a1 + 32), v15 = MEMORY[0x1E696AD98], [v4 universalStore], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "numberWithLongLong:", objc_msgSend(v16, "purchasedAdamID")), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKey:", v17), v11 = objc_claimAutoreleasedReturnValue(), v17, v16, !v11))
    {
      v18 = [v4 universalStore];
      v19 = [v18 subscriptionAdamID];

      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = MEMORY[0x1E696AD98];
        v22 = [v4 universalStore];
        v23 = [v21 numberWithLongLong:{objc_msgSend(v22, "subscriptionAdamID")}];
        v11 = [v20 objectForKey:v23];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 artistStoreID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*(a1 + 48))
  {
    v3 = [*(a1 + 32) storeID];
    [v5 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v3)];
  }

  if (![*(a1 + 40) count])
  {
    v4 = [*(a1 + 32) formerStoreAdamIDs];
    [v5 setFormerAdamIDs:v4];
  }
}

void __92__MPStoreModelAlbumBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end