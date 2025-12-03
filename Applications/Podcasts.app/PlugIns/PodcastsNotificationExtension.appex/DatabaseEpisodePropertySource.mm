@interface DatabaseEpisodePropertySource
+ (id)computedPropertiesToFetch;
+ (id)propertiesToFetch;
+ (void)fetchSourceForEpisodeUuids:(id)uuids completion:(id)completion;
- (DatabaseEpisodePropertySource)initWithFetchedPropertyValues:(id)values;
- (id)localizedDateString;
- (id)localizedDurationAndPodcastTitleString;
- (id)localizedDurationString;
- (id)openEpisodeDetailInAppURL;
- (id)openPodcastDetailInAppURL;
- (void)initiatePlaybackWithCompletion:(id)completion;
@end

@implementation DatabaseEpisodePropertySource

+ (void)fetchSourceForEpisodeUuids:(id)uuids completion:(id)completion
{
  uuidsCopy = uuids;
  completionCopy = completion;
  v8 = [uuidsCopy count];
  if (!completionCopy || !v8)
  {
    if (!completionCopy)
    {
      goto LABEL_7;
    }

LABEL_6:
    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  if ((+[MTDB canExtensionOpenDatabase]& 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000037C8;
  block[3] = &unk_10002C8B8;
  v11 = uuidsCopy;
  selfCopy = self;
  v12 = completionCopy;
  dispatch_async(v9, block);

LABEL_7:
}

+ (id)computedPropertiesToFetch
{
  v3 = +[NSMutableSet set];
  computedPropertyKeyForBestTitle = [self computedPropertyKeyForBestTitle];
  [v3 addObject:computedPropertyKeyForBestTitle];

  computedPropertyKeyForBestSummary = [self computedPropertyKeyForBestSummary];
  [v3 addObject:computedPropertyKeyForBestSummary];

  return v3;
}

+ (id)propertiesToFetch
{
  v3 = +[NSMutableArray array];
  v13[0] = kEpisodeUuid;
  v13[1] = kEpisodeStoreTrackId;
  v13[2] = kEpisodePubDate;
  v13[3] = kEpisodeDuration;
  v13[4] = kEpisodeByteSize;
  v4 = [NSArray arrayWithObjects:v13 count:5];
  [v3 addObjectsFromArray:v4];

  v5 = [MTEpisode propertyPathForPodcastProperty:kPodcastUuid];
  v12[0] = v5;
  v6 = [MTEpisode propertyPathForPodcastProperty:kPodcastTitle];
  v12[1] = v6;
  v7 = [MTEpisode propertyPathForPodcastProperty:kPodcastStoreCollectionId];
  v12[2] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:3];
  [v3 addObjectsFromArray:v8];

  sortProperties = [self sortProperties];
  [v3 addObjectsFromArray:sortProperties];

  v10 = [NSSet setWithArray:v3];

  return v10;
}

- (DatabaseEpisodePropertySource)initWithFetchedPropertyValues:(id)values
{
  valuesCopy = values;
  v25.receiver = self;
  v25.super_class = DatabaseEpisodePropertySource;
  v5 = [(DatabaseEpisodePropertySource *)&v25 init];
  if (v5)
  {
    v6 = [valuesCopy objectForKeyedSubscript:kEpisodeUuid];
    [(DatabaseEpisodePropertySource *)v5 setEpisodeUuid:v6];

    computedPropertyKeyForBestTitle = [objc_opt_class() computedPropertyKeyForBestTitle];
    v8 = [valuesCopy objectForKeyedSubscript:computedPropertyKeyForBestTitle];
    [(DatabaseEpisodePropertySource *)v5 setBestTitle:v8];

    computedPropertyKeyForBestSummary = [objc_opt_class() computedPropertyKeyForBestSummary];
    v10 = [valuesCopy objectForKeyedSubscript:computedPropertyKeyForBestSummary];
    [(DatabaseEpisodePropertySource *)v5 setBestSummary:v10];

    v11 = [valuesCopy objectForKeyedSubscript:kEpisodeStoreTrackId];
    -[DatabaseEpisodePropertySource setStoreTrackId:](v5, "setStoreTrackId:", [v11 longLongValue]);

    v12 = [MTEpisode propertyPathForPodcastProperty:kPodcastUuid];
    v13 = [valuesCopy objectForKeyedSubscript:v12];
    [(DatabaseEpisodePropertySource *)v5 setPodcastUuid:v13];

    v14 = [MTEpisode propertyPathForPodcastProperty:kPodcastTitle];
    v15 = [valuesCopy objectForKeyedSubscript:v14];
    [(DatabaseEpisodePropertySource *)v5 setPodcastTitle:v15];

    v16 = [MTEpisode propertyPathForPodcastProperty:kPodcastStoreCollectionId];
    v17 = [valuesCopy objectForKeyedSubscript:v16];
    -[DatabaseEpisodePropertySource setStoreCollectionId:](v5, "setStoreCollectionId:", [v17 longLongValue]);

    v18 = [valuesCopy objectForKeyedSubscript:kEpisodePubDate];
    [(DatabaseEpisodePropertySource *)v5 setPubDate:v18];

    v19 = [valuesCopy objectForKeyedSubscript:kEpisodeDuration];
    [v19 doubleValue];
    [(DatabaseEpisodePropertySource *)v5 setDuration:?];

    v20 = [valuesCopy objectForKeyedSubscript:kEpisodeByteSize];
    -[DatabaseEpisodePropertySource setByteSize:](v5, "setByteSize:", [v20 longLongValue]);

    v21 = [valuesCopy objectForKeyedSubscript:kEpisodeVideo];
    -[DatabaseEpisodePropertySource setIsVideo:](v5, "setIsVideo:", [v21 BOOLValue]);

    sortProperties = [objc_opt_class() sortProperties];
    v23 = [valuesCopy mt_subdictionaryWithKeys:sortProperties];
    [(BaseEpisodePropertySource *)v5 setSortPropertyValues:v23];
  }

  return v5;
}

- (id)localizedDateString
{
  pubDate = [(DatabaseEpisodePropertySource *)self pubDate];
  v4 = [(BaseEpisodePropertySource *)self _localizedDateStringForDate:pubDate];

  return v4;
}

- (id)localizedDurationString
{
  [(DatabaseEpisodePropertySource *)self duration];

  return [(BaseEpisodePropertySource *)self _localizedStringForDuration:?];
}

- (id)localizedDurationAndPodcastTitleString
{
  [(DatabaseEpisodePropertySource *)self duration];
  v4 = v3;
  podcastTitle = [(DatabaseEpisodePropertySource *)self podcastTitle];
  v6 = [(BaseEpisodePropertySource *)self _localizedStringForDuration:podcastTitle podcastTitle:v4];

  return v6;
}

- (id)openPodcastDetailInAppURL
{
  podcastUuid = [(DatabaseEpisodePropertySource *)self podcastUuid];
  v4 = [(BaseEpisodePropertySource *)self _openPodcastDetailInAppURLForPodcastUuid:podcastUuid podcastStoreCollectionId:[(DatabaseEpisodePropertySource *)self storeCollectionId]];

  return v4;
}

- (id)openEpisodeDetailInAppURL
{
  episodeUuid = [(DatabaseEpisodePropertySource *)self episodeUuid];
  v4 = [(BaseEpisodePropertySource *)self _openEpisodeDetailInAppURLForEpisodeUuid:episodeUuid episodeStoreTrackId:[(DatabaseEpisodePropertySource *)self storeTrackId] podcastStoreCollectionId:[(DatabaseEpisodePropertySource *)self storeCollectionId]];

  return v4;
}

- (void)initiatePlaybackWithCompletion:(id)completion
{
  completionCopy = completion;
  episodeUuid = [(DatabaseEpisodePropertySource *)self episodeUuid];
  storeTrackId = [(DatabaseEpisodePropertySource *)self storeTrackId];
  podcastUuid = [(DatabaseEpisodePropertySource *)self podcastUuid];
  storeCollectionId = [(DatabaseEpisodePropertySource *)self storeCollectionId];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004564;
  v10[3] = &unk_10002C818;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BaseEpisodePropertySource *)self _initiatePlaybackWithDefaultBehaviorForEpisodeUUid:episodeUuid episodeStoreTrackId:storeTrackId podcastUuid:podcastUuid podcastStoreCollectionId:storeCollectionId completion:v10];
}

@end