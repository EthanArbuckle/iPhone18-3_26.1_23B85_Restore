@interface NSArray(ATXAppIdentity)
- (id)bundleIDsFromIdentities;
@end

@implementation NSArray(ATXAppIdentity)

- (id)bundleIDsFromIdentities
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __50__NSArray_ATXAppIdentity__bundleIDsFromIdentities__block_invoke;
  v9 = &unk_1E80C07F8;
  v10 = a1;
  v11 = a2;
  v2 = a1;
  v3 = [v2 _pas_mappedArrayWithTransform:&v6];
  v4 = [v3 copy];

  return v4;
}

@end