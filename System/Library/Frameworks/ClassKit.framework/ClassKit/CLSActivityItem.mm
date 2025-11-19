@interface CLSActivityItem
- (id)generateReportFromDataInDatabase:(id)a3;
- (void)_populateReportItem:(id)a3;
@end

@implementation CLSActivityItem

- (id)generateReportFromDataInDatabase:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_populateReportItem:(id)a3
{
  v4 = a3;
  v5 = [(CLSActivityItem *)self title];
  [v4 setTitle:v5];

  v6 = [(CLSActivityItem *)self identifier];
  [v4 setIdentifier:v6];
}

@end