@interface MusicKit_SoftLinking_MPModelRequest
+ (MusicKit_SoftLinking_MPModelRequest)defaultUnpersonalizedRequest;
+ (id)_albumSupportedProperties;
+ (id)_albumSupportedPropertiesForPlayback;
+ (id)_artistSupportedProperties;
+ (id)_composerSupportedProperties;
+ (id)_curatorSupportedProperties;
+ (id)_genreSupportedProperties;
+ (id)_localFileAssetSupportedProperties;
+ (id)_lyricsSupportedProperties;
+ (id)_movieSupportedProperties;
+ (id)_movieSupportedPropertiesForPlayback;
+ (id)_pinSupportedProperties;
+ (id)_playbackItemSupportedProperties;
+ (id)_playbackPositionSupportedProperties;
+ (id)_playbackSectionSupportedProperties;
+ (id)_playlistAuthorSupportedProperties;
+ (id)_playlistEntryReactionSupportedProperties;
+ (id)_playlistEntrySupportedProperties;
+ (id)_playlistEntrySupportedPropertiesForPlayback;
+ (id)_playlistSupportedProperties;
+ (id)_playlistSupportedPropertiesForPlayback;
+ (id)_propertySetForRawProperties:(id)a3 relationships:(id)a4;
+ (id)_radioStationSupportedPropertiesForPlayback;
+ (id)_recentlyAddedObjectSupportedProperties;
+ (id)_representativeSongSupportedProperties;
+ (id)_socialPersonSupportedProperties;
+ (id)_songSupportedProperties;
+ (id)_songSupportedPropertiesForPlayback;
+ (id)_storeAssetSupportedProperties;
+ (id)_supportedPropertiesForModelObjectType:(int64_t)a3;
+ (id)_tvEpisodeSupportedProperties;
+ (id)_tvEpisodeSupportedPropertiesForPlayback;
+ (id)_tvSeasonSupportedProperties;
+ (id)_tvSeasonSupportedPropertiesForPlayback;
+ (id)_tvShowSupportedProperties;
- (id)_initWithUnderlyingRequest:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelRequest

