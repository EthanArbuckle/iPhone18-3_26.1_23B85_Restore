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
- (id)copyWithNewIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)_mergeContentItem:(id)item;
- (void)invalidateArtwork;
- (void)invalidateDescription;
- (void)invalidateLanguageOptions;
- (void)invalidateLyrics;
- (void)invalidateSections;
- (void)invalidateTranscriptAlignments;
- (void)setActiveFormat:(id)format;
- (void)setActiveFormatJustification:(int64_t)justification;
- (void)setAdvertisement:(BOOL)advertisement;
- (void)setAlbumArtistName:(id)name;
- (void)setAlbumName:(id)name;
- (void)setAlbumTraits:(unint64_t)traits;
- (void)setAlbumYear:(id)year;
- (void)setAlternativeFormats:(id)formats;
- (void)setAlwaysLiveItem:(BOOL)item;
- (void)setArtwork:(id)artwork;
- (void)setArtworkIdentifier:(id)identifier;
- (void)setArtworkURL:(id)l;
- (void)setArtworkURLTemplates:(id)templates;
- (void)setAssociatedParticipantIdentifier:(id)identifier;
- (void)setAudioRoute:(id)route;
- (void)setAvailableLanguageOptions:(id)options;
- (void)setCollectionIdentifier:(id)identifier;
- (void)setCollectionInfo:(id)info;
- (void)setComposerName:(id)name;
- (void)setCurrentLanguageOptions:(id)options;
- (void)setDefaultPlaybackRate:(float)rate;
- (void)setDeviceSpecificUserInfo:(id)info;
- (void)setDirectorName:(id)name;
- (void)setDiscNumber:(int64_t)number;
- (void)setDuration:(double)duration;
- (void)setDurationStringLocalizationKey:(id)key;
- (void)setEditingStyleFlags:(int64_t)flags;
- (void)setElapsedTime:(double)time;
- (void)setElapsedTime:(double)time playbackRate:(float)rate;
- (void)setEpisodeNumber:(int64_t)number;
- (void)setEpisodeType:(int64_t)type;
- (void)setExternalContentIdentifier:(id)identifier;
- (void)setFormatTierPreference:(unint64_t)preference;
- (void)setGenreName:(id)name;
- (void)setHasArtwork:(BOOL)artwork;
- (void)setHasDescription:(BOOL)description;
- (void)setHasLanguageOptions:(BOOL)options;
- (void)setHasLyrics:(BOOL)lyrics;
- (void)setHasTranscriptAlignments:(BOOL)alignments;
- (void)setInTransition:(BOOL)transition;
- (void)setInfo:(id)info;
- (void)setLegacyUniqueID:(int64_t)d;
- (void)setLoading:(BOOL)loading;
- (void)setLocalizedContentRating:(id)rating;
- (void)setLocalizedDurationString:(id)string;
- (void)setLyrics:(id)lyrics;
- (void)setLyricsAdamID:(int64_t)d;
- (void)setMediaType:(unint64_t)type;
- (void)setNowPlayingInfo:(id)info;
- (void)setNumberOfChildren:(int64_t)children;
- (void)setPlayCount:(int64_t)count;
- (void)setPlaybackRate:(float)rate;
- (void)setPlaylistTraits:(unint64_t)traits;
- (void)setPlaylistType:(int64_t)type;
- (void)setPreferredFormat:(id)format;
- (void)setProfileIdentifier:(id)identifier;
- (void)setRadioStationName:(id)name;
- (void)setRadioStationStringIdentifier:(id)identifier;
- (void)setRadioStationType:(int64_t)type;
- (void)setReleaseDate:(id)date;
- (void)setRemoteArtworks:(id)artworks;
- (void)setReportingAdamID:(int64_t)d;
- (void)setSeasonNumber:(int64_t)number;
- (void)setSections:(id)sections;
- (void)setSeriesName:(id)name;
- (void)setServiceIdentifier:(id)identifier;
- (void)setSongTraits:(unint64_t)traits;
- (void)setStartTime:(double)time;
- (void)setSteerable:(BOOL)steerable;
- (void)setStoreAlbumArtistID:(int64_t)d;
- (void)setStoreAlbumID:(int64_t)d;
- (void)setStoreArtistID:(int64_t)d;
- (void)setStoreID:(int64_t)d;
- (void)setStoreSubscriptionID:(int64_t)d;
- (void)setSubtitleShort:(id)short;
- (void)setSupportedRemoteArtworkFormats:(id)formats;
- (void)setTotalDiscCount:(int64_t)count;
- (void)setTotalTrackCount:(int64_t)count;
- (void)setTrackArtistName:(id)name;
- (void)setTrackNumber:(int64_t)number;
- (void)setTranscriptAlignments:(id)alignments;
- (void)setTransitionInfo:(id)info;
- (void)setUserInfo:(id)info;
@end

@implementation MPNowPlayingContentItem

- (void)_mergeContentItem:(id)item
{
  selfCopy = self;
  itemCopy = item;
  [(MPContentItem *)self _mediaRemoteContentItem];
  [itemCopy _mediaRemoteContentItem];

  MRContentItemMerge();
}

