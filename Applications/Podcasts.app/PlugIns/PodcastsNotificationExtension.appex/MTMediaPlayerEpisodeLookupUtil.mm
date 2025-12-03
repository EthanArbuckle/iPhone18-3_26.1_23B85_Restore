@interface MTMediaPlayerEpisodeLookupUtil
+ (id)findEpisodeFromModelObject:(id)object;
@end

@implementation MTMediaPlayerEpisodeLookupUtil

+ (id)findEpisodeFromModelObject:(id)object
{
  objectCopy = object;
  identifiers = [objectCopy identifiers];
  v5 = objc_alloc_init(MTEpisodeLookupRequest);
  universalStore = [identifiers universalStore];
  [v5 setStoreTrackId:{objc_msgSend(universalStore, "adamID")}];

  library = [identifiers library];
  [v5 setPersistentID:{objc_msgSend(library, "persistentID")}];

  library2 = [identifiers library];
  databaseID = [library2 databaseID];
  [v5 setUuid:databaseID];

  vendorID = [identifiers vendorID];
  [v5 setEpisodeGuid:vendorID];

  podcast = [objectCopy podcast];
  feedURL = [podcast feedURL];
  absoluteString = [feedURL absoluteString];
  [v5 setPodcastFeedUrl:absoluteString];

  title = [objectCopy title];
  [v5 setEpisodeTitle:title];

  author = [objectCopy author];
  name = [author name];
  [v5 setPodcastTitle:name];

  streamURL = [objectCopy streamURL];

  absoluteString2 = [streamURL absoluteString];
  [v5 setStreamUrl:absoluteString2];

  v19 = +[MTEpisodeLookupUtil sharedInstance];
  v20 = [v19 findEpisodeWithRequest:v5];

  return v20;
}

@end