+ (id)_songSupportedPropertiesForPlayback
{
  v48[16] = *MEMORY[0x277D85DE8];
  v41 = objc_alloc(MEMORY[0x277CBEB18]);
  v39 = getMPModelPropertySongArtistUploadedContent();
  v48[0] = v39;
  v37 = getMPModelPropertySongArtwork();
  v48[1] = v37;
  v35 = getMPModelPropertySongCloudStatus();
  v48[2] = v35;
  v33 = getMPModelPropertySongDuration();
  v48[3] = v33;
  v31 = getMPModelPropertySongExplicit();
  v48[4] = v31;
  v28 = getMPModelPropertySongHasVideo();
  v48[5] = v28;
  v27 = getMPModelPropertySongIsFavorite();
  v48[6] = v27;
  v2 = getMPModelPropertySongDateFavorited();
  v48[7] = v2;
  v3 = getMPModelPropertySongLibraryAdded();
  v48[8] = v3;
  v4 = getMPModelPropertySongLibraryAddEligible();
  v48[9] = v4;
  v5 = getMPModelPropertySongShouldShowComposer();
  v48[10] = v5;
  v6 = getMPModelPropertySongTitle();
  v48[11] = v6;
  v7 = get_MPModelPropertySongTrackCount();
  v48[12] = v7;
  v8 = getMPModelPropertySongTrackNumber();
  v48[13] = v8;
  v9 = getMPModelPropertySongTraits();
  v48[14] = v9;
  v10 = getMPModelPropertySongUserRating();
  v48[15] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:16];
  v42 = [v41 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertySongIsDisliked();
    [v42 addObject:v12];
  }

  v29 = objc_alloc(getMPPropertySetClass());
  v40 = getMPModelRelationshipSongComposer();
  v46[0] = v40;
  MPPropertySetClass = getMPPropertySetClass();
  v38 = getMPModelPropertyComposerName();
  v45 = v38;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v34 = [MPPropertySetClass propertySetWithProperties:v36];
  v47[0] = v34;
  v32 = getMPModelRelationshipSongAlbum();
  v46[1] = v32;
  v14 = getMPPropertySetClass();
  v15 = getMPModelPropertyAlbumTitle();
  v44[0] = v15;
  v16 = getMPModelPropertyAlbumYear();
  v44[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v18 = [v14 propertySetWithProperties:v17];
  v47[1] = v18;
  v19 = getMPModelRelationshipSongArtist();
  v46[2] = v19;
  v20 = getMPPropertySetClass();
  v21 = getMPModelPropertyArtistName();
  v43 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v23 = [v20 propertySetWithProperties:v22];
  v47[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v30 = [v29 initWithProperties:v42 relationships:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_tvEpisodeSupportedPropertiesForPlayback
{
  v24[8] = *MEMORY[0x277D85DE8];
  v15 = objc_alloc(getMPPropertySetClass());
  v20 = getMPModelPropertyTVEpisodeArtwork();
  v24[0] = v20;
  v19 = getMPModelPropertyTVEpisodeDuration();
  v24[1] = v19;
  v18 = getMPModelPropertyTVEpisodeHasCloudSyncSource();
  v24[2] = v18;
  v17 = getMPModelPropertyTVEpisodeLibraryAdded();
  v24[3] = v17;
  v16 = getMPModelPropertyTVEpisodeLibraryAddEligible();
  v24[4] = v16;
  v2 = getMPModelPropertyTVEpisodeNumber();
  v24[5] = v2;
  v3 = getMPModelPropertyTVEpisodeTitle();
  v24[6] = v3;
  v4 = getMPModelPropertyTVEpisodeType();
  v24[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:8];
  v6 = getMPModelRelationshipTVEpisodeShow();
  v22 = v6;
  MPPropertySetClass = getMPPropertySetClass();
  v8 = getMPModelPropertyTVShowTitle();
  v21 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v10 = [MPPropertySetClass propertySetWithProperties:v9];
  v23 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v12 = [v15 initWithProperties:v5 relationships:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_movieSupportedPropertiesForPlayback
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyMovieArtwork();
  v13[0] = v3;
  v4 = getMPModelPropertyMovieDuration();
  v13[1] = v4;
  v5 = getMPModelPropertyMovieHasCloudSyncSource();
  v13[2] = v5;
  v6 = getMPModelPropertyMovieLibraryAdded();
  v13[3] = v6;
  v7 = getMPModelPropertyMovieLibraryAddEligible();
  v13[4] = v7;
  v8 = getMPModelPropertyMovieTitle();
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v10 = [v2 initWithProperties:v9 relationships:MEMORY[0x277CBEC10]];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_albumSupportedPropertiesForPlayback
{
  v28[9] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v24 = getMPModelPropertyAlbumArtwork();
  v28[0] = v24;
  v3 = getMPModelPropertyAlbumLibraryAdded();
  v28[1] = v3;
  v4 = getMPModelPropertyAlbumLibraryAddEligible();
  v28[2] = v4;
  v5 = getMPModelPropertyAlbumIsFavorite();
  v28[3] = v5;
  v6 = getMPModelPropertyAlbumDateFavorited();
  v28[4] = v6;
  v7 = getMPModelPropertyAlbumTitle();
  v28[5] = v7;
  v8 = getMPModelPropertyAlbumTrackCount();
  v28[6] = v8;
  v9 = getMPModelPropertyAlbumTraits();
  v28[7] = v9;
  v10 = getMPModelPropertyAlbumYear();
  v28[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:9];
  v12 = [v2 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v13 = getMPModelPropertyAlbumIsDisliked();
    [v12 addObject:v13];
  }

  v14 = objc_alloc(getMPPropertySetClass());
  v15 = getMPModelRelationshipAlbumArtist();
  v26 = v15;
  MPPropertySetClass = getMPPropertySetClass();
  v17 = getMPModelPropertyArtistName();
  v25 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v19 = [MPPropertySetClass propertySetWithProperties:v18];
  v27 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v21 = [v14 initWithProperties:v12 relationships:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_playlistSupportedPropertiesForPlayback
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = getMPModelPropertyPlaylistArtwork();
  v16 = v3;
  v4 = getMPModelPropertyPlaylistName();
  v17 = v4;
  v5 = getMPModelPropertyPlaylistType();
  v18 = v5;
  v6 = getMPModelPropertyPlaylistLibraryAdded();
  v19 = v6;
  v7 = getMPModelPropertyPlaylistTraits();
  v20 = v7;
  v8 = getMPModelPropertyPlaylistIsFavorite();
  v21 = v8;
  v9 = getMPModelPropertyPlaylistDateFavorited();
  v22 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:7];
  v11 = [v2 initWithArray:{v10, v16, v17, v18, v19, v20, v21}];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertyPlaylistIsDisliked();
    [v11 addObject:v12];
  }

  v13 = [objc_alloc(getMPPropertySetClass()) initWithProperties:v11 relationships:MEMORY[0x277CBEC10]];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_playbackItemSupportedProperties
{
  v28[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr;
  v25 = getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr;
  if (!getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v23[3] = dlsym(v5, "MPModelRelationshipGenericPlaylistEntry");
    getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr = v23[3];
    v4 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v26[0] = v6;
  v7 = [a1 _playlistEntrySupportedPropertiesForPlayback];
  v28[0] = v7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v8 = getMPModelRelationshipGenericSongSymbolLoc_ptr_0;
  v25 = getMPModelRelationshipGenericSongSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericSongSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_6();
    v23[3] = dlsym(v9, "MPModelRelationshipGenericSong");
    getMPModelRelationshipGenericSongSymbolLoc_ptr_0 = v23[3];
    v8 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v8)
  {
    goto LABEL_13;
  }

  v10 = *v8;
  v26[1] = v10;
  v11 = [a1 _songSupportedPropertiesForPlayback];
  v28[1] = v11;
  v12 = getMPModelRelationshipGenericMovie();
  v26[2] = v12;
  v13 = [a1 _movieSupportedPropertiesForPlayback];
  v28[2] = v13;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v14 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0;
  v25 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0)
  {
    v15 = MediaPlayerLibrary_6();
    v23[3] = dlsym(v15, "MPModelRelationshipGenericTVEpisode");
    getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0 = v23[3];
    v14 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v14)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v27 = *v14;
  v16 = v27;
  v17 = [a1 _tvEpisodeSupportedPropertiesForPlayback];
  v28[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v26 count:4];
  v19 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_playlistEntrySupportedPropertiesForPlayback
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipPlaylistEntrySong();
  v14[0] = v4;
  v5 = [a1 _songSupportedPropertiesForPlayback];
  v15[0] = v5;
  v6 = getMPModelRelationshipPlaylistEntryMovie();
  v14[1] = v6;
  v7 = [a1 _movieSupportedPropertiesForPlayback];
  v15[1] = v7;
  v8 = getMPModelRelationshipPlaylistEntryTVEpisode();
  v14[2] = v8;
  v9 = [a1 _tvEpisodeSupportedPropertiesForPlayback];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_playbackSectionSupportedProperties
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipGenericAlbum();
  v22[0] = v4;
  v5 = [a1 _albumSupportedPropertiesForPlayback];
  v25[0] = v5;
  v6 = getMPModelRelationshipGenericPlaylist_0();
  v22[1] = v6;
  v7 = [a1 _playlistSupportedPropertiesForPlayback];
  v25[1] = v7;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v8 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  v21 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericRadioStationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v9, "MPModelRelationshipGenericRadioStation");
    getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = v19[3];
    v8 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v8)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v23 = *v8;
  v10 = v23;
  v11 = [a1 _radioStationSupportedPropertiesForPlayback];
  v25[2] = v11;
  v12 = getMPModelRelationshipGenericTVSeason();
  v24 = v12;
  v13 = [a1 _tvSeasonSupportedPropertiesForPlayback];
  v25[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v22 count:4];
  v15 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_radioStationSupportedPropertiesForPlayback
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v3 = getMPModelPropertyRadioStationNameSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationNameSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v4, "MPModelPropertyRadioStationName");
    getMPModelPropertyRadioStationNameSymbolLoc_ptr = v33[3];
    v3 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = *v3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v6 = getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr;
  v36[0] = v5;
  if (!getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v7, "MPModelPropertyRadioStationAttributionLabel");
    getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr = v33[3];
    v6 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = *v6;
  v36[1] = v8;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v9 = getMPModelPropertyRadioStationTypeSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationTypeSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationTypeSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v10, "MPModelPropertyRadioStationType");
    getMPModelPropertyRadioStationTypeSymbolLoc_ptr = v33[3];
    v9 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = *v9;
  v36[2] = v11;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v12 = getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v13, "MPModelPropertyRadioStationSubtype");
    getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr = v33[3];
    v12 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = *v12;
  v36[3] = v14;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v15 = getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v16, "MPModelPropertyRadioStationProviderUniversalLink");
    getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr = v33[3];
    v15 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v15)
  {
    goto LABEL_28;
  }

  v17 = *v15;
  v36[4] = v17;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v18 = getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v19, "MPModelPropertyRadioStationProviderBundleIdentifier");
    getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr = v33[3];
    v18 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v18)
  {
    goto LABEL_28;
  }

  v20 = *v18;
  v36[5] = v20;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v21 = getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v22, "MPModelPropertyRadioStationProviderID");
    getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr = v33[3];
    v21 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v21)
  {
    goto LABEL_28;
  }

  v23 = *v21;
  v36[6] = v23;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v24 = getMPModelPropertyRadioStationArtworkSymbolLoc_ptr;
  v35 = getMPModelPropertyRadioStationArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationArtworkSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v33[3] = dlsym(v25, "MPModelPropertyRadioStationArtwork");
    getMPModelPropertyRadioStationArtworkSymbolLoc_ptr = v33[3];
    v24 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v24)
  {
LABEL_28:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v37 = *v24;
  v26 = MEMORY[0x277CBEA60];
  v27 = v37;
  v28 = [v26 arrayWithObjects:v36 count:8];

  v29 = [v2 initWithProperties:v28 relationships:MEMORY[0x277CBEC10]];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_tvSeasonSupportedPropertiesForPlayback
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v17 = getMPModelPropertyTVSeasonArtwork();
  v21[0] = v17;
  v16 = getMPModelPropertyTVSeasonEpisodesCount();
  v21[1] = v16;
  v3 = getMPModelPropertyTVSeasonLibraryAdded();
  v21[2] = v3;
  v4 = getMPModelPropertyTVSeasonLibraryAddEligible();
  v21[3] = v4;
  v5 = getMPModelPropertyTVSeasonNumber();
  v21[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v7 = getMPModelRelationshipTVSeasonShow();
  v19 = v7;
  MPPropertySetClass = getMPPropertySetClass();
  v9 = getMPModelPropertyTVShowTitle();
  v18 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v11 = [MPPropertySetClass propertySetWithProperties:v10];
  v20 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v13 = [v2 initWithProperties:v6 relationships:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_recentlyAddedObjectSupportedProperties
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipGenericAlbum();
  v16[0] = v4;
  v5 = [a1 _albumSupportedProperties];
  v17[0] = v5;
  v6 = getMPModelRelationshipGenericMovie();
  v16[1] = v6;
  v7 = [a1 _movieSupportedProperties];
  v17[1] = v7;
  v8 = getMPModelRelationshipGenericPlaylist_0();
  v16[2] = v8;
  v9 = [a1 _playlistSupportedProperties];
  v17[2] = v9;
  v10 = getMPModelRelationshipGenericTVSeason();
  v16[3] = v10;
  v11 = [a1 _tvSeasonSupportedProperties];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_albumSupportedProperties
{
  v118 = *MEMORY[0x277D85DE8];
  v106 = objc_alloc(MEMORY[0x277CBEB18]);
  v104 = getMPModelPropertyAlbumTitle();
  v116[0] = v104;
  v103 = getMPModelPropertyAlbumTrackCount();
  v116[1] = v103;
  v102 = getMPModelPropertyAlbumCleanDownloadedTrackCount();
  v116[2] = v102;
  v101 = getMPModelPropertyAlbumCleanSongCount();
  v116[3] = v101;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v2 = getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v3, "MPModelPropertyAlbumMaximumItemTrackNumber");
    getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr = v109[3];
    v2 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v2)
  {
    goto LABEL_72;
  }

  v92 = *v2;
  v116[4] = v92;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v4 = getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v5, "MPModelPropertyAlbumHasCleanContent");
    getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr = v109[3];
    v4 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v4)
  {
    goto LABEL_72;
  }

  v91 = *v4;
  v116[5] = v91;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v6 = getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v7, "MPModelPropertyAlbumHasExplicitContent");
    getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr = v109[3];
    v6 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v6)
  {
    goto LABEL_72;
  }

  v90 = *v6;
  v116[6] = v90;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v8 = getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v9, "MPModelPropertyAlbumIsCompilation");
    getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr = v109[3];
    v8 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v8)
  {
    goto LABEL_72;
  }

  v89 = *v8;
  v116[7] = v89;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v10 = getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v11, "MPModelPropertyAlbumIsClassical");
    getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr = v109[3];
    v10 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v10)
  {
    goto LABEL_72;
  }

  v88 = *v10;
  v116[8] = v88;
  v100 = getMPModelPropertyAlbumIsFavorite();
  v116[9] = v100;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v12 = getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v13, "MPModelPropertyAlbumIsPinned");
    getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr = v109[3];
    v12 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v12)
  {
    goto LABEL_72;
  }

  v87 = *v12;
  v116[10] = v87;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v14 = getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr)
  {
    v15 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v15, "MPModelPropertyAlbumClassicalExperienceAvailable");
    getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr = v109[3];
    v14 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v14)
  {
    goto LABEL_72;
  }

  v86 = *v14;
  v116[11] = v86;
  v99 = getMPModelPropertyAlbumDateFavorited();
  v116[12] = v99;
  v98 = getMPModelPropertyAlbumReleaseDateComponents();
  v116[13] = v98;
  v97 = getMPModelPropertyAlbumArtwork();
  v116[14] = v97;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v16 = getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v17, "MPModelPropertyAlbumLastDevicePlaybackDate");
    getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr = v109[3];
    v16 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v16)
  {
    goto LABEL_72;
  }

  v85 = *v16;
  v116[15] = v85;
  v96 = getMPModelPropertyAlbumLibraryAddEligible();
  v116[16] = v96;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v18 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v19, "MPModelPropertyAlbumDownloadedDate");
    getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr = v109[3];
    v18 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v18)
  {
    goto LABEL_72;
  }

  v84 = *v18;
  v116[17] = v84;
  v95 = getMPModelPropertyAlbumYear();
  v116[18] = v95;
  v94 = getMPModelPropertyAlbumLibraryAdded();
  v116[19] = v94;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v20 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v21, "MPModelPropertyAlbumLibraryAddedDate");
    getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr = v109[3];
    v20 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v20)
  {
    goto LABEL_72;
  }

  v83 = *v20;
  v116[20] = v83;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v22 = getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v23, "MPModelPropertyAlbumKeepLocalEnableState");
    getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr = v109[3];
    v22 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v22)
  {
    goto LABEL_72;
  }

  v82 = *v22;
  v116[21] = v82;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v24 = getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v25, "MPModelPropertyAlbumKeepLocalManagedStatus");
    getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr = v109[3];
    v24 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v24)
  {
    goto LABEL_72;
  }

  v81 = *v24;
  v116[22] = v81;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v26 = getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v27, "MPModelPropertyAlbumKeepLocalManagedStatusReason");
    getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr = v109[3];
    v26 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v26)
  {
    goto LABEL_72;
  }

  v28 = *v26;
  v116[23] = v28;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v29 = getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v30, "MPModelPropertyAlbumCopyrightText");
    getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr = v109[3];
    v29 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v29)
  {
    goto LABEL_72;
  }

  v31 = *v29;
  v116[24] = v31;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v32 = getMPModelPropertyAlbumPreorderSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumPreorderSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumPreorderSymbolLoc_ptr)
  {
    v33 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v33, "MPModelPropertyAlbumPreorder");
    getMPModelPropertyAlbumPreorderSymbolLoc_ptr = v109[3];
    v32 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v32)
  {
    goto LABEL_72;
  }

  v34 = *v32;
  v116[25] = v34;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v35 = getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr)
  {
    v36 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v36, "MPModelPropertyAlbumEditorNotes");
    getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr = v109[3];
    v35 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v35)
  {
    goto LABEL_72;
  }

  v37 = *v35;
  v116[26] = v37;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v38 = getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v39, "MPModelPropertyAlbumShortEditorNotes");
    getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr = v109[3];
    v38 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v38)
  {
    goto LABEL_72;
  }

  v40 = *v38;
  v116[27] = v40;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v41 = getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr)
  {
    v42 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v42, "MPModelPropertyAlbumVolumeNormalization");
    getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr = v109[3];
    v41 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v41)
  {
    goto LABEL_72;
  }

  v43 = *v41;
  v116[28] = v43;
  v44 = getMPModelPropertyAlbumTraits();
  v116[29] = v44;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v45 = getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr)
  {
    v46 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v46, "MPModelPropertyAlbumIsStoreRedownloadable");
    getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr = v109[3];
    v45 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v45)
  {
    goto LABEL_72;
  }

  v47 = *v45;
  v116[30] = v47;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v48 = getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr;
  v111 = getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v49, "MPModelPropertyAlbumDownloadedTrackCount");
    getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr = v109[3];
    v48 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v48)
  {
    goto LABEL_72;
  }

  v117 = *v48;
  v50 = MEMORY[0x277CBEA60];
  v51 = v117;
  v52 = [v50 arrayWithObjects:v116 count:32];

  v107 = [v106 initWithArray:v52];
  v53 = objc_alloc(MEMORY[0x277CBEB18]);
  v105 = getMPModelPropertyArtistName();
  v115[0] = v105;
  v54 = getMPModelPropertyArtistCleanSongCount();
  v115[1] = v54;
  v55 = getMPModelPropertyArtistCleanDownloadedSongCount();
  v115[2] = v55;
  v56 = getMPModelPropertyArtistDownloadedSongCount();
  v115[3] = v56;
  v57 = getMPModelPropertyArtistSongCount();
  v115[4] = v57;
  v58 = getMPModelPropertyArtistAlbumCount();
  v115[5] = v58;
  v59 = getMPModelPropertyArtistLibraryAddedDate();
  v115[6] = v59;
  v60 = getMPModelPropertyArtistIsFavorite();
  v115[7] = v60;
  v61 = getMPModelPropertyArtistDateFavorited();
  v115[8] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:9];
  v63 = [v53 initWithArray:v62];

  if (_os_feature_enabled_impl())
  {
    v64 = getMPModelPropertyAlbumIsDisliked();
    [v107 addObject:v64];

    v65 = getMPModelPropertyArtistIsDisliked();
    [v63 addObject:v65];
  }

  v66 = objc_alloc(getMPPropertySetClass());
  v67 = getMPModelRelationshipAlbumArtist();
  v112[0] = v67;
  v68 = [getMPPropertySetClass() propertySetWithProperties:v63];
  v114[0] = v68;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v69 = getMPModelRelationshipAlbumGenreSymbolLoc_ptr;
  v111 = getMPModelRelationshipAlbumGenreSymbolLoc_ptr;
  if (!getMPModelRelationshipAlbumGenreSymbolLoc_ptr)
  {
    v70 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v70, "MPModelRelationshipAlbumGenre");
    getMPModelRelationshipAlbumGenreSymbolLoc_ptr = v109[3];
    v69 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v69)
  {
    goto LABEL_72;
  }

  v71 = *v69;
  v112[1] = v71;
  v72 = [a1 _genreSupportedProperties];
  v114[1] = v72;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v73 = getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr;
  v111 = getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr;
  if (!getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr)
  {
    v74 = MediaPlayerLibrary_6();
    v109[3] = dlsym(v74, "MPModelRelationshipAlbumRepresentativeSong");
    getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr = v109[3];
    v73 = v109[3];
  }

  _Block_object_dispose(&v108, 8);
  if (!v73)
  {
LABEL_72:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v113 = *v73;
  v75 = v113;
  v76 = [a1 _representativeSongSupportedProperties];
  v114[2] = v76;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v112 count:3];
  v78 = [v66 initWithProperties:v107 relationships:v77];

  v79 = *MEMORY[0x277D85DE8];

  return v78;
}