- (void)setAlternativeFormats:(id)formats
{
  formatsCopy = formats;
  alternativeFormats = [(MPNowPlayingContentItem *)self alternativeFormats];
  v6 = alternativeFormats;
  if (alternativeFormats != formatsCopy && ([alternativeFormats isEqual:formatsCopy] & 1) == 0)
  {
    _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];
    v8 = [formatsCopy msv_map:&__block_literal_global_223];
    metadata = [_mediaRemoteContentItem metadata];
    [metadata setAlternativeFormats:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__MPNowPlayingContentItem_setAlternativeFormats___block_invoke_4;
    v10[3] = &unk_1E7680D90;
    v11 = formatsCopy;
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
  alternativeFormats = [v2 alternativeFormats];

  v4 = [alternativeFormats msv_map:&__block_literal_global_213_53580];

  return v4;
}

MPNowPlayingInfoAudioFormat *__45__MPNowPlayingContentItem_alternativeFormats__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v2];

  return v3;
}

- (void)setAudioRoute:(id)route
{
  routeCopy = route;
  audioRoute = [(MPNowPlayingContentItem *)self audioRoute];
  v6 = audioRoute;
  if (audioRoute != routeCopy && ([audioRoute isEqual:routeCopy] & 1) == 0)
  {
    _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];
    mediaRemoteAudioRoute = [routeCopy mediaRemoteAudioRoute];
    metadata = [_mediaRemoteContentItem metadata];
    [metadata setAudioRoute:mediaRemoteAudioRoute];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MPNowPlayingContentItem_setAudioRoute___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = routeCopy;
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
  audioRoute = [v2 audioRoute];

  v4 = audioRoute;
  v5 = [[MPNowPlayingInfoAudioRoute alloc] initWithMediaRemoteAudioRoute:v4];

  return v5;
}

- (void)setFormatTierPreference:(unint64_t)preference
{
  if ([(MPNowPlayingContentItem *)self formatTierPreference]!= preference)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setFormatTierPreference:preference & 0x1F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__MPNowPlayingContentItem_setFormatTierPreference___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = preference;
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
  formatTierPreference = [v2 formatTierPreference];

  return formatTierPreference & 0x1F;
}

- (void)setActiveFormatJustification:(int64_t)justification
{
  if ([(MPNowPlayingContentItem *)self activeFormatJustification]!= justification)
  {
    _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];
    if (justification == 1000)
    {
      v6 = 1000;
    }

    else
    {
      v6 = 0;
    }

    if (justification == 501)
    {
      v6 = 501;
    }

    if (justification == 500)
    {
      v6 = 500;
    }

    if (justification == 101)
    {
      v7 = 101;
    }

    else
    {
      v7 = 0;
    }

    if (justification == 100)
    {
      v7 = 100;
    }

    if (justification == 1)
    {
      v7 = 1;
    }

    if (justification <= 499)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    metadata = [_mediaRemoteContentItem metadata];
    [metadata setActiveFormatJustification:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__MPNowPlayingContentItem_setActiveFormatJustification___block_invoke_3;
    v10[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v10[4] = justification;
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
  activeFormatJustification = [v2 activeFormatJustification];

  if (activeFormatJustification == 1000)
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  if (activeFormatJustification == 501)
  {
    v4 = 501;
  }

  if (activeFormatJustification == 500)
  {
    v4 = 500;
  }

  if (activeFormatJustification == 101)
  {
    v5 = 101;
  }

  else
  {
    v5 = 0;
  }

  if (activeFormatJustification == 100)
  {
    v5 = 100;
  }

  if (activeFormatJustification == 1)
  {
    v5 = 1;
  }

  if (activeFormatJustification <= 499)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)setActiveFormat:(id)format
{
  formatCopy = format;
  activeFormat = [(MPNowPlayingContentItem *)self activeFormat];
  v6 = activeFormat;
  if (activeFormat != formatCopy && ([activeFormat isEqual:formatCopy] & 1) == 0)
  {
    _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];
    mediaRemoteAudioFormat = [formatCopy mediaRemoteAudioFormat];
    metadata = [_mediaRemoteContentItem metadata];
    [metadata setActiveFormat:mediaRemoteAudioFormat];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__MPNowPlayingContentItem_setActiveFormat___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = formatCopy;
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
  activeFormat = [v2 activeFormat];

  v4 = activeFormat;
  v5 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v4];

  return v5;
}

- (void)setPreferredFormat:(id)format
{
  formatCopy = format;
  preferredFormat = [(MPNowPlayingContentItem *)self preferredFormat];
  v6 = preferredFormat;
  if (preferredFormat != formatCopy && ([preferredFormat isEqual:formatCopy] & 1) == 0)
  {
    _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];
    mediaRemoteAudioFormat = [formatCopy mediaRemoteAudioFormat];
    metadata = [_mediaRemoteContentItem metadata];
    [metadata setPreferredFormat:mediaRemoteAudioFormat];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MPNowPlayingContentItem_setPreferredFormat___block_invoke_3;
    v10[3] = &unk_1E7680D90;
    v11 = formatCopy;
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
  preferredFormat = [v2 preferredFormat];

  v4 = preferredFormat;
  v5 = [[MPNowPlayingInfoAudioFormat alloc] initWithMediaRemoteAudioFormat:v4];

  return v5;
}

- (void)setPlaylistTraits:(unint64_t)traits
{
  if ([(MPNowPlayingContentItem *)self playlistTraits]!= traits)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setPlaylistTraits:traits & 0x138];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__MPNowPlayingContentItem_setPlaylistTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = traits;
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
  playlistTraits = [v2 playlistTraits];

  return playlistTraits & 0x138;
}

