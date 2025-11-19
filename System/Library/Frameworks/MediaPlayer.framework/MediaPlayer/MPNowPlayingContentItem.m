@interface MPNowPlayingContentItem
- (BOOL)hasArtwork;
- (BOOL)hasDescription;
- (BOOL)hasLanguageOptions;
- (BOOL)hasLyrics;
- (BOOL)hasTranscriptAlignments;
- (BOOL)isAdvertisement;
- (BOOL)isAlwaysLiveItem;
- (BOOL)isInTransition;
- (BOOL)isLoading;
- (BOOL)isSteerable;
- (MPNowPlayingInfoAudioFormat)activeFormat;
- (MPNowPlayingInfoAudioFormat)preferredFormat;
- (MPNowPlayingInfoAudioRoute)audioRoute;
- (MPNowPlayingInfoLyricsItem)lyrics;
- (NSArray)alternativeFormats;
- (NSArray)artworkURLTemplates;
- (NSArray)availableLanguageOptions;
- (NSArray)currentLanguageOptions;
- (NSArray)sections;
- (NSArray)supportedRemoteArtworkFormats;
- (NSArray)transcriptAlignments;
- (NSDate)releaseDate;
- (NSDictionary)auxiliaryNowPlayingInfo;
- (NSDictionary)collectionInfo;
- (NSDictionary)deviceSpecificUserInfo;
- (NSDictionary)nowPlayingInfo;
- (NSDictionary)remoteArtworks;
- (NSDictionary)transitionInfo;
- (NSDictionary)userInfo;
- (NSString)albumArtistName;
- (NSString)albumName;
- (NSString)albumYear;
- (NSString)artworkIdentifier;
- (NSString)artworkURL;
- (NSString)associatedParticipantIdentifier;
- (NSString)collectionIdentifier;
- (NSString)composerName;
- (NSString)directorName;
- (NSString)durationStringLocalizationKey;
- (NSString)externalContentIdentifier;
- (NSString)genreName;
- (NSString)info;
- (NSString)localizedContentRating;
- (NSString)localizedDurationString;
- (NSString)profileIdentifier;
- (NSString)radioStationName;
- (NSString)radioStationStringIdentifier;
- (NSString)seriesName;
- (NSString)serviceIdentifier;
- (NSString)subtitleShort;
- (NSString)trackArtistName;
- (double)calculatedElapsedTime;
- (double)duration;
- (double)elapsedTime;
- (double)elapsedTimeTimestamp;
- (double)startTime;
- (float)defaultPlaybackRate;
- (float)playbackRate;
- (id)copyWithNewIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)activeFormatJustification;
- (int64_t)discNumber;
- (int64_t)episodeNumber;
- (int64_t)episodeType;
- (int64_t)legacyUniqueID;
- (int64_t)lyricsAdamID;
- (int64_t)numberOfChildren;
- (int64_t)playCount;
- (int64_t)playlistType;
- (int64_t)reportingAdamID;
- (int64_t)seasonNumber;
- (int64_t)storeAlbumArtistID;
- (int64_t)storeAlbumID;
- (int64_t)storeArtistID;
- (int64_t)storeID;
- (int64_t)storeSubscriptionID;
- (int64_t)totalDiscCount;
- (int64_t)totalTrackCount;
- (int64_t)trackNumber;
- (unint64_t)albumTraits;
- (unint64_t)formatTierPreference;
- (unint64_t)mediaType;
- (unint64_t)playlistTraits;
- (unint64_t)songTraits;
- (void)_mergeContentItem:(id)a3;
- (void)invalidateArtwork;
- (void)invalidateDescription;
- (void)invalidateLanguageOptions;
- (void)invalidateLyrics;
- (void)invalidateSections;
- (void)invalidateTranscriptAlignments;
- (void)setActiveFormat:(id)a3;
- (void)setActiveFormatJustification:(int64_t)a3;
- (void)setAdvertisement:(BOOL)a3;
- (void)setAlbumArtistName:(id)a3;
- (void)setAlbumName:(id)a3;
- (void)setAlbumTraits:(unint64_t)a3;
- (void)setAlbumYear:(id)a3;
- (void)setAlternativeFormats:(id)a3;
- (void)setAlwaysLiveItem:(BOOL)a3;
- (void)setArtwork:(id)a3;
- (void)setArtworkIdentifier:(id)a3;
- (void)setArtworkURL:(id)a3;
- (void)setArtworkURLTemplates:(id)a3;
- (void)setAssociatedParticipantIdentifier:(id)a3;
- (void)setAudioRoute:(id)a3;
- (void)setAvailableLanguageOptions:(id)a3;
- (void)setCollectionIdentifier:(id)a3;
- (void)setCollectionInfo:(id)a3;
- (void)setComposerName:(id)a3;
- (void)setCurrentLanguageOptions:(id)a3;
- (void)setDefaultPlaybackRate:(float)a3;
- (void)setDeviceSpecificUserInfo:(id)a3;
- (void)setDirectorName:(id)a3;
- (void)setDiscNumber:(int64_t)a3;
- (void)setDuration:(double)a3;
- (void)setDurationStringLocalizationKey:(id)a3;
- (void)setEditingStyleFlags:(int64_t)a3;
- (void)setElapsedTime:(double)a3;
- (void)setElapsedTime:(double)a3 playbackRate:(float)a4;
- (void)setEpisodeNumber:(int64_t)a3;
- (void)setEpisodeType:(int64_t)a3;
- (void)setExternalContentIdentifier:(id)a3;
- (void)setFormatTierPreference:(unint64_t)a3;
- (void)setGenreName:(id)a3;
- (void)setHasArtwork:(BOOL)a3;
- (void)setHasDescription:(BOOL)a3;
- (void)setHasLanguageOptions:(BOOL)a3;
- (void)setHasLyrics:(BOOL)a3;
- (void)setHasTranscriptAlignments:(BOOL)a3;
- (void)setInTransition:(BOOL)a3;
- (void)setInfo:(id)a3;
- (void)setLegacyUniqueID:(int64_t)a3;
- (void)setLoading:(BOOL)a3;
- (void)setLocalizedContentRating:(id)a3;
- (void)setLocalizedDurationString:(id)a3;
- (void)setLyrics:(id)a3;
- (void)setLyricsAdamID:(int64_t)a3;
- (void)setMediaType:(unint64_t)a3;
- (void)setNowPlayingInfo:(id)a3;
- (void)setNumberOfChildren:(int64_t)a3;
- (void)setPlayCount:(int64_t)a3;
- (void)setPlaybackRate:(float)a3;
- (void)setPlaylistTraits:(unint64_t)a3;
- (void)setPlaylistType:(int64_t)a3;
- (void)setPreferredFormat:(id)a3;
- (void)setProfileIdentifier:(id)a3;
- (void)setRadioStationName:(id)a3;
- (void)setRadioStationStringIdentifier:(id)a3;
- (void)setRadioStationType:(int64_t)a3;
- (void)setReleaseDate:(id)a3;
- (void)setRemoteArtworks:(id)a3;
- (void)setReportingAdamID:(int64_t)a3;
- (void)setSeasonNumber:(int64_t)a3;
- (void)setSections:(id)a3;
- (void)setSeriesName:(id)a3;
- (void)setServiceIdentifier:(id)a3;
- (void)setSongTraits:(unint64_t)a3;
- (void)setStartTime:(double)a3;
- (void)setSteerable:(BOOL)a3;
- (void)setStoreAlbumArtistID:(int64_t)a3;
- (void)setStoreAlbumID:(int64_t)a3;
- (void)setStoreArtistID:(int64_t)a3;
- (void)setStoreID:(int64_t)a3;
- (void)setStoreSubscriptionID:(int64_t)a3;
- (void)setSubtitleShort:(id)a3;
- (void)setSupportedRemoteArtworkFormats:(id)a3;
- (void)setTotalDiscCount:(int64_t)a3;
- (void)setTotalTrackCount:(int64_t)a3;
- (void)setTrackArtistName:(id)a3;
- (void)setTrackNumber:(int64_t)a3;
- (void)setTranscriptAlignments:(id)a3;
- (void)setTransitionInfo:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation MPNowPlayingContentItem

