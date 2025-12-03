@interface MTShareUtil
+ (id)shareActivityItems:(id)items;
+ (id)shareActivityItemsWithEpisode:(id)episode;
+ (id)shareActivityItemsWithPlayerItem:(id)item;
+ (id)shareActivityItemsWithPodcast:(id)podcast;
+ (id)shareActivityItemsWithPodcastDetails:(id)details;
+ (id)shareViewControllerWithDataSource:(id)source;
+ (id)shareViewControllerWithEpisode:(id)episode selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime;
+ (id)shareViewControllerWithPlayerItem:(id)item selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime;
+ (id)shareViewControllerWithPodcast:(id)podcast;
+ (id)shareViewControllerWithPodcastDetails:(id)details;
@end

@implementation MTShareUtil

+ (id)shareViewControllerWithDataSource:(id)source
{
  sourceCopy = source;
  v4 = [[MTShareUtilActivityViewController alloc] initWithDataSource:sourceCopy];

  [(MTShareUtilActivityViewController *)v4 setObjectManipulationDelegate:v4];
  v7[0] = UIActivityTypePrint;
  v7[1] = UIActivityTypeAssignToContact;
  v7[2] = UIActivityTypeAddToReadingList;
  v7[3] = UIActivityTypePostToFlickr;
  v7[4] = UIActivityTypePostToVimeo;
  v7[5] = UIActivityTypeSaveToCameraRoll;
  v7[6] = UIActivityTypeCreateReminder;
  v5 = [NSArray arrayWithObjects:v7 count:7];
  [(MTShareUtilActivityViewController *)v4 setExcludedActivityTypes:v5];

  return v4;
}

+ (id)shareActivityItems:(id)items
{
  itemsCopy = items;
  v4 = [[MTTextActivityItemProvider alloc] initWithDataSource:itemsCopy];
  v5 = [[MTEmailActivityItemProvider alloc] initWithDataSource:itemsCopy];
  v6 = [[MTImageActivityItemProvider alloc] initWithDataSource:itemsCopy];
  v7 = [[MTURLActivityItemProvider alloc] initWithDataSource:itemsCopy];
  v8 = [[MTLinkPresentationActivityItemProvider alloc] initWithDataSource:itemsCopy];

  v9 = [[NSArray alloc] initWithObjects:{v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)shareViewControllerWithPlayerItem:(id)item selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime
{
  itemCopy = item;
  v10 = [[MTShareUtilDataSource alloc] initWithPlayerItem:itemCopy selectedReferenceTime:time selectedPlayerTime:playerTime currentPlayerTime:currentPlayerTime];

  v11 = [MTShareUtil shareViewControllerWithDataSource:v10];

  return v11;
}

+ (id)shareViewControllerWithEpisode:(id)episode selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime
{
  uuid = [episode uuid];
  v10 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:uuid];

  v11 = [[MTShareUtilDataSource alloc] initWithPlayerItem:v10 selectedReferenceTime:time selectedPlayerTime:playerTime currentPlayerTime:currentPlayerTime];
  v12 = [MTShareUtil shareViewControllerWithDataSource:v11];

  return v12;
}

+ (id)shareViewControllerWithPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcast:podcastCopy];

  v5 = [MTShareUtil shareViewControllerWithDataSource:v4];

  return v5;
}

+ (id)shareViewControllerWithPodcastDetails:(id)details
{
  detailsCopy = details;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcastDetails:detailsCopy];

  v5 = [MTShareUtil shareViewControllerWithDataSource:v4];

  return v5;
}

+ (id)shareActivityItemsWithPlayerItem:(id)item
{
  itemCopy = item;
  v4 = [MTShareUtilDataSource alloc];
  [itemCopy playhead];
  v6 = [(MTShareUtilDataSource *)v4 initWithPlayerItem:itemCopy selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:v5];

  v7 = [MTShareUtil shareActivityItems:v6];

  return v7;
}

+ (id)shareActivityItemsWithPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcast:podcastCopy];

  v5 = [MTShareUtil shareActivityItems:v4];

  return v5;
}

+ (id)shareActivityItemsWithEpisode:(id)episode
{
  episodeCopy = episode;
  uuid = [episodeCopy uuid];
  v5 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:uuid];

  v6 = [MTShareUtilDataSource alloc];
  [episodeCopy playhead];
  v8 = v7;

  v9 = [(MTShareUtilDataSource *)v6 initWithPlayerItem:v5 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:v8];
  v10 = [MTShareUtil shareActivityItems:v9];

  return v10;
}

+ (id)shareActivityItemsWithPodcastDetails:(id)details
{
  detailsCopy = details;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcastDetails:detailsCopy];

  v5 = [MTShareUtil shareActivityItems:v4];

  return v5;
}

@end