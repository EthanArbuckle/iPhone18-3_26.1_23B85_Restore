@interface MTStoreReportingController
+ (id)reportingStringForPlayReason:(unint64_t)reason;
- (id)_dictionaryForPodcastUuid:(id)uuid;
- (id)pageTypeForReportType:(int)type;
- (void)recordMetricsEventForType:(int)type withData:(id)data;
- (void)reportBrowse:(id)browse;
- (void)reportPlaybackFromStore:(id)store reason:(unint64_t)reason;
- (void)reportWithType:(int)type userInfo:(id)info location:(id)location reason:(unint64_t)reason;
@end

@implementation MTStoreReportingController

- (void)reportWithType:(int)type userInfo:(id)info location:(id)location reason:(unint64_t)reason
{
  v8 = *&type;
  infoCopy = info;
  locationCopy = location;
  v11 = [NSMutableDictionary dictionaryWithObject:@"3" forKey:@"v"];
  v12 = v11;
  if (locationCopy)
  {
    v13 = locationCopy;
  }

  else
  {
    v13 = &stru_1004F3018;
  }

  [v11 setObject:v13 forKey:@"pageLocation"];

  [v12 setObject:@"1" forKey:@"podcastType"];
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v28 = [infoCopy objectForKey:kPodcastStoreCollectionId];
      if ([v28 unsignedLongLongValue])
      {
        [v12 setObject:v28 forKey:@"podcastId"];
      }

      v67 = kPodcastTitle;
      v68 = [infoCopy objectForKey:kPodcastTitle];
      v69 = [v68 length];

      if (v69)
      {
        v70 = [infoCopy objectForKey:v67];
        [v12 setObject:v70 forKey:@"podcastName"];
      }

      v71 = kPodcastUpdatedFeedUrl;
      v72 = [infoCopy objectForKey:kPodcastUpdatedFeedUrl];
      v73 = [v72 length];

      if (!v73)
      {
        v71 = kPodcastFeedUrl;
        v74 = [infoCopy objectForKey:kPodcastFeedUrl];
        v75 = [v74 length];

        if (!v75)
        {
          goto LABEL_61;
        }
      }

      v76 = [infoCopy objectForKey:v71];
      [v12 setObject:v76 forKey:@"feedUrl"];
      goto LABEL_60;
    }

    if (v8 != 6)
    {
      goto LABEL_62;
    }

    v27 = kEpisodeRestoredCount;
    v28 = [infoCopy objectForKey:kEpisodeRestoredCount];
    if ([v28 unsignedLongLongValue])
    {
      [v12 setObject:v28 forKey:v27];
    }

    v29 = kEpisodeRestoreRequested;
    v30 = [infoCopy objectForKey:kEpisodeRestoreRequested];
    bOOLValue = [v30 BOOLValue];

    v32 = [NSNumber numberWithBool:bOOLValue];
    [v12 setObject:v32 forKey:v29];

    v33 = kEpisodeRestoreIsRetry;
    v34 = [infoCopy objectForKey:kEpisodeRestoreIsRetry];
    if ([v34 BOOLValue])
    {
      v35 = &__kCFBooleanTrue;
    }

    else
    {
      v35 = &__kCFBooleanFalse;
    }

    [v12 setObject:v35 forKey:v33];
  }

  else
  {
    if (v8 >= 2)
    {
      if ((v8 - 2) >= 2)
      {
        goto LABEL_62;
      }

      v14 = kEpisodeGuid;
      v15 = [infoCopy objectForKey:kEpisodeGuid];
      v16 = [v15 length];

      if (v16)
      {
        v17 = [infoCopy objectForKey:v14];
        [v12 setObject:v17 forKey:@"episodeGuid"];
      }

      v18 = kEpisodeEnclosureUrl;
      v19 = [infoCopy objectForKey:kEpisodeEnclosureUrl];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [infoCopy objectForKey:v18];
        [v12 setObject:v21 forKey:@"episodeUrl"];
      }

      v22 = kEpisodeUti;
      v23 = [infoCopy objectForKey:kEpisodeUti];
      identifier = [UTTypeAudio identifier];
      v25 = [v23 isEqualToString:identifier];

      if (v25)
      {
        v26 = @"episode";
      }

      else
      {
        v79 = [infoCopy objectForKey:v22];
        identifier2 = [UTTypeMovie identifier];
        v81 = [v79 isEqualToString:identifier2];

        if (!v81)
        {
LABEL_53:
          v82 = [infoCopy objectForKey:kEpisodePodcastUuid];
          v28 = [(MTStoreReportingController *)self _dictionaryForPodcastUuid:v82];

          v76 = [v28 objectForKey:kPodcastStoreCollectionId];
          if ([v76 unsignedLongLongValue])
          {
            [v12 setObject:v76 forKey:@"podcastId"];
          }

          v83 = kPodcastTitle;
          v84 = [v28 objectForKey:kPodcastTitle];
          v85 = [v84 length];

          if (v85)
          {
            v86 = [v28 objectForKey:v83];
            [v12 setObject:v86 forKey:@"podcastName"];
          }

          v87 = kPodcastUpdatedFeedUrl;
          v88 = [v28 objectForKey:kPodcastUpdatedFeedUrl];
          v89 = [v88 length];

          if (v89 || (v87 = kPodcastFeedUrl, [v28 objectForKey:kPodcastFeedUrl], v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(v90, "length"), v90, v91))
          {
            v92 = [v28 objectForKey:v87];
            [v12 setObject:v92 forKey:@"feedUrl"];
          }

LABEL_60:

          goto LABEL_61;
        }

        v26 = @"movie";
      }

      [v12 setObject:v26 forKey:@"episodeKind"];
      goto LABEL_53;
    }

    v28 = [infoCopy objectForKey:kPodcastStoreCollectionId];
    if ([v28 unsignedLongLongValue])
    {
      [v12 setObject:v28 forKey:@"podcastId"];
    }

    v36 = kPodcastTitle;
    v37 = [infoCopy objectForKey:kPodcastTitle];
    v38 = [v37 length];

    if (v38)
    {
      v39 = [infoCopy objectForKey:v36];
      [v12 setObject:v39 forKey:@"podcastName"];
    }

    v40 = kPodcastUpdatedFeedUrl;
    v41 = [infoCopy objectForKey:kPodcastUpdatedFeedUrl];
    v42 = [v41 length];

    if (v42 || (v40 = kPodcastFeedUrl, [infoCopy objectForKey:kPodcastFeedUrl], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "length"), v43, v44))
    {
      v45 = [infoCopy objectForKey:v40];
      [v12 setObject:v45 forKey:@"feedUrl"];
    }

    v46 = kEpisodeGuid;
    v47 = [infoCopy objectForKey:kEpisodeGuid];
    v48 = [v47 length];

    if (v48)
    {
      v49 = [infoCopy objectForKey:v46];
      [v12 setObject:v49 forKey:@"episodeGuid"];
    }

    v50 = kEpisodeEnclosureUrl;
    v51 = [infoCopy objectForKey:kEpisodeEnclosureUrl];
    v52 = [v51 length];

    if (v52)
    {
      v53 = [infoCopy objectForKey:v50];
      [v12 setObject:v53 forKey:@"episodeUrl"];
    }

    v54 = kEpisodeUti;
    v55 = [infoCopy objectForKey:kEpisodeUti];
    v56 = [v55 length];

    if (v56)
    {
      v57 = [infoCopy objectForKey:v54];
      [v12 setObject:v57 forKey:@"episodeType"];
    }

    v58 = [infoCopy objectForKey:kMTEpisodeRestoreResultKey];
    v59 = [v58 length];

    if (v59)
    {
      v60 = [infoCopy objectForKey:kMTEpisodeRestoreResultKey];
      [v12 setObject:v60 forKey:kMTEpisodeRestoreResultKey];
    }

    v61 = [infoCopy objectForKey:kMTEpisodeRestoreTypeKey];
    v62 = [v61 length];

    if (v62)
    {
      v63 = [infoCopy objectForKey:kMTEpisodeRestoreTypeKey];
      [v12 setObject:v63 forKey:kMTEpisodeRestoreTypeKey];
    }

    v64 = [infoCopy objectForKey:v54];
    v65 = [v64 isEqualToString:@"audio"];

    if (v65)
    {
      v66 = @"episode";
LABEL_49:
      [v12 setObject:v66 forKey:@"episodeKind"];
      goto LABEL_61;
    }

    v77 = [infoCopy objectForKey:v54];
    v78 = [v77 isEqualToString:@"video"];

    if (v78)
    {
      v66 = @"movie";
      goto LABEL_49;
    }
  }