- (void)_mergeContentItem:(id)a3
{
  v5 = self;
  v6 = a3;
  [(MPContentItem *)self _mediaRemoteContentItem];
  [v6 _mediaRemoteContentItem];

  MRContentItemMerge();
}

- (void)setAlternativeFormats:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self alternativeFormats];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    v7 = [(MPContentItem *)self _mediaRemoteContentItem];
    v8 = [v4 msv_map:&__block_literal_global_223];
    v9 = [v7 metadata];
    [v9 setAlternativeFormats:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__MPNowPlayingContentItem_setAlternativeFormats___block_invoke_4;
    v10[3] = &unk_1E7680D90;
    v11 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }
}

void __49__MPNowPlayingContentItem_setAlternativeFormats___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) msv_map:&__block_literal_global_229_53577];
  v3 = [a2 metadata];
  [v3 setAlternativeFormats:v4];
}

- (NSArray)alternativeFormats
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 alternativeFormats];

  v4 = [v3 msv_map:&__block_literal_global_213_53580];

  return v4;
}

MPNowPlayingInfoAudioFormat *__45__MPNowPlayingContentItem_alternativeFormats__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v2];

  return v3;
}

- (void)setAudioRoute:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self audioRoute];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    v7 = [(MPContentItem *)self _mediaRemoteContentItem];
    v8 = [v4 mediaRemoteAudioRoute];
    v9 = [v7 metadata];
    [v9 setAudioRoute:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MPNowPlayingContentItem_setAudioRoute___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }
}

void __41__MPNowPlayingContentItem_setAudioRoute___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mediaRemoteAudioRoute];
  v3 = [a2 metadata];
  [v3 setAudioRoute:v4];
}

- (MPNowPlayingInfoAudioRoute)audioRoute
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 audioRoute];

  v4 = v3;
  v5 = [[MPNowPlayingInfoAudioRoute alloc] initWithMediaRemoteAudioRoute:v4];

  return v5;
}

- (void)setFormatTierPreference:(unint64_t)a3
{
  if ([(MPNowPlayingContentItem *)self formatTierPreference]!= a3)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setFormatTierPreference:a3 & 0x1F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__MPNowPlayingContentItem_setFormatTierPreference___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v6];
  }
}

void __51__MPNowPlayingContentItem_setFormatTierPreference___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setFormatTierPreference:v2 & 0x1F];
}

- (unint64_t)formatTierPreference
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 formatTierPreference];

  return v3 & 0x1F;
}

