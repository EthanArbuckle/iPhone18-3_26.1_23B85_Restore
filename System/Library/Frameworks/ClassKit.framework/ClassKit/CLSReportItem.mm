@interface CLSReportItem
+ (void)endpointServer:(id)server willQueryForObjectWithPredicate:(id)predicate;
@end

@implementation CLSReportItem

+ (void)endpointServer:(id)server willQueryForObjectWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  serverCopy = server;
  database = [serverCopy database];
  daemon = [serverCopy daemon];
  v8 = sub_10008ED10([PDFetchReportsOperation alloc], predicateCopy, database);

  client = [serverCopy client];

  v10 = sub_1000B2528(client);
  [v8 setSourceApplicationBundleIdentifier:v10];

  operationsManager = [daemon operationsManager];
  sub_100123A84(operationsManager, v8);
}

@end