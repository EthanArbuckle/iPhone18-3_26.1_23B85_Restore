@interface MPMediaRemoteEntityTranslator
+ (void)buildSchemaIfNeeded;
- (id)sectionObjectForPropertySet:(id)a3 contentItem:(id)a4 context:(id)a5;
- (void)_mapPropertyKey:(uint64_t)a3 toKeyPath:;
- (void)mapAnimatedArtworkPropertyKey:(id)a3;
- (void)mapArtworkPropertyKey:(id)a3;
- (void)mapIdentifierCreationBlock:(id)a3;
- (void)mapPropertyKey:(id)a3 toDeviceSpecificUserInfoKey:(id)a4;
- (void)mapPropertyKey:(id)a3 toMPContentItemSelector:(SEL)a4;
- (void)mapPropertyKey:(id)a3 toUserInfoKey:(id)a4;
- (void)mapPropertyKey:(id)a3 toValueTransformer:(id)a4;
- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4;
@end

@implementation MPMediaRemoteEntityTranslator

+ (void)buildSchemaIfNeeded
{
  if (buildSchemaIfNeeded_onceToken_44264 != -1)
  {
    dispatch_once(&buildSchemaIfNeeded_onceToken_44264, &__block_literal_global_44265);
  }
}

void __52__MPMediaRemoteEntityTranslator_buildSchemaIfNeeded__block_invoke()
{
  v0 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v0 mapIdentifierCreationBlock:&__block_literal_global_44423];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericSong" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericAlbum" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericArtist" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPlaylist" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPlaylistEntry" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVEpisode" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVSeason" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVShow" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericMovie" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPodcast" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPodcastEpisode" toModelClass:objc_opt_class()];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericRadioStation" toModelClass:objc_opt_class()];

  v1 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v1 mapIdentifierCreationBlock:&__block_literal_global_15];
  [v1 mapPropertyKey:@"MPModelPropertySongTitle" toValueTransformer:&__block_literal_global_21_44424];
  [v1 mapPropertyKey:@"MPModelPropertySongHasCredits" toValueTransformer:&__block_literal_global_31_44425];
  [v1 mapPropertyKey:@"_MPModelPropertySongTrackCount" toMPContentItemSelector:sel_totalTrackCount];
  [v1 mapPropertyKey:@"MPModelPropertySongTrackNumber" toMPContentItemSelector:sel_trackNumber];
  [v1 mapPropertyKey:@"MPModelPropertySongDiscNumber" toMPContentItemSelector:sel_discNumber];
  [v1 mapPropertyKey:@"MPModelPropertySongExplicit" toMPContentItemSelector:?];
  [v1 mapPropertyKey:@"MPModelPropertySongDuration" toMPContentItemSelector:sel_duration];
  [v1 mapPropertyKey:@"MPModelPropertySongHasVideo" toValueTransformer:&__block_literal_global_41_44426];
  [v1 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toUserInfoKey:@"shComp"];
  [v1 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toUserInfoKey:@"arUp"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongHasCloudSyncSource"];
  [v1 mapArtworkPropertyKey:@"MPModelPropertySongArtwork"];
  if (_os_feature_enabled_impl())
  {
    [v1 mapAnimatedArtworkPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  }

  else
  {
    [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  }

  [v1 mapPropertyKey:@"MPModelPropertySongKeepLocalEnableState" toDeviceSpecificUserInfoKey:@"klEnable"];
  [v1 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus" toDeviceSpecificUserInfoKey:@"klStatus"];
  [v1 mapPropertyKey:@"MPModelPropertySongLibraryAdded" toDeviceSpecificUserInfoKey:@"libAdded"];
  [v1 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" toValueTransformer:&__block_literal_global_46_44429];
  [v1 mapPropertyKey:@"MPModelPropertySongUserRating" toDeviceSpecificUserInfoKey:@"rating"];
  [v1 mapPropertyKey:@"MPModelPropertySongIsDisliked" toDeviceSpecificUserInfoKey:@"isDisliked"];
  [v1 mapPropertyKey:@"MPModelPropertySongIsFavorite" toDeviceSpecificUserInfoKey:@"isFav"];
  [v1 mapPropertyKey:@"MPModelPropertySongIsPinned" toDeviceSpecificUserInfoKey:@"libPinned"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongCloudStatus"];
  [v1 mapPropertyKey:@"MPModelPropertySongTraits" toMPContentItemSelector:sel_songTraits];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalConstraints"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongDateFavorited"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongDateReleased"];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongLocalFileAsset" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:objc_opt_class()];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongPlaybackPosition" toModelClass:objc_opt_class()];

  v2 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v2 mapIdentifierCreationBlock:&__block_literal_global_57];
  [v2 mapPropertyKey:@"MPModelPropertyFileAssetNonPurgeable" toDeviceSpecificUserInfoKey:@"nonPurge"];
  [v2 mapPropertyKey:@"MPModelPropertyFileAssetProtectionType" toDeviceSpecificUserInfoKey:@"procType"];

  v3 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v3 mapIdentifierCreationBlock:&__block_literal_global_59_44430];
  [v3 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadable" toUserInfoKey:@"rdwn"];
  [v3 mapPropertyKey:@"MPModelPropertyStoreAssetEndpointType" toValueTransformer:&__block_literal_global_61_44431];
  [v3 mapPropertyKey:@"MPModelPropertyStoreAssetSubscriptionRequired" toUserInfoKey:@"subReq"];

  v4 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v4 mapIdentifierCreationBlock:&__block_literal_global_63_44432];
  [v4 mapPropertyKey:@"MPModelPropertyLyricsHasStoreLyrics" toUserInfoKey:@"hsStLy"];
  [v4 mapPropertyKey:@"MPModelPropertyLyricsHasLibraryLyrics" toDeviceSpecificUserInfoKey:@"hsLibLy"];
  [v4 mapPropertyKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics" toUserInfoKey:@"hsTSL"];
  [v4 mapPropertyKey:@"MPModelPropertyLyricsText" toValueTransformer:&__block_literal_global_65_44433];

  v5 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v5 mapIdentifierCreationBlock:&__block_literal_global_68_44434];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumTitle" toMPContentItemSelector:sel_albumName];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumLibraryAdded" toValueTransformer:&__block_literal_global_72_44435];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" toValueTransformer:&__block_literal_global_74];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toMPContentItemSelector:sel_totalTrackCount];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumDiscCount" toMPContentItemSelector:sel_totalDiscCount];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumYear" toMPContentItemSelector:sel_albumYear];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumTraits" toMPContentItemSelector:sel_albumTraits];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" toValueTransformer:&__block_literal_global_82_44436];
  [v5 mapArtworkPropertyKey:@"MPModelPropertyAlbumArtwork"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsFavorite"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsDisliked"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDateFavorited"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsPinned"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount"];
  [v5 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:objc_opt_class()];
  [v5 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:objc_opt_class()];
  [v5 mapRelationshipKey:@"MPModelRelationshipAlbumRepresentativeSong" toModelClass:objc_opt_class()];

  v6 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v6 mapIdentifierCreationBlock:&__block_literal_global_85];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistName" toValueTransformer:&__block_literal_global_87];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAdded" toValueTransformer:&__block_literal_global_89_44437];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistType" toValueTransformer:&__block_literal_global_91];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistTraits" toMPContentItemSelector:sel_playlistTraits];
  [v6 mapArtworkPropertyKey:@"MPModelPropertyPlaylistArtwork"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistIsCollaborative" toValueTransformer:&__block_literal_global_99];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorStatus" toValueTransformer:&__block_literal_global_102];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavorite"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsDisliked"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDateFavorited"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsPinned"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCoverArtworkRecipe"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationSharingMode"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationMode"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaboratorPermissions"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending"];

  v7 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v7 mapIdentifierCreationBlock:&__block_literal_global_104_44438];
  [v7 mapPropertyKey:@"MPModelPropertyPersonName" toValueTransformer:&__block_literal_global_106_44439];
  [v7 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:objc_opt_class()];

  v8 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v8 mapIdentifierCreationBlock:&__block_literal_global_108_44440];
  [v8 mapPropertyKey:@"MPModelPropertyPersonName" toValueTransformer:&__block_literal_global_110];
  [v8 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:objc_opt_class()];

  v9 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v9 mapIdentifierCreationBlock:&__block_literal_global_112_44441];
  [v9 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_composerName];

  v10 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v10 mapIdentifierCreationBlock:&__block_literal_global_116];
  [v10 mapPropertyKey:@"MPModelPropertyGenreName" toMPContentItemSelector:sel_genreName];

  v11 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v11 mapIdentifierCreationBlock:&__block_literal_global_120_44442];
  [v11 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySong" toModelClass:objc_opt_class()];
  [v11 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryTVEpisode" toModelClass:objc_opt_class()];
  [v11 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryMovie" toModelClass:objc_opt_class()];

  v12 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v12 mapIdentifierCreationBlock:&__block_literal_global_122];
  [v12 mapPropertyKey:@"MPModelPropertyMovieTitle" toValueTransformer:&__block_literal_global_124_44443];
  [v12 mapPropertyKey:@"MPModelPropertyMovieDuration" toMPContentItemSelector:sel_duration];
  [v12 mapPropertyKey:@"MPModelPropertyMovieKeepLocalEnableState" toValueTransformer:&__block_literal_global_126];
  [v12 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatus" toValueTransformer:&__block_literal_global_128];
  [v12 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason"];
  [v12 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalConstraints"];
  [v12 mapPropertyKey:@"MPModelPropertyMovieLibraryAdded" toValueTransformer:&__block_literal_global_130];
  [v12 mapPropertyKey:@"MPModelPropertyMovieLibraryAddEligible" toValueTransformer:&__block_literal_global_132_44444];
  [v12 mapPropertyKey:@"MPModelPropertyMovieHasCloudSyncSource" toValueTransformer:&__block_literal_global_134];
  [v12 mapArtworkPropertyKey:@"MPModelPropertyMovieArtwork"];
  [v12 mapUnsupportedPropertyKey:@"MPModelPropertyMovieStoreCanonicalID"];
  [v12 mapRelationshipKey:@"MPModelRelationshipMovieLocalFileAsset" toModelClass:objc_opt_class()];
  [v12 mapRelationshipKey:@"MPModelRelationshipMovieStoreAsset" toModelClass:objc_opt_class()];

  v13 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v13 mapIdentifierCreationBlock:&__block_literal_global_136];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" toValueTransformer:&__block_literal_global_138_44445];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeNumber" toMPContentItemSelector:sel_episodeNumber];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeDuration" toMPContentItemSelector:sel_duration];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeType" toValueTransformer:&__block_literal_global_142];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState" toValueTransformer:&__block_literal_global_144];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus" toValueTransformer:&__block_literal_global_146];
  [v13 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"];
  [v13 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints"];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAdded" toValueTransformer:&__block_literal_global_148];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddEligible" toValueTransformer:&__block_literal_global_150];
  [v13 mapPropertyKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource" toValueTransformer:&__block_literal_global_152];
  [v13 mapArtworkPropertyKey:@"MPModelPropertyTVEpisodeArtwork"];
  [v13 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeStoreCanonicalID"];
  [v13 mapRelationshipKey:@"MPModelRelationshipTVEpisodeSeason" toModelClass:objc_opt_class()];
  [v13 mapRelationshipKey:@"MPModelRelationshipTVEpisodeShow" toModelClass:objc_opt_class()];
  [v13 mapRelationshipKey:@"MPModelRelationshipTVEpisodeLocalFileAsset" toModelClass:objc_opt_class()];
  [v13 mapRelationshipKey:@"MPModelRelationshipTVEpisodeStoreAsset" toModelClass:objc_opt_class()];

  v14 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v14 mapIdentifierCreationBlock:&__block_literal_global_154];
  [v14 mapPropertyKey:@"MPModelPropertyTVSeasonNumber" toMPContentItemSelector:sel_seasonNumber];
  [v14 mapArtworkPropertyKey:@"MPModelPropertyTVSeasonArtwork"];
  [v14 mapRelationshipKey:@"MPModelRelationshipTVSeasonShow" toModelClass:objc_opt_class()];

  v15 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v15 mapIdentifierCreationBlock:&__block_literal_global_158];
  [v15 mapPropertyKey:@"MPModelPropertyTVShowTitle" toMPContentItemSelector:sel_trackArtistName];
  [v15 mapArtworkPropertyKey:@"MPModelPropertyTVShowArtwork"];
  [v15 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowStoreCanonicalID"];

  v16 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v16 mapIdentifierCreationBlock:&__block_literal_global_162];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationName" toMPContentItemSelector:sel_radioStationName];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationAttributionLabel" toValueTransformer:&__block_literal_global_167_44446];
  [v16 mapArtworkPropertyKey:@"MPModelPropertyRadioStationArtwork"];
  [v16 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationEditorialArtwork"];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationType" toValueTransformer:&__block_literal_global_169_44447];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationSubtype" toValueTransformer:&__block_literal_global_171];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationProviderUniversalLink" toValueTransformer:&__block_literal_global_173];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationProviderBundleIdentifier" toValueTransformer:&__block_literal_global_176];
  [v16 mapPropertyKey:@"MPModelPropertyRadioStationProviderID" toValueTransformer:&__block_literal_global_178_44448];

  v17 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v17 mapIdentifierCreationBlock:&__block_literal_global_180_44449];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime" toValueTransformer:&__block_literal_global_182];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionHasBeenPlayed" toValueTransformer:&__block_literal_global_184_44450];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionStartTime" toValueTransformer:&__block_literal_global_186_44451];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionStopTime" toValueTransformer:&__block_literal_global_189];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier" toValueTransformer:&__block_literal_global_192];
  [v17 mapPropertyKey:@"MPModelPropertyPlaybackPositionUserPlayCount" toValueTransformer:&__block_literal_global_195];

  v18 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v18 mapIdentifierCreationBlock:&__block_literal_global_200];
  [v18 mapPropertyKey:@"MPModelPropertyPodcastTitle" toMPContentItemSelector:sel_albumName];
  [v18 mapPropertyKey:@"MPModelPropertyPodcastFeedURL" toValueTransformer:&__block_literal_global_204_44452];
  [v18 mapPropertyKey:@"MPModelPropertyPodcastShareURL" toValueTransformer:&__block_literal_global_206_44453];
  [v18 mapPropertyKey:@"MPModelPropertyPodcastSupportsSubscription" toValueTransformer:&__block_literal_global_208_44454];
  [v18 mapPropertyKey:@"MPModelPropertyPodcastSortType" toValueTransformer:&__block_literal_global_210];
  [v18 mapArtworkPropertyKey:@"MPModelPropertyPodcastArtwork"];
  [v18 mapRelationshipKey:@"MPModelRelationshipPodcastAuthor" toModelClass:objc_opt_class()];

  v19 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v19 mapIdentifierCreationBlock:&__block_literal_global_213_44455];
  [v19 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_albumArtistName];

  v20 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v20 mapIdentifierCreationBlock:&__block_literal_global_217_44456];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTitle" toValueTransformer:&__block_literal_global_221_44457];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSubtitle" toMPContentItemSelector:sel_subtitle];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSubtitleShort" toMPContentItemSelector:sel_subtitleShort];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDuration" toMPContentItemSelector:sel_duration];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeExplicit" toMPContentItemSelector:sel_isExplicitItem];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeNumber" toMPContentItemSelector:sel_episodeNumber];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSeasonNumber" toMPContentItemSelector:sel_seasonNumber];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDescriptionText" toMPContentItemSelector:sel_info];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptAlignments" toValueTransformer:&__block_literal_global_229_44458];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeReleaseDateComponents" toValueTransformer:&__block_literal_global_234_44459];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeHasVideo" toValueTransformer:&__block_literal_global_236];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeUserRating" toValueTransformer:&__block_literal_global_238];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeStreamURL" toValueTransformer:&__block_literal_global_240];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShareURL" toValueTransformer:&__block_literal_global_242];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeType" toValueTransformer:&__block_literal_global_244];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShowArtworkTemplateURL" toUserInfoKey:@"podArtURL"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeArtworkInfo" toUserInfoKey:@"podArtInfo"];
  [v20 mapArtworkPropertyKey:@"MPModelPropertyPodcastEpisodeArtwork"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodePriceType" toUserInfoKey:@"podEpPrTy"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptIdentifier" toUserInfoKey:@"podEpTrId"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptSource" toUserInfoKey:@"podEpTrSrc"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShouldShowChapterArtwork" toUserInfoKey:@"podShoChapArt"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeAreChaptersGenerated" toUserInfoKey:@"podEpChapGen"];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastEpisodeChapters" toValueTransformer:&__block_literal_global_246_44460];
  [v20 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeAuthor" toModelClass:objc_opt_class()];
  [v20 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePodcast" toModelClass:objc_opt_class()];
  [v20 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeLocalFileAsset" toModelClass:objc_opt_class()];
  [v20 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePlaybackPosition" toModelClass:objc_opt_class()];

  v21 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v21 mapIdentifierCreationBlock:&__block_literal_global_253_44461];
  [v21 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_trackArtistName];

  v22 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v22 mapIdentifierCreationBlock:&__block_literal_global_255_44462];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastChapterTitle" toMPContentItemSelector:sel_title];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastChapterDuration" toMPContentItemSelector:sel_duration];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastChapterStartTime" toMPContentItemSelector:sel_startTime];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastChapterPlayable" toMPContentItemSelector:sel_isPlayable];
}

- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4
{
  v6 = a3;
  v7 = [[_MPBaseEntityRelationshipTranslator alloc] initWithRelatedMPModelClass:a4];
  [MPBaseEntityTranslator mapRelationshipKey:v6 ofModelClass:v7 toRelationshipTranslator:?];
}

- (void)mapPropertyKey:(id)a3 toValueTransformer:(id)a4
{
  v6 = a3;
  v7 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:a4];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v6 toPropertyTranslator:v7];
}

- (void)mapPropertyKey:(id)a3 toDeviceSpecificUserInfoKey:(id)a4
{
  v6 = a3;
  v7 = [@"deviceSpecificUserInfo." stringByAppendingString:a4];
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:v6 toKeyPath:v7];
}

- (void)_mapPropertyKey:(uint64_t)a3 toKeyPath:
{
  if (a1)
  {
    v5 = a2;
    v6 = [_MPMediaRemoteEntityPropertyTranslator translatorWithKeyPath:a3];
    [(MPBaseEntityTranslator *)a1 mapPropertyKey:v5 toPropertyTranslator:v6];
  }
}

- (void)mapPropertyKey:(id)a3 toUserInfoKey:(id)a4
{
  v6 = a3;
  v7 = [@"userInfo." stringByAppendingString:a4];
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:v6 toKeyPath:v7];
}