+ (id)_genreSupportedProperties
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  v17 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  if (!getMPModelPropertyGenreNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v15[3] = dlsym(v4, "MPModelPropertyGenreName");
    getMPModelPropertyGenreNameSymbolLoc_ptr = v15[3];
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = *v3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr;
  v17 = getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr;
  v18 = v5;
  if (!getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v15[3] = dlsym(v7, "MPModelPropertyGenreLibraryAddedDate");
    getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr = v15[3];
    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v6)
  {
LABEL_10:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v19 = *v6;
  v8 = MEMORY[0x277CBEA60];
  v9 = v19;
  v10 = [v8 arrayWithObjects:&v18 count:2];

  v11 = [v2 initWithProperties:v10 relationships:MEMORY[0x277CBEC10]];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_representativeSongSupportedProperties
{
  v61[19] = *MEMORY[0x277D85DE8];
  v53 = objc_alloc(MEMORY[0x277CBEB18]);
  v51 = getMPModelPropertySongArtistUploadedContent();
  v61[0] = v51;
  v49 = getMPModelPropertySongArtwork();
  v61[1] = v49;
  v47 = getMPModelPropertySongCloudStatus();
  v61[2] = v47;
  v45 = getMPModelPropertySongDuration();
  v61[3] = v45;
  v43 = getMPModelPropertySongExplicit();
  v61[4] = v43;
  v41 = getMPModelPropertySongHasVideo();
  v61[5] = v41;
  v39 = getMPModelPropertySongIsFavorite();
  v61[6] = v39;
  v37 = getMPModelPropertySongDateFavorited();
  v61[7] = v37;
  v35 = getMPModelPropertySongKeepLocalEnableState();
  v61[8] = v35;
  v33 = getMPModelPropertySongKeepLocalManagedStatus();
  v61[9] = v33;
  v2 = getMPModelPropertySongKeepLocalManagedStatusReason();
  v61[10] = v2;
  v3 = getMPModelPropertySongLibraryAdded();
  v61[11] = v3;
  v4 = getMPModelPropertySongLibraryAddEligible();
  v61[12] = v4;
  v5 = getMPModelPropertySongShouldShowComposer();
  v61[13] = v5;
  v6 = getMPModelPropertySongTitle();
  v61[14] = v6;
  v7 = get_MPModelPropertySongTrackCount();
  v61[15] = v7;
  v8 = getMPModelPropertySongTrackNumber();
  v61[16] = v8;
  v9 = getMPModelPropertySongTraits();
  v61[17] = v9;
  v10 = getMPModelPropertySongUserRating();
  v61[18] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:19];
  v54 = [v53 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertySongIsDisliked();
    [v54 addObject:v12];
  }

  v13 = objc_alloc(getMPPropertySetClass());
  v52 = getMPModelRelationshipSongLocalFileAsset();
  v59[0] = v52;
  MPPropertySetClass = getMPPropertySetClass();
  v50 = getMPModelPropertyFileAssetNonPurgeable();
  v58[0] = v50;
  v48 = getMPModelPropertyFileAssetProtectionType();
  v58[1] = v48;
  v46 = getMPModelPropertyFileAssetTraits();
  v58[2] = v46;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
  v42 = [MPPropertySetClass propertySetWithProperties:v44];
  v60[0] = v42;
  v40 = getMPModelRelationshipSongStoreAsset();
  v59[1] = v40;
  v15 = getMPPropertySetClass();
  v38 = getMPModelPropertyStoreAssetRedownloadable();
  v57[0] = v38;
  v36 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v57[1] = v36;
  v34 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v57[2] = v34;
  v32 = getMPModelPropertyStoreAssetEndpointType();
  v57[3] = v32;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v30 = [v15 propertySetWithProperties:v31];
  v60[1] = v30;
  v16 = getMPModelRelationshipSongHomeSharingAsset();
  v59[2] = v16;
  v17 = getMPPropertySetClass();
  v18 = getMPModelPropertyHomeSharingAssetAvailable();
  v56 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v20 = [v17 propertySetWithProperties:v19];
  v60[2] = v20;
  v21 = getMPModelRelationshipSongArtist();
  v59[3] = v21;
  v22 = getMPPropertySetClass();
  v23 = getMPModelPropertyArtistName();
  v55 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v25 = [v22 propertySetWithProperties:v24];
  v60[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
  v29 = [v13 initWithProperties:v54 relationships:v26];

  v27 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_movieSupportedProperties
{
  v64[16] = *MEMORY[0x277D85DE8];
  v51 = objc_alloc(getMPPropertySetClass());
  v56 = getMPModelPropertyMovieArtwork();
  v64[0] = v56;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v3 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v4, "MPModelPropertyMovieDownloadedDate");
    getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr = v58[3];
    v3 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v3)
  {
    goto LABEL_43;
  }

  v50 = *v3;
  v64[1] = v50;
  v55 = getMPModelPropertyMovieDuration();
  v64[2] = v55;
  v54 = getMPModelPropertyMovieHasCloudSyncSource();
  v64[3] = v54;
  v53 = getMPModelPropertyMovieLibraryAdded();
  v64[4] = v53;
  v52 = getMPModelPropertyMovieLibraryAddEligible();
  v64[5] = v52;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v5 = getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v6, "MPModelPropertyMovieKeepLocalEnableState");
    getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr = v58[3];
    v5 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v5)
  {
    goto LABEL_43;
  }

  v49 = *v5;
  v64[6] = v49;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v7 = getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v8, "MPModelPropertyMovieKeepLocalManagedStatus");
    getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr = v58[3];
    v7 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v7)
  {
    goto LABEL_43;
  }

  v48 = *v7;
  v64[7] = v48;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v9 = getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v10, "MPModelPropertyMovieKeepLocalManagedStatusReason");
    getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr = v58[3];
    v9 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v9)
  {
    goto LABEL_43;
  }

  v47 = *v9;
  v64[8] = v47;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v11 = getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v12, "MPModelPropertyMovieLastDevicePlaybackDate");
    getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr = v58[3];
    v11 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v11)
  {
    goto LABEL_43;
  }

  v46 = *v11;
  v64[9] = v46;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v13 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v14, "MPModelPropertyMovieLibraryAddedDate");
    getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr = v58[3];
    v13 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v13)
  {
    goto LABEL_43;
  }

  v45 = *v13;
  v64[10] = v45;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v15 = getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr;
  v60 = getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr;
  if (!getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v16, "MPModelPropertyMovieInfoDictionary");
    getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr = v58[3];
    v15 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v15)
  {
    goto LABEL_43;
  }

  v44 = *v15;
  v64[11] = v44;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v17 = getMPModelPropertyMovieReleaseDateSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieReleaseDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieReleaseDateSymbolLoc_ptr)
  {
    v18 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v18, "MPModelPropertyMovieReleaseDate");
    getMPModelPropertyMovieReleaseDateSymbolLoc_ptr = v58[3];
    v17 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v17)
  {
    goto LABEL_43;
  }

  v43 = *v17;
  v64[12] = v43;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v19 = getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr)
  {
    v20 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v20, "MPModelPropertyMovieDescriptionText");
    getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr = v58[3];
    v19 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v19)
  {
    goto LABEL_43;
  }

  v42 = *v19;
  v64[13] = v42;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v21 = getMPModelPropertyMovieTaglineSymbolLoc_ptr;
  v60 = getMPModelPropertyMovieTaglineSymbolLoc_ptr;
  if (!getMPModelPropertyMovieTaglineSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v22, "MPModelPropertyMovieTagline");
    getMPModelPropertyMovieTaglineSymbolLoc_ptr = v58[3];
    v21 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v21)
  {
    goto LABEL_43;
  }

  v41 = *v21;
  v64[14] = v41;
  v23 = getMPModelPropertyMovieTitle();
  v64[15] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:16];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v25 = getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr;
  v60 = getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr;
  if (!getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr)
  {
    v26 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v26, "MPModelRelationshipMoviePlaybackPosition");
    getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr = v58[3];
    v25 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v25)
  {
    goto LABEL_43;
  }

  v27 = *v25;
  v61[0] = v27;
  v28 = [a1 _playbackPositionSupportedProperties];
  v63[0] = v28;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v29 = getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr;
  v60 = getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v30, "MPModelRelationshipMovieLocalFileAsset");
    getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr = v58[3];
    v29 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v29)
  {
    goto LABEL_43;
  }

  v31 = *v29;
  v61[1] = v31;
  v32 = [a1 _localFileAssetSupportedProperties];
  v63[1] = v32;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v33 = getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr;
  v60 = getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v58[3] = dlsym(v34, "MPModelRelationshipMovieStoreAsset");
    getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr = v58[3];
    v33 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v33)
  {
LABEL_43:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v62 = *v33;
  v35 = v62;
  v36 = [a1 _storeAssetSupportedProperties];
  v63[2] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v61 count:3];
  v38 = [v51 initWithProperties:v24 relationships:v37];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)_playbackPositionSupportedProperties
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v3 = getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v4, "MPModelPropertyPlaybackPositionBookmarkTime");
    getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr = v27[3];
    v3 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = *v3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v6 = getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr;
  v30[0] = v5;
  if (!getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v7, "MPModelPropertyPlaybackPositionShouldRememberBookmarkTime");
    getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr = v27[3];
    v6 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v8 = *v6;
  v30[1] = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v10, "MPModelPropertyPlaybackPositionHasBeenPlayed");
    getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr = v27[3];
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v9;
  v30[2] = v11;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v12 = getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v13, "MPModelPropertyPlaybackPositionUserPlayCount");
    getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr = v27[3];
    v12 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = *v12;
  v30[3] = v14;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v15 = getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v16, "MPModelPropertyPlaybackPositionStartTime");
    getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr = v27[3];
    v15 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v15)
  {
    goto LABEL_22;
  }

  v17 = *v15;
  v30[4] = v17;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v18 = getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr;
  v29 = getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v19, "MPModelPropertyPlaybackPositionStopTime");
    getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr = v27[3];
    v18 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v18)
  {
LABEL_22:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v31 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v31;
  v22 = [v20 arrayWithObjects:v30 count:6];

  v23 = [v2 initWithProperties:v22 relationships:MEMORY[0x277CBEC10]];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_localFileAssetSupportedProperties
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyFileAssetNonPurgeable();
  v10 = v3;
  v4 = getMPModelPropertyFileAssetProtectionType();
  v11 = v4;
  v5 = getMPModelPropertyFileAssetTraits();
  v12 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:3];
  v7 = [v2 initWithProperties:v6 relationships:{MEMORY[0x277CBEC10], v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_storeAssetSupportedProperties
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyStoreAssetRedownloadable();
  v11[0] = v3;
  v4 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v11[1] = v4;
  v5 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v11[2] = v5;
  v6 = getMPModelPropertyStoreAssetEndpointType();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v2 initWithProperties:v7 relationships:MEMORY[0x277CBEC10]];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_playlistSupportedProperties
{
  v146[42] = *MEMORY[0x277D85DE8];
  v132 = objc_alloc(MEMORY[0x277CBEB18]);
  v138 = getMPModelPropertyPlaylistName();
  v146[0] = v138;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v2 = getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v3, "MPModelPropertyPlaylistEditorNotes");
    getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr = v140[3];
    v2 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v2)
  {
    goto LABEL_114;
  }

  v4 = *v2;
  v146[1] = v4;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v5 = getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v6, "MPModelPropertyPlaylistShortEditorNotes");
    getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr = v140[3];
    v5 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v5)
  {
    goto LABEL_114;
  }

  v7 = *v5;
  v146[2] = v7;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v8 = getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v9, "MPModelPropertyPlaylistReleaseDateComponents");
    getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr = v140[3];
    v8 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v8)
  {
    goto LABEL_114;
  }

  v131 = *v8;
  v146[3] = v131;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v10 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v11, "MPModelPropertyPlaylistLastModifiedDateComponents");
    getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = v140[3];
    v10 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v10)
  {
    goto LABEL_114;
  }

  v128 = v4;
  v129 = v7;
  v130 = *v10;
  v146[4] = v130;
  v137 = getMPModelPropertyPlaylistArtwork();
  v146[5] = v137;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v13, "MPModelPropertyPlaylistCoverArtworkRecipe");
    getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr = v140[3];
    v12 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v12)
  {
    goto LABEL_114;
  }

  v14 = *v12;
  v146[6] = v14;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v15 = getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v16, "MPModelPropertyPlaylistEditorialArtwork");
    getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr = v140[3];
    v15 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v15)
  {
    goto LABEL_114;
  }

  v17 = *v15;
  v146[7] = v17;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v18 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v19, "MPModelPropertyPlaylistTracksTiledArtwork");
    getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = v140[3];
    v18 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v18)
  {
    goto LABEL_114;
  }

  v127 = *v18;
  v146[8] = v127;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v20 = getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v21, "MPModelPropertyPlaylistHasAnyCleanDownloadedTracks");
    getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr = v140[3];
    v20 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v20)
  {
    goto LABEL_114;
  }

  v126 = *v20;
  v146[9] = v126;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v22 = getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v23, "MPModelPropertyPlaylistHasAnyCleanTracks");
    getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr = v140[3];
    v22 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v22)
  {
    goto LABEL_114;
  }

  v125 = *v22;
  v146[10] = v125;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v24 = getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v25, "MPModelPropertyPlaylistHasCleanContent");
    getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr = v140[3];
    v24 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v24)
  {
    goto LABEL_114;
  }

  v124 = *v24;
  v146[11] = v124;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v26 = getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v27, "MPModelPropertyPlaylistHasExplicitContent");
    getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr = v140[3];
    v26 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v26)
  {
    goto LABEL_114;
  }

  v121 = v14;
  v122 = v17;
  v123 = *v26;
  v146[12] = v123;
  v136 = getMPModelPropertyPlaylistType();
  v146[13] = v136;
  v135 = getMPModelPropertyPlaylistIsFavorite();
  v146[14] = v135;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v28 = getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr)
  {
    v29 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v29, "MPModelPropertyPlaylistIsPinned");
    getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr = v140[3];
    v28 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v28)
  {
    goto LABEL_114;
  }

  v120 = *v28;
  v146[15] = v120;
  v134 = getMPModelPropertyPlaylistDateFavorited();
  v146[16] = v134;
  v133 = getMPModelPropertyPlaylistLibraryAdded();
  v146[17] = v133;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v30 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr)
  {
    v31 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v31, "MPModelPropertyPlaylistLibraryAddedDate");
    getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr = v140[3];
    v30 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v30)
  {
    goto LABEL_114;
  }

  v32 = *v30;
  v146[18] = v32;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v33 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v34, "MPModelPropertyPlaylistDownloadedDate");
    getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr = v140[3];
    v33 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v33)
  {
    goto LABEL_114;
  }

  v35 = *v33;
  v146[19] = v35;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v36 = getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v37 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v37, "MPModelPropertyPlaylistLastDevicePlaybackDate");
    getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr = v140[3];
    v36 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v36)
  {
    goto LABEL_114;
  }

  v119 = *v36;
  v146[20] = v119;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v38 = getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v39, "MPModelPropertyPlaylistKeepLocalEnableState");
    getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr = v140[3];
    v38 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v38)
  {
    goto LABEL_114;
  }

  v118 = *v38;
  v146[21] = v118;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v40 = getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v41 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v41, "MPModelPropertyPlaylistKeepLocalManagedStatus");
    getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr = v140[3];
    v40 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v40)
  {
    goto LABEL_114;
  }

  v117 = *v40;
  v146[22] = v117;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v42 = getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v43 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v43, "MPModelPropertyPlaylistKeepLocalManagedStatusReason");
    getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr = v140[3];
    v42 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v42)
  {
    goto LABEL_114;
  }

  v116 = *v42;
  v146[23] = v116;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v44 = getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr)
  {
    v45 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v45, "MPModelPropertyPlaylistIsOwner");
    getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr = v140[3];
    v44 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v44)
  {
    goto LABEL_114;
  }

  v115 = *v44;
  v146[24] = v115;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v46 = getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr)
  {
    v47 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v47, "MPModelPropertyPlaylistIsCollaborative");
    getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr = v140[3];
    v46 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v46)
  {
    goto LABEL_114;
  }

  v114 = *v46;
  v146[25] = v114;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v48 = getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v49, "MPModelPropertyPlaylistCuratorPlaylist");
    getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr = v140[3];
    v48 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v48)
  {
    goto LABEL_114;
  }

  v113 = *v48;
  v146[26] = v113;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v50 = getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr)
  {
    v51 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v51, "MPModelPropertyPlaylistPublicPlaylist");
    getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr = v140[3];
    v50 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v50)
  {
    goto LABEL_114;
  }

  v112 = *v50;
  v146[27] = v112;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v52 = getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr)
  {
    v53 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v53, "MPModelPropertyPlaylistVisiblePlaylist");
    getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr = v140[3];
    v52 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v52)
  {
    goto LABEL_114;
  }

  v111 = *v52;
  v146[28] = v111;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v54 = getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr)
  {
    v55 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v55, "MPModelPropertyPlaylistSubscribed");
    getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr = v140[3];
    v54 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v54)
  {
    goto LABEL_114;
  }

  v110 = *v54;
  v146[29] = v110;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v56 = getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr)
  {
    v57 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v57, "MPModelPropertyPlaylistUserEditableComponents");
    getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr = v140[3];
    v56 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v56)
  {
    goto LABEL_114;
  }

  v109 = *v56;
  v146[30] = v109;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v58 = getMPModelPropertyPlaylistShareURLSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistShareURLSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistShareURLSymbolLoc_ptr)
  {
    v59 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v59, "MPModelPropertyPlaylistShareURL");
    getMPModelPropertyPlaylistShareURLSymbolLoc_ptr = v140[3];
    v58 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v58)
  {
    goto LABEL_114;
  }

  v108 = *v58;
  v146[31] = v108;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v60 = getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr)
  {
    v61 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v61, "MPModelPropertyPlaylistDescriptionText");
    getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr = v140[3];
    v60 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v60)
  {
    goto LABEL_114;
  }

  v107 = *v60;
  v146[32] = v107;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v62 = getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr)
  {
    v63 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v63, "MPModelPropertyPlaylistCloudVersionHash");
    getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr = v140[3];
    v62 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v62)
  {
    goto LABEL_114;
  }

  v104 = v32;
  v105 = v35;
  v106 = *v62;
  v146[33] = v106;
  v64 = getMPModelPropertyPlaylistTraits();
  v146[34] = v64;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v65 = getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr)
  {
    v66 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v66, "MPModelPropertyPlaylistCollaborationInvitationURL");
    getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr = v140[3];
    v65 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v65)
  {
    goto LABEL_114;
  }

  v67 = *v65;
  v146[35] = v67;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v68 = getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr)
  {
    v69 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v69, "MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate");
    getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr = v140[3];
    v68 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v68)
  {
    goto LABEL_114;
  }

  v70 = *v68;
  v146[36] = v70;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v71 = getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr)
  {
    v72 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v72, "MPModelPropertyPlaylistCollaboratorStatus");
    getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr = v140[3];
    v71 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v71)
  {
    goto LABEL_114;
  }

  v73 = *v71;
  v146[37] = v73;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v74 = getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr)
  {
    v75 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v75, "MPModelPropertyPlaylistCollaborationSharingMode");
    getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr = v140[3];
    v74 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v74)
  {
    goto LABEL_114;
  }

  v76 = *v74;
  v146[38] = v76;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v77 = getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr)
  {
    v78 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v78, "MPModelPropertyPlaylistEditSessionID");
    getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr = v140[3];
    v77 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v77)
  {
    goto LABEL_114;
  }

  v79 = *v77;
  v146[39] = v79;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v80 = getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr)
  {
    v81 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v81, "MPModelPropertyPlaylistParentPersistentID");
    getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr = v140[3];
    v80 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v80)
  {
    goto LABEL_114;
  }

  v82 = *v80;
  v146[40] = v82;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v83 = getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr;
  v142 = getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr)
  {
    v84 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v84, "MPModelPropertyPlaylistDownloadedTrackCount");
    getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr = v140[3];
    v83 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v83)
  {
    goto LABEL_114;
  }

  v85 = *v83;
  v146[41] = v85;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:42];
  v87 = [v132 initWithArray:v86];

  if (_os_feature_enabled_impl())
  {
    v88 = getMPModelPropertyPlaylistIsDisliked();
    [v87 addObject:v88];
  }

  v89 = objc_alloc(getMPPropertySetClass());
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v90 = getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr;
  v142 = getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr)
  {
    v91 = MediaPlayerLibrary_6();
    v140[3] = dlsym(v91, "MPModelRelationshipPlaylistCurator");
    getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr = v140[3];
    v90 = v140[3];
  }

  _Block_object_dispose(&v139, 8);
  if (!v90)
  {
LABEL_114:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v92 = *v90;
  v144 = v92;
  v93 = objc_alloc(getMPPropertySetClass());
  v94 = getMPModelPropertyCuratorName();
  v143[0] = v94;
  v95 = getMPModelPropertyCuratorKind();
  v143[1] = v95;
  v96 = getMPModelPropertyCuratorSubKind();
  v143[2] = v96;
  v97 = getMPModelPropertyCuratorHandle();
  v143[3] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
  v99 = [v93 initWithProperties:v98 relationships:MEMORY[0x277CBEC10]];
  v145 = v99;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
  v101 = [v89 initWithProperties:v87 relationships:v100];

  v102 = *MEMORY[0x277D85DE8];

  return v101;
}

