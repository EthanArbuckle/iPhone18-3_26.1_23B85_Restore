@interface MTImageActivityItemProvider
- (MTImageActivityItemProvider)initWithDataSource:(id)source;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MTImageActivityItemProvider

- (MTImageActivityItemProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MTImageActivityItemProvider;
  v6 = [(MTImageActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  dataSource = [(MTImageActivityItemProvider *)self dataSource];
  shareImage = [dataSource shareImage];

  if (!shareImage)
  {
    shareImage = +[UIImage defaultPodcastArtwork];
  }

  return shareImage;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:UIActivityTypeSaveToNotes])
  {
    dataSource = [(MTImageActivityItemProvider *)self dataSource];
    shareImage = [(MTInstagramShareModel *)dataSource shareImage];
LABEL_3:
    v8 = shareImage;

    goto LABEL_8;
  }

  if (os_feature_enabled_story_sharing() && [typeCopy isEqualToString:@"com.burbn.instagram.shareextension"])
  {
    v18 = [MTInstagramShareModel alloc];
    dataSource2 = [(MTImageActivityItemProvider *)self dataSource];
    sharePodcastTitle = [dataSource2 sharePodcastTitle];
    dataSource3 = [(MTImageActivityItemProvider *)self dataSource];
    shareEpisodeTitle = [dataSource3 shareEpisodeTitle];
    dataSource4 = [(MTImageActivityItemProvider *)self dataSource];
    shareProvider = [dataSource4 shareProvider];
    dataSource5 = [(MTImageActivityItemProvider *)self dataSource];
    pubDate = [dataSource5 pubDate];
    dataSource6 = [(MTImageActivityItemProvider *)self dataSource];
    shareImage2 = [dataSource6 shareImage];
    dataSource = [(MTInstagramShareModel *)v18 initWithShowName:sharePodcastTitle episodeName:shareEpisodeTitle creatorName:shareProvider publishDate:pubDate artwork:shareImage2];

    shareImage = [MTInstagramShareUtil createSocialPostUIImageWithShareModel:dataSource];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end