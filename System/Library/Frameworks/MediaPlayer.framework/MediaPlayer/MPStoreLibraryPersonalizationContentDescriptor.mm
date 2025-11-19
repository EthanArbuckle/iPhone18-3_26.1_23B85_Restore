@interface MPStoreLibraryPersonalizationContentDescriptor
+ (id)_lightweightPersonalizationPropertiesForLyrics;
+ (id)_lightweightPersonalizationPropertiesForPlaybackPosition;
+ (id)_lightweightPersonalizationPropertiesForStoreAsset;
+ (id)lightweightPersonalizationPropertiesForModelClass:(Class)a3;
+ (id)requiredLightweightPersonalizationPropertiesForModelClass:(Class)a3 requestedProperties:(id)a4;
- (MPStoreLibraryPersonalizationContentDescriptor)initWithModel:(id)a3 personalizationStyle:(int64_t)a4;
- (id)description;
@end

@implementation MPStoreLibraryPersonalizationContentDescriptor

+ (id)_lightweightPersonalizationPropertiesForLyrics
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyLyricsHasLibraryLyrics";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)_lightweightPersonalizationPropertiesForStoreAsset
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyStoreAssetEndpointType";
  v5[1] = @"MPModelPropertyStoreAssetRedownloadParameters";
  v5[2] = @"MPModelPropertyStoreAssetRedownloadable";
  v5[3] = @"MPModelPropertyStoreAssetAccountIdentifier";
  v5[4] = @"MPModelPropertyStoreAssetShouldReportPlayEvents";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)_lightweightPersonalizationPropertiesForPlaybackPosition
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaybackPositionBookmarkTime";
  v5[1] = @"MPModelPropertyPlaybackPositionHasBeenPlayed";
  v5[2] = @"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier";
  v5[3] = @"MPModelPropertyPlaybackPositionUserPlayCount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)requiredLightweightPersonalizationPropertiesForModelClass:(Class)a3 requestedProperties:(id)a4
{
  v34[9] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v34[0] = @"MPModelPropertySongHasCloudSyncSource";
    v34[1] = @"MPModelPropertySongKeepLocalEnableState";
    v34[2] = @"MPModelPropertySongKeepLocalManagedStatus";
    v34[3] = @"MPModelPropertySongKeepLocalManagedStatusReason";
    v34[4] = @"MPModelPropertySongKeepLocalConstraints";
    v34[5] = @"MPModelPropertySongLibraryAdded";
    v34[6] = @"MPModelPropertySongIsFavorite";
    v34[7] = @"MPModelPropertySongIsDisliked";
    v34[8] = @"MPModelPropertySongIsPinned";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v34;
LABEL_5:
    v8 = 9;
LABEL_6:
    v9 = [v6 arrayWithObjects:v7 count:v8];
    v10 = [MPPropertySet propertySetWithProperties:v9];
LABEL_7:

    goto LABEL_8;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v33[0] = @"MPModelPropertyAlbumKeepLocalEnableState";
    v33[1] = @"MPModelPropertyAlbumKeepLocalManagedStatus";
    v33[2] = @"MPModelPropertyAlbumKeepLocalManagedStatusReason";
    v33[3] = @"MPModelPropertyAlbumKeepLocalConstraints";
    v33[4] = @"MPModelPropertyAlbumLibraryAdded";
    v33[5] = @"MPModelPropertyAlbumIsFavorite";
    v33[6] = @"MPModelPropertyAlbumIsDisliked";
    v33[7] = @"MPModelPropertyAlbumIsStoreRedownloadable";
    v33[8] = @"MPModelPropertyAlbumIsPinned";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v33;
    goto LABEL_5;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v32[0] = @"MPModelPropertyPlaylistKeepLocalEnableState";
    v32[1] = @"MPModelPropertyPlaylistKeepLocalManagedStatus";
    v32[2] = @"MPModelPropertyPlaylistKeepLocalManagedStatusReason";
    v32[3] = @"MPModelPropertyPlaylistKeepLocalConstraints";
    v32[4] = @"MPModelPropertyPlaylistLibraryAdded";
    v32[5] = @"MPModelPropertyPlaylistIsFavorite";
    v32[6] = @"MPModelPropertyPlaylistIsDisliked";
    v32[7] = @"MPModelPropertyPlaylistIsPinned";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v32;
    v8 = 8;
    goto LABEL_6;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v12 = [v5 relationships];
    v13 = [v12 objectForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];

    if (v13)
    {
      v30 = @"MPModelRelationshipTVEpisodePlaybackPosition";
      v29 = @"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v15 = [MPPropertySet propertySetWithProperties:v14];
      v31 = v15;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    }

    else
    {
      v9 = 0;
    }

    v19 = [MPPropertySet alloc];
    v28 = @"MPModelPropertyTVEpisodeHasCloudSyncSource";
    v20 = MEMORY[0x1E695DEC8];
    v21 = &v28;
LABEL_26:
    v22 = [v20 arrayWithObjects:v21 count:1];
    v10 = [(MPPropertySet *)v19 initWithProperties:v22 relationships:v9];

    goto LABEL_7;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v5 relationships];
    v13 = [v16 objectForKey:@"MPModelRelationshipMoviePlaybackPosition"];

    if (v13)
    {
      v26 = @"MPModelRelationshipMoviePlaybackPosition";
      v25 = @"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v18 = [MPPropertySet propertySetWithProperties:v17];
      v27 = v18;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    }

    else
    {
      v9 = 0;
    }

    v19 = [MPPropertySet alloc];
    v24 = @"MPModelPropertyMovieHasCloudSyncSource";
    v20 = MEMORY[0x1E695DEC8];
    v21 = &v24;
    goto LABEL_26;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v23[0] = @"MPModelPropertyArtistIsFavorite";
    v23[1] = @"MPModelPropertyArtistIsDisliked";
    v23[2] = @"MPModelPropertyArtistLibraryAdded";
    v23[3] = @"MPModelPropertyArtistIsPinned";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v23;
    v8 = 4;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