- (void)setActiveFormatJustification:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self activeFormatJustification]!= a3)
  {
    v5 = [(MPContentItem *)self _mediaRemoteContentItem];
    if (a3 == 1000)
    {
      v6 = 1000;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 501)
    {
      v6 = 501;
    }

    if (a3 == 500)
    {
      v6 = 500;
    }

    if (a3 == 101)
    {
      v7 = 101;
    }

    else
    {
      v7 = 0;
    }

    if (a3 == 100)
    {
      v7 = 100;
    }

    if (a3 == 1)
    {
      v7 = 1;
    }

    if (a3 <= 499)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v5 metadata];
    [v9 setActiveFormatJustification:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__MPNowPlayingContentItem_setActiveFormatJustification___block_invoke_3;
    v10[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v10[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }
}

void __56__MPNowPlayingContentItem_setActiveFormatJustification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 1000)
  {
    v3 = 1000;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 501)
  {
    v3 = 501;
  }

  if (v2 == 500)
  {
    v3 = 500;
  }

  if (v2 == 101)
  {
    v4 = 101;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 100)
  {
    v4 = 100;
  }

  if (v2 == 1)
  {
    v4 = 1;
  }

  if (v2 <= 499)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = [a2 metadata];
  [v6 setActiveFormatJustification:v5];
}

- (int64_t)activeFormatJustification
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 activeFormatJustification];

  if (v3 == 1000)
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 501)
  {
    v4 = 501;
  }

  if (v3 == 500)
  {
    v4 = 500;
  }

  if (v3 == 101)
  {
    v5 = 101;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 100)
  {
    v5 = 100;
  }

  if (v3 == 1)
  {
    v5 = 1;
  }

  if (v3 <= 499)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)setActiveFormat:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self activeFormat];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    v7 = [(MPContentItem *)self _mediaRemoteContentItem];
    v8 = [v4 mediaRemoteAudioFormat];
    v9 = [v7 metadata];
    [v9 setActiveFormat:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__MPNowPlayingContentItem_setActiveFormat___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }
}

void __43__MPNowPlayingContentItem_setActiveFormat___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mediaRemoteAudioFormat];
  v3 = [a2 metadata];
  [v3 setActiveFormat:v4];
}

- (MPNowPlayingInfoAudioFormat)activeFormat
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 activeFormat];

  v4 = v3;
  v5 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v4];

  return v5;
}

- (void)setPreferredFormat:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self preferredFormat];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    v7 = [(MPContentItem *)self _mediaRemoteContentItem];
    v8 = [v4 mediaRemoteAudioFormat];
    v9 = [v7 metadata];
    [v9 setPreferredFormat:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MPNowPlayingContentItem_setPreferredFormat___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }
}

void __46__MPNowPlayingContentItem_setPreferredFormat___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mediaRemoteAudioFormat];
  v3 = [a2 metadata];
  [v3 setPreferredFormat:v4];
}

- (MPNowPlayingInfoAudioFormat)preferredFormat
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 preferredFormat];

  v4 = v3;
  v5 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v4];

  return v5;
}

- (void)setPlaylistTraits:(unint64_t)a3
{
  if ([(MPNowPlayingContentItem *)self playlistTraits]!= a3)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setPlaylistTraits:a3 & 0x138];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__MPNowPlayingContentItem_setPlaylistTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v6];
  }
}

void __45__MPNowPlayingContentItem_setPlaylistTraits___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setPlaylistTraits:v2 & 0x138];
}

- (unint64_t)playlistTraits
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 playlistTraits];

  return v3 & 0x138;
}

- (void)setAlbumTraits:(unint64_t)a3
{
  if ([(MPNowPlayingContentItem *)self albumTraits]!= a3)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setAlbumTraits:a3 & 0x3F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__MPNowPlayingContentItem_setAlbumTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v6];
  }
}

void __42__MPNowPlayingContentItem_setAlbumTraits___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setAlbumTraits:v2 & 0x3F];
}

- (unint64_t)albumTraits
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 albumTraits];

  return v3 & 0x3F;
}

- (void)setSongTraits:(unint64_t)a3
{
  if ([(MPNowPlayingContentItem *)self songTraits]!= a3)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setSongTraits:a3 & 0x3F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__MPNowPlayingContentItem_setSongTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v6];
  }
}

void __41__MPNowPlayingContentItem_setSongTraits___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setSongTraits:v2 & 0x3F];
}

- (unint64_t)songTraits
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 songTraits];

  return v3 & 0x3F;
}

- (void)invalidateArtwork
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeArtwork();
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setArtwork:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPNowPlayingContentItem;
  [(MPContentItem *)&v5 setArtwork:?];
  [(MPNowPlayingContentItem *)self setHasArtwork:a3 != 0];
}

- (void)setHasArtwork:(BOOL)a3
{
  if ([(MPNowPlayingContentItem *)self hasArtwork]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasArtworkData();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MPNowPlayingContentItem_setHasArtwork___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasArtwork
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA10](v2);
}

- (void)invalidateLyrics
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeLyrics();
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setLyrics:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self lyrics];
  [(MPContentItem *)self _mediaRemoteContentItem];
  [v4 mediaRemoteLyricsItem];
  MRContentItemSetLyrics();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MPNowPlayingContentItem_setLyrics___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = v4;
  v6 = v4;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

uint64_t __37__MPNowPlayingContentItem_setLyrics___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) mediaRemoteLyricsItem];

  return MRContentItemSetLyrics();
}

- (MPNowPlayingInfoLyricsItem)lyrics
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = [[MPNowPlayingInfoLyricsItem alloc] initWithMediaRemoteLyricsItem:MRContentItemGetLyrics()];

  return v2;
}

