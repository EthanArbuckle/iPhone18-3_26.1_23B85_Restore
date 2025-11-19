@interface MPModelStorePlatformMetadataGenericObjectBuilder
- (MPModelStorePlatformMetadataGenericObjectBuilder)initWithRequestedProperties:(id)a3;
- (id)genericObjectForStorePlatformMetadata:(id)a3 radioStationContainsVideo:(BOOL)a4 userIdentity:(id)a5;
@end

@implementation MPModelStorePlatformMetadataGenericObjectBuilder

- (id)genericObjectForStorePlatformMetadata:(id)a3 radioStationContainsVideo:(BOOL)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if ((*&self->_requestedSongProperties & 1) == 0)
  {
    v130 = v9;
    v131 = v8;
    v132 = a4;
    v11 = [(MPModelStorePlatformMetadataGenericObjectBuilder *)self requestedProperties];
    v12 = [v11 relationships];
    v13 = [v12 objectForKey:@"MPModelRelationshipGenericSong"];

    v14 = [v13 properties];
    if ([v14 containsObject:@"MPModelPropertySongTitle"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFFDLL | v15;
    if ([v14 containsObject:@"MPModelPropertySongDuration"])
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFFBLL | v16;
    if ([v14 containsObject:@"MPModelPropertySongTrackNumber"])
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFF7 | v17;
    v18 = [v14 containsObject:@"_MPModelPropertySongTrackCount"];
    v19 = 16;
    if (!v18)
    {
      v19 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFEFLL | v19;
    v20 = [v14 containsObject:@"MPModelPropertySongDiscNumber"];
    v21 = 32;
    if (!v20)
    {
      v21 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFDFLL | v21;
    v22 = [v14 containsObject:@"MPModelPropertySongExplicit"];
    v23 = 128;
    if (!v22)
    {
      v23 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFF7FLL | v23;
    v24 = [v14 containsObject:@"MPModelPropertySongArtistUploadedContent"];
    v25 = 256;
    if (!v24)
    {
      v25 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFEFFLL | v25;
    v26 = [v14 containsObject:@"MPModelPropertySongHasVideo"];
    v27 = 512;
    if (!v26)
    {
      v27 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFDFFLL | v27;
    v28 = [v14 containsObject:@"MPModelPropertySongArtwork"];
    v29 = 1024;
    if (!v28)
    {
      v29 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFBFFLL | v29;
    v30 = [v14 containsObject:@"MPModelPropertySongCopyrightText"];
    v31 = 2048;
    if (!v30)
    {
      v31 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFF7FFLL | v31;
    v32 = [v14 containsObject:@"MPModelPropertySongLibraryAdded"];
    v33 = 0x40000;
    if (!v32)
    {
      v33 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFBFFFFLL | v33;
    v34 = [v14 containsObject:@"MPModelPropertySongShouldShowComposer"];
    v35 = 0x100000;
    if (!v34)
    {
      v35 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFEFFFFFLL | v35;
    v36 = [v14 containsObject:@"MPModelPropertySongVolumeNormalization"];
    v37 = 0x200000;
    if (!v36)
    {
      v37 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFDFFFFFLL | v37;
    v38 = [v14 containsObject:@"MPModelPropertySongKeepLocalEnableState"];
    v39 = 4096;
    if (!v38)
    {
      v39 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFEFFFLL | v39;
    v40 = [v14 containsObject:@"MPModelPropertySongKeepLocalManagedStatus"];
    v41 = 0x2000;
    if (!v40)
    {
      v41 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFDFFFLL | v41;
    v42 = [v14 containsObject:@"MPModelPropertySongKeepLocalManagedStatusReason"];
    v43 = 0x4000;
    if (!v42)
    {
      v43 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFBFFFLL | v43;
    v44 = [v14 containsObject:@"MPModelPropertySongKeepLocalConstraints"];
    v45 = 0x8000;
    if (!v44)
    {
      v45 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFF7FFFLL | v45;
    v46 = [v14 containsObject:@"MPModelPropertySongLibraryAddEligible"];
    v47 = 0x80000;
    if (!v46)
    {
      v47 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFF7FFFFLL | v47;
    v48 = [v14 containsObject:@"MPModelPropertySongGrouping"];
    v49 = 64;
    if (!v48)
    {
      v49 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFFFFBFLL | v49;
    v50 = [v14 containsObject:@"MPModelPropertySongHasCloudSyncSource"];
    v51 = 0x10000;
    if (!v50)
    {
      v51 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFFEFFFFLL | v51;
    v52 = [v14 containsObject:@"MPModelPropertySongYear"];
    v53 = 0x400000;
    if (!v52)
    {
      v53 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFFBFFFFFLL | v53;
    v54 = [v14 containsObject:@"MPModelPropertySongUserRating"];
    v55 = 0x800000;
    if (!v54)
    {
      v55 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFF7FFFFFLL | v55;
    v56 = [v14 containsObject:@"MPModelPropertySongCloudStatus"];
    v57 = 0x1000000;
    if (!v56)
    {
      v57 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFEFFFFFFLL | v57;
    v58 = [v14 containsObject:@"MPModelPropertySongGaplessInfo"];
    v59 = 0x2000000;
    if (!v58)
    {
      v59 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFDFFFFFFLL | v59;
    v60 = [v14 containsObject:@"MPModelPropertySongVolumeAdjustment"];
    v61 = 0x4000000;
    if (!v60)
    {
      v61 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFFBFFFFFFLL | v61;
    v62 = [v14 containsObject:@"MPModelPropertySongTraits"];
    v63 = 0x8000000;
    if (!v62)
    {
      v63 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFF7FFFFFFLL | v63;
    v64 = [v14 containsObject:@"MPModelPropertySongSupportsExtendedLyricsAttribute"];
    v65 = 0x10000000;
    if (!v64)
    {
      v65 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFEFFFFFFFLL | v65;
    v66 = [v14 containsObject:@"MPModelPropertySongIsFavorite"];
    v67 = 0x20000000;
    if (!v66)
    {
      v67 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFDFFFFFFFLL | v67;
    v68 = [v14 containsObject:@"MPModelPropertySongIsDisliked"];
    v69 = 0x40000000;
    if (!v68)
    {
      v69 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFFBFFFFFFFLL | v69;
    v70 = [v14 containsObject:@"MPModelPropertySongDateFavorited"];
    v71 = 0x80000000;
    if (!v70)
    {
      v71 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFF7FFFFFFFLL | v71;
    v72 = [v14 containsObject:@"MPModelPropertySongHasCredits"];
    v73 = 0x100000000;
    if (!v72)
    {
      v73 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFEFFFFFFFFLL | v73;
    v74 = [v14 containsObject:@"MPModelPropertySongIsPinned"];
    v75 = 0x200000000;
    if (!v74)
    {
      v75 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFDFFFFFFFFLL | v75;
    v76 = [v14 containsObject:@"MPModelPropertySongImmersiveDeeplinkURL"];
    v77 = 0x400000000;
    if (!v76)
    {
      v77 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFFBFFFFFFFFLL | v77;
    v78 = [v14 containsObject:@"MPModelPropertySongDateReleased"];
    v79 = 0x800000000;
    if (!v78)
    {
      v79 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFF7FFFFFFFFLL | v79;
    v80 = [v14 containsObject:@"MPModelPropertySongClassicalWork"];
    v81 = 0x1000000000;
    if (!v80)
    {
      v81 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFEFFFFFFFFFLL | v81;
    v82 = [v14 containsObject:@"MPModelPropertySongClassicalMovement"];
    v83 = 0x2000000000;
    if (!v82)
    {
      v83 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFDFFFFFFFFFLL | v83;
    v84 = [v14 containsObject:@"MPModelPropertySongClassicalMovementCount"];
    v85 = 0x4000000000;
    if (!v84)
    {
      v85 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFFBFFFFFFFFFLL | v85;
    v86 = [v14 containsObject:@"MPModelPropertySongClassicalMovementNumber"];
    v87 = 0x8000000000;
    if (!v86)
    {
      v87 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFFFFFF7FFFFFFFFFLL | v87;
    v129 = v13;
    v88 = [v13 relationships];
    v89 = [v88 objectForKey:@"MPModelRelationshipSongAlbum"];
    v90 = v89;
    if (v89)
    {
      v91 = [v89 properties];
      *&self->_requestedSongProperties.album |= 1u;
      if ([v91 containsObject:@"MPModelPropertyAlbumTitle"])
      {
        v92 = 2;
      }

      else
      {
        v92 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xFD | v92;
      if ([v91 containsObject:@"MPModelPropertyAlbumReleaseDateComponents"])
      {
        v93 = 4;
      }

      else
      {
        v93 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xFB | v93;
      if ([v91 containsObject:@"MPModelPropertyAlbumYear"])
      {
        v94 = 8;
      }

      else
      {
        v94 = 0;
      }

      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xF7 | v94;
      v95 = [v90 relationships];
      v96 = [v95 objectForKey:@"MPModelRelationshipAlbumArtist"];
      *&self->_requestedSongProperties.album = *&self->_requestedSongProperties.album & 0xEF | (16 * (v96 != 0));
    }

    v97 = [v88 objectForKey:@"MPModelRelationshipSongArtist"];
    v98 = v97;
    if (v97)
    {
      v99 = [v97 properties];
      *&self->_requestedSongProperties.artist |= 1u;
      if ([v99 containsObject:@"MPModelPropertyPersonName"])
      {
        v100 = 2;
      }

      else
      {
        v100 = 0;
      }

      *&self->_requestedSongProperties.artist = *&self->_requestedSongProperties.artist & 0xFD | v100;
    }

    v128 = v98;
    v101 = [v88 objectForKey:@"MPModelRelationshipSongComposer"];
    v102 = v101;
    if (v101)
    {
      v103 = [v101 properties];
      *&self->_requestedSongProperties.composer |= 1u;
      if ([v103 containsObject:@"MPModelPropertyPersonName"])
      {
        v104 = 2;
      }

      else
      {
        v104 = 0;
      }

      *&self->_requestedSongProperties.composer = *&self->_requestedSongProperties.composer & 0xFD | v104;
    }

    v105 = [v88 objectForKey:@"MPModelRelationshipSongGenre"];
    v106 = v105;
    if (v105)
    {
      v107 = [v105 properties];
      *&self->_requestedSongProperties.genre |= 1u;
      if ([v107 containsObject:@"MPModelPropertyGenreName"])
      {
        v108 = 2;
      }

      else
      {
        v108 = 0;
      }

      *&self->_requestedSongProperties.genre = *&self->_requestedSongProperties.genre & 0xFD | v108;
    }

    v109 = [v88 objectForKey:@"MPModelRelationshipSongHomeSharingAsset"];
    if (v109)
    {
      *&self->_requestedSongProperties.homeSharingAsset |= 1u;
    }

    v110 = [v88 objectForKey:@"MPModelRelationshipSongLyrics"];
    v111 = v110;
    if (v110)
    {
      v112 = [v110 properties];
      *&self->_requestedSongProperties.lyrics |= 1u;
      if ([v112 containsObject:@"MPModelPropertyLyricsText"])
      {
        v113 = 2;
      }

      else
      {
        v113 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xFD | v113;
      if ([v112 containsObject:@"MPModelPropertyLyricsHasStoreLyrics"])
      {
        v114 = 4;
      }

      else
      {
        v114 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xFB | v114;
      if ([v112 containsObject:@"MPModelPropertyLyricsHasTimeSyncedLyrics"])
      {
        v115 = 8;
      }

      else
      {
        v115 = 0;
      }

      *&self->_requestedSongProperties.lyrics = *&self->_requestedSongProperties.lyrics & 0xF7 | v115;
    }

    v116 = [v88 objectForKey:@"MPModelRelationshipSongLocalFileAsset"];
    if (v116)
    {
      *&self->_requestedSongProperties |= 0x20000uLL;
    }

    v117 = [v88 objectForKey:@"MPModelRelationshipSongStoreAsset"];
    storeAssetProperties = self->_storeAssetProperties;
    self->_storeAssetProperties = v117;

    v119 = [v88 objectForKey:@"MPModelRelationshipSongPlaybackPosition"];
    if (v119)
    {
      v120 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaybackPositionBuilder alloc] initWithRequestedPropertySet:v119];
      playbackPositionBuilder = self->_playbackPositionBuilder;
      self->_playbackPositionBuilder = v120;
    }

    *&self->_requestedSongProperties |= 1uLL;

    a4 = v132;
    v10 = v130;
    v8 = v131;
  }

  v122 = [MPModelGenericObject alloc];
  v123 = +[MPIdentifierSet emptyIdentifierSet];
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke;
  v133[3] = &unk_1E767E428;
  v134 = v8;
  v135 = self;
  v136 = v10;
  v137 = a4;
  v124 = v10;
  v125 = v8;
  v126 = [(MPModelObject *)v122 initWithIdentifiers:v123 block:v133];

  return v126;
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E42B0];
  v5 = a2;
  v6 = [v3 offerWithType:v4];
  v7 = [MPModelSong alloc];
  v8 = [MPIdentifierSet alloc];
  v9 = +[MPModelSongKind identityKind];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_2;
  v19[3] = &unk_1E767EE00;
  v20 = *(a1 + 32);
  v21 = v6;
  v10 = v6;
  v11 = [(MPIdentifierSet *)v8 initWithSource:@"StorePlatform" modelKind:v9 block:v19];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_4;
  v15[3] = &unk_1E767E400;
  v14 = *(a1 + 32);
  v12 = v14.i64[0];
  v16 = vextq_s8(v14, v14, 8uLL);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v13 = [(MPModelObject *)v7 initWithIdentifiers:v11 block:v15];

  [v5 setSong:v13];
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeAdamID];
  v6 = [*(a1 + 32) cloudUniversalLibraryID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_3;
  v8[3] = &unk_1E767E3D8;
  v12 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v7 = v6;
  [v4 setUniversalStoreIdentifiersWithBlock:v8];
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    v10 = [*(a1 + 40) name];
    if (v10)
    {
      [v3 setTitle:v10];
    }

    else
    {
      v11 = [*(a1 + 40) title];
      [v3 setTitle:v11];
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  [*(a1 + 40) duration];
  [v3 setDuration:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setTrackNumber:{objc_msgSend(*(a1 + 40), "trackNumber")}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    [v3 setDiscNumber:{objc_msgSend(*(a1 + 40), "discNumber")}];
    v4 = *(a1 + 32);
    if ((*(v4 + 32) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  [v3 setTrackCount:{objc_msgSend(*(a1 + 40), "trackCount")}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v5 & 0x80) != 0)
  {
LABEL_7:
    [v3 setExplicitSong:{objc_msgSend(*(a1 + 40), "explicitRating") > 500}];
    v4 = *(a1 + 32);
  }

LABEL_8:
  v6 = *(v4 + 16);
  if (!v6 && (*(v4 + 34) & 8) == 0)
  {
    v7 = 0;
    goto LABEL_34;
  }

  if (!*(v4 + 24))
  {
    if ((*(v4 + 34) & 8) != 0)
    {
      v92[0] = @"MPModelPropertyStoreAssetRedownloadable";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
      v9 = [MPPropertySet propertySetWithProperties:v12];

      v13 = *(*(a1 + 32) + 16);
      if (v13)
      {
        v14 = v13;
        if (v9)
        {
          v15 = [v13 propertySetByCombiningWithPropertySet:v9];

          v14 = v15;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v8 = v6;
      v9 = 0;
      if (v6)
      {
LABEL_28:
        v14 = v8;
LABEL_29:
        v16 = [(MPStoreModelObjectBuilder *)[MPStoreModelStoreAssetBuilder alloc] initWithRequestedPropertySet:v14];
        v17 = *(a1 + 32);
        v18 = *(v17 + 24);
        *(v17 + 24) = v16;

        goto LABEL_30;
      }
    }

    v8 = v9;
    v9 = v8;
    goto LABEL_28;
  }

LABEL_30:
  v19 = [MPStoreItemMetadata alloc];
  v20 = [*(a1 + 40) metadataDictionary];
  v21 = [*(a1 + 40) expirationDate];
  v22 = [(MPStoreItemMetadata *)v19 initWithStorePlatformDictionary:v20 expirationDate:v21];

  v7 = [*(*(a1 + 32) + 24) modelObjectWithStoreItemMetadata:v22 userIdentity:*(a1 + 48)];
  if (*(*(a1 + 32) + 16))
  {
    [v3 setStoreAsset:v7];
  }

  if ((*(*(a1 + 32) + 34) & 8) != 0)
  {
    [v3 setLibraryAddEligible:{objc_msgSend(v7, "isRedownloadable")}];
  }

LABEL_34:
  v23 = [*(a1 + 40) kind];
  IsArtistUploadedContent = MPStoreItemMetadataItemKindIsArtistUploadedContent(v23);
  if (*(*(a1 + 32) + 33))
  {
    [v3 setArtistUploadedContent:IsArtistUploadedContent];
  }

  if (!v23 && (*(a1 + 56) & 1) != 0 || ([v23 isEqualToString:@"musicVideo"] & 1) != 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = [v23 isEqualToString:@"uploadedVideo"];
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x200) != 0)
  {
    [v3 setHasVideo:v26];
    v27 = *(a1 + 32);
    v28 = *(v27 + 32);
    if ((v28 & 0x800) == 0)
    {
LABEL_43:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_78;
    }
  }

  else if ((v28 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v38 = [*(a1 + 40) copyrightText];
  [v3 setCopyrightText:v38];

  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x40000) == 0)
  {
LABEL_44:
    if ((v28 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setLibraryAdded:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x10000) == 0)
  {
LABEL_45:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setHasCloudSyncSource:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x1000) == 0)
  {
LABEL_46:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setKeepLocalEnableState:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x2000) == 0)
  {
LABEL_47:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setKeepLocalManagedStatus:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x4000) == 0)
  {
LABEL_48:
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setKeepLocalManagedStatusReason:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x8000) == 0)
  {
LABEL_49:
    if ((v28 & 0x100000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setKeepLocalConstraints:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x100000) == 0)
  {
LABEL_50:
    if ((v28 & 0x200000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setShouldShowComposer:{objc_msgSend(*(a1 + 40), "shouldShowComposer", v26)}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x200000) == 0)
  {
LABEL_51:
    if ((v28 & 0x20000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_85:
  [v3 setVolumeNormalization:{v26, 0.0}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x20000) != 0)
  {
LABEL_52:
    [v3 setLocalFileAsset:0];
    v27 = *(a1 + 32);
    v28 = *(v27 + 32);
  }

LABEL_53:
  if ((v28 & 0x400) != 0)
  {
    v39 = [MPStoreItemMetadata alloc];
    v40 = [*(a1 + 40) metadataDictionary];
    v41 = [*(a1 + 40) expirationDate];
    v42 = [(MPStoreItemMetadata *)v39 initWithStorePlatformDictionary:v40 expirationDate:v41];

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_5;
    v90[3] = &unk_1E767EE28;
    v43 = v42;
    v91 = v43;
    [v3 setArtworkCatalogBlock:v90];

    v27 = *(a1 + 32);
    v28 = *(v27 + 32);
    if ((v28 & 0x400000) == 0)
    {
LABEL_55:
      if ((v28 & 0x800000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_97;
    }
  }

  else if ((v28 & 0x400000) == 0)
  {
    goto LABEL_55;
  }

  v44 = [*(a1 + 40) releaseDate];
  if (v44)
  {
    v45 = [MEMORY[0x1E69E4608] storeServerCalendar];
    v46 = [v45 component:4 fromDate:v44];
  }

  else
  {
    v46 = 0;
  }

  [v3 setYear:v46];

  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x800000) == 0)
  {
LABEL_56:
    if ((v28 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_98;
  }

LABEL_97:
  [v3 setUserRating:{v26, 0.0}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x1000000) == 0)
  {
LABEL_57:
    if ((v28 & 0x2000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_99;
  }

LABEL_98:
  [v3 setCloudStatus:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x2000000) == 0)
  {
LABEL_58:
    if ((v28 & 0x4000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_100;
  }

LABEL_99:
  [v3 setGaplessInfo:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x4000000) == 0)
  {
LABEL_59:
    if ((v28 & 0x8000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_101;
  }

LABEL_100:
  LODWORD(v25) = 1.0;
  [v3 setVolumeAdjustment:{v26, v25}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x8000000) == 0)
  {
LABEL_60:
    if ((v28 & 0x10000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_116;
  }

LABEL_101:
  v55 = +[MPCloudController sharedCloudController];
  v56 = [v55 isEnhancedAudioAvailable];

  if (v56)
  {
    v57 = [*(a1 + 40) audioTraits];
    if ([v57 containsObject:@"spatial"])
    {
      v58 = 8;
    }

    else
    {
      v58 = 0;
    }

    if ([v57 containsObject:@"atmos"])
    {
      v58 |= 0x10uLL;
    }

    if ([v57 containsObject:@"surround"])
    {
      v58 |= 0x20uLL;
    }

    if ([v57 containsObject:@"lossless"])
    {
      v58 |= 2uLL;
    }

    if ([v57 containsObject:@"hi-res-lossless"])
    {
      v58 |= 4uLL;
    }
  }

  else
  {
    v58 = 0;
  }

  [v3 setTraits:v58];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x10000000) == 0)
  {
LABEL_61:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_117;
  }

LABEL_116:
  [v3 setSupportsExtendedLyricsAttribute:{objc_msgSend(*(a1 + 40), "supportsVocalAttenuation", v26)}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x40) == 0)
  {
LABEL_62:
    if ((v28 & 0x1000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_118;
  }

LABEL_117:
  [v3 setGrouping:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x1000000000) == 0)
  {
LABEL_63:
    if ((v28 & 0x2000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_119;
  }

LABEL_118:
  v59 = [*(a1 + 40) workName];
  [v3 setClassicalWork:v59];

  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x2000000000) == 0)
  {
LABEL_64:
    if ((v28 & 0x4000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_120;
  }

LABEL_119:
  v60 = [*(a1 + 40) movementName];
  [v3 setClassicalMovement:v60];

  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x4000000000) == 0)
  {
LABEL_65:
    if ((v28 & 0x8000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_121;
  }

LABEL_120:
  [v3 setClassicalMovementCount:{objc_msgSend(*(a1 + 40), "movementCount", v26)}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x8000000000) == 0)
  {
LABEL_66:
    if ((v28 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_122;
  }

LABEL_121:
  [v3 setClassicalMovementNumber:{objc_msgSend(*(a1 + 40), "movementNumber", v26)}];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x20000000) == 0)
  {
LABEL_67:
    if ((v28 & 0x40000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_123;
  }

LABEL_122:
  [v3 setIsFavorite:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x40000000) == 0)
  {
LABEL_68:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_124;
  }

LABEL_123:
  [v3 setIsDisliked:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_69:
    if ((v28 & 0x200000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_125;
  }

LABEL_124:
  [v3 setDateFavorited:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x200000000) == 0)
  {
LABEL_70:
    if ((v28 & 0x400000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_126;
  }

LABEL_125:
  [v3 setIsPinned:0];
  v27 = *(a1 + 32);
  v28 = *(v27 + 32);
  if ((v28 & 0x400000000) == 0)
  {
LABEL_71:
    if ((v28 & 0x800000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_126:
  [v3 setImmersiveDeeplinkURL:0];
  v27 = *(a1 + 32);
  if ((*(v27 + 32) & 0x800000000) != 0)
  {
LABEL_72:
    v29 = [*(a1 + 40) releaseDate];
    [v3 setDateReleased:v29];

    v27 = *(a1 + 32);
  }

LABEL_73:
  if (*(v27 + 40))
  {
    v30 = [*(a1 + 40) collectionStoreAdamID];
    if (v30)
    {
      v31 = v30;
      v32 = [MPIdentifierSet alloc];
      v33 = +[MPModelAlbumKind identityKind];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_6;
      v89[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
      v89[4] = v31;
      v34 = [(MPIdentifierSet *)v32 initWithSource:@"StorePlatform" modelKind:v33 block:v89];

      v35 = [MPModelAlbum alloc];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_8;
      v87[3] = &unk_1E767EE50;
      v36 = *(a1 + 40);
      v87[4] = *(a1 + 32);
      v88 = v36;
      v37 = [(MPModelObject *)v35 initWithIdentifiers:v34 block:v87];
    }

    else
    {
      v37 = 0;
    }

    [v3 setAlbum:v37];

    v27 = *(a1 + 32);
  }

  if (*(v27 + 44))
  {
    v47 = [*(a1 + 40) artistStoreAdamID];
    if (v47)
    {
      v48 = v47;
      v49 = [MPIdentifierSet alloc];
      v50 = +[MPModelArtistKind identityKind];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_9;
      v86[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
      v86[4] = v48;
      v51 = [(MPIdentifierSet *)v49 initWithSource:@"StorePlatform" modelKind:v50 block:v86];

      v52 = [MPModelArtist alloc];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_11;
      v84[3] = &unk_1E767EE78;
      v53 = *(a1 + 40);
      v84[4] = *(a1 + 32);
      v85 = v53;
      v54 = [(MPModelObject *)v52 initWithIdentifiers:v51 block:v84];
    }

    else
    {
      v54 = 0;
    }

    [v3 setArtist:v54];

    v27 = *(a1 + 32);
  }

  if (*(v27 + 48))
  {
    v61 = [MPModelComposer alloc];
    v62 = +[MPIdentifierSet emptyIdentifierSet];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_12;
    v82[3] = &unk_1E767EEA0;
    v63 = *(a1 + 40);
    v82[4] = *(a1 + 32);
    v83 = v63;
    v64 = [(MPModelObject *)v61 initWithIdentifiers:v62 block:v82];

    [v3 setComposer:v64];
    v27 = *(a1 + 32);
  }

  if (*(v27 + 52))
  {
    v65 = [MPModelGenre alloc];
    v66 = +[MPIdentifierSet emptyIdentifierSet];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_13;
    v80[3] = &unk_1E767EEC8;
    v67 = *(a1 + 40);
    v80[4] = *(a1 + 32);
    v81 = v67;
    v68 = [(MPModelObject *)v65 initWithIdentifiers:v66 block:v80];

    [v3 setGenre:v68];
    v27 = *(a1 + 32);
  }

  if (*(v27 + 56))
  {
    [v3 setHomeSharingAsset:0];
    v27 = *(a1 + 32);
  }

  if (*(v27 + 60))
  {
    v69 = [MPModelLyrics alloc];
    v70 = +[MPIdentifierSet emptyIdentifierSet];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_14;
    v78[3] = &unk_1E767EEF0;
    v71 = *(a1 + 40);
    v78[4] = *(a1 + 32);
    v79 = v71;
    v72 = [(MPModelObject *)v69 initWithIdentifiers:v70 block:v78];

    [v3 setLyrics:v72];
    v27 = *(a1 + 32);
  }

  if (*(v27 + 8))
  {
    v73 = [MPStoreItemMetadata alloc];
    v74 = [*(a1 + 40) metadataDictionary];
    v75 = [*(a1 + 40) expirationDate];
    v76 = [(MPStoreItemMetadata *)v73 initWithStorePlatformDictionary:v74 expirationDate:v75];

    v77 = [*(*(a1 + 32) + 8) modelObjectWithStoreItemMetadata:v76 userIdentity:*(a1 + 48)];
    [v3 setPlaybackPosition:v77];
  }
}

MPArtworkCatalog *__129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_5(uint64_t a1)
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

uint64_t __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_6(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_7;
  v3[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v3[4] = *(a1 + 32);
  return [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_8(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(*(a1 + 32) + 40);
  if ((v3 & 2) != 0)
  {
    v4 = [*(a1 + 40) collectionName];
    [v11 setTitle:v4];

    v3 = *(*(a1 + 32) + 40);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(*(a1 + 32) + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = [*(a1 + 40) releaseDate];
  if (v5)
  {
    v6 = +[MPStoreItemMetadata storeServerCalendar];
    v7 = [v6 components:1048604 fromDate:v5];
    [v11 setReleaseDateComponents:v7];
  }

  else
  {
    [v11 setReleaseDateComponents:0];
  }

  v3 = *(*(a1 + 32) + 40);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  v8 = [*(a1 + 40) releaseDate];
  if (v8)
  {
    v9 = [MEMORY[0x1E69E4608] storeServerCalendar];
    v10 = [v9 component:4 fromDate:v8];
  }

  else
  {
    v10 = 0;
  }

  [v11 setYear:v10];

  if ((*(*(a1 + 32) + 40) & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  [v11 setArtist:0];
LABEL_6:
}

uint64_t __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_9(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_10;
  v3[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v3[4] = *(a1 + 32);
  return [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_11(uint64_t a1, void *a2)
{
  if ((*(*(a1 + 32) + 44) & 2) != 0)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 artistName];
    [v4 setName:v5];
  }
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_12(uint64_t a1, void *a2)
{
  if ((*(*(a1 + 32) + 48) & 2) != 0)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 composerName];
    [v4 setName:v5];
  }
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_13(uint64_t a1, void *a2)
{
  if ((*(*(a1 + 32) + 52) & 2) != 0)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 genreNames];
    v6 = [v5 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v4 setName:v7];
  }
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(*(a1 + 32) + 60);
  if ((v3 & 2) != 0)
  {
    [v4 setText:0];
    v3 = *(*(a1 + 32) + 60);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(*(a1 + 32) + 60) & 4) == 0)
  {
    goto LABEL_3;
  }

  [v4 setHasStoreLyrics:{objc_msgSend(*(a1 + 40), "hasLyrics")}];
  if ((*(*(a1 + 32) + 60) & 8) != 0)
  {
LABEL_4:
    [v4 setHasTimeSyncedLyrics:{objc_msgSend(*(a1 + 40), "hasTimeSyncedLyrics")}];
  }

LABEL_5:
}

void __129__MPModelStorePlatformMetadataGenericObjectBuilder_genericObjectForStorePlatformMetadata_radioStationContainsVideo_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setAdamID:*(a1 + 56)];
  v3 = [*(a1 + 32) formerStoreAdamIDs];
  [v4 setFormerAdamIDs:v3];

  if (*(a1 + 40))
  {
    [v4 setSubscriptionAdamID:*(a1 + 56)];
  }

  if ([*(a1 + 48) length])
  {
    [v4 setUniversalCloudLibraryID:*(a1 + 48)];
  }
}

- (MPModelStorePlatformMetadataGenericObjectBuilder)initWithRequestedProperties:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelStorePlatformMetadataGenericObjectBuilder;
  v5 = [(MPModelStorePlatformMetadataGenericObjectBuilder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestedProperties = v5->_requestedProperties;
    v5->_requestedProperties = v6;
  }

  return v5;
}

@end