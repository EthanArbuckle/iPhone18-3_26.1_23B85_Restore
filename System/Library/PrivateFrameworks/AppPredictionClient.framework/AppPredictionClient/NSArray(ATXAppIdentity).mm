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
  selfCopy = self;
  v11 = a2;
  selfCopy2 = self;
  v3 = [selfCopy2 _pas_mappedArrayWithTransform:&v6];
  v4 = [v3 copy];

  return v4;
}

@end