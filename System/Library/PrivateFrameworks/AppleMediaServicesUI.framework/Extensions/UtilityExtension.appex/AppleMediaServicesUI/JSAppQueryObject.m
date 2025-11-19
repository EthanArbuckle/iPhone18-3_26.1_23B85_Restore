@interface JSAppQueryObject
- (id)queryAlmondApps;
- (id)queryBundleIds:(id)a3;
- (id)queryStoreIds:(id)a3;
@end

@implementation JSAppQueryObject

- (id)queryAlmondApps
{
  v2 = self;
  v3 = sub_1000111DC();

  return v3;
}

- (id)queryBundleIds:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001138C();

  return v6;
}

- (id)queryStoreIds:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100011CD8();

  return v6;
}

@end