- (void)mapAnimatedArtworkPropertyKey:(id)a3
{
  v4 = a3;
  v5 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:&__block_literal_global_83];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v4 toPropertyTranslator:v5];
}

id __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 artworkGenerator];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v5 artworkGenerator];
    v9 = [v8 formattedAnimatedArtworkCatalogBlockForContentItem:v4];

    if (v9)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke_2;
      aBlock[3] = &unk_1E767E1B0;
      v13 = v9;
      v10 = _Block_copy(aBlock);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E69B0908];
  }

  else
  {
    v3 = MEMORY[0x1E69B0900];
  }

  v4 = *v3;
  if (v4)
  {
    v5 = v4;
    v6 = (*(*(a1 + 32) + 16))();

    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:

  return v6;
}

- (void)mapArtworkPropertyKey:(id)a3
{
  v4 = a3;
  v5 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:&__block_literal_global_81];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v4 toPropertyTranslator:v5];
}

id __55__MPMediaRemoteEntityTranslator_mapArtworkPropertyKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 artworkGenerator];
  v6 = [v5 artworkCatalogBlockForContentItem:v4];

  return v6;
}

- (void)mapPropertyKey:(id)a3 toMPContentItemSelector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:v6 toKeyPath:v7];
}

- (void)mapIdentifierCreationBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke;
  v7[3] = &unk_1E767E188;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:v7];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapIdentifiersToPropertyTranslator:v6];
}

