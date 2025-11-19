@interface MTTextActivityItemProvider
- (MTTextActivityItemProvider)initWithDataSource:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation MTTextActivityItemProvider

- (MTTextActivityItemProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTTextActivityItemProvider;
  v6 = [(MTTextActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(MTTextActivityItemProvider *)self dataSource];
  v4 = [v3 sharePodcastTitle];

  return v4;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:UIActivityTypeSaveToNotes])
  {
    v5 = [(MTTextActivityItemProvider *)self dataSource];
    v6 = [MTShareUtilStringFactory textForShareToNotesFromDataSource:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end