@interface AddExceptionTask
- (AddExceptionTask)initWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 metadata:(id)a15 responseBundleIdentifier:(id)a16;
- (id)perform;
@end

@implementation AddExceptionTask

- (AddExceptionTask)initWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 metadata:(id)a15 responseBundleIdentifier:(id)a16
{
  v40 = a3;
  v28 = a5;
  v39 = a5;
  v38 = a6;
  v20 = a7;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v33 = a11;
  v32 = a12;
  v31 = a13;
  v21 = a14;
  v30 = a15;
  v22 = a16;
  v41.receiver = self;
  v41.super_class = AddExceptionTask;
  v23 = [(AddExceptionTask *)&v41 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_bundleIdentifier, v20);
    objc_storeStrong(&v24->_adamID, a8);
    objc_storeStrong(&v24->_metadata, a15);
    objc_storeStrong(&v24->_distributorID, a9);
    objc_storeStrong(&v24->_ageRatingValue, a10);
    objc_storeStrong(&v24->_UUID, a3);
    v24->_type = a4;
    objc_storeStrong(&v24->_message, a6);
    objc_storeStrong(&v24->_preApprove, a11);
    objc_storeStrong(&v24->_postApprove, a12);
    objc_storeStrong(&v24->_preDecline, a13);
    objc_storeStrong(&v24->_postDecline, a14);
    objc_storeStrong(&v24->_responseBundleIdentifier, a16);
    objc_storeStrong(&v24->_title, v28);
  }

  return v24;
}

- (id)perform
{
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching active iCloud account, so we can check existing ST Exceptions", buf, 0xCu);
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_fetchActiveiCloudAccount];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000048FC;
  v13[3] = &unk_100054D20;
  v13[4] = self;
  v9 = v3;
  v14 = v9;
  [v8 addFinishBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

@end