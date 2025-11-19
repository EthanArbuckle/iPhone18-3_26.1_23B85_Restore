@interface MTImageActivityItemProvider
- (MTImageActivityItemProvider)initWithDataSource:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation MTImageActivityItemProvider

- (MTImageActivityItemProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTImageActivityItemProvider;
  v6 = [(MTImageActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(MTImageActivityItemProvider *)self dataSource];
  v4 = [v3 shareImage];

  if (!v4)
  {
    v4 = +[UIImage defaultPodcastArtwork];
  }

  return v4;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:UIActivityTypeSaveToNotes])
  {
    v6 = [(MTImageActivityItemProvider *)self dataSource];
    v7 = [(MTInstagramShareModel *)v6 shareImage];
LABEL_3:
    v8 = v7;

    goto LABEL_8;
  }

  if (os_feature_enabled_story_sharing() && [v5 isEqualToString:@"com.burbn.instagram.shareextension"])
  {
    v18 = [MTInstagramShareModel alloc];
    v20 = [(MTImageActivityItemProvider *)self dataSource];
    v9 = [v20 sharePodcastTitle];
    v19 = [(MTImageActivityItemProvider *)self dataSource];
    v10 = [v19 shareEpisodeTitle];
    v11 = [(MTImageActivityItemProvider *)self dataSource];
    v12 = [v11 shareProvider];
    v13 = [(MTImageActivityItemProvider *)self dataSource];
    v14 = [v13 pubDate];
    v15 = [(MTImageActivityItemProvider *)self dataSource];
    v16 = [v15 shareImage];
    v6 = [(MTInstagramShareModel *)v18 initWithShowName:v9 episodeName:v10 creatorName:v12 publishDate:v14 artwork:v16];

    v7 = [MTInstagramShareUtil createSocialPostUIImageWithShareModel:v6];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end