+ (id)_tvSeasonSupportedProperties
{
  v49 = *MEMORY[0x277D85DE8];
  v34 = objc_alloc(getMPPropertySetClass());
  v39 = getMPModelPropertyTVSeasonArtwork();
  v47[0] = v39;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v2 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v3, "MPModelPropertyTVSeasonDownloadedDate");
    getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr = v41[3];
    v2 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v2)
  {
    goto LABEL_25;
  }

  v33 = *v2;
  v47[1] = v33;
  v38 = getMPModelPropertyTVSeasonEpisodesCount();
  v47[2] = v38;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v4 = getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v5, "MPModelPropertyTVSeasonHasCleanContent");
    getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr = v41[3];
    v4 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v4)
  {
    goto LABEL_25;
  }

  v32 = *v4;
  v47[3] = v32;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v6 = getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v7, "MPModelPropertyTVSeasonHasExplicitContent");
    getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr = v41[3];
    v6 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v6)
  {
    goto LABEL_25;
  }

  v31 = *v6;
  v47[4] = v31;
  v37 = getMPModelPropertyTVSeasonLibraryAdded();
  v47[5] = v37;
  v36 = getMPModelPropertyTVSeasonLibraryAddEligible();
  v47[6] = v36;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v8 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v9, "MPModelPropertyTVSeasonLibraryAddedDate");
    getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr = v41[3];
    v8 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v8)
  {
    goto LABEL_25;
  }

  v30 = *v8;
  v47[7] = v30;
  v35 = getMPModelPropertyTVSeasonNumber();
  v47[8] = v35;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v10 = getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v11, "MPModelPropertyTVSeasonSortType");
    getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr = v41[3];
    v10 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v10)
  {
    goto LABEL_25;
  }

  v12 = *v10;
  v47[9] = v12;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v13 = getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v14, "MPModelPropertyTVSeasonDescriptionText");
    getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr = v41[3];
    v13 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v13)
  {
    goto LABEL_25;
  }

  v15 = *v13;
  v47[10] = v15;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonYearSymbolLoc_ptr;
  v43 = getMPModelPropertyTVSeasonYearSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonYearSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v41[3] = dlsym(v17, "MPModelPropertyTVSeasonYear");
    getMPModelPropertyTVSeasonYearSymbolLoc_ptr = v41[3];
    v16 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v16)
  {
LABEL_25:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v48 = *v16;
  v18 = MEMORY[0x277CBEA60];
  v19 = v48;
  v20 = [v18 arrayWithObjects:v47 count:12];
  v21 = getMPModelRelationshipTVSeasonShow();
  v45 = v21;
  MPPropertySetClass = getMPPropertySetClass();
  v23 = getMPModelPropertyTVShowTitle();
  v44 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v25 = [MPPropertySetClass propertySetWithProperties:v24];
  v46 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v27 = [v34 initWithProperties:v20 relationships:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (MusicKit_SoftLinking_MPModelRequest)defaultUnpersonalizedRequest
{
  v69[1] = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v3 = getMPModelRequestClass_softClass;
  v65 = getMPModelRequestClass_softClass;
  if (!getMPModelRequestClass_softClass)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelRequestClass_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    __getMPModelRequestClass_block_invoke(&v57);
    v3 = v63[3];
  }

  v4 = v3;
  _Block_object_dispose(&v62, 8);
  v56 = objc_alloc_init(v3);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v5 = getMPModelKindClass_softClass;
  v65 = getMPModelKindClass_softClass;
  if (!getMPModelKindClass_softClass)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelKindClass_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    __getMPModelKindClass_block_invoke(&v57);
    v5 = v63[3];
  }

  v6 = v5;
  _Block_object_dispose(&v62, 8);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v7 = getMPModelStoreBrowseContentItemClass_softClass_0;
  v65 = getMPModelStoreBrowseContentItemClass_softClass_0;
  if (!getMPModelStoreBrowseContentItemClass_softClass_0)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemClass_block_invoke_0;
    v60 = &unk_278229610;
    v61 = &v62;
    __getMPModelStoreBrowseContentItemClass_block_invoke_0(&v57);
    v7 = v63[3];
  }

  v8 = v7;
  _Block_object_dispose(&v62, 8);
  v9 = [v5 kindWithModelClass:v7];
  [v56 setItemKind:v9];

  v51 = objc_alloc(getMPPropertySetClass());
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v10 = getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v11 = MediaPlayerLibrary_6();
    v12 = dlsym(v11, "MPModelStoreBrowseContentItemPropertyItemType");
    *(v61[1] + 24) = v12;
    getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr = *(v61[1] + 24);
    v10 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v10)
  {
    goto LABEL_34;
  }

  v50 = *v10;
  v69[0] = v50;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v13 = getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v14 = MediaPlayerLibrary_6();
    v15 = dlsym(v14, "MPModelStoreBrowseContentItemRelationshipAlbum");
    *(v61[1] + 24) = v15;
    getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr = *(v61[1] + 24);
    v13 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v13)
  {
    goto LABEL_34;
  }

  v49 = *v13;
  v66[0] = v49;
  v55 = [a1 _albumSupportedProperties];
  v68[0] = v55;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v16 = getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v17 = MediaPlayerLibrary_6();
    v18 = dlsym(v17, "MPModelStoreBrowseContentItemRelationshipArtist");
    *(v61[1] + 24) = v18;
    getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr = *(v61[1] + 24);
    v16 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v16)
  {
    goto LABEL_34;
  }

  v48 = *v16;
  v66[1] = v48;
  v54 = [a1 _artistSupportedProperties];
  v68[1] = v54;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v19 = getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v20 = MediaPlayerLibrary_6();
    v21 = dlsym(v20, "MPModelStoreBrowseContentItemRelationshipSong");
    *(v61[1] + 24) = v21;
    getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr = *(v61[1] + 24);
    v19 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v19)
  {
    goto LABEL_34;
  }

  v47 = *v19;
  v66[2] = v47;
  v53 = [a1 _songSupportedProperties];
  v68[2] = v53;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v22 = getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v23 = MediaPlayerLibrary_6();
    v24 = dlsym(v23, "MPModelStoreBrowseContentItemRelationshipMovie");
    *(v61[1] + 24) = v24;
    getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr = *(v61[1] + 24);
    v22 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v22)
  {
    goto LABEL_34;
  }

  v46 = *v22;
  v66[3] = v46;
  v25 = [a1 _movieSupportedProperties];
  v68[3] = v25;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v26 = getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v27 = MediaPlayerLibrary_6();
    v28 = dlsym(v27, "MPModelStoreBrowseContentItemRelationshipPlaylist");
    *(v61[1] + 24) = v28;
    getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr = *(v61[1] + 24);
    v26 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v26)
  {
    goto LABEL_34;
  }

  v29 = *v26;
  v66[4] = v29;
  v30 = [a1 _playlistSupportedProperties];
  v68[4] = v30;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v31 = getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v32 = MediaPlayerLibrary_6();
    v33 = dlsym(v32, "MPModelStoreBrowseContentItemRelationshipTVEpisode");
    *(v61[1] + 24) = v33;
    getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr = *(v61[1] + 24);
    v31 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v31)
  {
    goto LABEL_34;
  }

  v34 = *v31;
  v66[5] = v34;
  v35 = [a1 _tvEpisodeSupportedProperties];
  v68[5] = v35;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v36 = getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr;
  v65 = getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_block_invoke;
    v60 = &unk_278229610;
    v61 = &v62;
    v37 = MediaPlayerLibrary_6();
    v38 = dlsym(v37, "MPModelStoreBrowseContentItemRelationshipTVSeason");
    *(v61[1] + 24) = v38;
    getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr = *(v61[1] + 24);
    v36 = v63[3];
  }

  _Block_object_dispose(&v62, 8);
  if (!v36)
  {
LABEL_34:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v67 = *v36;
  v39 = v67;
  v40 = [a1 _tvSeasonSupportedProperties];
  v68[6] = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v66 count:7];
  v42 = [v51 initWithProperties:v52 relationships:v41];
  [v56 setItemProperties:v42];

  v43 = [[a1 alloc] _initWithUnderlyingRequest:v56];
  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_initWithUnderlyingRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelRequest;
  v6 = [(MusicKit_SoftLinking_MPModelRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingRequest, a3);
  }

  return v7;
}

