@interface NotificationEpisodePropertySource
- (NotificationEpisodePropertySource)initWithNotification:(id)notification episode:(id)episode;
- (id)localizedDateString;
- (id)localizedDurationAndPodcastTitleString;
- (id)localizedDurationString;
- (id)openEpisodeDetailInAppURL;
- (id)openPodcastDetailInAppURL;
- (id)preloadedImageWithSize:(CGSize)size;
- (void)initiatePlaybackWithCompletion:(id)completion;
@end

@implementation NotificationEpisodePropertySource

- (NotificationEpisodePropertySource)initWithNotification:(id)notification episode:(id)episode
{
  notificationCopy = notification;
  episodeCopy = episode;
  v13.receiver = self;
  v13.super_class = NotificationEpisodePropertySource;
  v9 = [(NotificationEpisodePropertySource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, notification);
    objc_storeStrong(&v10->_episode, episode);
    sortPropertyValues = [(MTNotificationEpisode *)v10->_episode sortPropertyValues];
    [(BaseEpisodePropertySource *)v10 setSortPropertyValues:sortPropertyValues];
  }

  return v10;
}

- (id)localizedDateString
{
  pubDate = [(MTNotificationEpisode *)self->_episode pubDate];
  v4 = [(BaseEpisodePropertySource *)self _localizedDateStringForDate:pubDate];

  return v4;
}

- (id)localizedDurationString
{
  [(MTNotificationEpisode *)self->_episode duration];

  return [(BaseEpisodePropertySource *)self _localizedStringForDuration:?];
}

- (id)localizedDurationAndPodcastTitleString
{
  [(MTNotificationEpisode *)self->_episode duration];
  v4 = v3;
  podcastTitle = [(MTNotificationEpisode *)self->_episode podcastTitle];
  v6 = [(BaseEpisodePropertySource *)self _localizedStringForDuration:podcastTitle podcastTitle:v4];

  return v6;
}

- (id)preloadedImageWithSize:(CGSize)size
{
  v4 = [(UNNotification *)self->_notification request:size.width];
  content = [v4 content];
  podcastUuid = [(MTNotificationEpisode *)self->_episode podcastUuid];
  v7 = [content mt_attachedImageForCacheKey:podcastUuid];

  return v7;
}

- (id)openPodcastDetailInAppURL
{
  podcastUuid = [(MTNotificationEpisode *)self->_episode podcastUuid];
  v4 = [(BaseEpisodePropertySource *)self _openPodcastDetailInAppURLForPodcastUuid:podcastUuid podcastStoreCollectionId:[(MTNotificationEpisode *)self->_episode podcastStoreCollectionId]];

  return v4;
}

- (id)openEpisodeDetailInAppURL
{
  uuid = [(MTNotificationEpisode *)self->_episode uuid];
  v4 = [(BaseEpisodePropertySource *)self _openEpisodeDetailInAppURLForEpisodeUuid:uuid episodeStoreTrackId:[(MTNotificationEpisode *)self->_episode storeTrackId] podcastStoreCollectionId:[(MTNotificationEpisode *)self->_episode podcastStoreCollectionId]];

  return v4;
}

- (void)initiatePlaybackWithCompletion:(id)completion
{
  completionCopy = completion;
  uuid = [(MTNotificationEpisode *)self->_episode uuid];
  storeTrackId = [(MTNotificationEpisode *)self->_episode storeTrackId];
  podcastUuid = [(MTNotificationEpisode *)self->_episode podcastUuid];
  podcastStoreCollectionId = [(MTNotificationEpisode *)self->_episode podcastStoreCollectionId];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003610;
  v10[3] = &unk_10002C818;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BaseEpisodePropertySource *)self _initiatePlaybackWithDefaultBehaviorForEpisodeUUid:uuid episodeStoreTrackId:storeTrackId podcastUuid:podcastUuid podcastStoreCollectionId:podcastStoreCollectionId completion:v10];
}

@end