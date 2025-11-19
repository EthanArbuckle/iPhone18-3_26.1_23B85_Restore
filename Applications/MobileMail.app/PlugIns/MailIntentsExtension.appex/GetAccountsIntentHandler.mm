@interface GetAccountsIntentHandler
+ (EFScheduler)scheduler;
+ (OS_os_log)log;
- (EMDaemonInterface)daemonInterface;
- (void)handleMFGetAccounts:(id)a3 completion:(id)a4;
- (void)provideAccountsOptionsCollectionForMFGetAccounts:(id)a3 withCompletion:(id)a4;
@end

@implementation GetAccountsIntentHandler

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012F0;
  block[3] = &unk_10000C3A0;
  block[4] = a1;
  if (qword_100011EA0 != -1)
  {
    dispatch_once(&qword_100011EA0, block);
  }

  v2 = qword_100011E98;

  return v2;
}

- (void)provideAccountsOptionsCollectionForMFGetAccounts:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = +[GetAccountsIntentHandler scheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001454;
  v8[3] = &unk_10000C408;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  [v6 performBlock:v8];
}

- (void)handleMFGetAccounts:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [[MFGetAccountsIntentResponse alloc] initWithCode:4 userActivity:0];
  v7 = [v8 accounts];
  [(MFGetAccountsIntentResponse *)v6 setAccounts:v7];

  v5[2](v5, v6);
}

+ (EFScheduler)scheduler
{
  if (qword_100011EB0 != -1)
  {
    sub_100006A5C();
  }

  v3 = qword_100011EA8;

  return v3;
}

- (EMDaemonInterface)daemonInterface
{
  daemonInterface = self->_daemonInterface;
  if (!daemonInterface)
  {
    v4 = objc_alloc_init(EMDaemonInterface);
    v5 = self->_daemonInterface;
    self->_daemonInterface = v4;

    daemonInterface = self->_daemonInterface;
  }

  return daemonInterface;
}

@end