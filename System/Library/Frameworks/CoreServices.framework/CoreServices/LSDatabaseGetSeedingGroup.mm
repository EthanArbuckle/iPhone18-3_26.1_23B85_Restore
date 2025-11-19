@interface LSDatabaseGetSeedingGroup
@end

@implementation LSDatabaseGetSeedingGroup

void ___LSDatabaseGetSeedingGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = _LSDatabaseGetSeedingGroup::seedingGroup;
  _LSDatabaseGetSeedingGroup::seedingGroup = v0;
}

@end