+ (id)lightweightPersonalizationPropertiesForModelClass:(Class)a3
{
  v58[7] = *MEMORY[0x1E69E9840];
  v57[0] = @"MPModelRelationshipGenericSong";
  v4 = [MPPropertySet alloc];
  v56[0] = @"MPModelPropertySongLibraryAdded";
  v56[1] = @"MPModelPropertySongKeepLocalEnableState";
  v56[2] = @"MPModelPropertySongKeepLocalManagedStatus";
  v56[3] = @"MPModelPropertySongKeepLocalManagedStatusReason";
  v56[4] = @"MPModelPropertySongKeepLocalConstraints";
  v56[5] = @"MPModelPropertySongLibraryAddEligible";
  v56[6] = @"MPModelPropertySongHasCloudSyncSource";
  v56[7] = @"MPModelPropertySongUserRating";
  v56[8] = @"MPModelPropertySongCloudStatus";
  v56[9] = @"MPModelPropertySongIsFavorite";
  v56[10] = @"MPModelPropertySongIsDisliked";
  v56[11] = @"MPModelPropertySongIsPinned";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:12];
  v54[0] = @"MPModelRelationshipSongLocalFileAsset";
  v43 = +[MPModelFileAsset allSupportedProperties];
  v55[0] = v43;
  v54[1] = @"MPModelRelationshipSongStoreAsset";
  v42 = [a1 _lightweightPersonalizationPropertiesForStoreAsset];
  v55[1] = v42;
  v54[2] = @"MPModelRelationshipSongPlaybackPosition";
  v41 = [a1 _lightweightPersonalizationPropertiesForPlaybackPosition];
  v55[2] = v41;
  v54[3] = @"MPModelRelationshipSongLyrics";
  v39 = [a1 _lightweightPersonalizationPropertiesForLyrics];
  v55[3] = v39;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v36 = [(MPPropertySet *)v4 initWithProperties:v38 relationships:v37];
  v58[0] = v36;
  v57[1] = @"MPModelRelationshipGenericTVEpisode";
  v5 = [MPPropertySet alloc];
  v53[0] = @"MPModelPropertyTVEpisodeLibraryAdded";
  v53[1] = @"MPModelPropertyTVEpisodeKeepLocalEnableState";
  v53[2] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatus";
  v53[3] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason";
  v53[4] = @"MPModelPropertyTVEpisodeKeepLocalConstraints";
  v53[5] = @"MPModelPropertyTVEpisodeLibraryAddEligible";
  v53[6] = @"MPModelPropertyTVEpisodeHasCloudSyncSource";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:7];
  v51[0] = @"MPModelRelationshipTVEpisodeLocalFileAsset";
  v35 = +[MPModelFileAsset allSupportedProperties];
  v52[0] = v35;
  v51[1] = @"MPModelRelationshipTVEpisodeStoreAsset";
  v34 = [a1 _lightweightPersonalizationPropertiesForStoreAsset];
  v52[1] = v34;
  v51[2] = @"MPModelRelationshipTVEpisodePlaybackPosition";
  v33 = [a1 _lightweightPersonalizationPropertiesForPlaybackPosition];
  v52[2] = v33;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v30 = [(MPPropertySet *)v5 initWithProperties:v32 relationships:v31];
  v58[1] = v30;
  v57[2] = @"MPModelRelationshipGenericMovie";
  v6 = [MPPropertySet alloc];
  v50[0] = @"MPModelPropertyMovieLibraryAdded";
  v50[1] = @"MPModelPropertyMovieKeepLocalEnableState";
  v50[2] = @"MPModelPropertyMovieKeepLocalManagedStatus";
  v50[3] = @"MPModelPropertyMovieKeepLocalManagedStatusReason";
  v50[4] = @"MPModelPropertyMovieKeepLocalConstraints";
  v50[5] = @"MPModelPropertyMovieLibraryAddEligible";
  v50[6] = @"MPModelPropertyMovieHasCloudSyncSource";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:7];
  v48[0] = @"MPModelRelationshipMovieLocalFileAsset";
  v29 = +[MPModelFileAsset allSupportedProperties];
  v49[0] = v29;
  v48[1] = @"MPModelRelationshipMovieStoreAsset";
  v28 = [a1 _lightweightPersonalizationPropertiesForStoreAsset];
  v49[1] = v28;
  v48[2] = @"MPModelRelationshipMoviePlaybackPosition";
  v24 = a1;
  v27 = [a1 _lightweightPersonalizationPropertiesForPlaybackPosition];
  v49[2] = v27;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v7 = [(MPPropertySet *)v6 initWithProperties:v26 relationships:v25];
  v58[2] = v7;
  v57[3] = @"MPModelRelationshipGenericAlbum";
  v47[0] = @"MPModelPropertyAlbumLibraryAdded";
  v47[1] = @"MPModelPropertyAlbumKeepLocalEnableState";
  v47[2] = @"MPModelPropertyAlbumKeepLocalManagedStatus";
  v47[3] = @"MPModelPropertyAlbumKeepLocalManagedStatusReason";
  v47[4] = @"MPModelPropertyAlbumKeepLocalConstraints";
  v47[5] = @"MPModelPropertyAlbumLibraryAddEligible";
  v47[6] = @"MPModelPropertyAlbumIsFavorite";
  v47[7] = @"MPModelPropertyAlbumIsDisliked";
  v47[8] = @"MPModelPropertyAlbumIsStoreRedownloadable";
  v47[9] = @"MPModelPropertyAlbumIsPinned";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:10];
  v9 = [MPPropertySet propertySetWithProperties:v8];
  v58[3] = v9;
  v57[4] = @"MPModelRelationshipGenericPlaylist";
  v46[0] = @"MPModelPropertyPlaylistLibraryAdded";
  v46[1] = @"MPModelPropertyPlaylistKeepLocalEnableState";
  v46[2] = @"MPModelPropertyPlaylistKeepLocalManagedStatus";
  v46[3] = @"MPModelPropertyPlaylistKeepLocalManagedStatusReason";
  v46[4] = @"MPModelPropertyPlaylistKeepLocalConstraints";
  v46[5] = @"MPModelPropertyPlaylistIsFavorite";
  v46[6] = @"MPModelPropertyPlaylistIsDisliked";
  v46[7] = @"MPModelPropertyPlaylistIsPinned";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:8];
  v11 = [MPPropertySet propertySetWithProperties:v10];
  v58[4] = v11;
  v57[5] = @"MPModelRelationshipGenericTVSeason";
  v45[0] = @"MPModelPropertyTVSeasonLibraryAdded";
  v45[1] = @"MPModelPropertyTVSeasonLibraryAddEligible";
  v45[2] = @"MPModelPropertyTVSeasonStoreCanonicalID";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v13 = [MPPropertySet propertySetWithProperties:v12];
  v58[5] = v13;
  v57[6] = @"MPModelRelationshipGenericArtist";
  v44[0] = @"MPModelPropertyArtistIsFavorite";
  v44[1] = @"MPModelPropertyArtistIsDisliked";
  v44[2] = @"MPModelPropertyArtistLibraryAdded";
  v44[3] = @"MPModelPropertyArtistIsPinned";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  v15 = [MPPropertySet propertySetWithProperties:v14];
  v58[6] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:7];

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericSong";
LABEL_11:
    v18 = [v16 objectForKeyedSubscript:v17];
