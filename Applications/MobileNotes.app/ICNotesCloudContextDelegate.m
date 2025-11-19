@interface ICNotesCloudContextDelegate
- (ICNotesCloudContextDelegate)init;
- (ICNotesCloudContextDelegateAlertProvider)alertProvider;
- (void)cloudContext:(id)a3 didExceedQuotaForRecordID:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 didPushRecordID:(id)a4 accountID:(id)a5;
- (void)currentInAppMessageDidChange:(id)a3;
- (void)handleManageStorageDeleteAlertIfNecessary;
- (void)registerForICQAppNotificationsIfNecessary;
- (void)registerForSyncMessagesWithAlertProvider:(id)a3;
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

- (void)registerForSyncMessagesWithAlertProvider:(id)a3
{
  [(ICNotesCloudContextDelegate *)self setAlertProvider:a3];

  [(ICNotesCloudContextDelegate *)self registerForICQAppNotificationsIfNecessary];
}

- (void)registerForICQAppNotificationsIfNecessary
{
  if (+[ICAccount isCloudKitAccountAvailable](ICAccount, "isCloudKitAccountAvailable") && (+[ICDeviceSupport isRunningUnitTests]& 1) == 0)
  {
    v4 = sub_1004E9F5C(v3);
    v6 = [*(v5 + 32) shared];
    v7 = ICNotesAppBundleIdentifier();
    v9 = sub_1004E9ECC(v8);
    [v6 observeUpdatesForBundleID:v7 placement:{**(v10 + 24), v9}];

    v14 = +[NSNotificationCenter defaultCenter];
    v12 = sub_1004E9DAC(v11);
    [v13 addObserver:self selector:v12 name:? object:?];
  }
}

- (void)cloudContext:(id)a3 didExceedQuotaForRecordID:(id)a4 accountID:(id)a5
{
  v6.receiver = self;
  v6.super_class = ICNotesCloudContextDelegate;
  [(ICNotesBaseCloudContextDelegate *)&v6 cloudContext:a3 didExceedQuotaForRecordID:a4 accountID:a5];
  [(ICNotesCloudContextDelegate *)self handleManageStorageDeleteAlertIfNecessary];
}

- (void)cloudContext:(id)a3 didPushRecordID:(id)a4 accountID:(id)a5
{
  v6.receiver = self;
  v6.super_class = ICNotesCloudContextDelegate;
  [(ICNotesBaseCloudContextDelegate *)&v6 cloudContext:a3 didPushRecordID:a4 accountID:a5];
  [(ICNotesCloudContextDelegate *)self handleManageStorageDeleteAlertIfNecessary];
}

- (void)currentInAppMessageDidChange:(id)a3
{
  v4 = [a3 userInfo];
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
  v3 = [(ICNotesCloudContextDelegate *)self syncMessage];
  v4 = [v3 reason];
  v6 = sub_1004E9E18(v5);
  v9 = [v8 isEqualToString:{**(v7 + 4080), v6}];

  if (v9)
  {
    if (![(ICNotesCloudContextDelegate *)self manageStorageAlertShown])
    {
      v10 = [(ICNotesCloudContextDelegate *)self alertProvider];
      if (v10)
      {
        v11 = v10;
        v12 = [v3 actions];
        v13 = [v12 count];

        if (v13)
        {
          [(ICNotesCloudContextDelegate *)self setManageStorageAlertShown:1];
          v14 = [v3 actions];
          v15 = [v14 objectAtIndexedSubscript:0];

          v16 = [(ICNotesCloudContextDelegate *)self alertProvider];
          v17 = [v3 title];
          v18 = [v3 subTitle];
          v19 = [v15 title];
          v20 = [v3 dismissAction];
          v21 = [v20 title];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10009F2E4;
          v23[3] = &unk_1006469F0;
          v24 = v15;
          v22 = v15;
          [v16 alertWithTitle:v17 message:v18 cancelButtonTitle:v19 defaultButtonTitle:v21 actionHandler:v23];
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