- (void)setHasLyrics:(BOOL)a3
{
  if ([(MPNowPlayingContentItem *)self hasLyrics]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasLyrics();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MPNowPlayingContentItem_setHasLyrics___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasLyrics
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA30](v2);
}

- (void)invalidateDescription
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeInfo();
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setHasDescription:(BOOL)a3
{
  if ([(MPNowPlayingContentItem *)self hasDescription]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasInfo();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setHasDescription___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasDescription
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA20](v2);
}

- (void)setSections:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self sections];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = v4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * v12++), "_mediaRemoteContentItem")}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  MRContentItemSetSections();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__MPNowPlayingContentItem_setSections___block_invoke_2;
  v14[3] = &unk_1E7680D90;
  v15 = v8;
  v13 = v8;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v14];
}

uint64_t __39__MPNowPlayingContentItem_setSections___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [v2 addObject:{objc_msgSend(v8, "_mediaRemoteContentItem", v10)}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return MRContentItemSetSections();
}

- (NSArray)sections
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemGetSections();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v2 count])
  {
    v4 = 0;
    do
    {
      v5 = [v2 objectAtIndexedSubscript:v4];

      v6 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:v5];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 < [v2 count]);
  }

  return v3;
}

- (void)invalidateSections
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeSections();
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)invalidateLanguageOptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeLanguageOptions();
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setCurrentLanguageOptions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self currentLanguageOptions];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = v4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v12++), "mrLanguageOption")}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [v7 copy];
  v14 = v13;
  MRContentItemSetCurrentLanguageOptions();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__MPNowPlayingContentItem_setCurrentLanguageOptions___block_invoke_2;
  v16[3] = &unk_1E7680D90;
  v17 = v8;
  v15 = v8;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v16];
}

uint64_t __53__MPNowPlayingContentItem_setCurrentLanguageOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v7++), "mrLanguageOption", v11)}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];
  v9 = v8;

  return MRContentItemSetCurrentLanguageOptions();
}

- (NSArray)currentLanguageOptions
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  CurrentLanguageOptions = MRContentItemGetCurrentLanguageOptions();
  if (CurrentLanguageOptions)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = CFArrayGetCount(CurrentLanguageOptions);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        v7 = [[MPNowPlayingInfoLanguageOption alloc] initWithMRLanguageOption:CFArrayGetValueAtIndex(CurrentLanguageOptions, i)];
        [v3 addObject:v7];
      }
    }

    CurrentLanguageOptions = [v3 copy];
  }

  return CurrentLanguageOptions;
}

- (void)setAvailableLanguageOptions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self availableLanguageOptions];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = v4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v12++), "mrLanguageOptionGroup")}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [v7 copy];
  v14 = v13;
  MRContentItemSetAvailableLanguageOptions();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__MPNowPlayingContentItem_setAvailableLanguageOptions___block_invoke_2;
  v16[3] = &unk_1E7680D90;
  v17 = v8;
  v15 = v8;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v16];
}

uint64_t __55__MPNowPlayingContentItem_setAvailableLanguageOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v7++), "mrLanguageOptionGroup", v11)}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];
  v9 = v8;

  return MRContentItemSetAvailableLanguageOptions();
}

- (NSArray)availableLanguageOptions
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  AvailableLanguageOptions = MRContentItemGetAvailableLanguageOptions();
  if (AvailableLanguageOptions)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = CFArrayGetCount(AvailableLanguageOptions);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        v7 = [[MPNowPlayingInfoLanguageOptionGroup alloc] initWithMRLanguageOptionGroup:CFArrayGetValueAtIndex(AvailableLanguageOptions, i)];
        [v3 addObject:v7];
      }
    }

    AvailableLanguageOptions = [v3 copy];
  }

  return AvailableLanguageOptions;
}

- (void)setHasLanguageOptions:(BOOL)a3
{
  if ([(MPNowPlayingContentItem *)self hasLanguageOptions]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasLanguageOptions();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__MPNowPlayingContentItem_setHasLanguageOptions___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasLanguageOptions
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA28](v2);
}

- (void)invalidateTranscriptAlignments
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPContentItem *)self identifier];
  v11[0] = v3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  [v4 setIncludeAlignments:1];
  v5 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setTranscriptAlignments:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self transcriptAlignments];
  [(MPContentItem *)self _mediaRemoteContentItem];
  [v4 msv_map:&__block_literal_global_58_53595];
  MRContentItemSetTranscriptAlignments();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MPNowPlayingContentItem_setTranscriptAlignments___block_invoke_3;
  v7[3] = &unk_1E7680D90;
  v8 = v4;
  v6 = v4;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

uint64_t __51__MPNowPlayingContentItem_setTranscriptAlignments___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) msv_map:&__block_literal_global_62];

  return MRContentItemSetTranscriptAlignments();
}

- (NSArray)transcriptAlignments
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  TranscriptAlignments = MRContentItemGetTranscriptAlignments();
  if (TranscriptAlignments)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = CFArrayGetCount(TranscriptAlignments);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        v7 = CFArrayGetValueAtIndex(TranscriptAlignments, i);
        if (v7)
        {
          v8 = [[MPNowPlayingInfoTranscriptAlignment alloc] initWithMRTranscriptAlignment:v7];
          [v3 addObject:v8];
        }
      }
    }

    TranscriptAlignments = [v3 copy];
  }

  return TranscriptAlignments;
}

