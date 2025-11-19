@interface AMSDPurchaseService
+ (BOOL)isConnectionEntitled:(id)a3;
+ (id)_fdsConsumedCache;
+ (id)_fdsConsumedCacheAccessQueue;
+ (id)_fdsEvaluatorCache;
+ (id)_fdsEvaluatorCacheAccessQueue;
+ (id)_fdsResultCache;
+ (id)_fdsResultCacheAccessQueue;
+ (id)_odiSessionCache;
+ (id)_odiSessionCacheAccessQueue;
- (id)_createScorerWithAction:(unint64_t)a3 account:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)_serverEndpointIdentifierForFDSAction:(unint64_t)a3;
- (id)_serviceProviderTypeForServiceIdentifier:(id)a3;
- (unint64_t)_dsidTypeForAccountType:(unint64_t)a3;
- (unint64_t)_outcomeTypeForOutcome:(unint64_t)a3;
- (void)_completeEvaluationForPurchaseIdentifier:(id)a3 logKey:(id)a4;
- (void)_generateLegacyFDSWithRequest:(id)a3 completion:(id)a4;
- (void)_generateODIFDSWithRequest:(id)a3 completion:(id)a4;
- (void)cacheFDS:(id)a3 forPurchaseIdentifier:(id)a4 logKey:(id)a5 completion:(id)a6;
- (void)cachedFDSForPurchaseIdentifier:(id)a3 logKey:(id)a4 completion:(id)a5;
- (void)createODISessionWithSessionIdentifier:(id)a3 cacheIdentifier:(id)a4 accountType:(unint64_t)a5 bundleIdentifier:(id)a6 completion:(id)a7;
- (void)didConsumeFDSForPurchaseIdentifier:(id)a3 logKey:(id)a4 completion:(id)a5;
- (void)generateFDSWithRequest:(id)a3 completion:(id)a4;
- (void)partialFDSAssessmentForRequest:(id)a3 completion:(id)a4;
- (void)provideFeedbackOnPayloadOutcome:(unint64_t)a3 cacheIdentifier:(id)a4 clearCache:(BOOL)a5 completion:(id)a6;
- (void)updateODIWithAttributes:(id)a3 forCacheIdentifier:(id)a4 completion:(id)a5;
@end

@implementation AMSDPurchaseService

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)cachedFDSForPurchaseIdentifier:(id)a3 logKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch FDS. We don't have a purchase identifier.", buf, 0x16u);
    }

    v11 = AMSError();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = sub_100077864;
  v22 = sub_100077874;
  v23 = 0;
  if (!v11)
  {
    v14 = [objc_opt_class() _fdsResultCacheAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007787C;
    block[3] = &unk_1002B1AA0;
    v19 = buf;
    block[4] = self;
    v18 = v8;
    dispatch_sync(v14, block);
  }

  if (v10)
  {
    v15 = *(*&buf[8] + 40);
    v16 = [v11 ams_sanitizedForSecureCoding];
    v10[2](v10, v15, v16);
  }

  _Block_object_dispose(buf, 8);
}

- (void)cacheFDS:(id)a3 forPurchaseIdentifier:(id)a4 logKey:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    goto LABEL_2;
  }

  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to cache FDS. We don't have a purchase identifier.", buf, 0x16u);
  }

  v15 = AMSError();
  if (!v15)
  {
LABEL_2:
    if (!v10)
    {
      [(AMSDPurchaseService *)self _completeEvaluationForPurchaseIdentifier:v11 logKey:v12];
    }

    v14 = [objc_opt_class() _fdsResultCacheAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100077B2C;
    block[3] = &unk_1002B1AC8;
    block[4] = self;
    v20 = v11;
    v21 = v10;
    dispatch_sync(v14, block);

    v15 = 0;
  }

  if (v13)
  {
    v18 = [v15 ams_sanitizedForSecureCoding];
    v13[2](v13, v18);
  }
}

