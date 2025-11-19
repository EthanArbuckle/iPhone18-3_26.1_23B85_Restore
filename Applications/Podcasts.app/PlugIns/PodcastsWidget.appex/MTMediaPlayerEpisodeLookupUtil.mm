@interface MTMediaPlayerEpisodeLookupUtil
+ (id)findEpisodeFromModelObject:(id)a3;
@end

@implementation MTMediaPlayerEpisodeLookupUtil

+ (id)findEpisodeFromModelObject:(id)a3
{
  v3 = a3;
  v4 = [v3 identifiers];
  v5 = objc_alloc_init(MTEpisodeLookupRequest);
  v6 = [v4 universalStore];
  [v5 setStoreTrackId:{objc_msgSend(v6, "adamID")}];

  v7 = [v4 library];
  [v5 setPersistentID:{objc_msgSend(v7, "persistentID")}];

  v8 = [v4 library];
  v9 = [v8 databaseID];
  [v5 setUuid:v9];

  v10 = [v4 vendorID];
  [v5 setEpisodeGuid:v10];

  v11 = [v3 podcast];
  v12 = [v11 feedURL];
  v13 = [v12 absoluteString];
  [v5 setPodcastFeedUrl:v13];

  v14 = [v3 title];
  [v5 setEpisodeTitle:v14];

  v15 = [v3 author];
  v16 = [v15 name];
  [v5 setPodcastTitle:v16];

  v17 = [v3 streamURL];

  v18 = [v17 absoluteString];
  [v5 setStreamUrl:v18];

  v19 = +[MTEpisodeLookupUtil sharedInstance];
  v20 = [v19 findEpisodeWithRequest:v5];

  return v20;
}

@end