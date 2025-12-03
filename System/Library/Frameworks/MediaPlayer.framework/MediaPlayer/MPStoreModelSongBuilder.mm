@interface MPStoreModelSongBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelSongBuilder

+ (id)allSupportedProperties
{
  v32[38] = *MEMORY[0x1E69E9840];
  v22 = [MPPropertySet alloc];
  v32[0] = @"MPModelPropertySongTitle";
  v32[1] = @"MPModelPropertySongDuration";
  v32[2] = @"_MPModelPropertySongTrackCount";
  v32[3] = @"MPModelPropertySongTrackNumber";
  v32[4] = @"MPModelPropertySongDiscNumber";
  v32[5] = @"MPModelPropertySongGrouping";
  v32[6] = @"MPModelPropertySongExplicit";
  v32[7] = @"MPModelPropertySongArtistUploadedContent";
  v32[8] = @"MPModelPropertySongHasVideo";
  v32[9] = @"MPModelPropertySongArtwork";
  v32[10] = @"MPModelPropertySongShouldShowComposer";
  v32[11] = @"MPModelPropertySongCopyrightText";
  v32[12] = @"MPModelPropertySongVolumeNormalization";
  v32[13] = @"MPModelPropertySongLibraryAdded";
  v32[14] = @"MPModelPropertySongKeepLocalEnableState";
  v32[15] = @"MPModelPropertySongKeepLocalManagedStatus";
  v32[16] = @"MPModelPropertySongKeepLocalManagedStatusReason";
  v32[17] = @"MPModelPropertySongKeepLocalConstraints";
  v32[18] = @"MPModelPropertySongLibraryAddEligible";
  v32[19] = @"MPModelPropertySongClassicalWork";
  v32[20] = @"MPModelPropertySongClassicalMovement";
  v32[21] = @"MPModelPropertySongClassicalMovementNumber";
  v32[22] = @"MPModelPropertySongClassicalMovementCount";
  v32[23] = @"MPModelPropertySongHasCloudSyncSource";
  v32[24] = @"MPModelPropertySongYear";
  v32[25] = @"MPModelPropertySongUserRating";
  v32[26] = @"MPModelPropertySongCloudStatus";
  v32[27] = @"MPModelPropertySongGaplessInfo";
  v32[28] = @"MPModelPropertySongVolumeAdjustment";
  v32[29] = @"MPModelPropertySongTraits";
  v32[30] = @"MPModelPropertySongSupportsExtendedLyricsAttribute";
  v32[31] = @"MPModelPropertySongIsFavorite";
  v32[32] = @"MPModelPropertySongIsDisliked";
  v32[33] = @"MPModelPropertySongDateFavorited";
  v32[34] = @"MPModelPropertySongHasCredits";
  v32[35] = @"MPModelPropertySongIsPinned";
  v32[36] = @"MPModelPropertySongImmersiveDeeplinkURL";
  v32[37] = @"MPModelPropertySongDateReleased";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:38];
  v30[0] = @"MPModelRelationshipSongAlbum";
  v3 = [MPPropertySet alloc];
  v29[0] = @"MPModelPropertyAlbumTitle";
  v29[1] = @"MPModelPropertyAlbumReleaseDateComponents";
  v29[2] = @"MPModelPropertyAlbumYear";
  v29[3] = @"MPModelPropertyAlbumTrackCount";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v27 = @"MPModelRelationshipAlbumArtist";
  v21 = +[MPPropertySet emptyPropertySet];
  v28 = v21;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = [(MPPropertySet *)v3 initWithProperties:v20 relationships:v19];
  v31[0] = v18;
  v30[1] = @"MPModelRelationshipSongArtist";
  v26 = @"MPModelPropertyPersonName";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v16 = [MPPropertySet propertySetWithProperties:v17];
  v31[1] = v16;
  v30[2] = @"MPModelRelationshipSongComposer";
  v25 = @"MPModelPropertyPersonName";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v14 = [MPPropertySet propertySetWithProperties:v15];
  v31[2] = v14;
  v30[3] = @"MPModelRelationshipSongGenre";
  v24 = @"MPModelPropertyGenreName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v31[3] = v5;
  v30[4] = @"MPModelRelationshipSongLocalFileAsset";
  v6 = +[MPModelFileAsset allSupportedProperties];
  v31[4] = v6;
  v30[5] = @"MPModelRelationshipSongLyrics";
  v23[0] = @"MPModelPropertyLyricsText";
  v23[1] = @"MPModelPropertyLyricsHasStoreLyrics";
  v23[2] = @"MPModelPropertyLyricsHasTimeSyncedLyrics";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v8 = [MPPropertySet propertySetWithProperties:v7];
  v31[5] = v8;
  v30[6] = @"MPModelRelationshipSongStoreAsset";
  v9 = +[MPStoreModelStoreAssetBuilder allSupportedProperties];
  v31[6] = v9;
  v30[7] = @"MPModelRelationshipSongPlaybackPosition";
  v10 = +[MPStoreModelPlaybackPositionBuilder allSupportedProperties];
  v31[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  v12 = [(MPPropertySet *)v22 initWithProperties:v2 relationships:v11];

  return v12;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  v11 = identityCopy;
  p_requestedSongProperties = &self->_requestedSongProperties;
  if ((*&self->_requestedSongProperties & 1) == 0)
  {
    v140 = identityCopy;
    v141 = metadataCopy;
    v142 = objectCopy;
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertySongTitle"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFFDLL | v15;
    if ([properties containsObject:@"MPModelPropertySongDuration"])
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFFBLL | v16;
    if ([properties containsObject:@"_MPModelPropertySongTrackCount"])
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFF7 | v17;
    v18 = [properties containsObject:@"MPModelPropertySongTrackNumber"];
    v19 = 16;
    if (!v18)
    {
      v19 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFEFLL | v19;
    if ([properties containsObject:@"MPModelPropertySongDiscNumber"])
    {
      v20 = 32;
    }

    else
    {
      v20 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFDFLL | v20;
    v21 = [properties containsObject:@"MPModelPropertySongExplicit"];
    v22 = 128;
    if (!v21)
    {
      v22 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFF7FLL | v22;
    v23 = [properties containsObject:@"MPModelPropertySongArtistUploadedContent"];
    v24 = 256;
    if (!v23)
    {
      v24 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFEFFLL | v24;
    v25 = [properties containsObject:@"MPModelPropertySongHasVideo"];
    v26 = 512;
    if (!v25)
    {
      v26 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFDFFLL | v26;
    v27 = [properties containsObject:@"MPModelPropertySongArtwork"];
    v28 = 1024;
    if (!v27)
    {
      v28 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFBFFLL | v28;
    v29 = [properties containsObject:@"MPModelPropertySongCopyrightText"];
    v30 = 2048;
    if (!v29)
    {
      v30 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFF7FFLL | v30;
    v31 = [properties containsObject:@"MPModelPropertySongLibraryAdded"];
    v32 = 0x40000;
    if (!v31)
    {
      v32 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFBFFFFLL | v32;
    v33 = [properties containsObject:@"MPModelPropertySongShouldShowComposer"];
    v34 = 0x100000;
    if (!v33)
    {
      v34 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFEFFFFFLL | v34;
    v35 = [properties containsObject:@"MPModelPropertySongVolumeNormalization"];
    v36 = 0x200000;
    if (!v35)
    {
      v36 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFDFFFFFLL | v36;
    v37 = [properties containsObject:@"MPModelPropertySongKeepLocalEnableState"];
    v38 = 4096;
    if (!v37)
    {
      v38 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFEFFFLL | v38;
    v39 = [properties containsObject:@"MPModelPropertySongKeepLocalManagedStatus"];
    v40 = 0x2000;
    if (!v39)
    {
      v40 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFDFFFLL | v40;
    v41 = [properties containsObject:@"MPModelPropertySongKeepLocalManagedStatusReason"];
    v42 = 0x4000;
    if (!v41)
    {
      v42 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFBFFFLL | v42;
    v43 = [properties containsObject:@"MPModelPropertySongKeepLocalConstraints"];
    v44 = 0x8000;
    if (!v43)
    {
      v44 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFF7FFFLL | v44;
    v45 = [properties containsObject:@"MPModelPropertySongLibraryAddEligible"];
    v46 = 0x80000;
    if (!v45)
    {
      v46 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFF7FFFFLL | v46;
    v47 = [properties containsObject:@"MPModelPropertySongGrouping"];
    v48 = 64;
    if (!v47)
    {
      v48 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFFFFBFLL | v48;
    v49 = [properties containsObject:@"MPModelPropertySongHasCloudSyncSource"];
    v50 = 0x10000;
    if (!v49)
    {
      v50 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFFEFFFFLL | v50;
    v51 = [properties containsObject:@"MPModelPropertySongYear"];
    v52 = 0x400000;
    if (!v51)
    {
      v52 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFFBFFFFFLL | v52;
    v53 = [properties containsObject:@"MPModelPropertySongUserRating"];
    v54 = 0x800000;
    if (!v53)
    {
      v54 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFF7FFFFFLL | v54;
    v55 = [properties containsObject:@"MPModelPropertySongCloudStatus"];
    v56 = 0x1000000;
    if (!v55)
    {
      v56 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFEFFFFFFLL | v56;
    v57 = [properties containsObject:@"MPModelPropertySongGaplessInfo"];
    v58 = 0x2000000;
    if (!v57)
    {
      v58 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFDFFFFFFLL | v58;
    v59 = [properties containsObject:@"MPModelPropertySongVolumeAdjustment"];
    v60 = 0x4000000;
    if (!v59)
    {
      v60 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFFBFFFFFFLL | v60;
    v61 = [properties containsObject:@"MPModelPropertySongTraits"];
    v62 = 0x8000000;
    if (!v61)
    {
      v62 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFF7FFFFFFLL | v62;
    v63 = [properties containsObject:@"MPModelPropertySongSupportsExtendedLyricsAttribute"];
    v64 = 0x10000000;
    if (!v63)
    {
      v64 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFEFFFFFFFLL | v64;
    v65 = [properties containsObject:@"MPModelPropertySongIsFavorite"];
    v66 = 0x20000000;
    if (!v65)
    {
      v66 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFDFFFFFFFLL | v66;
    v67 = [properties containsObject:@"MPModelPropertySongIsDisliked"];
    v68 = 0x40000000;
    if (!v67)
    {
      v68 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFFBFFFFFFFLL | v68;
    v69 = [properties containsObject:@"MPModelPropertySongDateFavorited"];
    v70 = 0x80000000;
    if (!v69)
    {
      v70 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFF7FFFFFFFLL | v70;
    v71 = [properties containsObject:@"MPModelPropertySongHasCredits"];
    v72 = 0x100000000;
    if (!v71)
    {
      v72 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFEFFFFFFFFLL | v72;
    v73 = [properties containsObject:@"MPModelPropertySongIsPinned"];
    v74 = 0x200000000;
    if (!v73)
    {
      v74 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFDFFFFFFFFLL | v74;
    v75 = [properties containsObject:@"MPModelPropertySongImmersiveDeeplinkURL"];
    v76 = 0x400000000;
    if (!v75)
    {
      v76 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFFBFFFFFFFFLL | v76;
    v77 = [properties containsObject:@"MPModelPropertySongDateReleased"];
    v78 = 0x800000000;
    if (!v77)
    {
      v78 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFF7FFFFFFFFLL | v78;
    v79 = [properties containsObject:@"MPModelPropertySongClassicalWork"];
    v80 = 0x1000000000;
    if (!v79)
    {
      v80 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFEFFFFFFFFFLL | v80;
    v81 = [properties containsObject:@"MPModelPropertySongClassicalMovement"];
    v82 = 0x2000000000;
    if (!v81)
    {
      v82 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFDFFFFFFFFFLL | v82;
    v83 = [properties containsObject:@"MPModelPropertySongClassicalMovementCount"];
    v84 = 0x4000000000;
    if (!v83)
    {
      v84 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFFBFFFFFFFFFLL | v84;
    v85 = [properties containsObject:@"MPModelPropertySongClassicalMovementNumber"];
    v86 = 0x8000000000;
    if (!v85)
    {
      v86 = 0;
    }

    *p_requestedSongProperties = *p_requestedSongProperties & 0xFFFFFF7FFFFFFFFFLL | v86;
    v139 = requestedPropertySet;
    relationships = [requestedPropertySet relationships];
    v88 = [relationships objectForKey:@"MPModelRelationshipSongAlbum"];
    v89 = v88;
    if (v88)
    {
      properties2 = [v88 properties];
      *&self->_requestedSongProperties.album |= 1u;
      if ([properties2 containsObject:@"MPModelPropertyAlbumTitle"])
      {
        v91 = 2;
      }

      else
      {
        v91 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xFD | v91;
      if ([properties2 containsObject:@"MPModelPropertyAlbumReleaseDateComponents"])
      {
        v92 = 4;
      }

      else
      {
        v92 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xFB | v92;
      if ([properties2 containsObject:@"MPModelPropertyAlbumYear"])
      {
        v93 = 8;
      }

      else
      {
        v93 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xF7 | v93;
      if ([properties2 containsObject:@"MPModelPropertyAlbumTrackCount"])
      {
        v94 = 32;
      }

      else
      {
        v94 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xDF | v94;
      relationships2 = [v89 relationships];
      v96 = [relationships2 objectForKey:@"MPModelRelationshipAlbumArtist"];
      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xEF | (16 * (v96 != 0));
    }

    v97 = [relationships objectForKey:@"MPModelRelationshipSongArtist"];
    v98 = v97;
    if (v97)
    {
      properties3 = [v97 properties];
      *&self->_requestedSongProperties.artist |= 1u;
      if ([properties3 containsObject:@"MPModelPropertyPersonName"])
      {
        v100 = 2;
      }

      else
      {
        v100 = 0;
      }

      *&self->_requestedSongProperties.artist = *&self->_requestedSongProperties.artist & 0xFD | v100;
    }

    v138 = v98;
    v101 = [relationships objectForKey:@"MPModelRelationshipSongComposer"];
    v102 = v101;
    if (v101)
    {
      properties4 = [v101 properties];
      *&self->_requestedSongProperties.composer |= 1u;
      if ([properties4 containsObject:@"MPModelPropertyPersonName"])
      {
        v104 = 2;
      }

      else
      {
        v104 = 0;
      }

      *&self->_requestedSongProperties.composer = *&self->_requestedSongProperties.composer & 0xFD | v104;
    }

    v105 = [relationships objectForKey:{@"MPModelRelationshipSongGenre", v102}];
    v106 = v105;
    if (v105)
    {
      properties5 = [v105 properties];
      *&self->_requestedSongProperties.genre |= 1u;
      if ([properties5 containsObject:@"MPModelPropertyGenreName"])
      {
        v108 = 2;
      }

      else
      {
        v108 = 0;
      }

      *&self->_requestedSongProperties.genre = *&self->_requestedSongProperties.genre & 0xFD | v108;
    }

    v109 = [relationships objectForKey:@"MPModelRelationshipSongHomeSharingAsset"];
    if (v109)
    {
      *&self->_requestedSongProperties.homeSharingAsset |= 1u;
    }

    v110 = [relationships objectForKey:@"MPModelRelationshipSongLyrics"];
    v111 = v110;
    if (v110)
    {
      properties6 = [v110 properties];
      *&self->_requestedSongProperties.lyrics |= 1u;
      if ([properties6 containsObject:@"MPModelPropertyLyricsText"])
      {
        v113 = 2;
      }

      else
      {
        v113 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xFD | v113;
      if ([properties6 containsObject:@"MPModelPropertyLyricsHasStoreLyrics"])
      {
        v114 = 4;
      }

      else
      {
        v114 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xFB | v114;
      if ([properties6 containsObject:@"MPModelPropertyLyricsHasTimeSyncedLyrics"])
      {
        v115 = 8;
      }

      else
      {
        v115 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xF7 | v115;
    }

    v116 = [relationships objectForKey:@"MPModelRelationshipSongLocalFileAsset"];
    if (v116)
    {
      *p_requestedSongProperties |= 0x20000uLL;
    }

    v117 = [relationships objectForKey:@"MPModelRelationshipSongPlaybackPosition"];
    if (v117)
    {
      v118 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaybackPositionBuilder alloc] initWithRequestedPropertySet:v117];
      playbackPositionBuilder = self->_playbackPositionBuilder;
      self->_playbackPositionBuilder = v118;
    }

    v120 = [relationships objectForKey:@"MPModelRelationshipSongStoreAsset"];
    storeAssetProperties = self->_storeAssetProperties;
    self->_storeAssetProperties = v120;

    *p_requestedSongProperties |= 1uLL;
    metadataCopy = v141;
    objectCopy = v142;
    v11 = v140;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  aBlock[3] = &unk_1E767EE00;
  v122 = metadataCopy;
  v148 = v122;
  v123 = v11;
  v149 = v123;
  v124 = _Block_copy(aBlock);
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v143[3] = &unk_1E767EF18;
  v143[4] = self;
  v125 = v122;
  v144 = v125;
  v126 = objectCopy;
  v145 = v126;
  v127 = v123;
  v146 = v127;
  v128 = _Block_copy(v143);
  if (v126)
  {
    identifiers = [v126 identifiers];
    v130 = [identifiers copyWithSource:@"StorePlatform" block:v124];
    v131 = [v126 copyWithIdentifiers:v130 block:v128];
  }

  else
  {
    v132 = [MPModelSong alloc];
    v133 = [MPIdentifierSet alloc];
    identifiers = +[MPModelSongKind identityKind];
    v130 = [(MPIdentifierSet *)v133 initWithSource:@"StorePlatform" modelKind:identifiers block:v124];
    v131 = [(MPModelObject *)v132 initWithIdentifiers:v130 block:v128];
  }

  v134 = v131;

  if (![(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching])
  {
    v135 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    [v135 addStoreItemMetadata:v125];
  }

  return v134;
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
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
    v11[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
    v11[3] = &unk_1E767F080;
    v12 = v4;
    v13 = *(a1 + 32);
    [v12 setPersonalStoreIdentifiersWithPersonID:v8 block:v11];
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v98[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 48) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertySongTitle"] & 1) == 0)
  {
    v5 = [*(a1 + 40) name];
    [v4 setTitle:v5];
  }

  if ((*(*(a1 + 32) + 48) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongDuration"] & 1) == 0)
  {
    [*(a1 + 40) duration];
    [v4 setDuration:?];
  }

  if ((*(*(a1 + 32) + 48) & 8) != 0 && ([v4 hasLoadedValueForKey:@"_MPModelPropertySongTrackCount"] & 1) == 0)
  {
    [v4 setTrackCount:{objc_msgSend(*(a1 + 40), "trackCount")}];
  }

  if ((*(*(a1 + 32) + 48) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongTrackNumber"] & 1) == 0)
  {
    [v4 setTrackNumber:{objc_msgSend(*(a1 + 40), "trackNumber")}];
  }

  if ((*(*(a1 + 32) + 48) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongDiscNumber"] & 1) == 0)
  {
    [v4 setDiscNumber:{objc_msgSend(*(a1 + 40), "discNumber")}];
  }

  if ((*(*(a1 + 32) + 48) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongExplicit"] & 1) == 0)
  {
    [v4 setExplicitSong:{objc_msgSend(*(a1 + 40), "isExplicitContent")}];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  if (!v7 && (*(v6 + 50) & 8) == 0)
  {
    [*(a1 + 40) itemKind];
    goto LABEL_40;
  }

  v8 = *(v6 + 32);
  if (!v8)
  {
    if ((*(v6 + 50) & 8) != 0)
    {
      v98[0] = @"MPModelPropertyStoreAssetRedownloadable";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
      v10 = [MPPropertySet propertySetWithProperties:v11];

      v12 = *(*(a1 + 32) + 40);
      if (v12)
      {
        v13 = v12;
        if (v10)
        {
          v14 = [v12 propertySetByCombiningWithPropertySet:v10];

          v13 = v14;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v9 = v7;
      v10 = 0;
      if (v7)
      {
LABEL_30:
        v13 = v9;
LABEL_31:
        v15 = [(MPStoreModelObjectBuilder *)[MPStoreModelStoreAssetBuilder alloc] initWithRequestedPropertySet:v13];
        v16 = *(a1 + 32);
        v17 = *(v16 + 32);
        *(v16 + 32) = v15;

        v8 = *(*(a1 + 32) + 32);
        goto LABEL_32;
      }
    }

    v9 = v10;
    v10 = v9;
    goto LABEL_30;
  }

LABEL_32:
  v18 = *(a1 + 40);
  v19 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongStoreAsset"];
  if (v19)
  {
    v20 = [*(a1 + 48) storeAsset];
  }

  else
  {
    v20 = 0;
  }

  v80 = [v8 modelObjectWithStoreItemMetadata:v18 sourceModelObject:v20 userIdentity:*(a1 + 56)];
  if (v19)
  {
  }

  if (*(*(a1 + 32) + 40))
  {
    [v4 setStoreAsset:v80];
  }

  [*(a1 + 40) itemKind];
  v81 = LABEL_40:;
  IsArtistUploadedContent = MPStoreItemMetadataItemKindIsArtistUploadedContent(v81);
  if ((*(*(a1 + 32) + 49) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongArtistUploadedContent"] & 1) == 0)
  {
    [v4 setArtistUploadedContent:IsArtistUploadedContent];
  }

  if ((*(*(a1 + 32) + 50) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongLibraryAddEligible"] & 1) == 0)
  {
    [v4 setLibraryAddEligible:{objc_msgSend(v79, "isRedownloadable") & (IsArtistUploadedContent ^ 1)}];
  }

  if ([v81 isEqualToString:@"musicVideo"])
  {
    v22 = 1;
  }

  else
  {
    v22 = [v81 isEqualToString:@"uploadedVideo"];
  }

  if ((*(*(a1 + 32) + 49) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongHasVideo"] & 1) == 0)
  {
    [v4 setHasVideo:v22];
  }

  if ((*(*(a1 + 32) + 49) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongCopyrightText"] & 1) == 0)
  {
    v23 = [*(a1 + 40) copyrightText];
    [v4 setCopyrightText:v23];
  }

  if ((*(*(a1 + 32) + 50) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongLibraryAdded"] & 1) == 0)
  {
    [v4 setLibraryAdded:0];
  }

  if ((*(*(a1 + 32) + 50) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongHasCloudSyncSource"] & 1) == 0)
  {
    [v4 setHasCloudSyncSource:0];
  }

  if ((*(*(a1 + 32) + 49) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongKeepLocalEnableState"] & 1) == 0)
  {
    [v4 setKeepLocalEnableState:0];
  }

  if ((*(*(a1 + 32) + 49) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongKeepLocalManagedStatus"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatus:0];
  }

  if ((*(*(a1 + 32) + 49) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongKeepLocalManagedStatusReason"] & 1) == 0)
  {
    [v4 setKeepLocalManagedStatusReason:0];
  }

  if ((*(*(a1 + 32) + 49) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongKeepLocalConstraints"] & 1) == 0)
  {
    [v4 setKeepLocalConstraints:0];
  }

  if ((*(*(a1 + 32) + 50) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongShouldShowComposer"] & 1) == 0)
  {
    [v4 setShouldShowComposer:{objc_msgSend(*(a1 + 40), "showComposer")}];
  }

  if ((*(*(a1 + 32) + 51) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongGaplessInfo"] & 1) == 0)
  {
    [v4 setGaplessInfo:0];
  }

  if ((*(*(a1 + 32) + 50) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongVolumeNormalization"] & 1) == 0)
  {
    [v4 setVolumeNormalization:0.0];
  }

  if ((*(*(a1 + 32) + 50) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelRelationshipSongLocalFileAsset"] & 1) == 0)
  {
    [v4 setLocalFileAsset:0];
  }

  if ((*(*(a1 + 32) + 49) & 4) != 0)
  {
    if (![v4 hasLoadedValueForKey:@"MPModelPropertySongArtwork"] || (objc_msgSend(v4, "artworkCatalogBlock"), v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
    {
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
      v96[3] = &unk_1E767EE28;
      v97 = *(a1 + 40);
      [v4 setArtworkCatalogBlock:v96];
    }
  }

  if ((*(*(a1 + 32) + 50) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongYear"] & 1) == 0)
  {
    v25 = [*(a1 + 40) releaseDate];
    if (v25)
    {
      v26 = +[MPStoreItemMetadata storeServerCalendar];
      v27 = [v26 component:4 fromDate:v25];
    }

    else
    {
      v27 = 0;
    }

    [v4 setYear:v27];
  }

  if ((*(*(a1 + 32) + 50) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongUserRating"] & 1) == 0)
  {
    [v4 setUserRating:0.0];
  }

  if ((*(*(a1 + 32) + 50) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongCloudStatus"] & 1) == 0)
  {
    [v4 setCloudStatus:0];
  }

  if ((*(*(a1 + 32) + 51) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongVolumeAdjustment"] & 1) == 0)
  {
    LODWORD(v28) = 1.0;
    [v4 setVolumeAdjustment:v28];
  }

  if ((*(*(a1 + 32) + 51) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongTraits"] & 1) == 0)
  {
    v29 = [*(a1 + 40) isMasteredForiTunes];
    v30 = +[MPCloudController sharedCloudController];
    v31 = [v30 isEnhancedAudioAvailable];

    if (v31)
    {
      v32 = [*(a1 + 40) audioTraits];
      if ([v32 containsObject:@"spatial"])
      {
        v33 = v29 | 8;
      }

      else
      {
        v33 = v29;
      }

      if ([v32 containsObject:@"atmos"])
      {
        v33 |= 0x10uLL;
      }

      if ([v32 containsObject:@"surround"])
      {
        v33 |= 0x20uLL;
      }

      if ([v32 containsObject:@"lossless"])
      {
        v33 |= 2uLL;
      }

      if ([v32 containsObject:@"hi-res-lossless"])
      {
        v29 = v33 | 4;
      }

      else
      {
        v29 = v33;
      }
    }

    [v4 setTraits:v29];
  }

  if ((*(*(a1 + 32) + 51) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute"] & 1) == 0)
  {
    [v4 setSupportsExtendedLyricsAttribute:{objc_msgSend(*(a1 + 40), "supportsVocalAttenuation")}];
  }

  if ((*(*(a1 + 32) + 48) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongGrouping"] & 1) == 0)
  {
    [v4 setGrouping:0];
  }

  if ((*(*(a1 + 32) + 52) & 0x10) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongClassicalWork"] & 1) == 0)
  {
    v34 = [*(a1 + 40) workName];
    [v4 setClassicalWork:v34];
  }

  if ((*(*(a1 + 32) + 52) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongClassicalMovement"] & 1) == 0)
  {
    v35 = [*(a1 + 40) movementName];
    [v4 setClassicalMovement:v35];
  }

  if ((*(*(a1 + 32) + 52) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongClassicalMovementCount"] & 1) == 0)
  {
    [v4 setClassicalMovementCount:{objc_msgSend(*(a1 + 40), "movementCount")}];
  }

  if ((*(*(a1 + 32) + 52) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongClassicalMovementNumber"] & 1) == 0)
  {
    [v4 setClassicalMovementNumber:{objc_msgSend(*(a1 + 40), "movementNumber")}];
  }

  if ((*(*(a1 + 32) + 51) & 0x20) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongIsFavorite"] & 1) == 0)
  {
    [v4 setIsFavorite:0];
  }

  if ((*(*(a1 + 32) + 51) & 0x40) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongIsDisliked"] & 1) == 0)
  {
    [v4 setIsDisliked:0];
  }

  if ((*(*(a1 + 32) + 51) & 0x80) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongDateFavorited"] & 1) == 0)
  {
    [v4 setDateFavorited:0];
  }

  if ((*(*(a1 + 32) + 52) & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongHasCredits"] & 1) == 0)
  {
    [v4 setHasCredits:{objc_msgSend(*(a1 + 40), "hasCredits")}];
  }

  if ((*(*(a1 + 32) + 52) & 2) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongIsPinned"] & 1) == 0)
  {
    [v4 setIsPinned:0];
  }

  if ((*(*(a1 + 32) + 52) & 4) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongImmersiveDeeplinkURL"] & 1) == 0)
  {
    [v4 setImmersiveDeeplinkURL:0];
  }

  if ((*(*(a1 + 32) + 52) & 8) != 0 && ([v4 hasLoadedValueForKey:@"MPModelPropertySongDateReleased"] & 1) == 0)
  {
    v36 = [*(a1 + 40) releaseDate];
    [v4 setDateReleased:v36];
  }

  v37 = *(a1 + 32);
  if (v37[56])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6;
    aBlock[3] = &unk_1E7680B28;
    v95 = *(a1 + 40);
    v38 = _Block_copy(aBlock);
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8;
    v92[3] = &unk_1E767EE50;
    v39 = *(a1 + 40);
    v92[4] = *(a1 + 32);
    v93 = v39;
    v40 = _Block_copy(v92);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongAlbum"])
    {
      v41 = [*(a1 + 48) album];
      v42 = [v41 identifiers];
      v43 = v4;
      v44 = [(MPIdentifierSet *)v42 copyWithSource:@"StorePlatform" block:v38];
      v45 = [v41 copyWithIdentifiers:v44 block:v40];

      v4 = v43;
    }

    else
    {
      v46 = [MPModelAlbum alloc];
      v47 = [MPIdentifierSet alloc];
      v41 = +[MPModelAlbumKind identityKind];
      v42 = [(MPIdentifierSet *)v47 initWithSource:@"StorePlatform" modelKind:v41 block:v38];
      v45 = [(MPModelObject *)v46 initWithIdentifiers:v42 block:v40];
    }

    [v4 setAlbum:v45];
    v37 = *(a1 + 32);
  }

  if (v37[60])
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9;
    v90[3] = &unk_1E7680B28;
    v91 = *(a1 + 40);
    v48 = _Block_copy(v90);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11;
    v88[3] = &unk_1E767EE78;
    v49 = *(a1 + 40);
    v88[4] = *(a1 + 32);
    v89 = v49;
    v50 = _Block_copy(v88);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongArtist"])
    {
      v51 = [*(a1 + 48) artist];
      v52 = [v51 identifiers];
      v53 = v4;
      v54 = [(MPIdentifierSet *)v52 copyWithSource:@"StorePlatform" block:v48];
      v55 = [v51 copyWithIdentifiers:v54 block:v50];

      v4 = v53;
    }

    else
    {
      v56 = [MPModelArtist alloc];
      v57 = [MPIdentifierSet alloc];
      v51 = +[MPModelArtistKind identityKind];
      v52 = [(MPIdentifierSet *)v57 initWithSource:@"StorePlatform" modelKind:v51 block:v48];
      v55 = [(MPModelObject *)v56 initWithIdentifiers:v52 block:v50];
    }

    [v4 setArtist:v55];
    v37 = *(a1 + 32);
  }

  if (v37[64])
  {
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12;
    v86[3] = &unk_1E767EEA0;
    v86[4] = v37;
    v87 = *(a1 + 40);
    v58 = _Block_copy(v86);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongComposer"])
    {
      v59 = [*(a1 + 48) composer];
      v60 = [v59 identifiers];
      v61 = [v59 copyWithIdentifiers:v60 block:v58];
    }

    else
    {
      v62 = [MPModelComposer alloc];
      v59 = +[MPIdentifierSet emptyIdentifierSet];
      v61 = [(MPModelObject *)v62 initWithIdentifiers:v59 block:v58];
    }

    [v4 setComposer:v61];
    v37 = *(a1 + 32);
  }

  if (v37[68])
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13;
    v84[3] = &unk_1E767EEC8;
    v84[4] = v37;
    v85 = *(a1 + 40);
    v63 = _Block_copy(v84);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongGenre"])
    {
      v64 = [*(a1 + 48) genre];
      v65 = [v64 identifiers];
      v66 = [v64 copyWithIdentifiers:v65 block:v63];
    }

    else
    {
      v67 = [MPModelGenre alloc];
      v64 = +[MPIdentifierSet emptyIdentifierSet];
      v66 = [(MPModelObject *)v67 initWithIdentifiers:v64 block:v63];
    }

    [v4 setGenre:v66];
    v37 = *(a1 + 32);
  }

  if ((v37[72] & 1) != 0 && ([v4 hasLoadedValueForKey:@"MPModelRelationshipSongHomeSharingAsset"] & 1) == 0)
  {
    [v4 setHomeSharingAsset:0];
  }

  v68 = *(a1 + 32);
  if (*(v68 + 76))
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_14;
    v82[3] = &unk_1E767EEF0;
    v82[4] = v68;
    v83 = *(a1 + 40);
    v69 = _Block_copy(v82);
    if ([*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongLyrics"])
    {
      v70 = [*(a1 + 48) lyrics];
      v71 = [v70 identifiers];
      v72 = [v70 copyWithIdentifiers:v71 block:v69];
    }

    else
    {
      v73 = [MPModelLyrics alloc];
      v70 = +[MPIdentifierSet emptyIdentifierSet];
      v72 = [(MPModelObject *)v73 initWithIdentifiers:v70 block:v69];
    }

    [v4 setLyrics:v72];
    v68 = *(a1 + 32);
  }

  v74 = *(v68 + 24);
  if (v74)
  {
    v75 = *(a1 + 40);
    v76 = [*(a1 + 48) hasLoadedValueForKey:@"MPModelRelationshipSongPlaybackPosition"];
    if (v76)
    {
      v77 = [*(a1 + 48) playbackPosition];
    }

    else
    {
      v77 = 0;
    }

    v78 = [v74 modelObjectWithStoreItemMetadata:v75 sourceModelObject:v77 userIdentity:*(a1 + 56)];
    [v4 setPlaybackPosition:v78];

    if (v76)
    {
    }
  }
}

MPArtworkCatalog *__91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5(uint64_t a1)
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

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7;
    v6[3] = &unk_1E767FAA0;
    v7 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v6];
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v17 = v3;
  if ((*(*(a1 + 32) + 56) & 2) != 0)
  {
    v5 = [v3 hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"];
    v4 = v17;
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) collectionName];
      [v17 setTitle:v6];

      v4 = v17;
    }
  }

  if ((*(*(a1 + 32) + 56) & 4) != 0)
  {
    v7 = [v4 hasLoadedValueForKey:@"MPModelPropertyAlbumReleaseDateComponents"];
    v4 = v17;
    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 40) releaseDate];
      if (v8)
      {
        v9 = +[MPStoreItemMetadata storeServerCalendar];
        v10 = [v9 components:1048604 fromDate:v8];
        [v17 setReleaseDateComponents:v10];
      }

      else
      {
        [v17 setReleaseDateComponents:0];
      }

      v4 = v17;
    }
  }

  if ((*(*(a1 + 32) + 56) & 8) != 0)
  {
    v11 = [v4 hasLoadedValueForKey:@"MPModelPropertyAlbumYear"];
    v4 = v17;
    if ((v11 & 1) == 0)
    {
      v12 = [*(a1 + 40) releaseDate];
      if (v12)
      {
        v13 = +[MPStoreItemMetadata storeServerCalendar];
        v14 = [v13 component:4 fromDate:v12];
      }

      else
      {
        v14 = 0;
      }

      [v17 setYear:v14];

      v4 = v17;
    }
  }

  if ((*(*(a1 + 32) + 56) & 0x10) != 0)
  {
    v15 = [v4 hasLoadedValueForKey:@"MPModelRelationshipAlbumArtist"];
    v4 = v17;
    if ((v15 & 1) == 0)
    {
      [v17 setArtist:0];
      v4 = v17;
    }
  }

  if ((*(*(a1 + 32) + 56) & 0x20) != 0)
  {
    v16 = [v4 hasLoadedValueForKey:@"MPModelPropertyAlbumTrackCount"];
    v4 = v17;
    if ((v16 & 1) == 0)
    {
      [v17 setTrackCount:{objc_msgSend(*(a1 + 40), "trackCount")}];
      v4 = v17;
    }
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10;
  v5[3] = &unk_1E767F058;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  [v4 setUniversalStoreIdentifiersWithBlock:v5];
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 60) & 2) != 0)
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

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 64) & 2) != 0)
  {
    v7 = v3;
    v5 = [v3 hasLoadedValueForKey:@"MPModelPropertyPersonName"];
    v4 = v7;
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) composerName];
      [v7 setName:v6];

      v4 = v7;
    }
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 68) & 2) != 0)
  {
    v9 = v3;
    v5 = [v3 hasLoadedValueForKey:@"MPModelPropertyGenreName"];
    v4 = v9;
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) genreNames];
      v7 = [v6 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      [v9 setName:v8];

      v4 = v9;
    }
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if ((*(*(a1 + 32) + 76) & 2) != 0 && ([v3 hasLoadedValueForKey:@"MPModelPropertyLyricsText"] & 1) == 0)
  {
    [v6 setText:0];
  }

  if ((*(*(a1 + 32) + 76) & 4) != 0 && ([v6 hasLoadedValueForKey:@"MPModelPropertyLyricsHasStoreLyrics"] & 1) == 0)
  {
    [v6 setHasStoreLyrics:{objc_msgSend(*(a1 + 40), "hasLyrics")}];
  }

  v4 = v6;
  if ((*(*(a1 + 32) + 76) & 8) != 0)
  {
    v5 = [v6 hasLoadedValueForKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics"];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [v6 setHasTimeSyncedLyrics:{objc_msgSend(*(a1 + 40), "hasTimeSyncedLyrics")}];
      v4 = v6;
    }
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) universalStore];
  v4 = [v3 adamID];

  if (!v4)
  {
    v5 = [*(a1 + 40) artistStoreID];
    [v6 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v5)];
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 collectionStoreID];
  [v3 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) universalStore];
  v4 = [v3 adamID];

  if (!v4)
  {
    v5 = [*(a1 + 40) storeID];
    [v17 setAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v5)];
  }

  v6 = [*(a1 + 32) universalStore];
  v7 = [v6 formerAdamIDs];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [*(a1 + 40) formerStoreAdamIDs];
    [v17 setFormerAdamIDs:v9];
  }

  v10 = [*(a1 + 32) universalStore];
  v11 = [v10 subscriptionAdamID];

  if (!v11)
  {
    [v17 setSubscriptionAdamID:{objc_msgSend(*(a1 + 40), "subscriptionAdamID")}];
  }

  v12 = [*(a1 + 32) universalStore];
  v13 = [v12 purchasedAdamID];

  if (!v13)
  {
    [v17 setPurchasedAdamID:{objc_msgSend(*(a1 + 40), "purchasedAdamID")}];
  }

  v14 = [*(a1 + 32) universalStore];
  v15 = [v14 universalCloudLibraryID];

  if (!v15)
  {
    v16 = [*(a1 + 40) cloudUniversalLibraryID];
    [v17 setUniversalCloudLibraryID:v16];
  }
}

void __91__MPStoreModelSongBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
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