- (void)setAlbumTraits:(unint64_t)traits
{
  if ([(MPNowPlayingContentItem *)self albumTraits]!= traits)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setAlbumTraits:traits & 0x3F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__MPNowPlayingContentItem_setAlbumTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = traits;
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
  albumTraits = [v2 albumTraits];

  return albumTraits & 0x3F;
}

- (void)setSongTraits:(unint64_t)traits
{
  if ([(MPNowPlayingContentItem *)self songTraits]!= traits)
  {
    v5 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    [v5 setSongTraits:traits & 0x3F];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__MPNowPlayingContentItem_setSongTraits___block_invoke_3;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = traits;
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
  songTraits = [v2 songTraits];

  return songTraits & 0x3F;
}

- (void)invalidateArtwork
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeArtwork();
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setArtwork:(id)artwork
{
  v5.receiver = self;
  v5.super_class = MPNowPlayingContentItem;
  [(MPContentItem *)&v5 setArtwork:?];
  [(MPNowPlayingContentItem *)self setHasArtwork:artwork != 0];
}

- (void)setHasArtwork:(BOOL)artwork
{
  if ([(MPNowPlayingContentItem *)self hasArtwork]!= artwork)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasArtworkData();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MPNowPlayingContentItem_setHasArtwork___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    artworkCopy = artwork;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasArtwork
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA10](_mediaRemoteContentItem);
}

- (void)invalidateLyrics
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeLyrics();
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setLyrics:(id)lyrics
{
  lyricsCopy = lyrics;
  lyrics = [(MPNowPlayingContentItem *)self lyrics];
  [(MPContentItem *)self _mediaRemoteContentItem];
  [lyricsCopy mediaRemoteLyricsItem];
  MRContentItemSetLyrics();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MPNowPlayingContentItem_setLyrics___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = lyricsCopy;
  v6 = lyricsCopy;
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

- (void)setHasLyrics:(BOOL)lyrics
{
  if ([(MPNowPlayingContentItem *)self hasLyrics]!= lyrics)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasLyrics();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MPNowPlayingContentItem_setHasLyrics___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    lyricsCopy = lyrics;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasLyrics
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA30](_mediaRemoteContentItem);
}

- (void)invalidateDescription
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeInfo();
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setHasDescription:(BOOL)description
{
  if ([(MPNowPlayingContentItem *)self hasDescription]!= description)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasInfo();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setHasDescription___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    descriptionCopy = description;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasDescription
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA20](_mediaRemoteContentItem);
}

- (void)setSections:(id)sections
{
  v21 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  sections = [(MPNowPlayingContentItem *)self sections];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = sectionsCopy;
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
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeSections();
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)invalidateLanguageOptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  MRPlaybackQueueRequestSetIncludeLanguageOptions();
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setCurrentLanguageOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  currentLanguageOptions = [(MPNowPlayingContentItem *)self currentLanguageOptions];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = optionsCopy;
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

- (void)setAvailableLanguageOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  availableLanguageOptions = [(MPNowPlayingContentItem *)self availableLanguageOptions];
  [(MPContentItem *)self _mediaRemoteContentItem];
  v6 = optionsCopy;
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

- (void)setHasLanguageOptions:(BOOL)options
{
  if ([(MPNowPlayingContentItem *)self hasLanguageOptions]!= options)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasLanguageOptions();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__MPNowPlayingContentItem_setHasLanguageOptions___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    optionsCopy = options;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasLanguageOptions
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA28](_mediaRemoteContentItem);
}

- (void)invalidateTranscriptAlignments
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifier = [(MPContentItem *)self identifier];
  v11[0] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v4 = MRPlaybackQueueRequestCreateWithIdentifiers();

  [v4 setIncludeAlignments:1];
  identifier2 = [(MPContentItem *)self identifier];
  v6 = MRContentItemCreate();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_MPContentItemDidChangeUserInfoKeyDeltaRequest";
  v9[1] = @"_MPContentItemDidChangeUserInfoKeyDeltaItem";
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v8];

  CFRelease(v4);
  CFRelease(v6);
}

- (void)setTranscriptAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  transcriptAlignments = [(MPNowPlayingContentItem *)self transcriptAlignments];
  [(MPContentItem *)self _mediaRemoteContentItem];
  [alignmentsCopy msv_map:&__block_literal_global_58_53595];
  MRContentItemSetTranscriptAlignments();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MPNowPlayingContentItem_setTranscriptAlignments___block_invoke_3;
  v7[3] = &unk_1E7680D90;
  v8 = alignmentsCopy;
  v6 = alignmentsCopy;
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