- (void)setHasTranscriptAlignments:(BOOL)a3
{
  if ([(MPNowPlayingContentItem *)self hasTranscriptAlignments]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasTranscriptAlignments();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__MPNowPlayingContentItem_setHasTranscriptAlignments___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasTranscriptAlignments
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA40](v2);
}

- (void)setElapsedTime:(double)a3 playbackRate:(float)a4
{
  v7 = _AXSHapticMusicEnabled();
  [(MPNowPlayingContentItem *)self playbackRate];
  v9 = v8 - a4;
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  [(MPNowPlayingContentItem *)self calculatedElapsedTime];
  if (v10 > 2.2204e-16)
  {
    goto LABEL_9;
  }

  v12 = v11 - a3;
  if (v12 < 0.0)
  {
    v12 = -v12;
  }

  if (v12 > dbl_1A273DE40[v7 == 0] || !self->_didSetElapsedTime)
  {
LABEL_9:
    [(MPNowPlayingContentItem *)self setElapsedTime:a3];
    *&v13 = a4;
    [(MPNowPlayingContentItem *)self setPlaybackRate:v13];
    self->_didSetElapsedTime = 1;
  }
}

- (double)calculatedElapsedTime
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(MPNowPlayingContentItem *)self elapsedTime];
  v6 = v5;
  [(MPNowPlayingContentItem *)self elapsedTimeTimestamp];
  v8 = v4 - v7;
  [(MPNowPlayingContentItem *)self playbackRate];
  v10 = v6 + v8 * v9;
  [(MPNowPlayingContentItem *)self duration];
  if (v10 < result)
  {
    return v10;
  }

  return result;
}

- (void)setNowPlayingInfo:(id)a3
{
  v5 = self->_nowPlayingInfo;
  v6 = self;
  v7 = a3;
  [(MPContentItem *)self _mediaRemoteContentItem];
  MRContentItemSetNowPlayingInfo();

  [(MPContentItem *)self _mediaRemoteContentItem];
  v8 = MRContentItemCopyAuxiliaryNowPlayingInfo();
  if (![(NSDictionary *)v5 isEqualToDictionary:v8])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__MPNowPlayingContentItem_setNowPlayingInfo___block_invoke;
    v10[3] = &unk_1E7680D90;
    v11 = v8;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v10];
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = v8;
}

- (NSDictionary)nowPlayingInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyNowPlayingInfo();

  return v2;
}

- (NSDictionary)auxiliaryNowPlayingInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyAuxiliaryNowPlayingInfo();

  return v2;
}

- (void)setMediaType:(unint64_t)a3
{
  if ([(MPNowPlayingContentItem *)self mediaType]!= a3)
  {
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * ((a3 & 0xFF00) != 0);
    }

    v6 = 1;
    if (a3 > 511)
    {
      if (a3 > 2047)
      {
        if (a3 == 2048)
        {
          goto LABEL_25;
        }

        if (a3 != 4096)
        {
          if (a3 == 0x2000)
          {
            v6 = 7;
            goto LABEL_25;
          }

          goto LABEL_21;
        }

LABEL_22:
        v6 = 6;
        goto LABEL_25;
      }

      if (a3 == 512)
      {
        v6 = 2;
        goto LABEL_25;
      }

      if (a3 != 1024)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v6 = 5;
          goto LABEL_25;
        }

        if (a3 != 8)
        {
          if (a3 == 256)
          {
            v6 = 3;
LABEL_25:
            [(MPContentItem *)self _mediaRemoteContentItem];
            MRContentItemSetMediaType();
            [(MPContentItem *)self _mediaRemoteContentItem];
            MRContentItemSetMediaSubType();
            v7[0] = MEMORY[0x1E69E9820];
            v7[1] = 3221225472;
            v7[2] = __40__MPNowPlayingContentItem_setMediaType___block_invoke;
            v7[3] = &__block_descriptor_48_e9_v16__0_v8l;
            v7[4] = v5;
            v7[5] = v6;
            [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
            return;
          }

LABEL_21:
          v5 = 0;
          v6 = 0;
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (a3 == 1)
      {
        goto LABEL_25;
      }

      if (a3 != 2)
      {
        goto LABEL_21;
      }
    }

    v6 = 4;
    goto LABEL_25;
  }
}

uint64_t __40__MPNowPlayingContentItem_setMediaType___block_invoke()
{
  MRContentItemSetMediaType();

  return MRContentItemSetMediaSubType();
}

- (unint64_t)mediaType
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  MediaType = MRContentItemGetMediaType();
  [(MPContentItem *)self _mediaRemoteContentItem];
  MediaSubType = MRContentItemGetMediaSubType();
  if (MediaSubType > 3)
  {
    if (MediaSubType <= 5)
    {
      if (MediaSubType != 4)
      {
        return 4;
      }

      v6 = (MediaType == 2) << 10;
      v7 = MediaType == 1;
      v8 = 2;
      goto LABEL_19;
    }

    if (MediaSubType == 6)
    {
      v6 = (MediaType == 2) << 12;
      v7 = MediaType == 1;
      v8 = 8;
LABEL_19:
      if (v7)
      {
        return v8;
      }

      else
      {
        return v6;
      }
    }

    if (MediaSubType == 7 && MediaType == 2)
    {
      return 0x2000;
    }

    return 0;
  }

  if (MediaSubType != 1)
  {
    if (MediaSubType == 2)
    {
      return 512;
    }

    if (MediaSubType == 3)
    {
      return 256;
    }

    return 0;
  }

  if (MediaType == 1)
  {
    return 1;
  }

  else
  {
    return (MediaType == 2) << 11;
  }
}

