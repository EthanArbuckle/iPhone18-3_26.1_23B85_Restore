@interface COSiTunesStoreAuthController
+ (id)DSIDForiTunesStoreAccount:(id)a3;
+ (id)altDSIDForiTunesStoreAccount:(id)a3;
+ (id)iTunesStoreAccountInAccountStore;
+ (void)repairDialogsForActiveDeviceWithCompletion:(id)a3;
+ (void)saveToPairedDeviceiTunesStoreAccount:(id)a3 fromAccountStore:(id)a4 completion:(id)a5;
@end

@implementation COSiTunesStoreAuthController

+ (id)DSIDForiTunesStoreAccount:(id)a3
{
  v3 = a3;
  v4 = sub_10002C8C8();
  v5 = [v4 DSIDForAccount:v3 service:AIDAServiceTypeStore];

  return v5;
}

+ (id)altDSIDForiTunesStoreAccount:(id)a3
{
  v3 = a3;
  v4 = sub_10002C8C8();
  v5 = [v4 altDSIDForAccount:v3 service:AIDAServiceTypeStore];

  return v5;
}

+ (id)iTunesStoreAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeStore];

  return v3;
}

+ (void)saveToPairedDeviceiTunesStoreAccount:(id)a3 fromAccountStore:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving iTunesStore account (%@) to paired device", &v12, 0xCu);
  }

  v11 = +[COSAppleIDAuthController amsSaveOptions];
  [COSAppleIDAuthController saveToPairedDeviceAccount:v7 fromAccountStore:v9 withOptions:v11 completion:v8];
}

+ (void)repairDialogsForActiveDeviceWithCompletion:(id)a3
{
  v3 = a3;
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
  v10 = v3;
  v8 = v3;
  [v7 addFinishBlock:v9];
}

@end