- (void)setHasTranscriptAlignments:(BOOL)alignments
{
  if ([(MPNowPlayingContentItem *)self hasTranscriptAlignments]!= alignments)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetHasTranscriptAlignments();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__MPNowPlayingContentItem_setHasTranscriptAlignments___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    alignmentsCopy = alignments;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)hasTranscriptAlignments
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA40](_mediaRemoteContentItem);
}

- (void)setElapsedTime:(double)time playbackRate:(float)rate
{
  v7 = _AXSHapticMusicEnabled();
  [(MPNowPlayingContentItem *)self playbackRate];
  v9 = v8 - rate;
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

  v12 = v11 - time;
  if (v12 < 0.0)
  {
    v12 = -v12;
  }

  if (v12 > dbl_1A273DE40[v7 == 0] || !self->_didSetElapsedTime)
  {
LABEL_9:
    [(MPNowPlayingContentItem *)self setElapsedTime:time];
    *&v13 = rate;
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

- (void)setNowPlayingInfo:(id)info
{
  v5 = self->_nowPlayingInfo;
  selfCopy = self;
  infoCopy = info;
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

- (void)setMediaType:(unint64_t)type
{
  if ([(MPNowPlayingContentItem *)self mediaType]!= type)
  {
    if (type)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * ((type & 0xFF00) != 0);
    }

    v6 = 1;
    if (type > 511)
    {
      if (type > 2047)
      {
        if (type == 2048)
        {
          goto LABEL_25;
        }

        if (type != 4096)
        {
          if (type == 0x2000)
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

      if (type == 512)
      {
        v6 = 2;
        goto LABEL_25;
      }

      if (type != 1024)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (type > 3)
      {
        if (type == 4)
        {
          v6 = 5;
          goto LABEL_25;
        }

        if (type != 8)
        {
          if (type == 256)
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

      if (type == 1)
      {
        goto LABEL_25;
      }

      if (type != 2)
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

- (void)setTransitionInfo:(id)info
{
  infoCopy = info;
  transitionInfo = [(MPNowPlayingContentItem *)self transitionInfo];
  [(MPContentItem *)self _mediaRemoteContentItem];
  MRContentItemSetTransitionInfo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPNowPlayingContentItem_setTransitionInfo___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = infoCopy;
  v6 = infoCopy;
  [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
}

- (NSDictionary)transitionInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyTransitionInfo();

  return v2;
}

- (void)setCollectionInfo:(id)info
{
  infoCopy = info;
  collectionInfo = [(MPNowPlayingContentItem *)self collectionInfo];
  [(MPContentItem *)self _mediaRemoteContentItem];
  MPNowPlayingCollectionInfoToMediaRemote(infoCopy);
  MRContentItemSetCollectionInfo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPNowPlayingContentItem_setCollectionInfo___block_invoke_2;
  v7[3] = &unk_1E7680D90;
  v8 = infoCopy;
  v6 = infoCopy;
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

- (void)setPlaybackRate:(float)rate
{
  [(MPNowPlayingContentItem *)self playbackRate];
  v6 = v5 - rate;
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
    rateCopy = rate;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (float)playbackRate
{
  [(MPContentItem *)self _mediaRemoteContentItem];

  MRContentItemGetPlaybackRate();
  return result;
}

- (void)setElapsedTime:(double)time
{
  [(MPNowPlayingContentItem *)self elapsedTime];
  v6 = v5 - time;
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
    *&v8[4] = time;
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
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9E8](_mediaRemoteContentItem);
  return result;
}

- (void)setEditingStyleFlags:(int64_t)flags
{
  if ([(MPNowPlayingContentItem *)self editingStyleFlags]!= flags)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEditingStyleFlags();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__MPNowPlayingContentItem_setEditingStyleFlags___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = flags;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (void)setEpisodeType:(int64_t)type
{
  if ([(MPNowPlayingContentItem *)self episodeType]!= type)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEpisodeType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__MPNowPlayingContentItem_setEpisodeType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = type;
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

- (void)setRadioStationType:(int64_t)type
{
  if ([(MPNowPlayingContentItem *)self radioStationType]!= type)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__MPNowPlayingContentItem_setRadioStationType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = type;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (void)setPlaylistType:(int64_t)type
{
  if ([(MPNowPlayingContentItem *)self playlistType]!= type)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlaylistType();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setPlaylistType___block_invoke_2;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = type;
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

- (void)setRemoteArtworks:(id)artworks
{
  artworksCopy = artworks;
  remoteArtworks = [(MPNowPlayingContentItem *)self remoteArtworks];
  if (remoteArtworks == artworksCopy)
  {
    goto LABEL_4;
  }

  v6 = [artworksCopy isEqual:remoteArtworks];

  if ((v6 & 1) == 0)
  {
    v7 = [artworksCopy msv_mapValues:&__block_literal_global_6];
    [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__MPNowPlayingContentItem_setRemoteArtworks___block_invoke_2;
    v8[3] = &unk_1E7680D90;
    v9 = v7;
    remoteArtworks = v7;
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

- (void)setSupportedRemoteArtworkFormats:(id)formats
{
  formatsCopy = formats;
  supportedRemoteArtworkFormats = [(MPNowPlayingContentItem *)self supportedRemoteArtworkFormats];
  v6 = supportedRemoteArtworkFormats;
  if (supportedRemoteArtworkFormats == formatsCopy)
  {
  }

  else
  {
    v7 = [formatsCopy isEqual:supportedRemoteArtworkFormats];

    if ((v7 & 1) == 0)
    {
      [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__MPNowPlayingContentItem_setSupportedRemoteArtworkFormats___block_invoke;
      v8[3] = &unk_1E7680D90;
      v9 = formatsCopy;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];
    }
  }
}

- (NSArray)supportedRemoteArtworkFormats
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return [_mediaRemoteContentItem availableRemoteArtworkFormats];
}

- (void)setSubtitleShort:(id)short
{
  shortCopy = short;
  subtitleShort = [(MPNowPlayingContentItem *)self subtitleShort];
  v6 = subtitleShort;
  if (subtitleShort == shortCopy)
  {
  }

  else
  {
    v7 = [shortCopy isEqual:subtitleShort];

    if ((v7 & 1) == 0)
    {
      v8 = [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      [v8 setSubtitleShort:shortCopy];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MPNowPlayingContentItem_setSubtitleShort___block_invoke;
      v9[3] = &unk_1E7680D90;
      v10 = shortCopy;
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
  subtitleShort = [v2 subtitleShort];

  return subtitleShort;
}

- (void)setAssociatedParticipantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedParticipantIdentifier = [(MPNowPlayingContentItem *)self associatedParticipantIdentifier];
  v6 = associatedParticipantIdentifier;
  if (associatedParticipantIdentifier == identifierCopy)
  {
  }

  else
  {
    v7 = [identifierCopy isEqual:associatedParticipantIdentifier];

    if ((v7 & 1) == 0)
    {
      [-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__MPNowPlayingContentItem_setAssociatedParticipantIdentifier___block_invoke;
      v8[3] = &unk_1E7680D90;
      v9 = identifierCopy;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v8];
    }
  }
}

- (NSString)associatedParticipantIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return [_mediaRemoteContentItem associatedParticipantIdentifier];
}

- (void)setStoreAlbumArtistID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self storeAlbumArtistID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreAlbumArtistIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__MPNowPlayingContentItem_setStoreAlbumArtistID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeAlbumArtistID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA48](_mediaRemoteContentItem);
}

- (void)setLyricsAdamID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self lyricsAdamID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLyricsAdamID();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setLyricsAdamID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)lyricsAdamID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAE8](_mediaRemoteContentItem);
}

- (void)setReportingAdamID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self reportingAdamID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetReportingAdamID();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MPNowPlayingContentItem_setReportingAdamID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)reportingAdamID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB50](_mediaRemoteContentItem);
}

- (void)setLegacyUniqueID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self legacyUniqueID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLegacyUniqueIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setLegacyUniqueID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)legacyUniqueID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAC8](_mediaRemoteContentItem);
}

- (void)setStoreSubscriptionID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self storeSubscriptionID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreSubscriptionIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__MPNowPlayingContentItem_setStoreSubscriptionID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeSubscriptionID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA68](_mediaRemoteContentItem);
}

- (void)setStoreID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self storeID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__MPNowPlayingContentItem_setStoreID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA60](_mediaRemoteContentItem);
}

- (void)setStoreArtistID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self storeArtistID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreArtistIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MPNowPlayingContentItem_setStoreArtistID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeArtistID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA58](_mediaRemoteContentItem);
}

