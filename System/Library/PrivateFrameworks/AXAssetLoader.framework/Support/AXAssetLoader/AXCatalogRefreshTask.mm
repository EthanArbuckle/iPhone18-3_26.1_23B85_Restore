@interface AXCatalogRefreshTask
- (AXCatalogRefreshTask)initWithPolicy:(id)policy forceCatalogRefresh:(BOOL)refresh context:(id)context;
@end

@implementation AXCatalogRefreshTask

- (AXCatalogRefreshTask)initWithPolicy:(id)policy forceCatalogRefresh:(BOOL)refresh context:(id)context
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000023B0;
  v7[3] = &unk_1000186C0;
  refreshCopy = refresh;
  v6.receiver = self;
  v6.super_class = AXCatalogRefreshTask;
  return [(AXManagedAssetTask *)&v6 initWithName:@"Catalog Refresh" policy:policy context:context block:v7];
}

@end