- (void)didConsumeFDSForPurchaseIdentifier:(id)a3 logKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caching FDS consumption metadata", buf, 0x16u);
  }

  if (v8)
  {
    goto LABEL_6;
  }

  v15 = +[AMSLogConfig sharedConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    *buf = 138543618;
    v22 = v17;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to FDS consumption metadata. We don't have a purchase identifier.", buf, 0x16u);
  }

  v14 = AMSError();
  if (!v14)
  {
LABEL_6:
    v13 = [objc_opt_class() _fdsConsumedCacheAccessQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100077E28;
    v19[3] = &unk_1002B00E8;
    v19[4] = self;
    v20 = v8;
    dispatch_sync(v13, v19);

    v14 = 0;
  }

  if (v10)
  {
    v18 = [v14 ams_sanitizedForSecureCoding];
    v10[2](v10, v18);
  }
}

- (void)generateFDSWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [v6 logKey];
    v12 = [v6 options];
    *buf = 138543874;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    v33 = 2048;
    v34 = [v12 action];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Evaluating FDS. action = %ld", buf, 0x20u);
  }

  v13 = [v6 options];
  if ([v13 action] == 4)
  {
  }

  else
  {
    v14 = [v6 options];
    v15 = [v14 action];

    if (v15 != 5)
    {
      goto LABEL_9;
    }
  }

  v16 = [objc_opt_class() _fdsConsumedCacheAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000781C4;
  block[3] = &unk_1002B00E8;
  block[4] = self;
  v28 = v6;
  dispatch_sync(v16, block);

LABEL_9:
  v17 = [v6 options];
  if ([v17 action] == 4)
  {
  }

  else
  {
    v18 = [v6 options];
    v19 = [v18 action];

    if (v19 != 5)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000782B8;
      v23[3] = &unk_1002B1AF0;
      v20 = &v24;
      v24 = v7;
      v22 = v7;
      [(AMSDPurchaseService *)self _generateLegacyFDSWithRequest:v6 completion:v23];
      goto LABEL_14;
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10007823C;
  v25[3] = &unk_1002B1AF0;
  v20 = &v26;
  v26 = v7;
  v21 = v7;
  [(AMSDPurchaseService *)self _generateODIFDSWithRequest:v6 completion:v25];
LABEL_14:
}

- (void)partialFDSAssessmentForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100077864;
  v45 = sub_100077874;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100077864;
  v39 = sub_100077874;
  v40 = 0;
  v8 = [v6 options];
  if ([v8 action] == 4)
  {

LABEL_4:
    v11 = [objc_opt_class() _odiSessionCacheAccessQueue];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100078748;
    v30 = &unk_1002B1B18;
    v31 = self;
    v12 = v6;
    v32 = v12;
    v33 = &v41;
    v34 = &v35;
    dispatch_sync(v11, &v27);

    v13 = [AMSFDSResult alloc];
    v14 = v42[5];
    v15 = [v12 options];
    v16 = [v13 initWithValue:v14 action:{objc_msgSend(v15, "action")}];

    if (v7)
    {
      v17 = [v36[5] ams_sanitizedForSecureCoding];
      v7[2](v7, v16, v17);
    }

    goto LABEL_7;
  }

  v9 = [v6 options];
  v10 = [v9 action] == 5;

  if (v10)
  {
    goto LABEL_4;
  }

  v18 = +[AMSLogConfig sharedConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = [v6 logKey];
    v22 = [v6 options];
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 action]);
    *buf = 138543874;
    v48 = v20;
    v49 = 2114;
    v50 = v21;
    v51 = 2112;
    v52 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Partial assessments not supported for action: %@", buf, 0x20u);
  }

  v24 = AMSError();
  v25 = v36[5];
  v36[5] = v24;

  if (v7)
  {
    v26 = [v36[5] ams_sanitizedForSecureCoding];
    v7[2](v7, 0, v26);
  }

LABEL_7:
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