- (void)setStoreAlbumID:(int64_t)d
{
  if ([(MPNowPlayingContentItem *)self storeAlbumID]!= d)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetITunesStoreAlbumIdentifier();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setStoreAlbumID___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = d;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)storeAlbumID
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA50](_mediaRemoteContentItem);
}

- (void)setNumberOfChildren:(int64_t)children
{
  if ([(MPNowPlayingContentItem *)self numberOfChildren]!= children)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetNumberOfSections();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__MPNowPlayingContentItem_setNumberOfChildren___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = children;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }

  [(MPNowPlayingContentItem *)self invalidateSections];
}

- (int64_t)numberOfChildren
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB00](_mediaRemoteContentItem);
}

- (void)setInTransition:(BOOL)transition
{
  if (-[MPNowPlayingContentItem isInTransition](self, "isInTransition") != transition || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasInTransition"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsInTransition();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setInTransition___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    transitionCopy = transition;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isInTransition
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAA0](_mediaRemoteContentItem);
}

- (void)setLoading:(BOOL)loading
{
  if (-[MPNowPlayingContentItem isLoading](self, "isLoading") != loading || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasLoading"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsLoading();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__MPNowPlayingContentItem_setLoading___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    loadingCopy = loading;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isLoading
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAA8](_mediaRemoteContentItem);
}

