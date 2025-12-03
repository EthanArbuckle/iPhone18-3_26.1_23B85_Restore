@interface BuddyGreenController
- (BFFFlowItemDelegate)delegate;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyGreenController

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  writeGreenInformedDefaultPlistIfNecessaryBlock = [(BuddyGreenController *)selfCopy writeGreenInformedDefaultPlistIfNecessaryBlock];
  writeGreenInformedDefaultPlistIfNecessaryBlock[2](writeGreenInformedDefaultPlistIfNecessaryBlock);

  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end