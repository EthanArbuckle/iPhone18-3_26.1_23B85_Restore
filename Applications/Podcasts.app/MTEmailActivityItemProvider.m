@interface MTEmailActivityItemProvider
- (MTEmailActivityItemProvider)initWithDataSource:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation MTEmailActivityItemProvider

- (MTEmailActivityItemProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTEmailActivityItemProvider;
  v6 = [(MTEmailActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(MTEmailActivityItemProvider *)self dataSource];
  v4 = [MTShareUtilStringFactory bodyForShareEmailFromDataSource:v3];

  return v4;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = [a4 isEqualToString:UIActivityTypeMail];
  v6 = [(MTEmailActivityItemProvider *)self dataSource];
  if (v5)
  {
    [MTShareUtilStringFactory subjectForShareEmailFromDataSource:v6];
  }

  else
  {
    [MTShareUtilStringFactory subjectForShareGenericFromDataSource:v6];
  }
  v7 = ;

  return v7;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:UIActivityTypeMail])
  {
    v5 = [(MTEmailActivityItemProvider *)self dataSource];
    v6 = [MTShareUtilStringFactory bodyForShareEmailFromDataSource:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end