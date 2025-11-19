@interface BuddyProximityCloudDependentHostController
- (BFFFlowItemDelegate)delegate;
@end

@implementation BuddyProximityCloudDependentHostController

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end