- (void)setTransitionInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self transitionInfo];
  [(MPContentItem *)self _mediaRemoteContentItem];
  MRContentItemSetTransitionInfo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPNowPlayingContentItem_setTransitionInfo___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = v4;
  v6 = v4;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

- (NSDictionary)transitionInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyTransitionInfo();

  return v2;
}

- (void)setCollectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self collectionInfo];
  [(MPContentItem *)self _mediaRemoteContentItem];
  MPNowPlayingCollectionInfoToMediaRemote(v4);
  MRContentItemSetCollectionInfo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPNowPlayingContentItem_setCollectionInfo___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = v4;
  v6 = v4;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

uint64_t __45__MPNowPlayingContentItem_setCollectionInfo___block_invoke_2(uint64_t a1)
{
  MPNowPlayingCollectionInfoToMediaRemote(*(a1 + 32));

  return MRContentItemSetCollectionInfo();
}

- (NSDictionary)collectionInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyCollectionInfo();
  v3 = MPMediaRemoteCollectionInfoToNowPlaying(v2);

  return v3;
}

- (double)elapsedTimeTimestamp
{
  [(MPContentItem *)self _mediaRemoteContentItem];

  MRContentItemGetElapsedTimeTimestamp();
  return result;
}

- (void)setPlaybackRate:(float)a3
{
  [(MPNowPlayingContentItem *)self playbackRate];
  v6 = v5 - a3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.00000011921 || ([(MPContentItem *)self _mediaRemoteContentItem], (MRContentItemHasPlaybackRate() & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlaybackRate();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setPlaybackRate___block_invoke;
    v7[3] = &__block_descriptor_36_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (float)playbackRate
{
  [(MPContentItem *)self _mediaRemoteContentItem];

  MRContentItemGetPlaybackRate();
  return result;
}

- (void)setElapsedTime:(double)a3
{
  [(MPNowPlayingContentItem *)self elapsedTime];
  v6 = v5 - a3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16 || ([(MPContentItem *)self _mediaRemoteContentItem], !MRContentItemGetHasElapsedTime()) || !self->_didSetElapsedTime)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetElapsedTime();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__MPNowPlayingContentItem_setElapsedTime___block_invoke;
    v8[3] = &__block_descriptor_40_e9_v16__0_v8l;
    *&v8[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MPNowPlayingContentItem_setElapsedTime___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v7[4] = self;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

uint64_t __42__MPNowPlayingContentItem_setElapsedTime___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _mediaRemoteContentItem];
  MRContentItemGetElapsedTimeTimestamp();

  return MEMORY[0x1EEE1CC88](a2);
}

- (double)elapsedTime
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9E8](v2);
  return result;
}

- (void)setEditingStyleFlags:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self editingStyleFlags]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEditingStyleFlags();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__MPNowPlayingContentItem_setEditingStyleFlags___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (void)setEpisodeType:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self episodeType]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEpisodeType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__MPNowPlayingContentItem_setEpisodeType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)episodeType
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  result = MRContentItemGetEpisodeType();
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

- (void)setRadioStationType:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self radioStationType]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__MPNowPlayingContentItem_setRadioStationType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (void)setPlaylistType:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self playlistType]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlaylistType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setPlaylistType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)playlistType
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  result = MRContentItemGetPlaylistType();
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (void)setRemoteArtworks:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self remoteArtworks];
  if (v5 == v4)
  {
    goto LABEL_4;
  }

  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 msv_mapValues:&__block_literal_global_6];
    [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__MPNowPlayingContentItem_setRemoteArtworks___block_invoke_2;
    v8[3] = &unk_1E7680D90;
    v9 = v7;
    v5 = v7;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];

LABEL_4:
  }
}

- (NSDictionary)remoteArtworks
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 msv_mapValues:&__block_literal_global_53602];

  return v3;
}

MPNowPlayingContentItemRemoteArtwork *__41__MPNowPlayingContentItem_remoteArtworks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [[MPNowPlayingContentItemRemoteArtwork alloc] initWithMediaRemoteRemoteArtwork:v3];

  return v4;
}

- (void)setSupportedRemoteArtworkFormats:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self supportedRemoteArtworkFormats];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__MPNowPlayingContentItem_setSupportedRemoteArtworkFormats___block_invoke;
      v8[3] = &unk_1E7680D90;
      v9 = v4;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];
    }
  }
}

- (NSArray)supportedRemoteArtworkFormats
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return [v2 availableRemoteArtworkFormats];
}

- (void)setSubtitleShort:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self subtitleShort];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      [v8 setSubtitleShort:v4];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MPNowPlayingContentItem_setSubtitleShort___block_invoke;
      v9[3] = &unk_1E7680D90;
      v10 = v4;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

void __44__MPNowPlayingContentItem_setSubtitleShort___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setSubtitleShort:v2];
}

- (NSString)subtitleShort
{
  v2 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
  v3 = [v2 subtitleShort];

  return v3;
}

- (void)setAssociatedParticipantIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self associatedParticipantIdentifier];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__MPNowPlayingContentItem_setAssociatedParticipantIdentifier___block_invoke;
      v8[3] = &unk_1E7680D90;
      v9 = v4;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];
    }
  }
}

- (NSString)associatedParticipantIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return [v2 associatedParticipantIdentifier];
}

