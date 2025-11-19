@interface AXCatalogRefreshTask
- (AXCatalogRefreshTask)initWithPolicy:(id)a3 forceCatalogRefresh:(BOOL)a4 context:(id)a5;
@end

@implementation AXCatalogRefreshTask

- (AXCatalogRefreshTask)initWithPolicy:(id)a3 forceCatalogRefresh:(BOOL)a4 context:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000023B0;
  v7[3] = &unk_1000186C0;
  v8 = a4;
  v6.receiver = self;
  v6.super_class = AXCatalogRefreshTask;
  return [(AXManagedAssetTask *)&v6 initWithName:@"Catalog Refresh" policy:a3 context:a5 block:v7];
}

@end