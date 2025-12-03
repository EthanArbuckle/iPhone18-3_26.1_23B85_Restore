@interface MTTextActivityItemProvider
- (MTTextActivityItemProvider)initWithDataSource:(id)source;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MTTextActivityItemProvider

- (MTTextActivityItemProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MTTextActivityItemProvider;
  v6 = [(MTTextActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  dataSource = [(MTTextActivityItemProvider *)self dataSource];
  sharePodcastTitle = [dataSource sharePodcastTitle];

  return sharePodcastTitle;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:UIActivityTypeSaveToNotes])
  {
    dataSource = [(MTTextActivityItemProvider *)self dataSource];
    v6 = [MTShareUtilStringFactory textForShareToNotesFromDataSource:dataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end