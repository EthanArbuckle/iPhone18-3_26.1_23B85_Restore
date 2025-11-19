@interface MTURLActivityItemProvider
- (MTURLActivityItemProvider)initWithDataSource:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation MTURLActivityItemProvider

- (MTURLActivityItemProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTURLActivityItemProvider;
  v6 = [(MTURLActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(MTURLActivityItemProvider *)self dataSource];
  v4 = [v3 shareURL];

  return v4;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:UIActivityTypeMail])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MTURLActivityItemProvider *)self dataSource];
    v5 = [v6 shareURL];
  }

  return v5;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  v5 = [(MTURLActivityItemProvider *)self dataSource:a3];
  v6 = [v5 shareImage];

  return v6;
}

@end