@interface NSArray(ATXAppIdentity_NSString)
- (id)appIdentitiesFromBundleIDs;
@end

@implementation NSArray(ATXAppIdentity_NSString)

- (id)appIdentitiesFromBundleIDs
{
  v1 = [a1 _pas_mappedArrayWithTransform:&__block_literal_global_0];
  v2 = [v1 copy];

  return v2;
}

@end