- (void)createODISessionWithSessionIdentifier:(id)a3 cacheIdentifier:(id)a4 accountType:(unint64_t)a5 bundleIdentifier:(id)a6 completion:(id)a7
{
  v30 = a3;
  v32 = a4;
  v29 = a6;
  v31 = a7;
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = AMSHashIfNeeded();
    v17 = [NSNumber numberWithUnsignedInteger:a5];
    v18 = AMSHashIfNeeded();
    v19 = AMSHashIfNeeded();
    *buf = 138544386;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2112;
    v41 = v16;
    *v42 = 2112;
    *&v42[2] = v18;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking 'createODISession' with sessionIdentifier: %@, accountType: %@, bundleIdentifier: %@", buf, 0x34u);
  }

  v20 = [(AMSDPurchaseService *)self _serviceProviderTypeForServiceIdentifier:v30];
  v21 = [(AMSDPurchaseService *)self _dsidTypeForAccountType:a5];
  if (v21 == -1)
  {
    v28 = AMSError();
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v22 = qword_1002E3398;
    v39 = qword_1002E3398;
    if (!qword_1002E3398)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007CEE0;
      v41 = &unk_1002B0728;
      *v42 = &v36;
      sub_10007CEE0(buf);
      v22 = v37[3];
    }

    v23 = v22;
    _Block_object_dispose(&v36, 8);
    v24 = [[v22 alloc] initWithServiceIdentifier:v20 forDSIDType:v21 andLocationBundleIdentifier:v29];
    v25 = v24;
    if (v24)
    {
      if (!v32)
      {
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 hash]);
        v32 = [NSString stringWithFormat:@"%@", v26];
      }

      v27 = [objc_opt_class() _odiSessionCacheAccessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100078D58;
      block[3] = &unk_1002B1AC8;
      block[4] = self;
      v34 = v25;
      v32 = v32;
      v35 = v32;
      dispatch_sync(v27, block);

      v28 = 0;
    }

    else
    {
      v28 = AMSError();
    }
  }

  if (v31)
  {
    v31[2](v31, v32, v28);
  }
}

- (void)provideFeedbackOnPayloadOutcome:(unint64_t)a3 cacheIdentifier:(id)a4 clearCache:(BOOL)a5 completion:(id)a6
{
  v20 = a5;
  v8 = a4;
  v9 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100077864;
  v30 = sub_100077874;
  v31 = 0;
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = AMSHashIfNeeded();
    v15 = [NSNumber numberWithBool:v20];
    v16 = AMSHashIfNeeded();
    *buf = 138544130;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking 'provideFeedback' with cache identifier: %@, clearCache: %@", buf, 0x2Au);
  }

  v17 = [objc_opt_class() _odiSessionCacheAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079758;
  block[3] = &unk_1002B1B68;
  block[4] = self;
  v18 = v8;
  v25 = v20;
  v22 = v18;
  v23 = &v26;
  v24 = a3;
  dispatch_sync(v17, block);

  if (v9)
  {
    v9[2](v9, v27[5]);
  }

  _Block_object_dispose(&v26, 8);
}

- (void)updateODIWithAttributes:(id)a3 forCacheIdentifier:(id)a4 completion:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100077864;
  v29 = sub_100077874;
  v30 = 0;
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = AMSHashIfNeeded();
    v15 = [v20 attributes];
    v16 = AMSHashIfNeeded();
    *buf = 138544130;
    v32 = v12;
    v33 = 2114;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking 'updateODIWithAttributes' with cache identifier: %@, additional attributes: %@", buf, 0x2Au);
  }

  v17 = [objc_opt_class() _odiSessionCacheAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079C14;
  block[3] = &unk_1002B1B90;
  block[4] = self;
  v18 = v8;
  v22 = v18;
  v19 = v20;
  v23 = v19;
  v24 = &v25;
  dispatch_sync(v17, block);

  if (v9)
  {
    v9[2](v9, v26[5]);
  }

  _Block_object_dispose(&v25, 8);
}

