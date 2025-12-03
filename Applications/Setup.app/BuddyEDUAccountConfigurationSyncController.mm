@interface BuddyEDUAccountConfigurationSyncController
+ (BOOL)controllerNeedsToRun;
- (BFFFlowItemDelegate)delegate;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startFlowItem:(BOOL)item;
@end

@implementation BuddyEDUAccountConfigurationSyncController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[BYPreferencesController buddyPreferences];
  v3 = [v2 objectForKey:BYBuddyDoneKey];
  bOOLValue = [v3 BOOLValue];

  v5 = +[BYManagedAppleIDBootstrap isMultiUser];
  v6 = 0;
  if (v5)
  {
    v7 = +[BYManagedAppleIDBootstrap isManagedAppleIDSignedIn];
    v6 = 0;
    if (v7)
    {
      v8 = +[BuddyAppleIDPasswordChangeController controllerNeedsToRun];
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        return !(bOOLValue & 1);
      }
    }
  }

  return v6;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[BYManagedAppleIDBootstrap sharedManager];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10006E9B4;
  v8 = &unk_10032B120;
  v9 = location[0];
  [v3 writeAccountConfigurationIfNeededWithCompletion:&v4];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startFlowItem:(BOOL)item
{
  delegate = [(BuddyEDUAccountConfigurationSyncController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self nextItemClass:objc_opt_class()];
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end