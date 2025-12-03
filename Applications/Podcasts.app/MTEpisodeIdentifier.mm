@interface MTEpisodeIdentifier
+ (id)identifierWithEpisode:(id)episode;
+ (id)identifierWithPlayerItem:(id)item;
- (BOOL)_hasFeedURL:(id)l;
- (MTEpisodeIdentifier)initWithEpisode:(id)episode;
- (MTEpisodeIdentifier)initWithPlayerItem:(id)item;
- (void)_updateWithPodcast:(id)podcast;
@end

@implementation MTEpisodeIdentifier

+ (id)identifierWithEpisode:(id)episode
{
  episodeCopy = episode;
  v4 = [objc_alloc(objc_opt_class()) initWithEpisode:episodeCopy];

  return v4;
}

+ (id)identifierWithPlayerItem:(id)item
{
  itemCopy = item;
  v4 = [objc_alloc(objc_opt_class()) initWithPlayerItem:itemCopy];

  return v4;
}

- (MTEpisodeIdentifier)initWithEpisode:(id)episode
{
  episodeCopy = episode;
  v13.receiver = self;
  v13.super_class = MTEpisodeIdentifier;
  v5 = [(MTEpisodeIdentifier *)&v13 init];
  if (v5)
  {
    uuid = [episodeCopy uuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeUUID:uuid];

    guid = [episodeCopy guid];
    [(MTEpisodeIdentifier *)v5 setEpisodeGUID:guid];

    v8 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [episodeCopy storeTrackId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeAdamID:v8];

    v9 = +[MTStoreIdentifier validatedIdNumberFromStoreId:](MTStoreIdentifier, "validatedIdNumberFromStoreId:", [episodeCopy storeTrackId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeSerpentID:v9];

    podcast = [episodeCopy podcast];
    if (podcast)
    {
      [(MTEpisodeIdentifier *)v5 _updateWithPodcast:podcast];
    }

    else
    {
      podcastUuid = [episodeCopy podcastUuid];
      [(MTEpisodeIdentifier *)v5 setPodcastUUID:podcastUuid];
    }
  }

  return v5;
}

- (MTEpisodeIdentifier)initWithPlayerItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = MTEpisodeIdentifier;
  v5 = [(MTEpisodeIdentifier *)&v16 init];
  if (v5)
  {
    episodeUuid = [itemCopy episodeUuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeUUID:episodeUuid];

    episodeGuid = [itemCopy episodeGuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeGUID:episodeGuid];

    v8 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [itemCopy episodeStoreId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeAdamID:v8];

    v9 = +[MTStoreIdentifier validatedIdNumberFromStoreId:](MTStoreIdentifier, "validatedIdNumberFromStoreId:", [itemCopy episodeStoreId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeSerpentID:v9];

    episode = [itemCopy episode];
    podcast = [episode podcast];

    if (podcast)
    {
      [(MTEpisodeIdentifier *)v5 _updateWithPodcast:podcast];
    }

    else
    {
      podcastUuid = [itemCopy podcastUuid];
      [(MTEpisodeIdentifier *)v5 setPodcastUUID:podcastUuid];

      v13 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [itemCopy podcastStoreId]);
      [(MTEpisodeIdentifier *)v5 setPodcastAdamID:v13];

      podcastFeedUrl = [itemCopy podcastFeedUrl];
      [(MTEpisodeIdentifier *)v5 setCurrentPodcastFeedURL:podcastFeedUrl];

      [(MTEpisodeIdentifier *)v5 setOriginalPodcastFeedURL:0];
    }
  }

  return v5;
}

- (void)_updateWithPodcast:(id)podcast
{
  podcastCopy = podcast;
  uuid = [podcastCopy uuid];
  [(MTEpisodeIdentifier *)self setPodcastUUID:uuid];

  v6 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [podcastCopy storeCollectionId]);
  [(MTEpisodeIdentifier *)self setPodcastAdamID:v6];

  currentFeedURL = [podcastCopy currentFeedURL];
  absoluteString = [currentFeedURL absoluteString];
  [(MTEpisodeIdentifier *)self setCurrentPodcastFeedURL:absoluteString];

  feedURL = [podcastCopy feedURL];

  [(MTEpisodeIdentifier *)self setOriginalPodcastFeedURL:feedURL];
}

- (BOOL)_hasFeedURL:(id)l
{
  lCopy = l;
  currentPodcastFeedURL = [(MTEpisodeIdentifier *)self currentPodcastFeedURL];
  v6 = [currentPodcastFeedURL isEqualToString:lCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    originalPodcastFeedURL = [(MTEpisodeIdentifier *)self originalPodcastFeedURL];
    v7 = [originalPodcastFeedURL isEqualToString:lCopy];
  }

  return v7;
}

@end