@interface MTShareUtil
+ (id)shareActivityItems:(id)a3;
+ (id)shareActivityItemsWithEpisode:(id)a3;
+ (id)shareActivityItemsWithPlayerItem:(id)a3;
+ (id)shareActivityItemsWithPodcast:(id)a3;
+ (id)shareActivityItemsWithPodcastDetails:(id)a3;
+ (id)shareViewControllerWithDataSource:(id)a3;
+ (id)shareViewControllerWithEpisode:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6;
+ (id)shareViewControllerWithPlayerItem:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6;
+ (id)shareViewControllerWithPodcast:(id)a3;
+ (id)shareViewControllerWithPodcastDetails:(id)a3;
@end

@implementation MTShareUtil

+ (id)shareViewControllerWithDataSource:(id)a3
{
  v3 = a3;
  v4 = [[MTShareUtilActivityViewController alloc] initWithDataSource:v3];

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

+ (id)shareActivityItems:(id)a3
{
  v3 = a3;
  v4 = [[MTTextActivityItemProvider alloc] initWithDataSource:v3];
  v5 = [[MTEmailActivityItemProvider alloc] initWithDataSource:v3];
  v6 = [[MTImageActivityItemProvider alloc] initWithDataSource:v3];
  v7 = [[MTURLActivityItemProvider alloc] initWithDataSource:v3];
  v8 = [[MTLinkPresentationActivityItemProvider alloc] initWithDataSource:v3];

  v9 = [[NSArray alloc] initWithObjects:{v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)shareViewControllerWithPlayerItem:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6
{
  v9 = a3;
  v10 = [[MTShareUtilDataSource alloc] initWithPlayerItem:v9 selectedReferenceTime:a4 selectedPlayerTime:a5 currentPlayerTime:a6];

  v11 = [MTShareUtil shareViewControllerWithDataSource:v10];

  return v11;
}

+ (id)shareViewControllerWithEpisode:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6
{
  v9 = [a3 uuid];
  v10 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:v9];

  v11 = [[MTShareUtilDataSource alloc] initWithPlayerItem:v10 selectedReferenceTime:a4 selectedPlayerTime:a5 currentPlayerTime:a6];
  v12 = [MTShareUtil shareViewControllerWithDataSource:v11];

  return v12;
}

+ (id)shareViewControllerWithPodcast:(id)a3
{
  v3 = a3;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcast:v3];

  v5 = [MTShareUtil shareViewControllerWithDataSource:v4];

  return v5;
}

+ (id)shareViewControllerWithPodcastDetails:(id)a3
{
  v3 = a3;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcastDetails:v3];

  v5 = [MTShareUtil shareViewControllerWithDataSource:v4];

  return v5;
}

+ (id)shareActivityItemsWithPlayerItem:(id)a3
{
  v3 = a3;
  v4 = [MTShareUtilDataSource alloc];
  [v3 playhead];
  v6 = [(MTShareUtilDataSource *)v4 initWithPlayerItem:v3 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:v5];

  v7 = [MTShareUtil shareActivityItems:v6];

  return v7;
}

+ (id)shareActivityItemsWithPodcast:(id)a3
{
  v3 = a3;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcast:v3];

  v5 = [MTShareUtil shareActivityItems:v4];

  return v5;
}

+ (id)shareActivityItemsWithEpisode:(id)a3
{
  v3 = a3;
  v4 = [v3 uuid];
  v5 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:v4];

  v6 = [MTShareUtilDataSource alloc];
  [v3 playhead];
  v8 = v7;

  v9 = [(MTShareUtilDataSource *)v6 initWithPlayerItem:v5 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:v8];
  v10 = [MTShareUtil shareActivityItems:v9];

  return v10;
}

+ (id)shareActivityItemsWithPodcastDetails:(id)a3
{
  v3 = a3;
  v4 = [[MTShareUtilDataSource alloc] initWithPodcastDetails:v3];

  v5 = [MTShareUtil shareActivityItems:v4];

  return v5;
}

@end