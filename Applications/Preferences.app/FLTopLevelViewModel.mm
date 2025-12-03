@interface FLTopLevelViewModel
- (void)sapp_groupsWithQueue:(id)queue completion:(id)completion;
@end

@implementation FLTopLevelViewModel

- (void)sapp_groupsWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v8 aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];

  v11 = +[ACAccountStore defaultStore];
  dmc_visibleSecondaryRemoteManagementAccounts = [v11 dmc_visibleSecondaryRemoteManagementAccounts];
  v13 = [dmc_visibleSecondaryRemoteManagementAccounts na_flatMap:&stru_10014CA08];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CF08;
  block[3] = &unk_10014CA30;
  objc_copyWeak(&v21, &location);
  v18 = identifier;
  v19 = v13;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v13;
  v16 = identifier;
  dispatch_async(queueCopy, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

@end