+ (id)_supportedPropertiesForModelObjectType:(int64_t)a3
{
  v3 = 0;
  v17[1] = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0:
      v4 = [a1 _albumSupportedProperties];
      goto LABEL_23;
    case 2:
      v4 = [a1 _artistSupportedProperties];
      goto LABEL_23;
    case 3:
      v4 = [a1 _composerSupportedProperties];
      goto LABEL_23;
    case 5:
      v4 = [a1 _curatorSupportedProperties];
      goto LABEL_23;
    case 9:
      v4 = [a1 _genreSupportedProperties];
      goto LABEL_23;
    case 12:
      v4 = [a1 _lyricsSupportedProperties];
      goto LABEL_23;
    case 13:
      v4 = [a1 _movieSupportedProperties];
      goto LABEL_23;
    case 14:
    case 28:
    case 32:
    case 36:
    case 37:
      v4 = [a1 _songSupportedProperties];
      goto LABEL_23;
    case 15:
      v4 = [a1 _pinSupportedProperties];
      goto LABEL_23;
    case 17:
    case 21:
    case 22:
      v4 = [a1 _playlistSupportedProperties];
      goto LABEL_23;
    case 18:
      v4 = [a1 _playlistAuthorSupportedProperties];
      goto LABEL_23;
    case 19:
      v4 = [a1 _playlistEntrySupportedProperties];
      goto LABEL_23;
    case 20:
      v4 = [a1 _playlistEntryReactionSupportedProperties];
      goto LABEL_23;
    case 25:
      v4 = [a1 _recentlyAddedObjectSupportedProperties];
      goto LABEL_23;
    case 31:
      v5 = objc_alloc(getMPPropertySetClass());
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v6 = getMPModelPropertySectionTitleSymbolLoc_ptr;
      v16 = getMPModelPropertySectionTitleSymbolLoc_ptr;
      if (!getMPModelPropertySectionTitleSymbolLoc_ptr)
      {
        v7 = MediaPlayerLibrary_6();
        v14[3] = dlsym(v7, "MPModelPropertySectionTitle");
        getMPModelPropertySectionTitleSymbolLoc_ptr = v14[3];
        v6 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v6)
      {
        +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
        __break(1u);
      }

      v17[0] = *v6;
      v8 = MEMORY[0x277CBEA60];
      v9 = v17[0];
      v10 = [v8 arrayWithObjects:v17 count:1];

      v3 = [v5 initWithProperties:v10 relationships:MEMORY[0x277CBEC10]];
      break;
    case 33:
      v4 = [a1 _tvEpisodeSupportedProperties];
      goto LABEL_23;
    case 34:
      v4 = [a1 _tvSeasonSupportedProperties];
      goto LABEL_23;
    case 35:
      v4 = [a1 _tvShowSupportedProperties];
LABEL_23:
      v3 = v4;
      break;
    default:
      break;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_propertySetForRawProperties:(id)a3 relationships:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __82__MusicKit_SoftLinking_MPModelRequest__propertySetForRawProperties_relationships___block_invoke;
  v17 = &unk_278229DA8;
  v18 = v9;
  v19 = a1;
  v10 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:&v14];

  v11 = objc_alloc(getMPPropertySetClass());
  v12 = [v11 initWithProperties:v8 relationships:{v10, v14, v15, v16, v17}];

  return v12;
}