- (void)_completeEvaluationForPurchaseIdentifier:(id)a3 logKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v8 = [objc_opt_class() _fdsConsumedCacheAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A258;
  block[3] = &unk_1002B1B18;
  block[4] = self;
  v9 = v6;
  v36 = v9;
  v37 = v43;
  v38 = &v39;
  dispatch_sync(v8, block);

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v10 = [objc_opt_class() _odiSessionCacheAccessQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10007A2E8;
  v28[3] = &unk_1002B1AA0;
  v30 = &v31;
  v28[4] = self;
  v11 = v9;
  v29 = v11;
  dispatch_sync(v10, v28);

  v12 = *(v40 + 24);
  if (*(v32 + 24) == 1)
  {
    v13 = [v11 stringValue];
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    [(AMSDPurchaseService *)self provideFeedbackOnPayloadOutcome:v14 cacheIdentifier:v13 clearCache:1 completion:0];
  }

  else if (*(v40 + 24))
  {
    v15 = [objc_opt_class() _fdsEvaluatorCacheAccessQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007A374;
    v24[3] = &unk_1002B1B90;
    v24[4] = self;
    v25 = v11;
    v26 = v7;
    v27 = v43;
    dispatch_sync(v15, v24);
  }

  v16 = [objc_opt_class() _fdsConsumedCacheAccessQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007A504;
  v22[3] = &unk_1002B00E8;
  v22[4] = self;
  v17 = v11;
  v23 = v17;
  dispatch_sync(v16, v22);

  v18 = [objc_opt_class() _fdsEvaluatorCacheAccessQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007A560;
  v20[3] = &unk_1002B00E8;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  dispatch_sync(v18, v20);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
}

- (id)_createScorerWithAction:(unint64_t)a3 account:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v48 = a4;
  v49 = a5;
  v47 = [(AMSDPurchaseService *)self _serverEndpointIdentifierForFDSAction:a3];
  v10 = [[wumZ2SSA5KbWdu7E alloc] initWithServerEndpointIdentifier:v47];
  if (v10)
  {
    v11 = [v48 ams_firstName];
    v12 = [v48 ams_lastName];
    v13 = +[AMSDevice phoneNumber];
    v14 = [v48 username];
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      AMSHashIfNeeded();
      v43 = v10;
      v20 = v19 = v14;
      AMSHashIfNeeded();
      v21 = v45 = v11;
      v22 = AMSHashIfNeeded();
      AMSHashIfNeeded();
      v44 = v13;
      v24 = v23 = v12;
      *buf = 138544642;
      v51 = v17;
      v52 = 2114;
      v53 = v18;
      v54 = 2112;
      v55 = v20;
      v56 = 2112;
      v57 = v21;
      v58 = 2112;
      v59 = v22;
      v60 = 2112;
      v61 = v24;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Creating FDS context, firstName = %@ | lastName = %@ | phoneNumber = %@ | username = %@", buf, 0x3Eu);

      v12 = v23;
      v13 = v44;

      v11 = v45;
      v14 = v19;
      v10 = v43;
    }

    v25 = objc_alloc_init(NSMutableSet);
    if (v11 && v12)
    {
      v26 = [[cBEET4QRedIfcDrp alloc] initWithFirstName:v11 lastName:v12 source:0];
      if (v26)
      {
        [v25 addObject:v26];
      }
    }

    if (v14)
    {
      v27 = [[cBEET4QRedIfcDrp alloc] initWithEmailAddress:v14 source:1];
      if (v27)
      {
        [v25 addObject:v27];
      }
    }

    [(wumZ2SSA5KbWdu7E *)v10 setIdentities:v25];
    if (v13)
    {
      [(wumZ2SSA5KbWdu7E *)v10 setPhoneNumber:v13];
    }

    [(wumZ2SSA5KbWdu7E *)v10 setCallerID:v49];
    v28 = +[AMSLogConfig sharedConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      AMSLogKey();
      v46 = v12;
      v32 = v31 = v11;
      AMSHashIfNeeded();
      v33 = v10;
      v34 = v14;
      v36 = v35 = v13;
      *buf = 138543874;
      v51 = v30;
      v52 = 2114;
      v53 = v32;
      v54 = 2112;
      v55 = v36;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registering FDS Bundle: %@", buf, 0x20u);

      v13 = v35;
      v14 = v34;
      v10 = v33;

      v11 = v31;
      v12 = v46;
    }

    v37 = [CerKRQOmMu7LBUoc scorerWithContext:v10];
  }

  else
  {
    v38 = +[AMSLogConfig sharedConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = AMSLogKey();
      *buf = 138543618;
      v51 = v40;
      v52 = 2114;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create an ASScorerContext.", buf, 0x16u);
    }

    if (a6)
    {
      AMSError();
      *a6 = v37 = 0;
    }

    else
    {
      v37 = 0;
    }
  }

  return v37;
}

- (void)_generateODIFDSWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 options];
  if ([v8 action] == 4)
  {

LABEL_4:
    v11 = [v6 purchaseIdentifier];
    v12 = [NSString stringWithFormat:@"%@", v11];

    v13 = AMSODIServiceIdentifierAmpPaidBuy;
    v14 = [v6 accountType];
    v15 = [v6 options];
    v16 = [v15 bundleIdentifier];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007AE40;
    v26[3] = &unk_1002B1B40;
    v27 = v6;
    v28 = self;
    v29 = v7;
    [(AMSDPurchaseService *)self createODISessionWithSessionIdentifier:v13 cacheIdentifier:v12 accountType:v14 bundleIdentifier:v16 completion:v26];

    goto LABEL_5;
  }

  v9 = [v6 options];
  v10 = [v9 action];

  if (v10 == 5)
  {
    goto LABEL_4;
  }

  v17 = +[AMSLogConfig sharedConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = [v6 logKey];
    v21 = [v6 options];
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 action]);
    *buf = 138543874;
    v31 = v19;
    v32 = 2114;
    v33 = v20;
    v34 = 2114;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ODI evaluation not supported for action: %{public}@", buf, 0x20u);
  }

  v23 = [v6 options];
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 action]);
  v25 = [NSString stringWithFormat:@"Action not supported: %@", v24];
  v12 = AMSError();

  if (v7)
  {
    (*(v7 + 2))(v7, 0, v12);
  }

