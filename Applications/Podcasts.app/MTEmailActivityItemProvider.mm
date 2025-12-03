@interface MTEmailActivityItemProvider
- (MTEmailActivityItemProvider)initWithDataSource:(id)source;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MTEmailActivityItemProvider

- (MTEmailActivityItemProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MTEmailActivityItemProvider;
  v6 = [(MTEmailActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  dataSource = [(MTEmailActivityItemProvider *)self dataSource];
  v4 = [MTShareUtilStringFactory bodyForShareEmailFromDataSource:dataSource];

  return v4;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v5 = [type isEqualToString:UIActivityTypeMail];
  dataSource = [(MTEmailActivityItemProvider *)self dataSource];
  if (v5)
  {
    [MTShareUtilStringFactory subjectForShareEmailFromDataSource:dataSource];
  }

  else
  {
    [MTShareUtilStringFactory subjectForShareGenericFromDataSource:dataSource];
  }
  v7 = ;

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:UIActivityTypeMail])
  {
    dataSource = [(MTEmailActivityItemProvider *)self dataSource];
    v6 = [MTShareUtilStringFactory bodyForShareEmailFromDataSource:dataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end