LABEL_12:
    v19 = v18;
    goto LABEL_13;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericTVEpisode";
    goto LABEL_11;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericMovie";
    goto LABEL_11;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericAlbum";
    goto LABEL_11;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericPlaylist";
    goto LABEL_11;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v21 = [MPPropertySet alloc];
    v18 = [(MPPropertySet *)v21 initWithProperties:MEMORY[0x1E695E0F0] relationships:v16];
    goto LABEL_12;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericTVSeason";
    goto LABEL_11;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v17 = @"MPModelRelationshipGenericArtist";
    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:v24 file:@"MPStoreLibraryPersonalizationContentDescriptor.m" lineNumber:121 description:{@"No personalization properties for modelClass: %@", a3}];

  v19 = 0;
LABEL_13:

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPModelObject *)self->_model identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"<MPStoreLibraryPersonalizationContentDescriptor %p modelObject.identifiers=%@>", self, v5];

  return v6;
}

- (MPStoreLibraryPersonalizationContentDescriptor)initWithModel:(id)a3 personalizationStyle:(int64_t)a4
{
  v7 = a3;
  v8 = [(MPStoreLibraryPersonalizationContentDescriptor *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, a3);
    v9->_personalizationStyle = a4;
  }

  return v9;
}

@end