LABEL_5:
}

- (void)_generateLegacyFDSWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v30 = a4;
  v32 = objc_alloc_init(AMSMutablePromise);
  v7 = [v6 options];
  v8 = [v7 action];
  v9 = [v6 account];
  v10 = [v6 options];
  v11 = [v10 bundleIdentifier];
  v43 = 0;
  v12 = [(AMSDPurchaseService *)self _createScorerWithAction:v8 account:v9 bundleIdentifier:v11 error:&v43];
  v13 = v43;

  v14 = &off_10022E000;
  if (v12)
  {
    v15 = [objc_opt_class() _fdsEvaluatorCacheAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007BA2C;
    block[3] = &unk_1002B1AC8;
    block[4] = self;
    v16 = v12;
    v41 = v16;
    v17 = v6;
    v42 = v17;
    dispatch_sync(v15, block);

    [v16 prepareScoreMessage];
    v18 = objc_alloc_init(RvCyrXrrh7eJhtzx);
    [(RvCyrXrrh7eJhtzx *)v18 setNonce:0];
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v17 logKey];
      *buf = 138543362;
      v45 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AMSDSecurityService: [%{public}@] Generating FDS.", buf, 0xCu);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10007BAA0;
    v37[3] = &unk_1002B1C08;
    v38 = v17;
    v22 = v32;
    v39 = v32;
    [v16 scoreWithScoreRequest:v18 completionHandler:v37];

    v14 = &off_10022E000;
  }

  else
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = [v6 logKey];
      *buf = 138543874;
      v45 = v25;
      v46 = 2114;
      v47 = v26;
      v48 = 2114;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create FDS with error: %{public}@", buf, 0x20u);
    }

    v22 = v32;
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = *(v14 + 100);
  v33[2] = sub_10007BCBC;
  v33[3] = &unk_1002B1C30;
  v33[4] = self;
  v34 = v6;
  v35 = v13;
  v36 = v31;
  v27 = v13;
  v28 = v6;
  v29 = v31;
  [v22 resultWithTimeout:v33 completion:4.0];
}

- (id)_serverEndpointIdentifierForFDSAction:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1002B1D68[a3];
  }
}

+ (id)_fdsConsumedCache
{
  if (qword_1002E3318 != -1)
  {
    sub_10021B3A0();
  }

  v3 = qword_1002E3320;

  return v3;
}

+ (id)_fdsConsumedCacheAccessQueue
{
  if (qword_1002E3328 != -1)
  {
    sub_10021B3B4();
  }

  v3 = qword_1002E3330;

  return v3;
}

+ (id)_fdsEvaluatorCache
{
  if (qword_1002E3338 != -1)
  {
    sub_10021B3C8();
  }

  v3 = qword_1002E3340;

  return v3;
}

+ (id)_fdsEvaluatorCacheAccessQueue
{
  if (qword_1002E3348 != -1)
  {
    sub_10021B3DC();
  }

  v3 = qword_1002E3350;

  return v3;
}

