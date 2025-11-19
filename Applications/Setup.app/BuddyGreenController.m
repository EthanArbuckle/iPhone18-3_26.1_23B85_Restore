@interface BuddyGreenController
- (BFFFlowItemDelegate)delegate;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyGreenController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyGreenController *)v5 writeGreenInformedDefaultPlistIfNecessaryBlock];
  v3[2](v3);

  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end