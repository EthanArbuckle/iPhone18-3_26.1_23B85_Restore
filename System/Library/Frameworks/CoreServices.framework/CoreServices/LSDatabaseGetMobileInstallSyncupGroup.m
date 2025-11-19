@interface LSDatabaseGetMobileInstallSyncupGroup
@end

@implementation LSDatabaseGetMobileInstallSyncupGroup

void ___LSDatabaseGetMobileInstallSyncupGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = _LSDatabaseGetMobileInstallSyncupGroup::syncupGroup;
  _LSDatabaseGetMobileInstallSyncupGroup::syncupGroup = v0;
}

@end