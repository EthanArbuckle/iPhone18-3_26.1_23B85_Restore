@interface MTEpisode
+ (id)dateLabelDescriptionForEpisode:(id)episode download:(id)download;
+ (int64_t)downloadSizeLimitForEpisode:(id)episode;
+ (int64_t)downloadSizeLimitForVideo:(BOOL)video;
- (BOOL)isCurrentPlayerItem;
- (BOOL)isEpisodeVisited;
- (void)didChangePersistentID;
- (void)setAuthor:(id)author;
- (void)setGuid:(id)guid;
- (void)setPlayCount:(int64_t)count;
- (void)setPlayhead:(float)playhead;
- (void)setTitle:(id)title;
- (void)updateUPPIdentifierIfNeeded;
@end

@implementation MTEpisode

+ (id)dateLabelDescriptionForEpisode:(id)episode download:(id)download
{
  episodeCopy = episode;
  downloadCopy = download;
  if (downloadCopy)
  {
    v7 = +[MTReachability sharedInstance];
    reasonForNoInternet = [v7 reasonForNoInternet];

    v9 = [MTEpisode downloadSizeLimitForEpisode:episodeCopy];
    if ([downloadCopy downloadBytes] <= v9)
    {
      isReachableViaCellular = 0;
    }

    else
    {
      v10 = +[MTReachability sharedInstance];
      isReachableViaCellular = [v10 isReachableViaCellular];
    }

    if ((reasonForNoInternet & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = +[MTReachability sharedInstance];
      reasonTextForNoInternet = [v12 reasonTextForNoInternet];
LABEL_23:
      downloadDescription = reasonTextForNoInternet;

      goto LABEL_24;
    }

    if ((reasonForNoInternet == 2) | isReachableViaCellular & 1)
    {
      v14 = MGGetBoolAnswer();
      v15 = @"WIFI_CONNECT_RESUME";
      if (v14)
      {
        v15 = @"WLAN_CONNECT_RESUME";
      }

      v16 = v15;
      v17 = +[NSBundle mainBundle];
      downloadDescription = [v17 localizedStringForKey:v16 value:&stru_1004F3018 table:0];

      goto LABEL_24;
    }
  }

  downloadPhase = [downloadCopy downloadPhase];
  downloadDescription = 0;
  if (downloadPhase > 2)
  {
    switch(downloadPhase)
    {
      case 3:
        v20 = +[NSBundle mainBundle];
        v12 = v20;
        v21 = @"TAP_TO_RESUME_DOWNLOAD";
        break;
      case 4:
        v20 = +[NSBundle mainBundle];
        v12 = v20;
        v21 = @"Waiting";
        break;
      case 5:
        v20 = +[NSBundle mainBundle];
        v12 = v20;
        v21 = @"DOWNLOAD_ERROR_TAP_TO_RETRY";
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (downloadPhase == 1)
  {
    v20 = +[NSBundle mainBundle];
    v12 = v20;
    v21 = @"Preparing to download...";
LABEL_22:
    reasonTextForNoInternet = [v20 localizedStringForKey:v21 value:&stru_1004F3018 table:0];
    goto LABEL_23;
  }

  if (downloadPhase == 2)
  {
    downloadDescription = [downloadCopy downloadDescription];
  }

LABEL_24:

  return downloadDescription;
}

+ (int64_t)downloadSizeLimitForEpisode:(id)episode
{
  isVideo = [episode isVideo];

  return [self downloadSizeLimitForVideo:isVideo];
}

+ (int64_t)downloadSizeLimitForVideo:(BOOL)video
{
  v4 = +[IMURLBag sharedInstance];
  v5 = v4;
  if (video)
  {
    downloadLimitVideoPodcast = [v4 downloadLimitVideoPodcast];
  }

  else
  {
    downloadLimitVideoPodcast = [v4 downloadLimitPodcast];
  }

  v7 = downloadLimitVideoPodcast;

  return v7;
}

- (void)setGuid:(id)guid
{
  guidCopy = guid;
  guid = [(MTEpisode *)self guid];
  v5 = guidCopy | guid;

  if (v5)
  {
    guid2 = [(MTEpisode *)self guid];
    v7 = [guid2 isEqualToString:guidCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeGuid;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeGuid];
      [(MTEpisode *)self setPrimitiveValue:guidCopy forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      [(MTEpisode *)self updateUPPIdentifierIfNeeded];
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(MTEpisode *)self title];
  v5 = titleCopy | title;

  if (v5)
  {
    title2 = [(MTEpisode *)self title];
    v7 = [title2 isEqualToString:titleCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeTitle;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeTitle];
      [(MTEpisode *)self setPrimitiveValue:titleCopy forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      guid = [(MTEpisode *)self guid];

      if (!guid)
      {
        [(MTEpisode *)self updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  author = [(MTEpisode *)self author];
  v5 = authorCopy | author;

  if (v5)
  {
    author2 = [(MTEpisode *)self author];
    v7 = [author2 isEqualToString:authorCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeAuthor;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeAuthor];
      [(MTEpisode *)self setPrimitiveValue:authorCopy forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      guid = [(MTEpisode *)self guid];

      if (!guid)
      {
        [(MTEpisode *)self updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)didChangePersistentID
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  playlists = [(MTEpisode *)self playlists];
  v3 = [playlists countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(playlists);
        }

        [*(*(&v7 + 1) + 8 * v6) updateUnplayedCount];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [playlists countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setPlayCount:(int64_t)count
{
  if ([(MTEpisode *)self playCount]!= count)
  {
    v5 = kEpisodePlayCount;
    [(MTEpisode *)self willChangeValueForKey:kEpisodePlayCount];
    v6 = [NSNumber numberWithLongLong:count];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:v5];

    [(MTEpisode *)self didChangeValueForKey:v5];

    [(MTEpisode *)self updateUPPTimestamp];
  }
}

- (void)setPlayhead:(float)playhead
{
  [(MTEpisode *)self playhead];
  v6 = v5;
  [(MTEpisode *)self playhead];
  if (*&v7 != playhead)
  {
    *&v7 = vabds_f32(v6, playhead);
    if (playhead == 0.0 || *&v7 >= 0.5)
    {
      v9 = kEpisodePlayhead;
      [(MTEpisode *)self willChangeValueForKey:kEpisodePlayhead, v7];
      *&v10 = playhead;
      v11 = [NSNumber numberWithFloat:v10];
      [(MTEpisode *)self setPrimitiveValue:v11 forKey:v9];

      [(MTEpisode *)self didChangeValueForKey:v9];

      [(MTEpisode *)self updateUPPTimestamp];
    }
  }
}

- (BOOL)isCurrentPlayerItem
{
  v3 = +[MTPlayerController defaultInstance];
  uuid = [(MTEpisode *)self uuid];
  v5 = [v3 isPlayingEpisodeUuid:uuid];

  return v5;
}

- (void)updateUPPIdentifierIfNeeded
{
  v3 = _MTLogCategoryUPPSync();
  v4 = os_signpost_id_generate(v3);

  v5 = _MTLogCategoryUPPSync();
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "updateUPPIdentifierIfNeeded", "", buf, 2u);
  }

  v8 = [MTUniversalPlaybackPositionDataSource mediaItemIdentifierForEpisode:self];
  metadataIdentifier = [(MTEpisode *)self metadataIdentifier];
  v10 = [v8 isEqualToString:metadataIdentifier];

  if (v10)
  {
    managedObjectContext = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
    {
      title = [(MTEpisode *)self title];
      uuid = [(MTEpisode *)self uuid];
      metadataIdentifier2 = [(MTEpisode *)self metadataIdentifier];
      *buf = 138543874;
      v33 = title;
      v34 = 2114;
      v35 = uuid;
      v36 = 2114;
      v37 = metadataIdentifier2;
      v15 = "[UpdateUPPID] Skipping, equal metadata identifier: %{public}@, %{public}@, %{public}@";
LABEL_16:
      _os_log_impl(&_mh_execute_header, managedObjectContext, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);

      goto LABEL_17;
    }
  }

  else
  {
    [(MTEpisode *)self setMetadataIdentifier:v8];
    [(MTEpisode *)self metadataTimestamp];
    v17 = v16;
    managedObjectContext = _MTLogCategoryUPPSync();
    v18 = os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT);
    if (v17 == 0.0)
    {
      if (v18)
      {
        title2 = [(MTEpisode *)self title];
        uuid2 = [(MTEpisode *)self uuid];
        metadataIdentifier3 = [(MTEpisode *)self metadataIdentifier];
        *buf = 138543874;
        v33 = title2;
        v34 = 2114;
        v35 = uuid2;
        v36 = 2114;
        v37 = metadataIdentifier3;
        _os_log_impl(&_mh_execute_header, managedObjectContext, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Looking up UPP data for: %{public}@, %{public}@, %{public}@", buf, 0x20u);
      }

      managedObjectContext = [(MTEpisode *)self managedObjectContext];
      title = [managedObjectContext uppMetadataForMetadataIdentifier:v8];
      uuid = _MTLogCategoryUPPSync();
      v22 = os_log_type_enabled(uuid, OS_LOG_TYPE_DEFAULT);
      if (title)
      {
        if (v22)
        {
          title3 = [(MTEpisode *)self title];
          [(MTEpisode *)self uuid];
          v24 = v31 = v4;
          metadataIdentifier4 = [(MTEpisode *)self metadataIdentifier];
          *buf = 138543874;
          v33 = title3;
          v34 = 2114;
          v35 = v24;
          v36 = 2114;
          v37 = metadataIdentifier4;
          _os_log_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Setting UPP data for: %{public}@, %{public}@, %{public}@", buf, 0x20u);

          v4 = v31;
        }

        [MTUniversalPlaybackPositionDataSource updateEpisode:self withUPPMetadata:title];
        goto LABEL_18;
      }

      if (v22)
      {
        title4 = [(MTEpisode *)self title];
        uuid3 = [(MTEpisode *)self uuid];
        metadataIdentifier5 = [(MTEpisode *)self metadataIdentifier];
        *buf = 138543874;
        v33 = title4;
        v34 = 2114;
        v35 = uuid3;
        v36 = 2114;
        v37 = metadataIdentifier5;
        _os_log_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Skipping, no UPP metadata: %{public}@, %{public}@, %{public}@", buf, 0x20u);
      }

LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    if (v18)
    {
      title = [(MTEpisode *)self title];
      uuid = [(MTEpisode *)self uuid];
      metadataIdentifier2 = [(MTEpisode *)self metadataIdentifier];
      *buf = 138543874;
      v33 = title;
      v34 = 2114;
      v35 = uuid;
      v36 = 2114;
      v37 = metadataIdentifier2;
      v15 = "[UpdateUPPID] Skipping, timestamp >0: %{public}@, %{public}@, %{public}@";
      goto LABEL_16;
    }
  }

LABEL_19:

  v26 = _MTLogCategoryUPPSync();
  v27 = v26;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v4, "updateUPPIdentifierIfNeeded", "", buf, 2u);
  }
}

- (BOOL)isEpisodeVisited
{
  if (![(MTEpisode *)self isNew])
  {
    return 1;
  }

  v3 = +[MTVisitedEpisodeManager sharedInstance];
  v4 = [v3 hasEndedVisitingEpisode:self];

  return v4;
}

@end