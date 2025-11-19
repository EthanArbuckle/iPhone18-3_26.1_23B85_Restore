@interface AKSatoriController
- (AKSatoriController)initWithClient:(id)a3;
- (id)_verificationSessionForReason:(unint64_t)a3;
- (void)fetchRealUserLikelihoodForRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)warmUpVerificationSessionWithCompletionHandler:(id)a3;
@end

@implementation AKSatoriController

- (AKSatoriController)initWithClient:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKSatoriController;
  v6 = [(AKSatoriController *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_client, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)_verificationSessionForReason:(unint64_t)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = [[DIVerificationSessionContext alloc] initWithName:@"tiburon" tier:0 serviceUrl:0 httpHeaders:?];
  [v7 setInvocationReason:v8];
  v3 = [DIVerificationSession alloc];
  v6 = [v3 initWithContext:v7];
  v5 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (void)warmUpVerificationSessionWithCompletionHandler:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = +[AKAccountManager sharedInstance];
  v38 = [(AKAccountManager *)v16 primaryAuthKitAccount];
  _objc_release(v16);
  if (v38)
  {
    v10 = +[AKAccountManager sharedInstance];
    v11 = [(AKAccountManager *)v10 shouldPerformSatoriWarmupVerificationForAccount:v38];
    _objc_release(v10);
    if (v11)
    {
      v30 = os_transaction_create();
      v29 = [(AKSatoriController *)v40 _verificationSessionForReason:1];
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v28;
        v5 = v27;
        sub_10001CEEC(v26);
        _os_log_impl(&_mh_execute_header, v4, v5, "Starting verification warm up..", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v3 = v29;
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1000E5030;
      v21 = &unk_100323030;
      v25 = _objc_retain(location[0]);
      v22 = _objc_retain(v38);
      v23 = _objc_retain(v29);
      v24 = _objc_retain(v30);
      [v3 performVerificationWithAttributes:0 completion:&v17];
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
      v34 = 0;
    }

    else
    {
      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v33;
        v9 = v32;
        sub_10001CEEC(v31);
        _os_log_impl(&_mh_execute_header, v8, v9, "Verification Warm up has already been performed in the last hour skipping...", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      if (location[0])
      {
        v6 = location[0];
        v7 = [NSError ak_errorWithCode:-7028];
        v6[2](v6, 0);
        _objc_release(v7);
      }

      v34 = 1;
    }
  }

  else
  {
    v37 = _AKLogSystem();
    v36 = 16;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      sub_10001CEEC(v35);
      _os_log_error_impl(&_mh_execute_header, log, type, "Nil account cannot possibly need a warm up!", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    if (location[0])
    {
      v12 = location[0];
      v13 = [NSError ak_errorWithCode:-7022];
      v12[2](v12, 0);
      _objc_release(v13);
    }

    v34 = 1;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchRealUserLikelihoodForRequest:(id)a3 withCompletionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = [(AKSatoriController *)v18 _verificationSessionForReason:0];
  v14 = mach_absolute_time();
  v5 = v15;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000E53C0;
  v10 = &unk_100323080;
  v11 = _objc_retain(v18);
  v13[1] = v14;
  v12 = _objc_retain(v15);
  v13[0] = _objc_retain(v16);
  [v5 performVerificationWithAttributes:0 completion:?];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end