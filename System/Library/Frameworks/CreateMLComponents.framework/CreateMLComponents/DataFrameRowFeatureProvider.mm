@interface DataFrameRowFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation DataFrameRowFeatureProvider

- (NSSet)featureNames
{

  sub_237D4BF28();

  v2 = sub_237EF8C50();

  return v2;
}

- (id)featureValueForName:(id)name
{
  sub_237EF8590();

  v3 = sub_237D4C1B0();

  return v3;
}

@end