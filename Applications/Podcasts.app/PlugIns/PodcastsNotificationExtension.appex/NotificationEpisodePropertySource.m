@interface NotificationEpisodePropertySource
- (NotificationEpisodePropertySource)initWithNotification:(id)a3 episode:(id)a4;
- (id)localizedDateString;
- (id)localizedDurationAndPodcastTitleString;
- (id)localizedDurationString;
- (id)openEpisodeDetailInAppURL;
- (id)openPodcastDetailInAppURL;
- (id)preloadedImageWithSize:(CGSize)a3;
- (void)initiatePlaybackWithCompletion:(id)a3;
@end

@implementation NotificationEpisodePropertySource

- (NotificationEpisodePropertySource)initWithNotification:(id)a3 episode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NotificationEpisodePropertySource;
  v9 = [(NotificationEpisodePropertySource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, a3);
    objc_storeStrong(&v10->_episode, a4);
    v11 = [(MTNotificationEpisode *)v10->_episode sortPropertyValues];
    [(BaseEpisodePropertySource *)v10 setSortPropertyValues:v11];
  }

  return v10;
}

- (id)localizedDateString
{
  v3 = [(MTNotificationEpisode *)self->_episode pubDate];
  v4 = [(BaseEpisodePropertySource *)self _localizedDateStringForDate:v3];

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
  v5 = [(MTNotificationEpisode *)self->_episode podcastTitle];
  v6 = [(BaseEpisodePropertySource *)self _localizedStringForDuration:v5 podcastTitle:v4];

  return v6;
}

- (id)preloadedImageWithSize:(CGSize)a3
{
  v4 = [(UNNotification *)self->_notification request:a3.width];
  v5 = [v4 content];
  v6 = [(MTNotificationEpisode *)self->_episode podcastUuid];
  v7 = [v5 mt_attachedImageForCacheKey:v6];

  return v7;
}

- (id)openPodcastDetailInAppURL
{
  v3 = [(MTNotificationEpisode *)self->_episode podcastUuid];
  v4 = [(BaseEpisodePropertySource *)self _openPodcastDetailInAppURLForPodcastUuid:v3 podcastStoreCollectionId:[(MTNotificationEpisode *)self->_episode podcastStoreCollectionId]];

  return v4;
}

- (id)openEpisodeDetailInAppURL
{
  v3 = [(MTNotificationEpisode *)self->_episode uuid];
  v4 = [(BaseEpisodePropertySource *)self _openEpisodeDetailInAppURLForEpisodeUuid:v3 episodeStoreTrackId:[(MTNotificationEpisode *)self->_episode storeTrackId] podcastStoreCollectionId:[(MTNotificationEpisode *)self->_episode podcastStoreCollectionId]];

  return v4;
}

- (void)initiatePlaybackWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTNotificationEpisode *)self->_episode uuid];
  v6 = [(MTNotificationEpisode *)self->_episode storeTrackId];
  v7 = [(MTNotificationEpisode *)self->_episode podcastUuid];
  v8 = [(MTNotificationEpisode *)self->_episode podcastStoreCollectionId];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003610;
  v10[3] = &unk_10002C818;
  v11 = v4;
  v9 = v4;
  [(BaseEpisodePropertySource *)self _initiatePlaybackWithDefaultBehaviorForEpisodeUUid:v5 episodeStoreTrackId:v6 podcastUuid:v7 podcastStoreCollectionId:v8 completion:v10];
}

@end