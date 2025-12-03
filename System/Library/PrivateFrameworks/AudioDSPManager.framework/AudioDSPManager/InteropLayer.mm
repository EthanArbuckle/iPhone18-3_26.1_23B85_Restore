@interface InteropLayer
+ (id)loadSystemConfigurationAssetsWithQuery:(id)query;
@end

@implementation InteropLayer

+ (id)loadSystemConfigurationAssetsWithQuery:(id)query
{
  queryCopy = query;
  sub_223B76C34(queryCopy);

  type metadata accessor for InteropLayerSystemConfigurationDatabaseEntry();
  v4 = sub_223BF467C();

  return v4;
}

@end