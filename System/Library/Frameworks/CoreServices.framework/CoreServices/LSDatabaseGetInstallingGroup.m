@interface LSDatabaseGetInstallingGroup
@end

@implementation LSDatabaseGetInstallingGroup

void ___LSDatabaseGetInstallingGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = _LSDatabaseGetInstallingGroup::installingGroup;
  _LSDatabaseGetInstallingGroup::installingGroup = v0;
}

@end