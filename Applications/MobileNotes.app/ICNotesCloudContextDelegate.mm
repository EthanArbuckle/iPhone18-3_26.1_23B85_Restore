@interface ICNotesCloudContextDelegate
- (ICNotesCloudContextDelegate)init;
- (ICNotesCloudContextDelegateAlertProvider)alertProvider;
- (void)cloudContext:(id)context didExceedQuotaForRecordID:(id)d accountID:(id)iD;
- (void)cloudContext:(id)context didPushRecordID:(id)d accountID:(id)iD;
- (void)currentInAppMessageDidChange:(id)change;
- (void)handleManageStorageDeleteAlertIfNecessary;
- (void)registerForICQAppNotificationsIfNecessary;
- (void)registerForSyncMessagesWithAlertProvider:(id)provider;
@end

@implementation ICNotesCloudContextDelegate

- (ICNotesCloudContextDelegate)init
{
  v3.receiver = self;
  v3.super_class = ICNotesCloudContextDelegate;
  result = [(ICNotesBaseCloudContextDelegate *)&v3 init];
  if (result)
  {
    result->_manageStorageAlertShown = 0;
  }

  return result;
}

- (void)registerForSyncMessagesWithAlertProvider:(id)provider
{
  [(ICNotesCloudContextDelegate *)self setAlertProvider:provider];

  [(ICNotesCloudContextDelegate *)self registerForICQAppNotificationsIfNecessary];
}

- (void)registerForICQAppNotificationsIfNecessary
{
  if (+[ICAccount isCloudKitAccountAvailable](ICAccount, "isCloudKitAccountAvailable") && (+[ICDeviceSupport isRunningUnitTests]& 1) == 0)
  {
    v4 = sub_1004E9F5C(v3);
    shared = [*(v5 + 32) shared];
    v7 = ICNotesAppBundleIdentifier();
    v9 = sub_1004E9ECC(v8);
    [shared observeUpdatesForBundleID:v7 placement:{**(v10 + 24), v9}];

    v14 = +[NSNotificationCenter defaultCenter];
    v12 = sub_1004E9DAC(v11);
    [v13 addObserver:self selector:v12 name:? object:?];
  }
}

- (void)cloudContext:(id)context didExceedQuotaForRecordID:(id)d accountID:(id)iD
{
  v6.receiver = self;
  v6.super_class = ICNotesCloudContextDelegate;
  [(ICNotesBaseCloudContextDelegate *)&v6 cloudContext:context didExceedQuotaForRecordID:d accountID:iD];
  [(ICNotesCloudContextDelegate *)self handleManageStorageDeleteAlertIfNecessary];
}

- (void)cloudContext:(id)context didPushRecordID:(id)d accountID:(id)iD
{
  v6.receiver = self;
  v6.super_class = ICNotesCloudContextDelegate;
  [(ICNotesBaseCloudContextDelegate *)&v6 cloudContext:context didPushRecordID:d accountID:iD];
  [(ICNotesCloudContextDelegate *)self handleManageStorageDeleteAlertIfNecessary];
}

- (void)currentInAppMessageDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = sub_1004E9DD0(v5);
  v9 = [v8 objectForKeyedSubscript:{**(v7 + 4064), v6}];

  [(ICNotesCloudContextDelegate *)self setSyncMessage:v9];
  if (v9)
  {
    [(ICNotesCloudContextDelegate *)self handleManageStorageDeleteAlertIfNecessary];
  }
}

- (void)handleManageStorageDeleteAlertIfNecessary
{
  syncMessage = [(ICNotesCloudContextDelegate *)self syncMessage];
  reason = [syncMessage reason];
  v6 = sub_1004E9E18(v5);
  v9 = [v8 isEqualToString:{**(v7 + 4080), v6}];

  if (v9)
  {
    if (![(ICNotesCloudContextDelegate *)self manageStorageAlertShown])
    {
      alertProvider = [(ICNotesCloudContextDelegate *)self alertProvider];
      if (alertProvider)
      {
        v11 = alertProvider;
        actions = [syncMessage actions];
        v13 = [actions count];

        if (v13)
        {
          [(ICNotesCloudContextDelegate *)self setManageStorageAlertShown:1];
          actions2 = [syncMessage actions];
          v15 = [actions2 objectAtIndexedSubscript:0];

          alertProvider2 = [(ICNotesCloudContextDelegate *)self alertProvider];
          title = [syncMessage title];
          subTitle = [syncMessage subTitle];
          title2 = [v15 title];
          dismissAction = [syncMessage dismissAction];
          title3 = [dismissAction title];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10009F2E4;
          v23[3] = &unk_1006469F0;
          v24 = v15;
          v22 = v15;
          [alertProvider2 alertWithTitle:title message:subTitle cancelButtonTitle:title2 defaultButtonTitle:title3 actionHandler:v23];
        }
      }
    }
  }
}

- (ICNotesCloudContextDelegateAlertProvider)alertProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_alertProvider);

  return WeakRetained;
}

@end