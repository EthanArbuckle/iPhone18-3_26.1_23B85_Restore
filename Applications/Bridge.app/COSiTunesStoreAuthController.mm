@interface COSiTunesStoreAuthController
+ (id)DSIDForiTunesStoreAccount:(id)account;
+ (id)altDSIDForiTunesStoreAccount:(id)account;
+ (id)iTunesStoreAccountInAccountStore;
+ (void)repairDialogsForActiveDeviceWithCompletion:(id)completion;
+ (void)saveToPairedDeviceiTunesStoreAccount:(id)account fromAccountStore:(id)store completion:(id)completion;
@end

@implementation COSiTunesStoreAuthController

+ (id)DSIDForiTunesStoreAccount:(id)account
{
  accountCopy = account;
  v4 = sub_10002C8C8();
  v5 = [v4 DSIDForAccount:accountCopy service:AIDAServiceTypeStore];

  return v5;
}

+ (id)altDSIDForiTunesStoreAccount:(id)account
{
  accountCopy = account;
  v4 = sub_10002C8C8();
  v5 = [v4 altDSIDForAccount:accountCopy service:AIDAServiceTypeStore];

  return v5;
}

+ (id)iTunesStoreAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeStore];

  return v3;
}

+ (void)saveToPairedDeviceiTunesStoreAccount:(id)account fromAccountStore:(id)store completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  storeCopy = store;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = accountCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving iTunesStore account (%@) to paired device", &v12, 0xCu);
  }

  v11 = +[COSAppleIDAuthController amsSaveOptions];
  [COSAppleIDAuthController saveToPairedDeviceAccount:accountCopy fromAccountStore:storeCopy withOptions:v11 completion:completionCopy];
}

+ (void)repairDialogsForActiveDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(AMSDeviceMessenger);
  v5 = objc_alloc_init(AMSDeviceMessengerFilter);
  [v5 setDeviceType:1];
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AMSDeviceMessenger (%@)", buf, 0xCu);
  }

  v7 = [v4 dialogsWithFilter:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100104D30;
  v9[3] = &unk_10026BEB8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 addFinishBlock:v9];
}

@end