- (void)setStoreAlbumArtistID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self storeAlbumArtistID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreAlbumArtistIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__MPNowPlayingContentItem_setStoreAlbumArtistID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeAlbumArtistID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA48](v2);
}

- (void)setLyricsAdamID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self lyricsAdamID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLyricsAdamID();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setLyricsAdamID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)lyricsAdamID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAE8](v2);
}

- (void)setReportingAdamID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self reportingAdamID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetReportingAdamID();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MPNowPlayingContentItem_setReportingAdamID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)reportingAdamID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB50](v2);
}

- (void)setLegacyUniqueID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self legacyUniqueID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLegacyUniqueIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setLegacyUniqueID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)legacyUniqueID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAC8](v2);
}

- (void)setStoreSubscriptionID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self storeSubscriptionID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreSubscriptionIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__MPNowPlayingContentItem_setStoreSubscriptionID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeSubscriptionID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA68](v2);
}

- (void)setStoreID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self storeID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__MPNowPlayingContentItem_setStoreID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA60](v2);
}

- (void)setStoreArtistID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self storeArtistID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreArtistIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MPNowPlayingContentItem_setStoreArtistID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeArtistID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA58](v2);
}

- (void)setStoreAlbumID:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self storeAlbumID]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreAlbumIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setStoreAlbumID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeAlbumID
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA50](v2);
}

- (void)setNumberOfChildren:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self numberOfChildren]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetNumberOfSections();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__MPNowPlayingContentItem_setNumberOfChildren___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }

  [(MPNowPlayingContentItem *)self invalidateSections];
}

- (int64_t)numberOfChildren
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB00](v2);
}

- (void)setInTransition:(BOOL)a3
{
  if (-[MPNowPlayingContentItem isInTransition](self, "isInTransition") != a3 || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasInTransition"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsInTransition();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setInTransition___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isInTransition
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAA0](v2);
}

- (void)setLoading:(BOOL)a3
{
  if (-[MPNowPlayingContentItem isLoading](self, "isLoading") != a3 || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasLoading"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsLoading();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__MPNowPlayingContentItem_setLoading___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isLoading
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAA8](v2);
}

- (void)setSteerable:(BOOL)a3
{
  if (-[MPNowPlayingContentItem isSteerable](self, "isSteerable") != a3 || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasSteerable"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsSteerable();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setSteerable___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isSteerable
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAB8](v2);
}

- (void)setAdvertisement:(BOOL)a3
{
  if (-[MPNowPlayingContentItem isAdvertisement](self, "isAdvertisement") != a3 || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasAdvertisement"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsAdvertisement();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__MPNowPlayingContentItem_setAdvertisement___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isAdvertisement
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA80](v2);
}

- (void)setAlwaysLiveItem:(BOOL)a3
{
  if (-[MPNowPlayingContentItem isAlwaysLiveItem](self, "isAlwaysLiveItem") != a3 || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasAlwaysLive"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsAlwaysLive();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MPNowPlayingContentItem_setAlwaysLiveItem___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v8 = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isAlwaysLiveItem
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA88](v2);
}

- (void)setServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self serviceIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetServiceIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setServiceIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)serviceIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB70](v2);
}

- (void)setExternalContentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self externalContentIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetContentIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__MPNowPlayingContentItem_setExternalContentIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)externalContentIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9A8](v2);
}

- (void)setRadioStationStringIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self radioStationStringIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationString();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__MPNowPlayingContentItem_setRadioStationStringIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)radioStationStringIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB38](v2);
}

- (void)setGenreName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self genreName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetGenre();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setGenreName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)genreName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA08](v2);
}

- (void)setComposerName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self composerName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetComposer();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setComposerName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)composerName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9A0](v2);
}

- (void)setTrackNumber:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self trackNumber]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTrackNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__MPNowPlayingContentItem_setTrackNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)trackNumber
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CBA8](v2);
}

- (void)setTotalTrackCount:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self totalTrackCount]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTotalTrackCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MPNowPlayingContentItem_setTotalTrackCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)totalTrackCount
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB98](v2);
}

- (void)setTotalDiscCount:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self totalDiscCount]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTotalDiscCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setTotalDiscCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)totalDiscCount
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB90](v2);
}

- (void)setSeasonNumber:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self seasonNumber]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetSeasonNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setSeasonNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)seasonNumber
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB58](v2);
}

- (void)setPlayCount:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self playCount]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlayCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MPNowPlayingContentItem_setPlayCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)playCount
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB08](v2);
}

- (void)setEpisodeNumber:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self episodeNumber]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEpisodeNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MPNowPlayingContentItem_setEpisodeNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)episodeNumber
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9F8](v2);
}

- (void)setDiscNumber:(int64_t)a3
{
  if ([(MPNowPlayingContentItem *)self discNumber]!= a3)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDiscNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MPNowPlayingContentItem_setDiscNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = a3;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)discNumber
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9C8](v2);
}

- (void)setDefaultPlaybackRate:(float)a3
{
  [(MPNowPlayingContentItem *)self defaultPlaybackRate];
  v6 = -v5;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v6 > 0.00000011921)
  {
    goto LABEL_7;
  }

  v7 = -a3;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  if (v7 > 0.00000011921)
  {
LABEL_7:
    v8 = v5 - a3;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 > 0.00000011921)
    {
      [(MPContentItem *)self _mediaRemoteContentItem];
      MRContentItemSetDefaultPlaybackRate();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__MPNowPlayingContentItem_setDefaultPlaybackRate___block_invoke;
      v9[3] = &__block_descriptor_36_e9_v16__0_v8l;
      v10 = a3;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (float)defaultPlaybackRate
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9B8](v2);
  return result;
}