+ (id)_artistSupportedProperties
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v26 = getMPModelPropertyArtistName();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v3 = getMPModelPropertyArtistArtworkSymbolLoc_ptr;
  v30 = getMPModelPropertyArtistArtworkSymbolLoc_ptr;
  v31[0] = v26;
  if (!getMPModelPropertyArtistArtworkSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v28[3] = dlsym(v4, "MPModelPropertyArtistArtwork");
    getMPModelPropertyArtistArtworkSymbolLoc_ptr = v28[3];
    v3 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v3)
  {
    goto LABEL_15;
  }

  v24 = *v3;
  v31[1] = v24;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v5 = getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr;
  v30 = getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr;
  if (!getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v28[3] = dlsym(v6, "MPModelPropertyArtistClassicalExperienceAvailable");
    getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr = v28[3];
    v5 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v23 = *v5;
  v31[2] = v23;
  v25 = getMPModelPropertyArtistCleanSongCount();
  v31[3] = v25;
  v7 = getMPModelPropertyArtistCleanDownloadedSongCount();
  v31[4] = v7;
  v8 = getMPModelPropertyArtistDownloadedSongCount();
  v31[5] = v8;
  v9 = getMPModelPropertyArtistSongCount();
  v31[6] = v9;
  v10 = getMPModelPropertyArtistAlbumCount();
  v31[7] = v10;
  v11 = getMPModelPropertyArtistLibraryAddedDate();
  v31[8] = v11;
  v12 = getMPModelPropertyArtistIsFavorite();
  v31[9] = v12;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v13 = getMPModelPropertyArtistIsPinnedSymbolLoc_ptr;
  v30 = getMPModelPropertyArtistIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyArtistIsPinnedSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v28[3] = dlsym(v14, "MPModelPropertyArtistIsPinned");
    getMPModelPropertyArtistIsPinnedSymbolLoc_ptr = v28[3];
    v13 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v13)
  {
LABEL_15:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v32 = *v13;
  v15 = v32;
  v16 = getMPModelPropertyArtistDateFavorited();
  v33 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:12];
  v18 = [v2 initWithArray:v17];

  if (_os_feature_enabled_impl())
  {
    v19 = getMPModelPropertyArtistIsDisliked();
    [v18 addObject:v19];
  }

  v20 = [objc_alloc(getMPPropertySetClass()) initWithProperties:v18 relationships:MEMORY[0x277CBEC10]];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_curatorSupportedProperties
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyCuratorHandle();
  v11[0] = v3;
  v4 = getMPModelPropertyCuratorKind();
  v11[1] = v4;
  v5 = getMPModelPropertyCuratorSubKind();
  v11[2] = v5;
  v6 = getMPModelPropertyCuratorName();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v2 initWithProperties:v7 relationships:MEMORY[0x277CBEC10]];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_composerSupportedProperties
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyComposerName();
  v16 = v3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr;
  v15 = getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v13[3] = dlsym(v5, "MPModelPropertyComposerLibraryAddedDate");
    getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr = v13[3];
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v17 = *v4;
  v6 = MEMORY[0x277CBEA60];
  v7 = v17;
  v8 = [v6 arrayWithObjects:&v16 count:2];

  v9 = [v2 initWithProperties:v8 relationships:MEMORY[0x277CBEC10]];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_lyricsSupportedProperties
{
  v20 = *MEMORY[0x277D85DE8];
  MPPropertySetClass = getMPPropertySetClass();
  v3 = getMPModelPropertyLyricsHasLibraryLyrics();
  v18[0] = v3;
  v4 = getMPModelPropertyLyricsHasStoreLyrics();
  v18[1] = v4;
  v5 = getMPModelPropertyLyricsHasTimeSyncedLyrics();
  v18[2] = v5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = getMPModelPropertyLyricsTextSymbolLoc_ptr;
  v17 = getMPModelPropertyLyricsTextSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsTextSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v15[3] = dlsym(v7, "MPModelPropertyLyricsText");
    getMPModelPropertyLyricsTextSymbolLoc_ptr = v15[3];
    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v6)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v19 = *v6;
  v8 = MEMORY[0x277CBEA60];
  v9 = v19;
  v10 = [v8 arrayWithObjects:v18 count:4];

  v11 = [MPPropertySetClass propertySetWithProperties:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_pinSupportedProperties
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v4 = getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr;
  v41 = getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v5, "MPModelPropertyLibraryPinDefaultAction");
    getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr = v39[3];
    v4 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v4)
  {
    goto LABEL_28;
  }

  v36 = *v4;
  v45[0] = v36;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v6 = getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr;
  v41 = getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v7, "MPModelPropertyLibraryPinEntityType");
    getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr = v39[3];
    v6 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v6)
  {
    goto LABEL_28;
  }

  v35 = *v6;
  v45[1] = v35;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v8 = getMPModelPropertyLibraryPinPositionSymbolLoc_ptr;
  v41 = getMPModelPropertyLibraryPinPositionSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinPositionSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v9, "MPModelPropertyLibraryPinPosition");
    getMPModelPropertyLibraryPinPositionSymbolLoc_ptr = v39[3];
    v8 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v8)
  {
    goto LABEL_28;
  }

  v34 = *v8;
  v45[2] = v34;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v10 = getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr;
  v41 = getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v11, "MPModelPropertyLibraryPinPositionUUID");
    getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr = v39[3];
    v10 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v10)
  {
    goto LABEL_28;
  }

  v33 = v3;
  v32 = *v10;
  v45[3] = v32;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v12 = getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr;
  v41 = getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v13, "MPModelRelationshipLibraryPinAlbum");
    getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr = v39[3];
    v12 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = *v12;
  v42[0] = v14;
  v15 = [a1 _albumSupportedProperties];
  v44[0] = v15;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v16 = getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr;
  v41 = getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v17, "MPModelRelationshipLibraryPinArtist");
    getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr = v39[3];
    v16 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v16)
  {
    goto LABEL_28;
  }

  v18 = *v16;
  v42[1] = v18;
  v19 = [a1 _artistSupportedProperties];
  v44[1] = v19;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v20 = getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr;
  v41 = getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v21, "MPModelRelationshipLibraryPinPlaylist");
    getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr = v39[3];
    v20 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v20)
  {
    goto LABEL_28;
  }

  v22 = *v20;
  v42[2] = v22;
  v23 = [a1 _playlistSupportedProperties];
  v44[2] = v23;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v24 = getMPModelRelationshipLibraryPinSongSymbolLoc_ptr;
  v41 = getMPModelRelationshipLibraryPinSongSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinSongSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v39[3] = dlsym(v25, "MPModelRelationshipLibraryPinSong");
    getMPModelRelationshipLibraryPinSongSymbolLoc_ptr = v39[3];
    v24 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v24)
  {
LABEL_28:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v43 = *v24;
  v26 = v43;
  v27 = [a1 _songSupportedProperties];
  v44[3] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v42 count:4];
  v29 = [v33 initWithProperties:v37 relationships:v28];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_playlistAuthorSupportedProperties
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr;
  v22 = getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v5, "MPModelPropertyPlaylistAuthorIsPendingApproval");
    getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr = v20[3];
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v25[0] = v6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr;
  v22 = getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v8, "MPModelPropertyPlaylistAuthorRole");
    getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr = v20[3];
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v25[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr;
  v22 = getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v12, "MPModelRelationshipPlaylistAuthorSocialProfile");
    getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v23 = *v11;
  v13 = v23;
  v14 = [a1 _socialPersonSupportedProperties];
  v24 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v16 = [v3 initWithProperties:v10 relationships:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_playlistEntrySupportedProperties
{
  v36[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr;
  v32 = getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v30[3] = dlsym(v5, "MPModelPropertyPlaylistEntryPosition");
    getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr = v30[3];
    v4 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v27 = *v4;
  v36[0] = v27;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v6 = getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr;
  v32 = getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v30[3] = dlsym(v7, "MPModelPropertyPlaylistEntryUniversalIdentifier");
    getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr = v30[3];
    v6 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v6)
  {
    goto LABEL_16;
  }

  v26 = *v6;
  v36[1] = v26;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v8 = getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr;
  v32 = getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v30[3] = dlsym(v9, "MPModelPropertyPlaylistEntryPositionUniversalIdentifier");
    getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr = v30[3];
    v8 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v25 = v3;
  v24 = *v8;
  v36[2] = v24;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v10 = getMPModelRelationshipPlaylistEntrySong();
  v33[0] = v10;
  v11 = [a1 _songSupportedProperties];
  v35[0] = v11;
  v12 = getMPModelRelationshipPlaylistEntryMovie();
  v33[1] = v12;
  v13 = [a1 _movieSupportedProperties];
  v35[1] = v13;
  v14 = getMPModelRelationshipPlaylistEntryTVEpisode();
  v33[2] = v14;
  v15 = [a1 _tvEpisodeSupportedProperties];
  v35[2] = v15;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v16 = getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr;
  v32 = getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v30[3] = dlsym(v17, "MPModelRelationshipPlaylistEntrySocialContributor");
    getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr = v30[3];
    v16 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v34 = *v16;
  v18 = v34;
  v19 = [a1 _socialPersonSupportedProperties];
  v35[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v33 count:4];
  v21 = [v25 initWithProperties:v28 relationships:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_playlistEntryReactionSupportedProperties
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr;
  v22 = getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v5, "MPModelPropertyPlaylistEntryReactionText");
    getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr = v20[3];
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v25[0] = v6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr;
  v22 = getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v8, "MPModelPropertyPlaylistEntryReactionDate");
    getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr = v20[3];
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v25[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr;
  v22 = getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v20[3] = dlsym(v12, "MPModelRelationshipPlaylistEntryReactionSocialProfile");
    getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v23 = *v11;
  v13 = v23;
  v14 = [a1 _socialPersonSupportedProperties];
  v24 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v16 = [v3 initWithProperties:v10 relationships:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_socialPersonSupportedProperties
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v3 = getMPModelPropertySocialPersonArtworkSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonArtworkSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonArtworkSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v4, "MPModelPropertySocialPersonArtwork");
    getMPModelPropertySocialPersonArtworkSymbolLoc_ptr = v27[3];
    v3 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = *v3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v6 = getMPModelPropertySocialPersonHandleSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonHandleSymbolLoc_ptr;
  v30[0] = v5;
  if (!getMPModelPropertySocialPersonHandleSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v7, "MPModelPropertySocialPersonHandle");
    getMPModelPropertySocialPersonHandleSymbolLoc_ptr = v27[3];
    v6 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v8 = *v6;
  v30[1] = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v10, "MPModelPropertySocialPersonHasLightweightProfile");
    getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr = v27[3];
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v9;
  v30[2] = v11;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v12 = getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v13, "MPModelPropertySocialPersonIsPrivate");
    getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr = v27[3];
    v12 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = *v12;
  v30[3] = v14;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v15 = getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v16, "MPModelPropertySocialPersonIsVerified");
    getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr = v27[3];
    v15 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v15)
  {
    goto LABEL_22;
  }

  v17 = *v15;
  v30[4] = v17;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v18 = getMPModelPropertySocialPersonNameSymbolLoc_ptr;
  v29 = getMPModelPropertySocialPersonNameSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonNameSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v19, "MPModelPropertySocialPersonName");
    getMPModelPropertySocialPersonNameSymbolLoc_ptr = v27[3];
    v18 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v18)
  {
LABEL_22:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v31 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v31;
  v22 = [v20 arrayWithObjects:v30 count:6];

  v23 = [v2 initWithProperties:v22 relationships:MEMORY[0x277CBEC10]];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_songSupportedProperties
{
  v153 = *MEMORY[0x277D85DE8];
  v135 = objc_alloc(MEMORY[0x277CBEB18]);
  v133 = getMPModelPropertySongTitle();
  v151[0] = v133;
  v131 = getMPModelPropertySongDuration();
  v151[1] = v131;
  v129 = get_MPModelPropertySongTrackCount();
  v151[2] = v129;
  v127 = getMPModelPropertySongTrackNumber();
  v151[3] = v127;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v2 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  v140 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongDiscNumberSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v3, "MPModelPropertySongDiscNumber");
    getMPModelPropertySongDiscNumberSymbolLoc_ptr = v138[3];
    v2 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v2)
  {
    goto LABEL_66;
  }

  v101 = *v2;
  v151[4] = v101;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v4 = getMPModelPropertySongGroupingSymbolLoc_ptr;
  v140 = getMPModelPropertySongGroupingSymbolLoc_ptr;
  if (!getMPModelPropertySongGroupingSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v5, "MPModelPropertySongGrouping");
    getMPModelPropertySongGroupingSymbolLoc_ptr = v138[3];
    v4 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v4)
  {
    goto LABEL_66;
  }

  v99 = *v4;
  v151[5] = v99;
  v125 = getMPModelPropertySongExplicit();
  v151[6] = v125;
  v123 = getMPModelPropertySongArtistUploadedContent();
  v151[7] = v123;
  v121 = getMPModelPropertySongHasVideo();
  v151[8] = v121;
  v119 = getMPModelPropertySongArtwork();
  v151[9] = v119;
  v117 = getMPModelPropertySongShouldShowComposer();
  v151[10] = v117;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v6 = getMPModelPropertySongCopyrightTextSymbolLoc_ptr;
  v140 = getMPModelPropertySongCopyrightTextSymbolLoc_ptr;
  if (!getMPModelPropertySongCopyrightTextSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v7, "MPModelPropertySongCopyrightText");
    getMPModelPropertySongCopyrightTextSymbolLoc_ptr = v138[3];
    v6 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v6)
  {
    goto LABEL_66;
  }

  v97 = *v6;
  v151[11] = v97;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v8 = getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr;
  v140 = getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr;
  if (!getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v9, "MPModelPropertySongVolumeNormalization");
    getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr = v138[3];
    v8 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v8)
  {
    goto LABEL_66;
  }

  v95 = *v8;
  v151[12] = v95;
  v115 = getMPModelPropertySongIsFavorite();
  v151[13] = v115;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v10 = getMPModelPropertySongIsPinnedSymbolLoc_ptr;
  v140 = getMPModelPropertySongIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertySongIsPinnedSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v11, "MPModelPropertySongIsPinned");
    getMPModelPropertySongIsPinnedSymbolLoc_ptr = v138[3];
    v10 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v10)
  {
    goto LABEL_66;
  }

  v93 = *v10;
  v151[14] = v93;
  v113 = getMPModelPropertySongDateFavorited();
  v151[15] = v113;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v12 = getMPModelPropertySongDateReleasedSymbolLoc_ptr;
  v140 = getMPModelPropertySongDateReleasedSymbolLoc_ptr;
  if (!getMPModelPropertySongDateReleasedSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v13, "MPModelPropertySongDateReleased");
    getMPModelPropertySongDateReleasedSymbolLoc_ptr = v138[3];
    v12 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v12)
  {
    goto LABEL_66;
  }

  v91 = *v12;
  v151[16] = v91;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v14 = getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr;
  v140 = getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v15 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v15, "MPModelPropertySongLastDevicePlaybackDate");
    getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr = v138[3];
    v14 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v14)
  {
    goto LABEL_66;
  }

  v89 = *v14;
  v151[17] = v89;
  v111 = getMPModelPropertySongLibraryAdded();
  v151[18] = v111;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v16 = getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr;
  v140 = getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v17, "MPModelPropertySongLibraryAddedDate");
    getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr = v138[3];
    v16 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v16)
  {
    goto LABEL_66;
  }

  v87 = *v16;
  v151[19] = v87;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v18 = getMPModelPropertySongPlayCountSymbolLoc_ptr;
  v140 = getMPModelPropertySongPlayCountSymbolLoc_ptr;
  if (!getMPModelPropertySongPlayCountSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v19, "MPModelPropertySongPlayCount");
    getMPModelPropertySongPlayCountSymbolLoc_ptr = v138[3];
    v18 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v18)
  {
    goto LABEL_66;
  }

  v85 = *v18;
  v151[20] = v85;
  v109 = getMPModelPropertySongKeepLocalEnableState();
  v151[21] = v109;
  v107 = getMPModelPropertySongKeepLocalManagedStatus();
  v151[22] = v107;
  v105 = getMPModelPropertySongKeepLocalManagedStatusReason();
  v151[23] = v105;
  v103 = getMPModelPropertySongLibraryAddEligible();
  v151[24] = v103;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v20 = getMPModelPropertySongClassicalMovementSymbolLoc_ptr;
  v140 = getMPModelPropertySongClassicalMovementSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v21, "MPModelPropertySongClassicalMovement");
    getMPModelPropertySongClassicalMovementSymbolLoc_ptr = v138[3];
    v20 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v20)
  {
    goto LABEL_66;
  }

  v83 = *v20;
  v151[25] = v83;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v22 = getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr;
  v140 = getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v23, "MPModelPropertySongClassicalMovementCount");
    getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr = v138[3];
    v22 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v22)
  {
    goto LABEL_66;
  }

  v81 = *v22;
  v151[26] = v81;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v24 = getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr;
  v140 = getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v25, "MPModelPropertySongClassicalMovementNumber");
    getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr = v138[3];
    v24 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v24)
  {
    goto LABEL_66;
  }

  v79 = *v24;
  v151[27] = v79;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v26 = getMPModelPropertySongClassicalWorkSymbolLoc_ptr;
  v140 = getMPModelPropertySongClassicalWorkSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalWorkSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v27, "MPModelPropertySongClassicalWork");
    getMPModelPropertySongClassicalWorkSymbolLoc_ptr = v138[3];
    v26 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v26)
  {
    goto LABEL_66;
  }

  v77 = *v26;
  v151[28] = v77;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v28 = getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr;
  v140 = getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr;
  if (!getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr)
  {
    v29 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v29, "MPModelPropertySongHasCloudSyncSource");
    getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr = v138[3];
    v28 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v28)
  {
    goto LABEL_66;
  }

  v30 = *v28;
  v151[29] = v30;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v31 = getMPModelPropertySongYearSymbolLoc_ptr;
  v140 = getMPModelPropertySongYearSymbolLoc_ptr;
  if (!getMPModelPropertySongYearSymbolLoc_ptr)
  {
    v32 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v32, "MPModelPropertySongYear");
    getMPModelPropertySongYearSymbolLoc_ptr = v138[3];
    v31 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v31)
  {
    goto LABEL_66;
  }

  v33 = *v31;
  v151[30] = v33;
  v34 = getMPModelPropertySongUserRating();
  v151[31] = v34;
  v35 = getMPModelPropertySongCloudStatus();
  v151[32] = v35;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v36 = getMPModelPropertySongGaplessInfoSymbolLoc_ptr;
  v140 = getMPModelPropertySongGaplessInfoSymbolLoc_ptr;
  if (!getMPModelPropertySongGaplessInfoSymbolLoc_ptr)
  {
    v37 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v37, "MPModelPropertySongGaplessInfo");
    getMPModelPropertySongGaplessInfoSymbolLoc_ptr = v138[3];
    v36 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v36)
  {
    goto LABEL_66;
  }

  v38 = *v36;
  v151[33] = v38;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v39 = getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr;
  v140 = getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr;
  if (!getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr)
  {
    v40 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v40, "MPModelPropertySongVolumeAdjustment");
    getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr = v138[3];
    v39 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v39)
  {
    goto LABEL_66;
  }

  v41 = *v39;
  v151[34] = v41;
  v42 = getMPModelPropertySongTraits();
  v151[35] = v42;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v43 = getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr;
  v140 = getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr;
  if (!getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr)
  {
    v44 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v44, "MPModelPropertySongSupportsExtendedLyricsAttribute");
    getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr = v138[3];
    v43 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v43)
  {
    goto LABEL_66;
  }

  v45 = *v43;
  v151[36] = v45;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v46 = getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr;
  v140 = getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr;
  if (!getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr)
  {
    v47 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v47, "MPModelPropertySongImmersiveDeeplinkURL");
    getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr = v138[3];
    v46 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v46)
  {
    goto LABEL_66;
  }

  v152 = *v46;
  v48 = MEMORY[0x277CBEA60];
  v49 = v152;
  v50 = [v48 arrayWithObjects:v151 count:38];

  v136 = [v135 initWithArray:v50];
  if (_os_feature_enabled_impl())
  {
    v51 = getMPModelPropertySongIsDisliked();
    [v136 addObject:v51];
  }

  v73 = objc_alloc(getMPPropertySetClass());
  v134 = getMPModelRelationshipSongAlbum();
  v148[0] = v134;
  MPPropertySetClass = getMPPropertySetClass();
  v132 = getMPModelPropertyAlbumTitle();
  v147[0] = v132;
  v130 = getMPModelPropertyAlbumReleaseDateComponents();
  v147[1] = v130;
  v128 = getMPModelPropertyAlbumYear();
  v147[2] = v128;
  v126 = getMPModelPropertyAlbumCleanDownloadedTrackCount();
  v147[3] = v126;
  v124 = getMPModelPropertyAlbumCleanSongCount();
  v147[4] = v124;
  v122 = getMPModelPropertyAlbumTrackCount();
  v147[5] = v122;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:6];
  v118 = [MPPropertySetClass propertySetWithProperties:v120];
  v150[0] = v118;
  v116 = getMPModelRelationshipSongArtist();
  v148[1] = v116;
  v53 = getMPPropertySetClass();
  v114 = getMPModelPropertyArtistName();
  v146 = v114;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  v110 = [v53 propertySetWithProperties:v112];
  v150[1] = v110;
  v108 = getMPModelRelationshipSongLocalFileAsset();
  v148[2] = v108;
  v54 = getMPPropertySetClass();
  v106 = getMPModelPropertyFileAssetNonPurgeable();
  v145[0] = v106;
  v104 = getMPModelPropertyFileAssetProtectionType();
  v145[1] = v104;
  v102 = getMPModelPropertyFileAssetTraits();
  v145[2] = v102;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
  v98 = [v54 propertySetWithProperties:v100];
  v150[2] = v98;
  v96 = getMPModelRelationshipSongStoreAsset();
  v148[3] = v96;
  v55 = getMPPropertySetClass();
  v94 = getMPModelPropertyStoreAssetRedownloadable();
  v144[0] = v94;
  v92 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v144[1] = v92;
  v90 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v144[2] = v90;
  v88 = getMPModelPropertyStoreAssetEndpointType();
  v144[3] = v88;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:4];
  v84 = [v55 propertySetWithProperties:v86];
  v150[3] = v84;
  v82 = getMPModelRelationshipSongHomeSharingAsset();
  v148[4] = v82;
  v56 = getMPPropertySetClass();
  v80 = getMPModelPropertyHomeSharingAssetAvailable();
  v143 = v80;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v76 = [v56 propertySetWithProperties:v78];
  v150[4] = v76;
  v75 = getMPModelRelationshipSongComposer();
  v148[5] = v75;
  v57 = getMPPropertySetClass();
  v58 = getMPModelPropertyComposerName();
  v142 = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
  v60 = [v57 propertySetWithProperties:v59];
  v150[5] = v60;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v61 = getMPModelRelationshipSongLyricsSymbolLoc_ptr;
  v140 = getMPModelRelationshipSongLyricsSymbolLoc_ptr;
  if (!getMPModelRelationshipSongLyricsSymbolLoc_ptr)
  {
    v62 = MediaPlayerLibrary_6();
    v138[3] = dlsym(v62, "MPModelRelationshipSongLyrics");
    getMPModelRelationshipSongLyricsSymbolLoc_ptr = v138[3];
    v61 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v61)
  {
LABEL_66:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v149 = *v61;
  v63 = v149;
  v64 = getMPPropertySetClass();
  v65 = getMPModelPropertyLyricsHasLibraryLyrics();
  v141[0] = v65;
  v66 = getMPModelPropertyLyricsHasStoreLyrics();
  v141[1] = v66;
  v67 = getMPModelPropertyLyricsHasTimeSyncedLyrics();
  v141[2] = v67;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:3];
  v69 = [v64 propertySetWithProperties:v68];
  v150[6] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v148 count:7];
  v74 = [v73 initWithProperties:v136 relationships:v70];

  v71 = *MEMORY[0x277D85DE8];

  return v74;
}