+ (id)_fdsResultCache
{
  if (qword_1002E3358 != -1)
  {
    sub_10021B3F0();
  }

  v3 = qword_1002E3360;

  return v3;
}

+ (id)_fdsResultCacheAccessQueue
{
  if (qword_1002E3368 != -1)
  {
    sub_10021B404();
  }

  v3 = qword_1002E3370;

  return v3;
}

- (unint64_t)_dsidTypeForAccountType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unrecognized account type: %{public}@", &v10, 0x20u);
  }

  return -1;
}

- (unint64_t)_outcomeTypeForOutcome:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id)_serviceProviderTypeForServiceIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AMSODIServiceIdentifierAmpFreeBuy])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v4 = qword_1002E33D8;
    v25 = qword_1002E33D8;
    if (!qword_1002E33D8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D294;
      v27 = &unk_1002B0728;
      v28 = &v22;
      v5 = sub_10007CF38();
      v6 = dlsym(v5, "ODIServiceProviderIdAmpFreeBuy");
      *(v28[1] + 24) = v6;
      qword_1002E33D8 = *(v28[1] + 24);
      v4 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (!v4)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if ([v3 isEqualToString:AMSODIServiceIdentifierAmpPaidBuy])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v4 = qword_1002E33E0;
    v25 = qword_1002E33E0;
    if (!qword_1002E33E0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D2E4;
      v27 = &unk_1002B0728;
      v28 = &v22;
      v7 = sub_10007CF38();
      v8 = dlsym(v7, "ODIServiceProviderIdAmpPaidBuy");
      *(v28[1] + 24) = v8;
      qword_1002E33E0 = *(v28[1] + 24);
      v4 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (!v4)
    {
      goto LABEL_35;
    }

LABEL_25:
    v15 = *v4;
LABEL_26:
    v16 = v15;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:AMSODISessionIdentifierApplicationCreate])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v4 = qword_1002E33E8;
    v25 = qword_1002E33E8;
    if (!qword_1002E33E8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D334;
      v27 = &unk_1002B0728;
      v28 = &v22;
      v9 = sub_10007CF38();
      v10 = dlsym(v9, "ODIServiceProviderIdApplicationCreate");
      *(v28[1] + 24) = v10;
      qword_1002E33E8 = *(v28[1] + 24);
      v4 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v4)
    {
      goto LABEL_25;
    }

LABEL_35:
    sub_10021B19C();
    __break(1u);
  }

  if ([v3 isEqualToString:AMSODISessionIdentifierApplicationSubmit])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v4 = qword_1002E33F0;
    v25 = qword_1002E33F0;
    if (!qword_1002E33F0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D384;
      v27 = &unk_1002B0728;
      v28 = &v22;
      v11 = sub_10007CF38();
      v12 = dlsym(v11, "ODIServiceProviderIdApplicationSubmit");
      *(v28[1] + 24) = v12;
      qword_1002E33F0 = *(v28[1] + 24);
      v4 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v4)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if ([v3 isEqualToString:AMSODISessionIdentifierIdUpdate])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v4 = qword_1002E33F8;
    v25 = qword_1002E33F8;
    if (!qword_1002E33F8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D3D4;
      v27 = &unk_1002B0728;
      v28 = &v22;
      v13 = sub_10007CF38();
      v14 = dlsym(v13, "ODIServiceProviderIdIdUpdate");
      *(v28[1] + 24) = v14;
      qword_1002E33F8 = *(v28[1] + 24);
      v4 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v4)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if ([v3 isEqualToString:AMSODISessionIdentifierTDMTrustedInference])
  {
    v15 = sub_10007CCD0();
    goto LABEL_26;
  }

  v18 = +[AMSLogConfig sharedConfig];
  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    *buf = 138543874;
    *&buf[4] = v20;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    *&buf[22] = 2114;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse ODI service identifier: %{public}@", buf, 0x20u);
  }

  v16 = 0;
LABEL_27:

  return v16;
}

+ (id)_odiSessionCache
{
  if (qword_1002E3378 != -1)
  {
    sub_10021B418();
  }

  v3 = qword_1002E3380;

  return v3;
}

+ (id)_odiSessionCacheAccessQueue
{
  if (qword_1002E3388 != -1)
  {
    sub_10021B42C();
  }

  v3 = qword_1002E3390;

  return v3;
}

@end