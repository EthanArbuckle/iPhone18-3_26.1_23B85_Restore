@interface JSAppQueryObject
- (id)queryAlmondApps;
- (id)queryBundleIds:(id)ids;
- (id)queryStoreIds:(id)ids;
@end

@implementation JSAppQueryObject

- (id)queryAlmondApps
{
  selfCopy = self;
  v3 = sub_1000111DC();

  return v3;
}

- (id)queryBundleIds:(id)ids
{
  idsCopy = ids;
  selfCopy = self;
  v6 = sub_10001138C();

  return v6;
}

- (id)queryStoreIds:(id)ids
{
  idsCopy = ids;
  selfCopy = self;
  v6 = sub_100011CD8();

  return v6;
}

@end