LABEL_61:

LABEL_62:
  if (reason)
  {
    v93 = [objc_opt_class() reportingStringForPlayReason:reason];
    [v12 setObject:v93 forKey:@"play_source"];
  }

  [(MTStoreReportingController *)self recordMetricsEventForType:v8 withData:v12];
}

- (void)reportPlaybackFromStore:(id)store reason:(unint64_t)reason
{
  if (store)
  {
    v5 = [store dictionaryByDecomposingQueryStringWithURLDecode:{1, reason}];
    [(MTStoreReportingController *)self recordMetricsEventForType:2 withData:v5];
  }
}

- (void)reportBrowse:(id)browse
{
  if (browse)
  {
    v4 = [browse dictionaryByDecomposingQueryStringWithURLDecode:1];
    [(MTStoreReportingController *)self recordMetricsEventForType:5 withData:v4];
  }
}

- (id)_dictionaryForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100008930;
  v18 = sub_10003B47C;
  v19 = 0;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100076C20;
  v10[3] = &unk_1004D9040;
  v13 = &v14;
  v6 = mainOrPrivateContext;
  v11 = v6;
  v7 = uuidCopy;
  v12 = v7;
  [v6 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)recordMetricsEventForType:(int)type withData:(id)data
{
  v4 = *&type;
  dataCopy = data;
  v7 = objc_opt_new();
  [v7 setEventType:@"reporting_event"];
  v8 = [(MTStoreReportingController *)self pageTypeForReportType:v4];
  [v7 setPageType:v8];

  [v7 im_addPropertiesWithDictionary:dataCopy];
  v9 = objc_opt_new();
  [v9 setEventType:@"reporting_event"];
  v10 = [(MTStoreReportingController *)self pageTypeForReportType:v4];
  [v9 setPageType:v10];

  [v9 im_addPropertiesWithDictionary:dataCopy];
  v11 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
  identifierPromise = [v11 identifierPromise];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100076E08;
  v14[3] = &unk_1004D9540;
  v15 = v9;
  v13 = v9;
  [identifierPromise addFinishBlock:v14];
}

- (id)pageTypeForReportType:(int)type
{
  if ((type - 1) > 5)
  {
    return @"download";
  }

  else
  {
    return *(&off_1004D9560 + (type - 1));
  }
}

+ (id)reportingStringForPlayReason:(unint64_t)reason
{
  if (reason > 0xF)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1004D9590 + reason);
  }
}

@end