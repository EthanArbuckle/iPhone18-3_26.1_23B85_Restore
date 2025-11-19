@interface MTEpisodeIdentifier
+ (id)identifierWithEpisode:(id)a3;
+ (id)identifierWithPlayerItem:(id)a3;
- (BOOL)_hasFeedURL:(id)a3;
- (MTEpisodeIdentifier)initWithEpisode:(id)a3;
- (MTEpisodeIdentifier)initWithPlayerItem:(id)a3;
- (void)_updateWithPodcast:(id)a3;
@end

@implementation MTEpisodeIdentifier

+ (id)identifierWithEpisode:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithEpisode:v3];

  return v4;
}

+ (id)identifierWithPlayerItem:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPlayerItem:v3];

  return v4;
}

- (MTEpisodeIdentifier)initWithEpisode:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MTEpisodeIdentifier;
  v5 = [(MTEpisodeIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [v4 uuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeUUID:v6];

    v7 = [v4 guid];
    [(MTEpisodeIdentifier *)v5 setEpisodeGUID:v7];

    v8 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [v4 storeTrackId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeAdamID:v8];

    v9 = +[MTStoreIdentifier validatedIdNumberFromStoreId:](MTStoreIdentifier, "validatedIdNumberFromStoreId:", [v4 storeTrackId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeSerpentID:v9];

    v10 = [v4 podcast];
    if (v10)
    {
      [(MTEpisodeIdentifier *)v5 _updateWithPodcast:v10];
    }

    else
    {
      v11 = [v4 podcastUuid];
      [(MTEpisodeIdentifier *)v5 setPodcastUUID:v11];
    }
  }

  return v5;
}

- (MTEpisodeIdentifier)initWithPlayerItem:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MTEpisodeIdentifier;
  v5 = [(MTEpisodeIdentifier *)&v16 init];
  if (v5)
  {
    v6 = [v4 episodeUuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeUUID:v6];

    v7 = [v4 episodeGuid];
    [(MTEpisodeIdentifier *)v5 setEpisodeGUID:v7];

    v8 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [v4 episodeStoreId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeAdamID:v8];

    v9 = +[MTStoreIdentifier validatedIdNumberFromStoreId:](MTStoreIdentifier, "validatedIdNumberFromStoreId:", [v4 episodeStoreId]);
    [(MTEpisodeIdentifier *)v5 setEpisodeSerpentID:v9];

    v10 = [v4 episode];
    v11 = [v10 podcast];

    if (v11)
    {
      [(MTEpisodeIdentifier *)v5 _updateWithPodcast:v11];
    }

    else
    {
      v12 = [v4 podcastUuid];
      [(MTEpisodeIdentifier *)v5 setPodcastUUID:v12];

      v13 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [v4 podcastStoreId]);
      [(MTEpisodeIdentifier *)v5 setPodcastAdamID:v13];

      v14 = [v4 podcastFeedUrl];
      [(MTEpisodeIdentifier *)v5 setCurrentPodcastFeedURL:v14];

      [(MTEpisodeIdentifier *)v5 setOriginalPodcastFeedURL:0];
    }
  }

  return v5;
}

- (void)_updateWithPodcast:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  [(MTEpisodeIdentifier *)self setPodcastUUID:v5];

  v6 = +[MTStoreIdentifier adamIdNumberFromStoreId:](MTStoreIdentifier, "adamIdNumberFromStoreId:", [v4 storeCollectionId]);
  [(MTEpisodeIdentifier *)self setPodcastAdamID:v6];

  v7 = [v4 currentFeedURL];
  v8 = [v7 absoluteString];
  [(MTEpisodeIdentifier *)self setCurrentPodcastFeedURL:v8];

  v9 = [v4 feedURL];

  [(MTEpisodeIdentifier *)self setOriginalPodcastFeedURL:v9];
}

- (BOOL)_hasFeedURL:(id)a3
{
  v4 = a3;
  v5 = [(MTEpisodeIdentifier *)self currentPodcastFeedURL];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(MTEpisodeIdentifier *)self originalPodcastFeedURL];
    v7 = [v8 isEqualToString:v4];
  }

  return v7;
}

@end