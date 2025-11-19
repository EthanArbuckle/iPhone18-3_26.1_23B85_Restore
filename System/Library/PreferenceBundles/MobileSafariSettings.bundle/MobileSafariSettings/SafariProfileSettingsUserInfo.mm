@interface SafariProfileSettingsUserInfo
- (CreateEditProfileViewControllerDelegate)delegate;
- (WBTabGroupManager)tabGroupManager;
@end

@implementation SafariProfileSettingsUserInfo

- (CreateEditProfileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WBTabGroupManager)tabGroupManager
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupManager);

  return WeakRetained;
}

@end