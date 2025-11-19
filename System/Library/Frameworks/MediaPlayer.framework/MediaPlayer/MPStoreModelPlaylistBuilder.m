@interface MPStoreModelPlaylistBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelPlaylistBuilder

+ (id)allSupportedProperties
{
  v12[47] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v12[0] = @"MPModelPropertyPlaylistName";
  v12[1] = @"MPModelPropertyPlaylistTrackCount";
  v12[2] = @"MPModelPropertyPlaylistEditorNotes";
  v12[3] = @"MPModelPropertyPlaylistShortEditorNotes";
  v12[4] = @"MPModelPropertyPlaylistReleaseDateComponents";
  v12[5] = @"MPModelPropertyPlaylistLastModifiedDateComponents";
  v12[6] = @"MPModelPropertyPlaylistArtwork";
  v12[7] = @"MPModelPropertyPlaylistStaticTallEditorialArtwork";
  v12[8] = @"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork";
  v12[9] = @"MPModelPropertyPlaylistEditorialArtwork";
  v12[10] = @"MPModelPropertyPlaylistTracksTiledArtwork";
  v12[11] = @"MPModelPropertyPlaylistHasCleanContent";
  v12[12] = @"MPModelPropertyPlaylistHasExplicitContent";
  v12[13] = @"MPModelPropertyPlaylistType";
  v12[14] = @"MPModelPropertyPlaylistLibraryAdded";
  v12[15] = @"MPModelPropertyPlaylistKeepLocalEnableState";
  v12[16] = @"MPModelPropertyPlaylistKeepLocalManagedStatusReason";
  v12[17] = @"MPModelPropertyPlaylistKeepLocalConstraints";
  v12[18] = @"MPModelPropertyPlaylistIsOwner";
  v12[19] = @"MPModelPropertyPlaylistCuratorPlaylist";
  v12[20] = @"MPModelPropertyPlaylistPublicPlaylist";
  v12[21] = @"MPModelPropertyPlaylistVisiblePlaylist";
  v12[22] = @"MPModelPropertyPlaylistSubscribed";
  v12[23] = @"MPModelPropertyPlaylistUserEditableComponents";
  v12[24] = @"MPModelPropertyPlaylistShareURL";
  v12[25] = @"MPModelPropertyPlaylistShareShortURL";
  v12[26] = @"MPModelPropertyPlaylistDescriptionText";
  v12[27] = @"MPModelPropertyPlaylistCloudVersionHash";
  v12[28] = @"MPModelPropertyPlaylistVersionHash";
  v12[29] = @"MPModelPropertyPlaylistTraits";
  v12[30] = @"MPModelPropertyPlaylistIsFavorite";
  v12[31] = @"MPModelPropertyPlaylistIsDisliked";
  v12[32] = @"MPModelPropertyPlaylistDateFavorited";
  v12[33] = @"MPModelPropertyPlaylistIsFavoriteSongsPlaylist";
  v12[34] = @"MPModelPropertyPlaylistCoverArtworkRecipe";
  v12[35] = @"MPModelPropertyPlaylistIsCollaborative";
  v12[36] = @"MPModelPropertyPlaylistCollaborationSharingMode";
  v12[37] = @"MPModelPropertyPlaylistCollaborationMode";
  v12[38] = @"MPModelPropertyPlaylistCollaboratorPermissions";
  v12[39] = @"MPModelPropertyPlaylistCollaborationInvitationURL";
  v12[40] = @"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate";
  v12[41] = @"MPModelPropertyPlaylistCollaborationJoinRequestIsPending";
  v12[42] = @"MPModelPropertyPlaylistCollaboratorStatus";
  v12[43] = @"MPModelPropertyPlaylistIsStoreRedownloadable";
  v12[44] = @"MPModelPropertyPlaylistIsPinned";
  v12[45] = @"MPModelPropertyPlaylistHasAnyCleanTracks";
  v12[46] = @"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:47];
  v9[0] = @"MPModelPropertyPersonName";
  v9[1] = @"MPModelPropertyCuratorHandle";
  v10 = @"MPModelRelationshipPlaylistCurator";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
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
  p_requestedPlaylistProperties = &self->_requestedPlaylistProperties;
  v137 = v8;
  if ((*&self->_requestedPlaylistProperties & 1) == 0)
  {
    v12 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v13 = [v12 properties];
    v14 = [v13 containsObject:@"MPModelPropertyPlaylistName"];
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFFDLL | v15;
    v16 = [v13 containsObject:@"MPModelPropertyPlaylistTrackCount"];
    v17 = 4;
    if (!v16)
    {
      v17 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFFBLL | v17;
    v18 = [v13 containsObject:@"MPModelPropertyPlaylistEditorNotes"];
    v19 = 8;
    if (!v18)
    {
      v19 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFF7 | v19;
    v20 = [v13 containsObject:@"MPModelPropertyPlaylistShortEditorNotes"];
    v21 = 16;
    if (!v20)
    {
      v21 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFEFLL | v21;
    v22 = [v13 containsObject:@"MPModelPropertyPlaylistReleaseDateComponents"];
    v23 = 32;
    if (!v22)
    {
      v23 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFDFLL | v23;
    v24 = [v13 containsObject:@"MPModelPropertyPlaylistLastModifiedDateComponents"];
    v25 = 64;
    if (!v24)
    {
      v25 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFFBFLL | v25;
    v26 = [v13 containsObject:@"MPModelPropertyPlaylistArtwork"];
    v27 = 128;
    if (!v26)
    {
      v27 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFF7FLL | v27;
    v28 = [v13 containsObject:@"MPModelPropertyPlaylistStaticTallEditorialArtwork"];
    v29 = 256;
    if (!v28)
    {
      v29 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFEFFLL | v29;
    v30 = [v13 containsObject:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"];
    v31 = 512;
    if (!v30)
    {
      v31 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFDFFLL | v31;
    v32 = [v13 containsObject:@"MPModelPropertyPlaylistEditorialArtwork"];
    v33 = 1024;
    if (!v32)
    {
      v33 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFFBFFLL | v33;
    v34 = [v13 containsObject:@"MPModelPropertyPlaylistTracksTiledArtwork"];
    v35 = 2048;
    if (!v34)
    {
      v35 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFF7FFLL | v35;
    v36 = [v13 containsObject:@"MPModelPropertyPlaylistLibraryAdded"];
    v37 = 0x8000;
    if (!v36)
    {
      v37 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFF7FFFLL | v37;
    v38 = [v13 containsObject:@"MPModelPropertyPlaylistKeepLocalEnableState"];
    v39 = 0x10000;
    if (!v38)
    {
      v39 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFEFFFFLL | v39;
    v40 = [v13 containsObject:@"MPModelPropertyPlaylistKeepLocalManagedStatus"];
    v41 = 0x20000;
    if (!v40)
    {
      v41 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFDFFFFLL | v41;
    v42 = [v13 containsObject:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason"];
    v43 = 0x40000;
    if (!v42)
    {
      v43 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFBFFFFLL | v43;
    v44 = [v13 containsObject:@"MPModelPropertyPlaylistKeepLocalConstraints"];
    v45 = 0x80000;
    if (!v44)
    {
      v45 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFF7FFFFLL | v45;
    v46 = [v13 containsObject:@"MPModelPropertyPlaylistHasCleanContent"];
    v47 = 4096;
    if (!v46)
    {
      v47 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFEFFFLL | v47;
    v48 = [v13 containsObject:@"MPModelPropertyPlaylistHasExplicitContent"];
    v49 = 0x2000;
    if (!v48)
    {
      v49 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFDFFFLL | v49;
    v50 = [v13 containsObject:@"MPModelPropertyPlaylistType"];
    v51 = 0x4000;
    if (!v50)
    {
      v51 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFFFBFFFLL | v51;
    v52 = [v13 containsObject:@"MPModelPropertyPlaylistIsOwner"];
    v53 = 0x200000;
    if (!v52)
    {
      v53 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFDFFFFFLL | v53;
    v54 = [v13 containsObject:@"MPModelPropertyPlaylistCuratorPlaylist"];
    v55 = 0x100000;
    if (!v54)
    {
      v55 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFEFFFFFLL | v55;
    v56 = [v13 containsObject:@"MPModelPropertyPlaylistPublicPlaylist"];
    v57 = 0x400000;
    if (!v56)
    {
      v57 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFFBFFFFFLL | v57;
    v58 = [v13 containsObject:@"MPModelPropertyPlaylistVisiblePlaylist"];
    v59 = 0x800000;
    if (!v58)
    {
      v59 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFF7FFFFFLL | v59;
    v60 = [v13 containsObject:@"MPModelPropertyPlaylistSubscribed"];
    v61 = 0x1000000;
    if (!v60)
    {
      v61 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFEFFFFFFLL | v61;
    v62 = [v13 containsObject:@"MPModelPropertyPlaylistUserEditableComponents"];
    v63 = 0x2000000;
    if (!v62)
    {
      v63 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFDFFFFFFLL | v63;
    v64 = [v13 containsObject:@"MPModelPropertyPlaylistShareURL"];
    v65 = 0x4000000;
    if (!v64)
    {
      v65 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFFBFFFFFFLL | v65;
    v66 = [v13 containsObject:@"MPModelPropertyPlaylistShareShortURL"];
    v67 = 0x8000000;
    if (!v66)
    {
      v67 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFF7FFFFFFLL | v67;
    v68 = [v13 containsObject:@"MPModelPropertyPlaylistDescriptionText"];
    v69 = 0x10000000;
    if (!v68)
    {
      v69 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFEFFFFFFFLL | v69;
    v70 = [v13 containsObject:@"MPModelPropertyPlaylistCloudVersionHash"];
    v71 = 0x20000000;
    if (!v70)
    {
      v71 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFDFFFFFFFLL | v71;
    v72 = [v13 containsObject:@"MPModelPropertyPlaylistTraits"];
    v73 = 0x40000000;
    if (!v72)
    {
      v73 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFFBFFFFFFFLL | v73;
    v74 = [v13 containsObject:@"MPModelPropertyPlaylistVersionHash"];
    v75 = 0x80000000;
    if (!v74)
    {
      v75 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFF7FFFFFFFLL | v75;
    v76 = [v13 containsObject:@"MPModelPropertyPlaylistIsFavorite"];
    v77 = 0x100000000;
    if (!v76)
    {
      v77 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFEFFFFFFFFLL | v77;
    v78 = [v13 containsObject:@"MPModelPropertyPlaylistIsDisliked"];
    v79 = 0x200000000;
    if (!v78)
    {
      v79 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFDFFFFFFFFLL | v79;
    v80 = [v13 containsObject:@"MPModelPropertyPlaylistDateFavorited"];
    v81 = 0x400000000;
    if (!v80)
    {
      v81 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFFBFFFFFFFFLL | v81;
    v82 = [v13 containsObject:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
    v83 = 0x800000000;
    if (!v82)
    {
      v83 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFF7FFFFFFFFLL | v83;
    v84 = [v13 containsObject:@"MPModelPropertyPlaylistCoverArtworkRecipe"];
    v85 = 0x1000000000;
    if (!v84)
    {
      v85 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFEFFFFFFFFFLL | v85;
    v86 = [v13 containsObject:@"MPModelPropertyPlaylistIsCollaborative"];
    v87 = 0x2000000000;
    if (!v86)
    {
      v87 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFDFFFFFFFFFLL | v87;
    v88 = [v13 containsObject:@"MPModelPropertyPlaylistCollaborationSharingMode"];
    v89 = 0x4000000000;
    if (!v88)
    {
      v89 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFFBFFFFFFFFFLL | v89;
    v90 = [v13 containsObject:@"MPModelPropertyPlaylistCollaborationMode"];
    v91 = 0x8000000000;
    if (!v90)
    {
      v91 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFF7FFFFFFFFFLL | v91;
    v92 = [v13 containsObject:@"MPModelPropertyPlaylistCollaboratorPermissions"];
    v93 = 0x10000000000;
    if (!v92)
    {
      v93 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFEFFFFFFFFFFLL | v93;
    v94 = [v13 containsObject:@"MPModelPropertyPlaylistCollaborationInvitationURL"];
    v95 = 0x20000000000;
    if (!v94)
    {
      v95 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFDFFFFFFFFFFLL | v95;
    v96 = [v13 containsObject:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"];
    v97 = 0x40000000000;
    if (!v96)
    {
      v97 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFFBFFFFFFFFFFLL | v97;
    v98 = [v13 containsObject:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending"];
    v99 = 0x80000000000;
    if (!v98)
    {
      v99 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFF7FFFFFFFFFFLL | v99;
    v100 = [v13 containsObject:@"MPModelPropertyPlaylistCollaboratorStatus"];
    v101 = 0x100000000000;
    if (!v100)
    {
      v101 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFEFFFFFFFFFFFLL | v101;
    v102 = [v13 containsObject:@"MPModelPropertyPlaylistIsStoreRedownloadable"];
    v103 = 0x200000000000;
    if (!v102)
    {
      v103 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFDFFFFFFFFFFFLL | v103;
    v104 = [v13 containsObject:@"MPModelPropertyPlaylistIsPinned"];
    v105 = 0x400000000000;
    if (!v104)
    {
      v105 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFFBFFFFFFFFFFFLL | v105;
    v106 = [v13 containsObject:@"MPModelPropertyPlaylistHasAnyCleanTracks"];
    v107 = 0x800000000000;
    if (!v106)
    {
      v107 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFF7FFFFFFFFFFFLL | v107;
    v108 = [v13 containsObject:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
    v109 = 0x1000000000000;
    if (!v108)
    {
      v109 = 0;
    }

    *p_requestedPlaylistProperties = *p_requestedPlaylistProperties & 0xFFFEFFFFFFFFFFFFLL | v109;
    v110 = [v12 relationships];
    v111 = [v110 objectForKey:@"MPModelRelationshipPlaylistCurator"];
    v112 = v111;
    if (v111)
    {
      [v111 properties];
      v113 = v10;
      v115 = v114 = v9;
      *&self->_requestedPlaylistProperties.curator |= 1u;
      if ([v115 containsObject:@"MPModelPropertyPersonName"])
      {
        v116 = 2;
      }

      else
      {
        v116 = 0;
      }

      *&self->_requestedPlaylistProperties.curator = *&self->_requestedPlaylistProperties.curator & 0xFD | v116;
      if ([v115 containsObject:@"MPModelPropertyCuratorHandle"])
      {
        v117 = 4;
      }

      else
      {
        v117 = 0;
      }

      *&self->_requestedPlaylistProperties.curator = *&self->_requestedPlaylistProperties.curator & 0xFB | v117;

      v9 = v114;
      v10 = v113;
    }

    *p_requestedPlaylistProperties |= 1uLL;

    v8 = v137;
  }

  v118 = [v8 cloudUniversalLibraryID];
  v119 = [v8 storeID];
  v120 = MPStoreItemMetadataStringNormalizeStoreIDValue(v119);

  if ([v120 length] || objc_msgSend(v118, "length"))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
    aBlock[3] = &unk_1E767EAE8;
    v142 = v120;
    v143 = v118;
    v136 = v10;
    v144 = v10;
    v121 = v8;
    v145 = v121;
    v122 = _Block_copy(aBlock);
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
    v138[3] = &unk_1E767EBB0;
    v123 = self;
    v138[4] = self;
    v124 = v121;
    v139 = v124;
    v125 = v9;
    v126 = v9;
    v140 = v126;
    v127 = _Block_copy(v138);
    if (v126)
    {
      v128 = [v126 identifiers];
      v129 = [v128 copyWithSource:@"StorePlatform" block:v122];
      v130 = [v126 copyWithIdentifiers:v129 block:v127];
    }

    else
    {
      v131 = [MPModelPlaylist alloc];
      v132 = [MPIdentifierSet alloc];
      v128 = +[MPModelPlaylistKind identityKind];
      v129 = [(MPIdentifierSet *)v132 initWithSource:@"StorePlatform" modelKind:v128 block:v122];
      v130 = [(MPModelObject *)v131 initWithIdentifiers:v129 block:v127];
    }

    v133 = v130;

    if (![(MPStoreModelObjectBuilder *)v123 preventStoreItemMetadataCaching])
    {
      v134 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
      [v134 addStoreItemMetadata:v124];
    }

    v9 = v125;
    v10 = v136;
    v8 = v137;
  }

  else
  {
    v133 = 0;
  }

  return v133;
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v17[3] = &unk_1E7680BD8;
  v4 = v3;
  v18 = v4;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  [v4 setUniversalStoreIdentifiersWithBlock:v17];
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
    v10 = [v9 DSIDForUserIdentity:*(a1 + 48) outError:0];
    v8 = [v10 stringValue];
  }

  if ([v8 length])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v15 = &unk_1E767FA78;
    v16 = *(a1 + 56);
    [v4 setPersonalStoreIdentifiersWithPersonID:v8 block:&v12];
  }

  v11 = [*(a1 + 56) versionHash];
  [v4 setVersionHash:v11];
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 24) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyPlaylistName"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setName:v5];
  }

  if ((*(*(a1 + 32) + 24) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistTrackCount"] & 1) == 0)
  {
    [v4 setTrackCount:{objc_msgSend(*(a1 + 40), "trackCount")}];
  }

  if ((*(*(a1 + 32) + 24) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistEditorNotes"] & 1) == 0)
  {
    v6 = [*(a1 + 40) editorNotes];
    [v4 setEditorNotes:v6];
  }

  if ((*(*(a1 + 32) + 24) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistShortEditorNotes"] & 1) == 0)
  {
    v7 = [*(a1 + 40) shortEditorNotes];
    [v4 setShortEditorNotes:v7];
  }

  if ((*(*(a1 + 32) + 27) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistDescriptionText"] & 1) == 0)
  {
    v8 = [*(a1 + 40) editorNotes];
    if ([v8 length])
    {
      [v4 setDescriptionText:v8];
    }

    else
    {
      v9 = [*(a1 + 40) descriptionText];
      [v4 setDescriptionText:v9];
    }
  }

  if ((*(*(a1 + 32) + 27) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCloudVersionHash"] & 1) == 0)
  {
    v10 = [*(a1 + 40) versionHash];
    [v4 setCloudVersionHash:v10];
  }

  if ((*(*(a1 + 32) + 27) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistVersionHash"] & 1) == 0)
  {
    v11 = [*(a1 + 40) versionHash];
    [v4 setVersionHash:v11];
  }

  if ((*(*(a1 + 32) + 24) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistReleaseDateComponents"] & 1) == 0)
  {
    v12 = [*(a1 + 40) releaseDate];
    if (v12)
    {
      v13 = +[MPStoreItemMetadata storeServerCalendar];
      v14 = [v13 components:28 fromDate:v12];
      [v4 setReleaseDateComponents:v14];
    }

    else
    {
      [v4 setReleaseDateComponents:0];
    }
  }

  if ((*(*(a1 + 32) + 24) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistLastModifiedDateComponents"] & 1) == 0)
  {
    v15 = [*(a1 + 40) lastModifiedDate];
    if (v15)
    {
      v16 = +[MPStoreItemMetadata storeServerCalendar];
      v17 = [v16 components:3145980 fromDate:v15];
    }

    else
    {
      v17 = 0;
    }

    [v4 setLastModifiedDateComponents:v17];
  }

  if ((*(*(a1 + 32) + 27) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistTraits"] & 1) == 0)
  {
    if ([*(a1 + 40) supportsSing])
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = [*(a1 + 40) audioTraits];
    if ([v19 containsObject:@"spatial"])
    {
      v18 |= 8uLL;
    }

    if ([v19 containsObject:@"atmos"])
    {
      v18 |= 0x10uLL;
    }

    if ([v19 containsObject:@"surround"])
    {
      v20 = v18 | 0x20;
    }

    else
    {
      v20 = v18;
    }

    [v4 setTraits:v20];
  }

  v21 = *(*(a1 + 32) + 24);
  if ((v21 & 0x3000) != 0)
  {
    v22 = [*(a1 + 40) childStoreItemMetadatas];
    if ([v22 count])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        v27 = 0;
        v28 = *v64;
LABEL_54:
        v29 = 0;
        while (1)
        {
          if (*v64 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = [*(*(&v63 + 1) + 8 * v29) isExplicitContent];
          v26 |= v30;
          v27 |= v30 ^ 1;
          if ((v26 & 1) != 0 || (*(*(a1 + 32) + 25) & 0x20) == 0)
          {
            if (v27)
            {
              goto LABEL_67;
            }

            if ((*(*(a1 + 32) + 25) & 0x10) == 0)
            {
              break;
            }
          }

          if (v25 == ++v29)
          {
            v25 = [v23 countByEnumeratingWithState:&v63 objects:v67 count:16];
            if (v25)
            {
              goto LABEL_54;
            }

            goto LABEL_67;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = 0;
LABEL_67:
    }

    else
    {
      v26 = [*(a1 + 40) isExplicitContent];
      v27 = v26 ^ 1;
    }

    if ((*(*(a1 + 32) + 25) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistHasExplicitContent"] & 1) == 0)
    {
      [v4 setHasExplicitContent:v26 & 1];
    }

    if ((*(*(a1 + 32) + 25) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistHasCleanContent"] & 1) == 0)
    {
      [v4 setHasCleanContent:v27 & 1];
    }

    v21 = *(*(a1 + 32) + 24);
  }

  if ((v21 & 0x4000) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistType"] & 1) == 0)
  {
    v31 = [*(a1 + 40) playlistType];
    if ([v31 isEqualToString:@"editorial"])
    {
      if ([*(a1 + 40) isChart])
      {
        v32 = 8;
      }

      else
      {
        v32 = 4;
      }
    }

    else if ([v31 isEqualToString:@"external"])
    {
      v32 = 5;
    }

    else if ([v31 isEqualToString:@"user-shared"])
    {
      v32 = 6;
    }

    else if ([v31 isEqualToString:@"personal-mix"])
    {
      v32 = 7;
    }

    else
    {
      v32 = 0;
    }

    [v4 setType:v32];
  }

  if ((*(*(a1 + 32) + 25) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistLibraryAdded"] & 1) == 0)
  {
    [v4 setLibraryAdded:0];
  }

  if ((*(*(a1 + 32) + 26) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistKeepLocalEnableState"] & 1) == 0)
  {
    [v4 setKeepLocalEnableState:0];
  }

  if ((*(*(a1 + 32) + 26) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistKeepLocalManagedStatus"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatus:0];
  }

  if ((*(*(a1 + 32) + 26) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatusReason:0];
  }

  if ((*(*(a1 + 32) + 26) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistKeepLocalConstraints"] & 1) == 0)
  {
    [v4 setKeepLocalConstraints:0];
  }

  if ((*(*(a1 + 32) + 26) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsOwner"] & 1) == 0)
  {
    [v4 setOwner:0];
  }

  if ((*(*(a1 + 32) + 26) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCuratorPlaylist"] & 1) == 0)
  {
    [v4 setCuratorPlaylist:0];
  }

  if ((*(*(a1 + 32) + 26) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistPublicPlaylist"] & 1) == 0)
  {
    [v4 setPublicPlaylist:1];
  }

  if ((*(*(a1 + 32) + 26) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistVisiblePlaylist"] & 1) == 0)
  {
    [v4 setVisiblePlaylist:0];
  }

  if ((*(*(a1 + 32) + 27) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistSubscribed"] & 1) == 0)
  {
    [v4 setSubscribed:1];
  }

  if ((*(*(a1 + 32) + 27) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistUserEditableComponents"] & 1) == 0)
  {
    [v4 setUserEditableComponents:0];
  }

  if ((*(*(a1 + 32) + 27) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistShareURL"] & 1) == 0)
  {
    v33 = [*(a1 + 40) URL];
    [v4 setShareURL:v33];
  }

  if ((*(*(a1 + 32) + 27) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistShareShortURL"] & 1) == 0)
  {
    v34 = [*(a1 + 40) shortURL];
    [v4 setShareShortURL:v34];
  }

  if ((*(*(a1 + 32) + 28) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsFavorite"] & 1) == 0)
  {
    [v4 setIsFavorite:0];
  }

  if ((*(*(a1 + 32) + 28) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"] & 1) == 0)
  {
    [v4 setIsFavoriteSongsPlaylist:0];
  }

  if ((*(*(a1 + 32) + 28) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsDisliked"] & 1) == 0)
  {
    [v4 setIsDisliked:0];
  }

  if ((*(*(a1 + 32) + 28) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistDateFavorited"] & 1) == 0)
  {
    [v4 setDateFavorited:0];
  }

  if ((*(*(a1 + 32) + 29) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsPinned"] & 1) == 0)
  {
    [v4 setIsPinned:0];
  }

  if ((*(*(a1 + 32) + 29) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistHasAnyCleanTracks"] & 1) == 0)
  {
    [v4 setHasAnyCleanTracks:0];
  }

  if ((*(*(a1 + 32) + 30) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"] & 1) == 0)
  {
    [v4 setHasAnyCleanDownloadedTracks:0];
  }

  if ((*(*(a1 + 32) + 24) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistArtwork"] & 1) == 0)
  {
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
    v61[3] = &unk_1E767EB10;
    v62 = *(a1 + 40);
    [v4 setArtworkCatalogBlock:v61];
  }

  if ((*(*(a1 + 32) + 25) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistStaticTallEditorialArtwork"] & 1) == 0)
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    v59[3] = &unk_1E767EB10;
    v60 = *(a1 + 40);
    [v4 setStaticTallEditorialArtworkCatalogBlock:v59];
  }

  if ((*(*(a1 + 32) + 25) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"] & 1) == 0)
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
    v57[3] = &unk_1E767EB10;
    v58 = *(a1 + 40);
    [v4 setSuperHeroTallEditorialArtworkCatalogBlock:v57];
  }

  if ((*(*(a1 + 32) + 25) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistEditorialArtwork"] & 1) == 0)
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8;
    v55[3] = &unk_1E767EB10;
    v56 = *(a1 + 40);
    [v4 setEditorialArtworkCatalogBlock:v55];
  }

  if ((*(*(a1 + 32) + 25) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistTracksTiledArtwork"] & 1) == 0)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9;
    v53[3] = &unk_1E767EB60;
    v54 = *(a1 + 40);
    [v4 setTiledArtworkCatalogBlock:v53];
  }

  v35 = *(a1 + 32);
  if (*(v35 + 32))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11;
    aBlock[3] = &unk_1E7680B28;
    v52 = *(a1 + 40);
    v36 = _Block_copy(aBlock);
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13;
    v48 = &unk_1E767EB88;
    v37 = *(a1 + 40);
    v49 = *(a1 + 32);
    v50 = v37;
    v38 = _Block_copy(&v45);
    if ([*(a1 + 48) hasLoadedValueForKey:{@"MPModelRelationshipPlaylistCurator", v45, v46, v47, v48, v49}])
    {
      v39 = [*(a1 + 48) curator];
      v40 = [v39 identifiers];
      v41 = [(MPIdentifierSet *)v40 copyWithSource:@"StorePlatform" block:v36];
      v42 = [v39 copyWithIdentifiers:v41 block:v38];
    }

    else
    {
      v43 = [MPModelCurator alloc];
      v44 = [MPIdentifierSet alloc];
      v39 = +[MPModelCuratorActualKind identityKind];
      v40 = [(MPIdentifierSet *)v44 initWithSource:@"StorePlatform" modelKind:v39 block:v36];
      v42 = [(MPModelObject *)v43 initWithIdentifiers:v40 block:v38];
    }

    [v4 setCurator:v42];
    v35 = *(a1 + 32);
  }

  if ((*(v35 + 28) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCoverArtworkRecipe"] & 1) == 0)
  {
    [v4 setCoverArtworkRecipe:0];
  }

  if ((*(*(a1 + 32) + 28) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsCollaborative"] & 1) == 0)
  {
    [v4 setCollaborative:{objc_msgSend(*(a1 + 40), "isCollaborative")}];
  }

  if ((*(*(a1 + 32) + 28) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaborationSharingMode"] & 1) == 0)
  {
    [v4 setCollaborationSharingMode:0];
  }

  if ((*(*(a1 + 32) + 28) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaborationMode"] & 1) == 0)
  {
    [v4 setCollaborationMode:0];
  }

  if ((*(*(a1 + 32) + 29) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaboratorPermissions"] & 1) == 0)
  {
    [v4 setCollaboratorPermissions:0];
  }

  if ((*(*(a1 + 32) + 29) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaborationInvitationURL"] & 1) == 0)
  {
    [v4 setCollaborationInvitationURL:0];
  }

  if ((*(*(a1 + 32) + 29) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"] & 1) == 0)
  {
    [v4 setCollaborationInvitationURLExpirationDate:0];
  }

  if ((*(*(a1 + 32) + 29) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending"] & 1) == 0)
  {
    [v4 setCollaborationJoinRequestIsPending:0];
  }

  if ((*(*(a1 + 32) + 29) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistCollaboratorStatus"] & 1) == 0)
  {
    [v4 setCollaboratorStatus:0];
  }
}

MPArtworkCatalog *__95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkRequestToken];
  v2 = v1;
  if (v1)
  {
    [v1 setCropStyle:*MEMORY[0x1E69E4258]];
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

MPArtworkCatalog *__95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1)
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

MPArtworkCatalog *__95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t a1)
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

MPArtworkCatalog *__95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8(uint64_t a1)
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

MPArtworkCatalog *__95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_alloc_init(MPTiledArtworkRequest);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10;
  v12[3] = &unk_1E767EB38;
  v13 = *(a1 + 32);
  [(MPTiledArtworkRequest *)v7 setArtworkCatalogsBlock:v12];
  [(MPTiledArtworkRequest *)v7 setAllowsSynchronousArtworkCatalogsBlockExecution:1];
  [(MPTiledArtworkRequest *)v7 setNumberOfRows:a3];
  [(MPTiledArtworkRequest *)v7 setNumberOfColumns:a4];
  v8 = [MPArtworkCatalog alloc];
  v9 = +[MPTiledArtworkDataSource sharedDataSource];
  v10 = [(MPArtworkCatalog *)v8 initWithToken:v7 dataSource:v9];

  return v10;
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12;
    v6[3] = &unk_1E767FAA0;
    v7 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v6];
  }
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 32) + 32);
  if ((v3 & 2) != 0)
  {
    v4 = [*(a1 + 40) curatorName];
    [v6 setName:v4];

    v3 = *(*(a1 + 32) + 32);
  }

  if ((v3 & 4) != 0)
  {
    v5 = [*(a1 + 40) curatorHandle];
    [v6 setHandle:v5];
  }
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 curatorID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

id __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) artworkTrackIDs];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v18;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(a1 + 32) childStorePlatformDictionaryForArtworkTrackID:*(*(&v17 + 1) + 8 * v8)];
        v10 = [*(a1 + 32) artworkRequestTokenForStorePlatformDictionary:v9];
        if (v10)
        {
          v11 = [MPArtworkCatalog alloc];
          v12 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
          v13 = [(MPArtworkCatalog *)v11 initWithToken:v10 dataSource:v12];

          if (v13)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v6 addObject:v13];
          }
        }

        v14 = [v6 count];

        if (v14 >= a2)
        {
          break;
        }

        if (v5 == ++v8)
        {
          v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(id *a1, void *a2)
{
  v9 = a2;
  v3 = [a1[4] universalStore];
  v4 = [v3 globalPlaylistID];
  if (v4)
  {
  }

  else
  {
    v5 = [a1[5] length];

    if (v5)
    {
      [v9 setGlobalPlaylistID:a1[5]];
    }
  }

  v6 = [a1[4] universalStore];
  v7 = [v6 universalCloudLibraryID];
  if (v7)
  {
  }

  else
  {
    v8 = [a1[6] length];

    if (v8)
    {
      [v9 setUniversalCloudLibraryID:a1[6]];
    }
  }
}

void __95__MPStoreModelPlaylistBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recommendationID];
  [v3 setRecommendationID:v4];
}

@end