- (void)setSteerable:(BOOL)steerable
{
  if (-[MPNowPlayingContentItem isSteerable](self, "isSteerable") != steerable || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasSteerable"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsSteerable();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setSteerable___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    steerableCopy = steerable;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isSteerable
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAB8](_mediaRemoteContentItem);
}

- (void)setAdvertisement:(BOOL)advertisement
{
  if (-[MPNowPlayingContentItem isAdvertisement](self, "isAdvertisement") != advertisement || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasAdvertisement"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsAdvertisement();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__MPNowPlayingContentItem_setAdvertisement___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    advertisementCopy = advertisement;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isAdvertisement
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA80](_mediaRemoteContentItem);
}

- (void)setAlwaysLiveItem:(BOOL)item
{
  if (-[MPNowPlayingContentItem isAlwaysLiveItem](self, "isAlwaysLiveItem") != item || ([-[MPContentItem _mediaRemoteContentItem](self "_mediaRemoteContentItem")], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasAlwaysLive"), v5, (v6 & 1) == 0))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsAlwaysLive();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MPNowPlayingContentItem_setAlwaysLiveItem___block_invoke;
    v7[3] = &__block_descriptor_33_e9_v16__0_v8l;
    itemCopy = item;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (BOOL)isAlwaysLiveItem
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA88](_mediaRemoteContentItem);
}

- (void)setServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceIdentifier = [(MPNowPlayingContentItem *)self serviceIdentifier];
  v6 = serviceIdentifier;
  if (serviceIdentifier != identifierCopy && ![serviceIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetServiceIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setServiceIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)serviceIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB70](_mediaRemoteContentItem);
}

- (void)setExternalContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  externalContentIdentifier = [(MPNowPlayingContentItem *)self externalContentIdentifier];
  v6 = externalContentIdentifier;
  if (externalContentIdentifier != identifierCopy && ![externalContentIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetContentIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__MPNowPlayingContentItem_setExternalContentIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)externalContentIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9A8](_mediaRemoteContentItem);
}

- (void)setRadioStationStringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  radioStationStringIdentifier = [(MPNowPlayingContentItem *)self radioStationStringIdentifier];
  v6 = radioStationStringIdentifier;
  if (radioStationStringIdentifier != identifierCopy && ![radioStationStringIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationString();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__MPNowPlayingContentItem_setRadioStationStringIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)radioStationStringIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB38](_mediaRemoteContentItem);
}

- (void)setGenreName:(id)name
{
  nameCopy = name;
  genreName = [(MPNowPlayingContentItem *)self genreName];
  v6 = genreName;
  if (genreName != nameCopy && ![genreName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetGenre();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setGenreName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)genreName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA08](_mediaRemoteContentItem);
}

- (void)setComposerName:(id)name
{
  nameCopy = name;
  composerName = [(MPNowPlayingContentItem *)self composerName];
  v6 = composerName;
  if (composerName != nameCopy && ![composerName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetComposer();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setComposerName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)composerName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9A0](_mediaRemoteContentItem);
}

- (void)setTrackNumber:(int64_t)number
{
  if ([(MPNowPlayingContentItem *)self trackNumber]!= number)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTrackNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__MPNowPlayingContentItem_setTrackNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = number;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)trackNumber
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CBA8](_mediaRemoteContentItem);
}

- (void)setTotalTrackCount:(int64_t)count
{
  if ([(MPNowPlayingContentItem *)self totalTrackCount]!= count)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTotalTrackCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MPNowPlayingContentItem_setTotalTrackCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = count;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)totalTrackCount
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB98](_mediaRemoteContentItem);
}

- (void)setTotalDiscCount:(int64_t)count
{
  if ([(MPNowPlayingContentItem *)self totalDiscCount]!= count)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTotalDiscCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MPNowPlayingContentItem_setTotalDiscCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = count;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)totalDiscCount
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB90](_mediaRemoteContentItem);
}

- (void)setSeasonNumber:(int64_t)number
{
  if ([(MPNowPlayingContentItem *)self seasonNumber]!= number)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetSeasonNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__MPNowPlayingContentItem_setSeasonNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = number;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)seasonNumber
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB58](_mediaRemoteContentItem);
}

- (void)setPlayCount:(int64_t)count
{
  if ([(MPNowPlayingContentItem *)self playCount]!= count)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlayCount();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MPNowPlayingContentItem_setPlayCount___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = count;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)playCount
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB08](_mediaRemoteContentItem);
}

- (void)setEpisodeNumber:(int64_t)number
{
  if ([(MPNowPlayingContentItem *)self episodeNumber]!= number)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetEpisodeNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MPNowPlayingContentItem_setEpisodeNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = number;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)episodeNumber
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9F8](_mediaRemoteContentItem);
}

