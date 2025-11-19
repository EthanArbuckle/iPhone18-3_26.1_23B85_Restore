@interface NSArray
@end

@implementation NSArray

ATXAppIdentity *__62__NSArray_ATXAppIdentity_NSString__appIdentitiesFromBundleIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXAppIdentity alloc] initWithBundleIdentifier:v2];

  return v3;
}

id __50__NSArray_ATXAppIdentity__bundleIDsFromIdentities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    __50__NSArray_ATXAppIdentity__bundleIDsFromIdentities__block_invoke_cold_1(a1);
  }

  v5 = [v3 appType];
  v6 = [v3 bundleIdentifier];
  if (v5 == 1)
  {
    v7 = ATXRemoteBundleIdForBundleId();

    v6 = v7;
  }

  return v6;
}

void __50__NSArray_ATXAppIdentity__bundleIDsFromIdentities__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ATXAppIdentity.m" lineNumber:145 description:@"bundleIdentifier should be non-nil when using bundleIDsFromIdentities"];
}

@end