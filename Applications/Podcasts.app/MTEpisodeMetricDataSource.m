@interface MTEpisodeMetricDataSource
- (BOOL)isEqual:(id)a3;
- (MTEpisodeMetricDataSource)initWithEpisodeIdentifier:(id)a3;
- (MTEpisodeMetricDataSource)initWithPlayerItem:(id)a3;
- (id)_contentGUID;
- (id)_contentId;
- (id)_duration;
- (id)_itemType;
- (id)_mediaType;
- (id)_podcastFeedURL;
- (id)_podcastId;
- (id)_podcastStateForPlayerItem:(id)a3;
- (id)metricsAdditionalData;
- (unint64_t)_itemTypeForEpisode:(id)a3;
- (unint64_t)_itemTypeForPlayerItem:(id)a3;
- (unint64_t)_mediaTypeForEpisode:(id)a3;
- (unint64_t)_mediaTypeForPlayerItem:(id)a3;
- (unint64_t)hash;
@end

@implementation MTEpisodeMetricDataSource

- (MTEpisodeMetricDataSource)initWithEpisodeIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTEpisodeMetricDataSource;
  v6 = [(MTEpisodeMetricDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_episodeIdentifier, a3);
  }

  return v7;
}

- (MTEpisodeMetricDataSource)initWithPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [v4 episodeIdentifier];
  v6 = [(MTEpisodeMetricDataSource *)self initWithEpisodeIdentifier:v5];

  if (v6)
  {
    [v4 duration];
    v6->_duration = v7;
    v6->_mediaType = [(MTEpisodeMetricDataSource *)v6 _mediaTypeForPlayerItem:v4];
    v6->_itemType = [(MTEpisodeMetricDataSource *)v6 _itemTypeForPlayerItem:v4];
    v8 = [(MTEpisodeMetricDataSource *)v6 _podcastStateForPlayerItem:v4];
    podcastState = v6->_podcastState;
    v6->_podcastState = v8;
  }

  return v6;
}

- (unint64_t)_mediaTypeForEpisode:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100117CDC;
  v8[3] = &unk_1004D8CC8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (unint64_t)_itemTypeForEpisode:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100117E34;
  v8[3] = &unk_1004D8CC8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (unint64_t)_mediaTypeForPlayerItem:(id)a3
{
  if ([a3 isVideo])
  {
    return 2;
  }

  else
  {
    return a3 != 0;
  }
}

- (unint64_t)_itemTypeForPlayerItem:(id)a3
{
  if ([a3 isLocal])
  {
    return 2;
  }

  else
  {
    return a3 != 0;
  }
}

- (id)_podcastStateForPlayerItem:(id)a3
{
  v3 = a3;
  v4 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  v5 = [v3 podcastUuid];

  v6 = [v4 currentPodcastStateDescriptionFrom:v5];

  return v6;
}

- (id)_contentId
{
  v2 = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  v3 = [v2 episodeSerpentID];
  v4 = [v3 stringValue];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1004F3018;
  }

  v6 = v5;

  return v5;
}

- (id)_contentGUID
{
  v2 = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  v3 = [v2 episodeGUID];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1004F3018;
  }

  v5 = v4;

  return v4;
}

- (id)_podcastId
{
  v2 = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  v3 = [v2 podcastAdamID];
  v4 = [v3 stringValue];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1004F3018;
  }

  v6 = v5;

  return v5;
}

- (id)_podcastFeedURL
{
  v2 = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  v3 = [v2 currentPodcastFeedURL];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1004F3018;
  }

  v5 = v4;

  return v4;
}

- (id)_mediaType
{
  v2 = [(MTEpisodeMetricDataSource *)self mediaType];
  if (v2 - 1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1004DCDE0[v2 - 1];
  }
}

- (id)_itemType
{
  v2 = [(MTEpisodeMetricDataSource *)self itemType];
  v3 = @"unknown";
  if (v2 == 2)
  {
    v3 = @"download";
  }

  if (v2 == 1)
  {
    return @"stream";
  }

  else
  {
    return v3;
  }
}

- (id)_duration
{
  [(MTEpisodeMetricDataSource *)self duration];

  return [NSNumber numberWithDouble:?];
}

- (id)metricsAdditionalData
{
  v13[0] = @"contentGUID";
  v3 = [(MTEpisodeMetricDataSource *)self _contentGUID];
  v14[0] = v3;
  v13[1] = @"contentLength";
  v4 = [(MTEpisodeMetricDataSource *)self _duration];
  v14[1] = v4;
  v13[2] = @"podcastId";
  v5 = [(MTEpisodeMetricDataSource *)self _podcastId];
  v14[2] = v5;
  v13[3] = @"podcastFeedURL";
  v6 = [(MTEpisodeMetricDataSource *)self _podcastFeedURL];
  v14[3] = v6;
  v13[4] = @"providerId";
  v7 = [(MTEpisodeMetricDataSource *)self _providerId];
  v14[4] = v7;
  v13[5] = @"mediaType";
  v8 = [(MTEpisodeMetricDataSource *)self _mediaType];
  v14[5] = v8;
  v13[6] = @"itemType";
  v9 = [(MTEpisodeMetricDataSource *)self _itemType];
  v14[6] = v9;
  v13[7] = @"podcastState";
  v10 = [(MTEpisodeMetricDataSource *)self _podcastState];
  v14[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 metricsContentIdentifier];
    v7 = [(MTEpisodeMetricDataSource *)self metricsContentIdentifier];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 metricsAdditionalData];
      v10 = [(MTEpisodeMetricDataSource *)self metricsAdditionalData];
      v11 = [v9 isEqualToDictionary:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MTEpisodeMetricDataSource *)self metricsContentIdentifier];
  v4 = [v3 hash];
  v5 = [(MTEpisodeMetricDataSource *)self metricsAdditionalData];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end