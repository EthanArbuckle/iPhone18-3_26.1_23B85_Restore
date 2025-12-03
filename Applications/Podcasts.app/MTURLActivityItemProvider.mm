@interface MTURLActivityItemProvider
- (MTURLActivityItemProvider)initWithDataSource:(id)source;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MTURLActivityItemProvider

- (MTURLActivityItemProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MTURLActivityItemProvider;
  v6 = [(MTURLActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  dataSource = [(MTURLActivityItemProvider *)self dataSource];
  shareURL = [dataSource shareURL];

  return shareURL;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:UIActivityTypeMail])
  {
    shareURL = 0;
  }

  else
  {
    dataSource = [(MTURLActivityItemProvider *)self dataSource];
    shareURL = [dataSource shareURL];
  }

  return shareURL;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  v5 = [(MTURLActivityItemProvider *)self dataSource:controller];
  shareImage = [v5 shareImage];

  return shareImage;
}

@end