MPIdentifierSet *__60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPIdentifierSet alloc];
  v5 = +[MPModelKind kindWithModelClass:](MPModelKind, "kindWithModelClass:", [*(a1 + 32) MPModelClass]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke_2;
  v10[3] = &unk_1E767FA50;
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = [(MPIdentifierSet *)v4 initWithSource:@"MediaRemote" modelKind:v5 block:v10];

  return v8;
}

- (id)sectionObjectForPropertySet:(id)a3 contentItem:(id)a4 context:(id)a5
{
  v36[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v11 = a3;
  if (self)
  {
    if ([v10 mediaType] == 2)
    {
      v12 = @"MPModelRelationshipGenericPodcast";
      v13 = @"MPModelRelationshipGenericPodcast";
    }

    else
    {
      v14 = [v10 collectionInfo];
      v15 = [v14 objectForKeyedSubscript:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
      v36[0] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
      v36[1] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylistFolder";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v17 = [v16 containsObject:v15];

      if (v17)
      {
        v18 = MPModelRelationshipGenericPlaylist;
      }

      else if ([v15 isEqualToString:@"_MPNowPlayingCollectionInfoCollectionTypeAlbum"])
      {
        v18 = MPModelRelationshipGenericAlbum;
      }

      else
      {
        if (![v15 isEqualToString:@"_MPNowPlayingCollectionInfoCollectionTypeRadio"])
        {
          v12 = 0;
          v28 = 0;
LABEL_17:

LABEL_19:
          goto LABEL_20;
        }

        v18 = MPModelRelationshipGenericRadioStation;
      }

      v12 = *v18;

      if (!v12)
      {
LABEL_18:
        v28 = 0;
        goto LABEL_19;
      }
    }

    v19 = [v11 relationships];
    v20 = [v19 objectForKeyedSubscript:v12];

    if (v20)
    {
      v32 = self;
      v33 = v9;
      v31 = v11;
      v21 = [v11 relationships];
      v14 = [v21 objectForKeyedSubscript:v12];

      v15 = +[MPModelGenericObject requiredStoreLibraryPersonalizationProperties];
      v22 = [MPPropertySet alloc];
      v34 = v12;
      v23 = [v15 relationships];
      v24 = [v23 objectForKeyedSubscript:v12];
      v25 = v24;
      if (!v24)
      {
        v25 = +[MPPropertySet emptyPropertySet];
      }

      v26 = [v14 propertySetByCombiningWithPropertySet:v25];
      v35 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v28 = [(MPPropertySet *)v22 initWithProperties:0 relationships:v27];

      if (!v24)
      {
      }

      self = v32;
      v9 = v33;
      v11 = v31;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v28 = 0;
LABEL_20:

  if (v28)
  {
    v29 = [(MPMediaRemoteEntityTranslator *)self objectForPropertySet:v28 contentItem:v10 context:v9];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end