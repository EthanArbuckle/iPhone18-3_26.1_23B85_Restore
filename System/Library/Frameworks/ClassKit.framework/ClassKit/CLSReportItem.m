@interface CLSReportItem
+ (void)endpointServer:(id)a3 willQueryForObjectWithPredicate:(id)a4;
@end

@implementation CLSReportItem

+ (void)endpointServer:(id)a3 willQueryForObjectWithPredicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v12 = [v6 database];
  v7 = [v6 daemon];
  v8 = sub_10008ED10([PDFetchReportsOperation alloc], v5, v12);

  v9 = [v6 client];

  v10 = sub_1000B2528(v9);
  [v8 setSourceApplicationBundleIdentifier:v10];

  v11 = [v7 operationsManager];
  sub_100123A84(v11, v8);
}

@end