- (void)setDiscNumber:(int64_t)number
{
  if ([(MPNowPlayingContentItem *)self discNumber]!= number)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDiscNumber();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MPNowPlayingContentItem_setDiscNumber___block_invoke;
    v5[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v5[4] = number;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (int64_t)discNumber
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9C8](_mediaRemoteContentItem);
}

- (void)setDefaultPlaybackRate:(float)rate
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

  rateCopy = -rate;
  if (rate >= 0.0)
  {
    rateCopy = rate;
  }

  if (rateCopy > 0.00000011921)
  {
LABEL_7:
    v8 = v5 - rate;
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
      rateCopy2 = rate;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (float)defaultPlaybackRate
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9B8](_mediaRemoteContentItem);
  return result;
}

- (void)setStartTime:(double)time
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

  timeCopy = -time;
  if (time >= 0.0)
  {
    timeCopy = time;
  }

  if (timeCopy > 2.22044605e-16)
  {
LABEL_7:
    v8 = v5 - time;
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
      *&v9[4] = time;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (double)startTime
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1CB78](_mediaRemoteContentItem);
  return result;
}

- (void)setDuration:(double)duration
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

  durationCopy = -duration;
  if (duration >= 0.0)
  {
    durationCopy = duration;
  }

  if (durationCopy > 2.22044605e-16)
  {
LABEL_7:
    v8 = v5 - duration;
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
      *&v9[4] = duration;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (double)duration
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1C9D0](_mediaRemoteContentItem);
  return result;
}

- (void)setDurationStringLocalizationKey:(id)key
{
  keyCopy = key;
  durationStringLocalizationKey = [(MPNowPlayingContentItem *)self durationStringLocalizationKey];
  v6 = durationStringLocalizationKey;
  if (durationStringLocalizationKey != keyCopy && ![durationStringLocalizationKey isEqual:keyCopy] || !(keyCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDurationStringLocalizationKey();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MPNowPlayingContentItem_setDurationStringLocalizationKey___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = keyCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)durationStringLocalizationKey
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9D8](_mediaRemoteContentItem);
}

- (void)setLocalizedDurationString:(id)string
{
  stringCopy = string;
  localizedDurationString = [(MPNowPlayingContentItem *)self localizedDurationString];
  v6 = localizedDurationString;
  if (localizedDurationString != stringCopy && ![localizedDurationString isEqual:stringCopy] || !(stringCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLocalizedDurationString();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MPNowPlayingContentItem_setLocalizedDurationString___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = stringCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)localizedDurationString
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAD8](_mediaRemoteContentItem);
}

- (void)setArtworkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  artworkIdentifier = [(MPNowPlayingContentItem *)self artworkIdentifier];
  v6 = artworkIdentifier;
  if (artworkIdentifier != identifierCopy && ![artworkIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setArtworkIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)artworkIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C970](_mediaRemoteContentItem);
}

- (void)setArtworkURLTemplates:(id)templates
{
  templatesCopy = templates;
  artworkURLTemplates = [(MPNowPlayingContentItem *)self artworkURLTemplates];
  v6 = artworkURLTemplates;
  if (artworkURLTemplates != templatesCopy && ![artworkURLTemplates isEqual:templatesCopy] || !(templatesCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkURLTemplates();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MPNowPlayingContentItem_setArtworkURLTemplates___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = templatesCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSArray)artworkURLTemplates
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C980](_mediaRemoteContentItem);
}

- (void)setArtworkURL:(id)l
{
  lCopy = l;
  artworkURL = [(MPNowPlayingContentItem *)self artworkURL];
  v6 = artworkURL;
  if (artworkURL != lCopy && ![artworkURL isEqual:lCopy] || !(lCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetArtworkURL();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MPNowPlayingContentItem_setArtworkURL___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = lCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)artworkURL
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C978](_mediaRemoteContentItem);
}

- (void)setTrackArtistName:(id)name
{
  nameCopy = name;
  trackArtistName = [(MPNowPlayingContentItem *)self trackArtistName];
  v6 = trackArtistName;
  if (trackArtistName != nameCopy && ![trackArtistName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTrackArtistName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__MPNowPlayingContentItem_setTrackArtistName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)trackArtistName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CBA0](_mediaRemoteContentItem);
}

- (void)setSeriesName:(id)name
{
  nameCopy = name;
  seriesName = [(MPNowPlayingContentItem *)self seriesName];
  v6 = seriesName;
  if (seriesName != nameCopy && ![seriesName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetSeriesName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MPNowPlayingContentItem_setSeriesName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)seriesName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB68](_mediaRemoteContentItem);
}

- (void)setRadioStationName:(id)name
{
  nameCopy = name;
  radioStationName = [(MPNowPlayingContentItem *)self radioStationName];
  v6 = radioStationName;
  if (radioStationName != nameCopy && ![radioStationName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetRadioStationName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__MPNowPlayingContentItem_setRadioStationName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)radioStationName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB30](_mediaRemoteContentItem);
}

- (void)setProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  profileIdentifier = [(MPNowPlayingContentItem *)self profileIdentifier];
  v6 = profileIdentifier;
  if (profileIdentifier != identifierCopy && ![profileIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetProfileIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MPNowPlayingContentItem_setProfileIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)profileIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB28](_mediaRemoteContentItem);
}

