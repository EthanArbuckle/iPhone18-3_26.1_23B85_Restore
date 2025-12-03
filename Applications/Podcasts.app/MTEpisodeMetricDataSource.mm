@interface MTEpisodeMetricDataSource
- (BOOL)isEqual:(id)equal;
- (MTEpisodeMetricDataSource)initWithEpisodeIdentifier:(id)identifier;
- (MTEpisodeMetricDataSource)initWithPlayerItem:(id)item;
- (id)_contentGUID;
- (id)_contentId;
- (id)_duration;
- (id)_itemType;
- (id)_mediaType;
- (id)_podcastFeedURL;
- (id)_podcastId;
- (id)_podcastStateForPlayerItem:(id)item;
- (id)metricsAdditionalData;
- (unint64_t)_itemTypeForEpisode:(id)episode;
- (unint64_t)_itemTypeForPlayerItem:(id)item;
- (unint64_t)_mediaTypeForEpisode:(id)episode;
- (unint64_t)_mediaTypeForPlayerItem:(id)item;
- (unint64_t)hash;
@end

@implementation MTEpisodeMetricDataSource

- (MTEpisodeMetricDataSource)initWithEpisodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MTEpisodeMetricDataSource;
  v6 = [(MTEpisodeMetricDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_episodeIdentifier, identifier);
  }

  return v7;
}

- (MTEpisodeMetricDataSource)initWithPlayerItem:(id)item
{
  itemCopy = item;
  episodeIdentifier = [itemCopy episodeIdentifier];
  v6 = [(MTEpisodeMetricDataSource *)self initWithEpisodeIdentifier:episodeIdentifier];

  if (v6)
  {
    [itemCopy duration];
    v6->_duration = v7;
    v6->_mediaType = [(MTEpisodeMetricDataSource *)v6 _mediaTypeForPlayerItem:itemCopy];
    v6->_itemType = [(MTEpisodeMetricDataSource *)v6 _itemTypeForPlayerItem:itemCopy];
    v8 = [(MTEpisodeMetricDataSource *)v6 _podcastStateForPlayerItem:itemCopy];
    podcastState = v6->_podcastState;
    v6->_podcastState = v8;
  }

  return v6;
}

- (unint64_t)_mediaTypeForEpisode:(id)episode
{
  episodeCopy = episode;
  managedObjectContext = [episodeCopy managedObjectContext];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100117CDC;
  v8[3] = &unk_1004D8CC8;
  v5 = episodeCopy;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (unint64_t)_itemTypeForEpisode:(id)episode
{
  episodeCopy = episode;
  managedObjectContext = [episodeCopy managedObjectContext];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100117E34;
  v8[3] = &unk_1004D8CC8;
  v5 = episodeCopy;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (unint64_t)_mediaTypeForPlayerItem:(id)item
{
  if ([item isVideo])
  {
    return 2;
  }

  else
  {
    return item != 0;
  }
}

- (unint64_t)_itemTypeForPlayerItem:(id)item
{
  if ([item isLocal])
  {
    return 2;
  }

  else
  {
    return item != 0;
  }
}

- (id)_podcastStateForPlayerItem:(id)item
{
  itemCopy = item;
  v4 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  podcastUuid = [itemCopy podcastUuid];

  v6 = [v4 currentPodcastStateDescriptionFrom:podcastUuid];

  return v6;
}

- (id)_contentId
{
  episodeIdentifier = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  episodeSerpentID = [episodeIdentifier episodeSerpentID];
  stringValue = [episodeSerpentID stringValue];

  if (stringValue)
  {
    v5 = stringValue;
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
  episodeIdentifier = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  episodeGUID = [episodeIdentifier episodeGUID];

  if (episodeGUID)
  {
    v4 = episodeGUID;
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
  episodeIdentifier = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  podcastAdamID = [episodeIdentifier podcastAdamID];
  stringValue = [podcastAdamID stringValue];

  if (stringValue)
  {
    v5 = stringValue;
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
  episodeIdentifier = [(MTEpisodeMetricDataSource *)self episodeIdentifier];
  currentPodcastFeedURL = [episodeIdentifier currentPodcastFeedURL];

  if (currentPodcastFeedURL)
  {
    v4 = currentPodcastFeedURL;
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
  mediaType = [(MTEpisodeMetricDataSource *)self mediaType];
  if (mediaType - 1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1004DCDE0[mediaType - 1];
  }
}

- (id)_itemType
{
  itemType = [(MTEpisodeMetricDataSource *)self itemType];
  v3 = @"unknown";
  if (itemType == 2)
  {
    v3 = @"download";
  }

  if (itemType == 1)
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
  _contentGUID = [(MTEpisodeMetricDataSource *)self _contentGUID];
  v14[0] = _contentGUID;
  v13[1] = @"contentLength";
  _duration = [(MTEpisodeMetricDataSource *)self _duration];
  v14[1] = _duration;
  v13[2] = @"podcastId";
  _podcastId = [(MTEpisodeMetricDataSource *)self _podcastId];
  v14[2] = _podcastId;
  v13[3] = @"podcastFeedURL";
  _podcastFeedURL = [(MTEpisodeMetricDataSource *)self _podcastFeedURL];
  v14[3] = _podcastFeedURL;
  v13[4] = @"providerId";
  _providerId = [(MTEpisodeMetricDataSource *)self _providerId];
  v14[4] = _providerId;
  v13[5] = @"mediaType";
  _mediaType = [(MTEpisodeMetricDataSource *)self _mediaType];
  v14[5] = _mediaType;
  v13[6] = @"itemType";
  _itemType = [(MTEpisodeMetricDataSource *)self _itemType];
  v14[6] = _itemType;
  v13[7] = @"podcastState";
  _podcastState = [(MTEpisodeMetricDataSource *)self _podcastState];
  v14[7] = _podcastState;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    metricsContentIdentifier = [v5 metricsContentIdentifier];
    metricsContentIdentifier2 = [(MTEpisodeMetricDataSource *)self metricsContentIdentifier];
    v8 = [metricsContentIdentifier isEqual:metricsContentIdentifier2];

    if (v8)
    {
      metricsAdditionalData = [v5 metricsAdditionalData];
      metricsAdditionalData2 = [(MTEpisodeMetricDataSource *)self metricsAdditionalData];
      v11 = [metricsAdditionalData isEqualToDictionary:metricsAdditionalData2];
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
  metricsContentIdentifier = [(MTEpisodeMetricDataSource *)self metricsContentIdentifier];
  v4 = [metricsContentIdentifier hash];
  metricsAdditionalData = [(MTEpisodeMetricDataSource *)self metricsAdditionalData];
  v6 = [metricsAdditionalData hash];

  return v6 ^ v4;
}

@end