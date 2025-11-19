@interface DatabaseEpisodePropertySource
+ (id)computedPropertiesToFetch;
+ (id)propertiesToFetch;
+ (void)fetchSourceForEpisodeUuids:(id)a3 completion:(id)a4;
- (DatabaseEpisodePropertySource)initWithFetchedPropertyValues:(id)a3;
- (id)localizedDateString;
- (id)localizedDurationAndPodcastTitleString;
- (id)localizedDurationString;
- (id)openEpisodeDetailInAppURL;
- (id)openPodcastDetailInAppURL;
- (void)initiatePlaybackWithCompletion:(id)a3;
@end

@implementation DatabaseEpisodePropertySource

+ (void)fetchSourceForEpisodeUuids:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (!v7 || !v8)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7[2](v7, 0);
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
  v11 = v6;
  v13 = a1;
  v12 = v7;
  dispatch_async(v9, block);

LABEL_7:
}

+ (id)computedPropertiesToFetch
{
  v3 = +[NSMutableSet set];
  v4 = [a1 computedPropertyKeyForBestTitle];
  [v3 addObject:v4];

  v5 = [a1 computedPropertyKeyForBestSummary];
  [v3 addObject:v5];

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

  v9 = [a1 sortProperties];
  [v3 addObjectsFromArray:v9];

  v10 = [NSSet setWithArray:v3];

  return v10;
}

- (DatabaseEpisodePropertySource)initWithFetchedPropertyValues:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DatabaseEpisodePropertySource;
  v5 = [(DatabaseEpisodePropertySource *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:kEpisodeUuid];
    [(DatabaseEpisodePropertySource *)v5 setEpisodeUuid:v6];

    v7 = [objc_opt_class() computedPropertyKeyForBestTitle];
    v8 = [v4 objectForKeyedSubscript:v7];
    [(DatabaseEpisodePropertySource *)v5 setBestTitle:v8];

    v9 = [objc_opt_class() computedPropertyKeyForBestSummary];
    v10 = [v4 objectForKeyedSubscript:v9];
    [(DatabaseEpisodePropertySource *)v5 setBestSummary:v10];

    v11 = [v4 objectForKeyedSubscript:kEpisodeStoreTrackId];
    -[DatabaseEpisodePropertySource setStoreTrackId:](v5, "setStoreTrackId:", [v11 longLongValue]);

    v12 = [MTEpisode propertyPathForPodcastProperty:kPodcastUuid];
    v13 = [v4 objectForKeyedSubscript:v12];
    [(DatabaseEpisodePropertySource *)v5 setPodcastUuid:v13];

    v14 = [MTEpisode propertyPathForPodcastProperty:kPodcastTitle];
    v15 = [v4 objectForKeyedSubscript:v14];
    [(DatabaseEpisodePropertySource *)v5 setPodcastTitle:v15];

    v16 = [MTEpisode propertyPathForPodcastProperty:kPodcastStoreCollectionId];
    v17 = [v4 objectForKeyedSubscript:v16];
    -[DatabaseEpisodePropertySource setStoreCollectionId:](v5, "setStoreCollectionId:", [v17 longLongValue]);

    v18 = [v4 objectForKeyedSubscript:kEpisodePubDate];
    [(DatabaseEpisodePropertySource *)v5 setPubDate:v18];

    v19 = [v4 objectForKeyedSubscript:kEpisodeDuration];
    [v19 doubleValue];
    [(DatabaseEpisodePropertySource *)v5 setDuration:?];

    v20 = [v4 objectForKeyedSubscript:kEpisodeByteSize];
    -[DatabaseEpisodePropertySource setByteSize:](v5, "setByteSize:", [v20 longLongValue]);

    v21 = [v4 objectForKeyedSubscript:kEpisodeVideo];
    -[DatabaseEpisodePropertySource setIsVideo:](v5, "setIsVideo:", [v21 BOOLValue]);

    v22 = [objc_opt_class() sortProperties];
    v23 = [v4 mt_subdictionaryWithKeys:v22];
    [(BaseEpisodePropertySource *)v5 setSortPropertyValues:v23];
  }

  return v5;
}

- (id)localizedDateString
{
  v3 = [(DatabaseEpisodePropertySource *)self pubDate];
  v4 = [(BaseEpisodePropertySource *)self _localizedDateStringForDate:v3];

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
  v5 = [(DatabaseEpisodePropertySource *)self podcastTitle];
  v6 = [(BaseEpisodePropertySource *)self _localizedStringForDuration:v5 podcastTitle:v4];

  return v6;
}

- (id)openPodcastDetailInAppURL
{
  v3 = [(DatabaseEpisodePropertySource *)self podcastUuid];
  v4 = [(BaseEpisodePropertySource *)self _openPodcastDetailInAppURLForPodcastUuid:v3 podcastStoreCollectionId:[(DatabaseEpisodePropertySource *)self storeCollectionId]];

  return v4;
}

- (id)openEpisodeDetailInAppURL
{
  v3 = [(DatabaseEpisodePropertySource *)self episodeUuid];
  v4 = [(BaseEpisodePropertySource *)self _openEpisodeDetailInAppURLForEpisodeUuid:v3 episodeStoreTrackId:[(DatabaseEpisodePropertySource *)self storeTrackId] podcastStoreCollectionId:[(DatabaseEpisodePropertySource *)self storeCollectionId]];

  return v4;
}

- (void)initiatePlaybackWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DatabaseEpisodePropertySource *)self episodeUuid];
  v6 = [(DatabaseEpisodePropertySource *)self storeTrackId];
  v7 = [(DatabaseEpisodePropertySource *)self podcastUuid];
  v8 = [(DatabaseEpisodePropertySource *)self storeCollectionId];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004564;
  v10[3] = &unk_10002C818;
  v11 = v4;
  v9 = v4;
  [(BaseEpisodePropertySource *)self _initiatePlaybackWithDefaultBehaviorForEpisodeUUid:v5 episodeStoreTrackId:v6 podcastUuid:v7 podcastStoreCollectionId:v8 completion:v10];
}

@end