- (void)setLocalizedContentRating:(id)rating
{
  ratingCopy = rating;
  localizedContentRating = [(MPNowPlayingContentItem *)self localizedContentRating];
  v6 = localizedContentRating;
  if (localizedContentRating != ratingCopy && ![localizedContentRating isEqual:ratingCopy] || !(ratingCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetLocalizedContentRating();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MPNowPlayingContentItem_setLocalizedContentRating___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = ratingCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)localizedContentRating
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAD0](_mediaRemoteContentItem);
}

- (void)setInfo:(id)info
{
  infoCopy = info;
  info = [(MPNowPlayingContentItem *)self info];
  v6 = info;
  if (info != infoCopy && ![info isEqual:infoCopy] || !(infoCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__MPNowPlayingContentItem_setInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = infoCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)info
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA78](_mediaRemoteContentItem);
}

- (void)setDirectorName:(id)name
{
  nameCopy = name;
  directorName = [(MPNowPlayingContentItem *)self directorName];
  v6 = directorName;
  if (directorName != nameCopy && ![directorName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDirectorName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MPNowPlayingContentItem_setDirectorName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)directorName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C9C0](_mediaRemoteContentItem);
}

- (void)setCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collectionIdentifier = [(MPNowPlayingContentItem *)self collectionIdentifier];
  v6 = collectionIdentifier;
  if (collectionIdentifier != identifierCopy && ![collectionIdentifier isEqual:identifierCopy] || !(identifierCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetCollectionIdentifier();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__MPNowPlayingContentItem_setCollectionIdentifier___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = identifierCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)collectionIdentifier
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C998](_mediaRemoteContentItem);
}

- (void)setAlbumYear:(id)year
{
  yearCopy = year;
  albumYear = [(MPNowPlayingContentItem *)self albumYear];
  v6 = albumYear;
  if (albumYear != yearCopy && ![albumYear isEqual:yearCopy] || !(yearCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumYear();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setAlbumYear___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = yearCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumYear
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyAlbumYear();

  return v2;
}

- (void)setAlbumName:(id)name
{
  nameCopy = name;
  albumName = [(MPNowPlayingContentItem *)self albumName];
  v6 = albumName;
  if (albumName != nameCopy && ![albumName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MPNowPlayingContentItem_setAlbumName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C960](_mediaRemoteContentItem);
}

- (void)setAlbumArtistName:(id)name
{
  nameCopy = name;
  albumArtistName = [(MPNowPlayingContentItem *)self albumArtistName];
  v6 = albumArtistName;
  if (albumArtistName != nameCopy && ![albumArtistName isEqual:nameCopy] || !(nameCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetAlbumArtistName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__MPNowPlayingContentItem_setAlbumArtistName___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = nameCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)albumArtistName
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1C958](_mediaRemoteContentItem);
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  userInfo = [(MPNowPlayingContentItem *)self userInfo];
  v6 = userInfo;
  if (userInfo != infoCopy && ![userInfo isEqual:infoCopy] || !(infoCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetUserInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__MPNowPlayingContentItem_setUserInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = infoCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDictionary)userInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyUserInfo();

  return v2;
}

- (void)setDeviceSpecificUserInfo:(id)info
{
  infoCopy = info;
  deviceSpecificUserInfo = [(MPNowPlayingContentItem *)self deviceSpecificUserInfo];
  v6 = deviceSpecificUserInfo;
  if (deviceSpecificUserInfo != infoCopy && ![deviceSpecificUserInfo isEqual:infoCopy] || !(infoCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetDeviceSpecificUserInfo();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MPNowPlayingContentItem_setDeviceSpecificUserInfo___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = infoCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDictionary)deviceSpecificUserInfo
{
  [(MPContentItem *)self _mediaRemoteContentItem];
  v2 = MRContentItemCopyDeviceSpecificUserInfo();

  return v2;
}

- (void)setReleaseDate:(id)date
{
  dateCopy = date;
  releaseDate = [(MPNowPlayingContentItem *)self releaseDate];
  v6 = releaseDate;
  if (releaseDate != dateCopy && ![releaseDate isEqual:dateCopy] || !(dateCopy | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetReleaseDate();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__MPNowPlayingContentItem_setReleaseDate___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = dateCopy;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSDate)releaseDate
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB48](_mediaRemoteContentItem);
}

- (id)copyWithNewIdentifier:(id)identifier
{
  selfCopy = self;
  identifierCopy = identifier;
  [(MPContentItem *)self _mediaRemoteContentItem];
  v7 = MRContentItemCopyWithIdentifier();

  v8 = [objc_alloc(objc_opt_class()) _initWithMediaRemoteContentItem:v7];
  CFRelease(v7);
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x1A58DDC00]([(MPContentItem *)self _mediaRemoteContentItem]);
  v4 = [objc_alloc(objc_opt_class()) _initWithMediaRemoteContentItem:v3];
  CFRelease(v3);
  return v4;
}

@end