+ (id)_tvEpisodeSupportedProperties
{
  v84[19] = *MEMORY[0x277D85DE8];
  v61 = objc_alloc(getMPPropertySetClass());
  v73 = getMPModelPropertyTVEpisodeArtwork();
  v84[0] = v73;
  v72 = getMPModelPropertyTVEpisodeDuration();
  v84[1] = v72;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v3 = getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v4, "MPModelPropertyTVEpisodeTypeDisplayName");
    getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr = v75[3];
    v3 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v3)
  {
    goto LABEL_49;
  }

  v60 = *v3;
  v84[2] = v60;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v5 = getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v6, "MPModelPropertyTVEpisodeDownloadedDate");
    getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr = v75[3];
    v5 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v5)
  {
    goto LABEL_49;
  }

  v59 = *v5;
  v84[3] = v59;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v7 = getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v8, "MPModelPropertyTVEpisodeExplicitRating");
    getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr = v75[3];
    v7 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v7)
  {
    goto LABEL_49;
  }

  v58 = *v7;
  v84[4] = v58;
  v71 = getMPModelPropertyTVEpisodeHasCloudSyncSource();
  v84[5] = v71;
  v70 = getMPModelPropertyTVEpisodeLibraryAdded();
  v84[6] = v70;
  v69 = getMPModelPropertyTVEpisodeLibraryAddEligible();
  v84[7] = v69;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v9 = getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v10, "MPModelPropertyTVEpisodeMusicShow");
    getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr = v75[3];
    v9 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v9)
  {
    goto LABEL_49;
  }

  v57 = *v9;
  v84[8] = v57;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v11 = getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v12, "MPModelPropertyTVEpisodeKeepLocalEnableState");
    getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr = v75[3];
    v11 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v11)
  {
    goto LABEL_49;
  }

  v56 = *v11;
  v84[9] = v56;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v13 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v14, "MPModelPropertyTVEpisodeKeepLocalManagedStatus");
    getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr = v75[3];
    v13 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v13)
  {
    goto LABEL_49;
  }

  v55 = *v13;
  v84[10] = v55;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v15 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v16, "MPModelPropertyTVEpisodeKeepLocalManagedStatusReason");
    getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr = v75[3];
    v15 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v15)
  {
    goto LABEL_49;
  }

  v54 = *v15;
  v84[11] = v54;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v17 = getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v18 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v18, "MPModelPropertyTVEpisodeLastDevicePlaybackDate");
    getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr = v75[3];
    v17 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v17)
  {
    goto LABEL_49;
  }

  v53 = *v17;
  v84[12] = v53;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v19 = getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr)
  {
    v20 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v20, "MPModelPropertyTVEpisodeLibraryAddedDate");
    getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr = v75[3];
    v19 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v19)
  {
    goto LABEL_49;
  }

  v52 = *v19;
  v84[13] = v52;
  v68 = getMPModelPropertyTVEpisodeNumber();
  v84[14] = v68;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v21 = getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v22, "MPModelPropertyTVEpisodeReleaseDate");
    getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr = v75[3];
    v21 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v21)
  {
    goto LABEL_49;
  }

  v51 = *v21;
  v84[15] = v51;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v23 = getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr;
  v77 = getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr)
  {
    v24 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v24, "MPModelPropertyTVEpisodeDescriptionText");
    getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr = v75[3];
    v23 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v23)
  {
    goto LABEL_49;
  }

  v50 = *v23;
  v84[16] = v50;
  v67 = getMPModelPropertyTVEpisodeTitle();
  v84[17] = v67;
  v66 = getMPModelPropertyTVEpisodeType();
  v84[18] = v66;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:19];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v25 = getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr;
  v77 = getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr)
  {
    v26 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v26, "MPModelRelationshipTVEpisodePlaybackPosition");
    getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr = v75[3];
    v25 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v25)
  {
    goto LABEL_49;
  }

  v49 = *v25;
  v80[0] = v49;
  v65 = [a1 _playbackPositionSupportedProperties];
  v83[0] = v65;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v27 = getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr;
  v77 = getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr)
  {
    v28 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v28, "MPModelRelationshipTVEpisodeStoreAsset");
    getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr = v75[3];
    v27 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v27)
  {
    goto LABEL_49;
  }

  v48 = *v27;
  v80[1] = v48;
  v64 = [a1 _storeAssetSupportedProperties];
  v83[1] = v64;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v29 = getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr;
  v77 = getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v30, "MPModelRelationshipTVEpisodeLocalFileAsset");
    getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr = v75[3];
    v29 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v29)
  {
    goto LABEL_49;
  }

  v31 = *v29;
  v80[2] = v31;
  v32 = [a1 _localFileAssetSupportedProperties];
  v83[2] = v32;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v33 = getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr;
  v77 = getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v75[3] = dlsym(v34, "MPModelRelationshipTVEpisodeSeason");
    getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr = v75[3];
    v33 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v33)
  {
LABEL_49:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v81 = *v33;
  v47 = v81;
  MPPropertySetClass = getMPPropertySetClass();
  v36 = getMPModelPropertyTVSeasonNumber();
  v79 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v38 = [MPPropertySetClass propertySetWithProperties:v37];
  v83[3] = v38;
  v39 = getMPModelRelationshipTVEpisodeShow();
  v82 = v39;
  v40 = getMPPropertySetClass();
  v41 = getMPModelPropertyTVShowTitle();
  v78 = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v43 = [v40 propertySetWithProperties:v42];
  v83[4] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v80 count:5];
  v62 = [v61 initWithProperties:v63 relationships:v44];

  v45 = *MEMORY[0x277D85DE8];

  return v62;
}

+ (id)_tvShowSupportedProperties
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyTVShowTitle();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getMPModelPropertyTVShowArtworkSymbolLoc_ptr;
  v18 = getMPModelPropertyTVShowArtworkSymbolLoc_ptr;
  v19[0] = v3;
  if (!getMPModelPropertyTVShowArtworkSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v16[3] = dlsym(v5, "MPModelPropertyTVShowArtwork");
    getMPModelPropertyTVShowArtworkSymbolLoc_ptr = v16[3];
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v19[1] = v6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr;
  v18 = getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr;
  if (!getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v16[3] = dlsym(v8, "MPModelPropertyTVShowEpisodeCount");
    getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr = v16[3];
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
LABEL_10:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v20 = *v7;
  v9 = MEMORY[0x277CBEA60];
  v10 = v20;
  v11 = [v9 arrayWithObjects:v19 count:3];

  v12 = [v2 initWithProperties:v11 relationships:MEMORY[0x277CBEC10]];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end