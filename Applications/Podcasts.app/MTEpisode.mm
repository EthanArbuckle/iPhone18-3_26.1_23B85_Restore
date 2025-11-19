@interface MTEpisode
+ (id)dateLabelDescriptionForEpisode:(id)a3 download:(id)a4;
+ (int64_t)downloadSizeLimitForEpisode:(id)a3;
+ (int64_t)downloadSizeLimitForVideo:(BOOL)a3;
- (BOOL)isCurrentPlayerItem;
- (BOOL)isEpisodeVisited;
- (void)didChangePersistentID;
- (void)setAuthor:(id)a3;
- (void)setGuid:(id)a3;
- (void)setPlayCount:(int64_t)a3;
- (void)setPlayhead:(float)a3;
- (void)setTitle:(id)a3;
- (void)updateUPPIdentifierIfNeeded;
@end

@implementation MTEpisode

+ (id)dateLabelDescriptionForEpisode:(id)a3 download:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[MTReachability sharedInstance];
    v8 = [v7 reasonForNoInternet];

    v9 = [MTEpisode downloadSizeLimitForEpisode:v5];
    if ([v6 downloadBytes] <= v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = +[MTReachability sharedInstance];
      v11 = [v10 isReachableViaCellular];
    }

    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = +[MTReachability sharedInstance];
      v13 = [v12 reasonTextForNoInternet];
LABEL_23:
      v18 = v13;

      goto LABEL_24;
    }

    if ((v8 == 2) | v11 & 1)
    {
      v14 = MGGetBoolAnswer();
      v15 = @"WIFI_CONNECT_RESUME";
      if (v14)
      {
        v15 = @"WLAN_CONNECT_RESUME";
      }

      v16 = v15;
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:v16 value:&stru_1004F3018 table:0];

      goto LABEL_24;
    }
  }

  v19 = [v6 downloadPhase];
  v18 = 0;
  if (v19 > 2)
  {
    switch(v19)
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

  if (v19 == 1)
  {
    v20 = +[NSBundle mainBundle];
    v12 = v20;
    v21 = @"Preparing to download...";
LABEL_22:
    v13 = [v20 localizedStringForKey:v21 value:&stru_1004F3018 table:0];
    goto LABEL_23;
  }

  if (v19 == 2)
  {
    v18 = [v6 downloadDescription];
  }

LABEL_24:

  return v18;
}

+ (int64_t)downloadSizeLimitForEpisode:(id)a3
{
  v4 = [a3 isVideo];

  return [a1 downloadSizeLimitForVideo:v4];
}

+ (int64_t)downloadSizeLimitForVideo:(BOOL)a3
{
  v4 = +[IMURLBag sharedInstance];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 downloadLimitVideoPodcast];
  }

  else
  {
    v6 = [v4 downloadLimitPodcast];
  }

  v7 = v6;

  return v7;
}

- (void)setGuid:(id)a3
{
  v9 = a3;
  v4 = [(MTEpisode *)self guid];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self guid];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeGuid;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeGuid];
      [(MTEpisode *)self setPrimitiveValue:v9 forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      [(MTEpisode *)self updateUPPIdentifierIfNeeded];
    }
  }
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(MTEpisode *)self title];
  v5 = v10 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self title];
    v7 = [v6 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeTitle;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeTitle];
      [(MTEpisode *)self setPrimitiveValue:v10 forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      v9 = [(MTEpisode *)self guid];

      if (!v9)
      {
        [(MTEpisode *)self updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)setAuthor:(id)a3
{
  v10 = a3;
  v4 = [(MTEpisode *)self author];
  v5 = v10 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self author];
    v7 = [v6 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = kEpisodeAuthor;
      [(MTEpisode *)self willChangeValueForKey:kEpisodeAuthor];
      [(MTEpisode *)self setPrimitiveValue:v10 forKey:v8];
      [(MTEpisode *)self didChangeValueForKey:v8];
      v9 = [(MTEpisode *)self guid];

      if (!v9)
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
  v2 = [(MTEpisode *)self playlists];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) updateUnplayedCount];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setPlayCount:(int64_t)a3
{
  if ([(MTEpisode *)self playCount]!= a3)
  {
    v5 = kEpisodePlayCount;
    [(MTEpisode *)self willChangeValueForKey:kEpisodePlayCount];
    v6 = [NSNumber numberWithLongLong:a3];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:v5];

    [(MTEpisode *)self didChangeValueForKey:v5];

    [(MTEpisode *)self updateUPPTimestamp];
  }
}

- (void)setPlayhead:(float)a3
{
  [(MTEpisode *)self playhead];
  v6 = v5;
  [(MTEpisode *)self playhead];
  if (*&v7 != a3)
  {
    *&v7 = vabds_f32(v6, a3);
    if (a3 == 0.0 || *&v7 >= 0.5)
    {
      v9 = kEpisodePlayhead;
      [(MTEpisode *)self willChangeValueForKey:kEpisodePlayhead, v7];
      *&v10 = a3;
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
  v4 = [(MTEpisode *)self uuid];
  v5 = [v3 isPlayingEpisodeUuid:v4];

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
  v9 = [(MTEpisode *)self metadataIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MTEpisode *)self title];
      v13 = [(MTEpisode *)self uuid];
      v14 = [(MTEpisode *)self metadataIdentifier];
      *buf = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      v15 = "[UpdateUPPID] Skipping, equal metadata identifier: %{public}@, %{public}@, %{public}@";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);

      goto LABEL_17;
    }
  }

  else
  {
    [(MTEpisode *)self setMetadataIdentifier:v8];
    [(MTEpisode *)self metadataTimestamp];
    v17 = v16;
    v11 = _MTLogCategoryUPPSync();
    v18 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v17 == 0.0)
    {
      if (v18)
      {
        v19 = [(MTEpisode *)self title];
        v20 = [(MTEpisode *)self uuid];
        v21 = [(MTEpisode *)self metadataIdentifier];
        *buf = 138543874;
        v33 = v19;
        v34 = 2114;
        v35 = v20;
        v36 = 2114;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Looking up UPP data for: %{public}@, %{public}@, %{public}@", buf, 0x20u);
      }

      v11 = [(MTEpisode *)self managedObjectContext];
      v12 = [v11 uppMetadataForMetadataIdentifier:v8];
      v13 = _MTLogCategoryUPPSync();
      v22 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v22)
        {
          v23 = [(MTEpisode *)self title];
          [(MTEpisode *)self uuid];
          v24 = v31 = v4;
          v25 = [(MTEpisode *)self metadataIdentifier];
          *buf = 138543874;
          v33 = v23;
          v34 = 2114;
          v35 = v24;
          v36 = 2114;
          v37 = v25;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Setting UPP data for: %{public}@, %{public}@, %{public}@", buf, 0x20u);

          v4 = v31;
        }

        [MTUniversalPlaybackPositionDataSource updateEpisode:self withUPPMetadata:v12];
        goto LABEL_18;
      }

      if (v22)
      {
        v28 = [(MTEpisode *)self title];
        v29 = [(MTEpisode *)self uuid];
        v30 = [(MTEpisode *)self metadataIdentifier];
        *buf = 138543874;
        v33 = v28;
        v34 = 2114;
        v35 = v29;
        v36 = 2114;
        v37 = v30;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[UpdateUPPID] Skipping, no UPP metadata: %{public}@, %{public}@, %{public}@", buf, 0x20u);
      }

LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    if (v18)
    {
      v12 = [(MTEpisode *)self title];
      v13 = [(MTEpisode *)self uuid];
      v14 = [(MTEpisode *)self metadataIdentifier];
      *buf = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
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