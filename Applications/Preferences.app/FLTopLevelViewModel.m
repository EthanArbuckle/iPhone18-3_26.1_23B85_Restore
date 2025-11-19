@interface FLTopLevelViewModel
- (void)sapp_groupsWithQueue:(id)a3 completion:(id)a4;
@end

@implementation FLTopLevelViewModel

- (void)sapp_groupsWithQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ACAccountStore defaultStore];
  v9 = [v8 aa_primaryAppleAccount];
  v10 = [v9 identifier];

  v11 = +[ACAccountStore defaultStore];
  v12 = [v11 dmc_visibleSecondaryRemoteManagementAccounts];
  v13 = [v12 na_flatMap:&stru_10014CA08];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CF08;
  block[3] = &unk_10014CA30;
  objc_copyWeak(&v21, &location);
  v18 = v10;
  v19 = v13;
  v20 = v6;
  v14 = v6;
  v15 = v13;
  v16 = v10;
  dispatch_async(v7, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

@end