- (void)setStartTime:(double)a3
{
  [(MPNowPlayingContentItem *)self startTime];
  v6 = -v5;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v6 > 2.22044605e-16)
  {
    goto LABEL_7;
  }

  v7 = -a3;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  if (v7 > 2.22044605e-16)
  {
LABEL_7:
    v8 = v5 - a3;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 > 2.22044605e-16)
    {
      [(MPContentItem *)self _mediaRemoteContentItem];
      MRContentItemSetStartTime();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__MPNowPlayingContentItem_setStartTime___block_invoke;
      v9[3] = &__block_descriptor_40_e9_v16__0_v8l;
      *&v9[4] = a3;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (double)startTime
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1CB78](v2);
  return result;
}

- (void)setDuration:(double)a3
{
  [(MPNowPlayingContentItem *)self duration];
  v6 = -v5;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v6 > 2.22044605e-16)
  {
    goto LABEL_7;
  }

  v7 = -a3;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  if (v7 > 2.22044605e-16)
  {
LABEL_7:
    v8 = v5 - a3;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 > 2.22044605e-16)
    {
      [(MPContentItem *)self _mediaRemoteContentItem];
      MRContentItemSetDuration();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__MPNowPlayingContentItem_setDuration___block_invoke;
      v9[3] = &__block_descriptor_40_e9_v16__0_v8l;
      *&v9[4] = a3;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (double)duration
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9D0](v2);
  return result;
}

- (void)setDurationStringLocalizationKey:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self durationStringLocalizationKey];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDurationStringLocalizationKey();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MPNowPlayingContentItem_setDurationStringLocalizationKey___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)durationStringLocalizationKey
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9D8](v2);
}

- (void)setLocalizedDurationString:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self localizedDurationString];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLocalizedDurationString();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MPNowPlayingContentItem_setLocalizedDurationString___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)localizedDurationString
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAD8](v2);
}

- (void)setArtworkIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self artworkIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setArtworkIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)artworkIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C970](v2);
}

- (void)setArtworkURLTemplates:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self artworkURLTemplates];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkURLTemplates();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MPNowPlayingContentItem_setArtworkURLTemplates___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSArray)artworkURLTemplates
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C980](v2);
}

- (void)setArtworkURL:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self artworkURL];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkURL();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MPNowPlayingContentItem_setArtworkURL___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)artworkURL
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C978](v2);
}

- (void)setTrackArtistName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self trackArtistName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTrackArtistName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__MPNowPlayingContentItem_setTrackArtistName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)trackArtistName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CBA0](v2);
}

- (void)setSeriesName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self seriesName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetSeriesName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MPNowPlayingContentItem_setSeriesName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)seriesName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB68](v2);
}

- (void)setRadioStationName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self radioStationName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__MPNowPlayingContentItem_setRadioStationName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)radioStationName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB30](v2);
}

- (void)setProfileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self profileIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetProfileIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setProfileIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)profileIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB28](v2);
}

- (void)setLocalizedContentRating:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self localizedContentRating];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLocalizedContentRating();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MPNowPlayingContentItem_setLocalizedContentRating___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)localizedContentRating
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAD0](v2);
}

- (void)setInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self info];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__MPNowPlayingContentItem_setInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)info
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA78](v2);
}

- (void)setDirectorName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self directorName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDirectorName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setDirectorName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)directorName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9C0](v2);
}

- (void)setCollectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self collectionIdentifier];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetCollectionIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__MPNowPlayingContentItem_setCollectionIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)collectionIdentifier
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C998](v2);
}

- (void)setAlbumYear:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self albumYear];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumYear();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setAlbumYear___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumYear
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyAlbumYear();

  return v2;
}

- (void)setAlbumName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self albumName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setAlbumName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C960](v2);
}

- (void)setAlbumArtistName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self albumArtistName];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumArtistName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__MPNowPlayingContentItem_setAlbumArtistName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumArtistName
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C958](v2);
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self userInfo];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetUserInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__MPNowPlayingContentItem_setUserInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDictionary)userInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyUserInfo();

  return v2;
}

- (void)setDeviceSpecificUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self deviceSpecificUserInfo];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDeviceSpecificUserInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MPNowPlayingContentItem_setDeviceSpecificUserInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDictionary)deviceSpecificUserInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyDeviceSpecificUserInfo();

  return v2;
}

- (void)setReleaseDate:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingContentItem *)self releaseDate];
  v6 = v5;
  if (v5 != v4 && ![v5 isEqual:v4] || !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetReleaseDate();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__MPNowPlayingContentItem_setReleaseDate___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDate)releaseDate
{
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB48](v2);
}

- (id)copyWithNewIdentifier:(id)a3
{
  v5 = self;
  v6 = a3;
  [(MPContentItem *)self _mediaRemoteContentItem];
  v7 = MRContentItemCopyWithIdentifier();

  v8 = [objc_alloc(objc_opt_class()) _initWithMediaRemoteContentItem:v7];
  CFRelease(v7);
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = MEMORY[0x1A58DDC00]([(MPContentItem *)self _mediaRemoteContentItem]);
  v4 = [objc_alloc(objc_opt_class()) _initWithMediaRemoteContentItem:v3];
  CFRelease(v3);
  return v4;
}

@end