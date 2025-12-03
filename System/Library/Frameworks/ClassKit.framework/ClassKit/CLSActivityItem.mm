@interface CLSActivityItem
- (id)generateReportFromDataInDatabase:(id)database;
- (void)_populateReportItem:(id)item;
@end

@implementation CLSActivityItem

- (id)generateReportFromDataInDatabase:(id)database
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_populateReportItem:(id)item
{
  itemCopy = item;
  title = [(CLSActivityItem *)self title];
  [itemCopy setTitle:title];

  identifier = [(CLSActivityItem *)self identifier];
  [itemCopy setIdentifier:identifier];
}

@end