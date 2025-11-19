@interface LoadSubscriptionStatusTask
- (LoadSubscriptionStatusTask)initWithSubscriptionGroupID:(id)a3 reason:(int64_t)a4 client:(id)a5;
- (void)_parseResponse:(id)a3;
- (void)_replaceDate:(id *)a3 ifBeforeDate:(id)a4;
- (void)_runRequestWithAccount:(id)a3;
- (void)main;
- (void)processResult:(id)a3 error:(id)a4;
@end

@implementation LoadSubscriptionStatusTask

- (LoadSubscriptionStatusTask)initWithSubscriptionGroupID:(id)a3 reason:(int64_t)a4 client:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = LoadSubscriptionStatusTask;
  v11 = [(Task *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 42), a5);
    v13 = +[NSUUID lib_shortLogKey];
    v14 = *(v12 + 50);
    *(v12 + 50) = v13;

    *(v12 + 58) = a4;
    objc_storeStrong((v12 + 66), a3);
  }

  return v12;
}

- (void)main
{
  v3 = [(LoadSubscriptionStatusTask *)self client];
  v4 = [v3 objc_clientType];

  if (v4 == 3)
  {

    [(LoadSubscriptionStatusTask *)self _runRequestWithAccount:0];
  }

  else
  {
    v5 = [(LoadSubscriptionStatusTask *)self client];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100057AC0;
    v6[3] = &unk_10037F890;
    v6[4] = self;
    [_TtC9storekitd19objc_AccountManager accountWithClient:v5 completionHandler:v6];
  }
}

- (void)_runRequestWithAccount:(id)a3
{
  v4 = [(LoadSubscriptionStatusTask *)self client];
  v5 = [v4 bag];

  v6 = [(LoadSubscriptionStatusTask *)self client];
  v46 = [v6 urlSession];

  v7 = [(LoadSubscriptionStatusTask *)self client];
  v8 = [v7 urlRequestEncoder];

  [v8 setRequestEncoding:3];
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [(LoadSubscriptionStatusTask *)self client];
  if ([v10 storeItemID])
  {

LABEL_4:
    v14 = [(LoadSubscriptionStatusTask *)self client];
    v15 = [v14 storeItemID];

    goto LABEL_5;
  }

  v11 = [(LoadSubscriptionStatusTask *)self client];
  v12 = [v11 requestBundleID];
  v13 = [v12 caseInsensitiveCompare:@"com.apple.freeform"];

  if (v13)
  {
    goto LABEL_4;
  }

  v15 = 0x18013B54BLL;
LABEL_5:
  v16 = [NSString stringWithFormat:@"%lld", v15];
  [v9 setObject:v16 forKeyedSubscript:@"appAdamId"];

  v17 = [(LoadSubscriptionStatusTask *)self client];
  v18 = [v17 requestBundleID];
  [v9 setObject:v18 forKeyedSubscript:@"bundleId"];

  v19 = [(LoadSubscriptionStatusTask *)self client];
  v20 = [v19 deviceVendorID];
  v21 = [v20 UUIDString];
  v22 = [v21 lowercaseString];
  [v9 setObject:v22 forKeyedSubscript:@"deviceVerification"];

  v23 = +[AMSDevice deviceGUID];
  [v9 setObject:v23 forKeyedSubscript:@"guid"];

  v24 = sub_100028E70([(LoadSubscriptionStatusTask *)self reason]);
  [v9 setObject:v24 forKeyedSubscript:@"reason"];

  if (qword_1003D44E0 != -1)
  {
    sub_1002CF710();
  }

  v45 = v8;
  v25 = qword_1003D44C0;
  if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = [(LoadSubscriptionStatusTask *)self logKey];
    *buf = 138543618;
    v51 = v27;
    v52 = 2114;
    v53 = objc_opt_class();
    v28 = v53;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Starting subscription status request", buf, 0x16u);
  }

  v29 = +[_TtC9storekitd6BagKey subscriptionStatusURL];
  v30 = v5;
  v31 = [v5 URLForKey:v29];

  v49 = 0;
  v32 = [v31 valueWithError:&v49];
  v33 = v49;
  v34 = [(LoadSubscriptionStatusTask *)self subscriptionGroupID];
  v35 = [v34 length];

  if (v35)
  {
    v36 = [(LoadSubscriptionStatusTask *)self subscriptionGroupID];
    v37 = [v32 URLByAppendingPathComponent:v36];

    v32 = v37;
  }

  if (!v32)
  {
    v41 = 0;
    v42 = v45;
    v44 = v46;
LABEL_16:
    [(LoadSubscriptionStatusTask *)self processResult:0 error:v33];
    goto LABEL_17;
  }

  v38 = objc_opt_new();
  v39 = +[AMSDevice deviceGUID];
  [v38 setObject:v39 forKeyedSubscript:@"guid"];

  v40 = sub_100028E70([(LoadSubscriptionStatusTask *)self reason]);
  [v38 setObject:v40 forKeyedSubscript:@"reason"];

  v41 = [v32 lib_URLByAppendingQueryDictionary:v38];

  v42 = v45;
  v43 = [v45 requestWithMethod:4 URL:v41 headers:&off_1003A1368 parameters:v9];

  if (!v43)
  {
    v44 = v46;
    goto LABEL_16;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100058148;
  v47[3] = &unk_100382458;
  v47[4] = self;
  v44 = v46;
  v48 = v46;
  [v43 resultWithCompletion:v47];

LABEL_17:
}

- (void)processResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if (qword_1003D44E0 != -1)
    {
      sub_1002CF710();
    }

    v10 = qword_1003D44C0;
    if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(LoadSubscriptionStatusTask *)self logKey];
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = objc_opt_class();
      v13 = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Finished subscription status request", buf, 0x16u);
    }

    v14 = [v6 object];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1003D44E0 != -1)
      {
        sub_1002CF8A8();
      }

      v16 = qword_1003D44C0;
      if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
      {
        sub_1002CF8D0(v16, self);
      }

      v8 = ASDErrorWithTitleAndMessage();
      goto LABEL_28;
    }

    v15 = [v14 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(LoadSubscriptionStatusTask *)self _parseResponse:v15];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1003D44E0 != -1)
        {
          sub_1002CF8A8();
        }

        v18 = qword_1003D44C0;
        if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
        {
          sub_1002CF980(v18, self);
        }

        v8 = ASDErrorWithTitleAndMessage();
        goto LABEL_27;
      }

      v19 = v15;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
      [(LoadSubscriptionStatusTask *)self _parseResponse:v17];
    }

    v8 = 0;
LABEL_27:

LABEL_28:
    if (v8)
    {
      [(AsyncTask *)self completeWithError:v8];
    }

    else
    {
      [(AsyncTask *)self completeWithSuccess];
    }

    goto LABEL_32;
  }

  v8 = v7;
  if (qword_1003D44E0 != -1)
  {
    sub_1002CF710();
  }

  v9 = qword_1003D44C0;
  if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
  {
    sub_1002CF7F8(v9, self);
  }

  [(AsyncTask *)self completeWithError:v8];
LABEL_32:
}

- (void)_parseResponse:(id)a3
{
  v3 = a3;
  v4 = &_s10Foundation3URLVSEAAMc_ptr;
  v71 = objc_opt_new();
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v92 objects:v110 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v93;
    v9 = @"signedRenewalInfo";
    v69 = v5;
    v72 = *v93;
    do
    {
      v10 = 0;
      v70 = v7;
      do
      {
        if (*v93 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v76 = v10;
        v11 = *(*(&v92 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:{@"subscriptionGroupIdentifier", v69}];
        objc_opt_class();
        v77 = v12;
        if (objc_opt_isKindOfClass())
        {
          v13 = [v4[160] array];
          v14 = [v11 objectForKeyedSubscript:v9];
          objc_opt_class();
          v73 = v14;
          if (objc_opt_isKindOfClass())
          {
            v15 = [v11 objectForKeyedSubscript:@"status"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v80 = v13;
              v91 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v16 = v73;
              v17 = [v16 countByEnumeratingWithState:&v88 objects:v101 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = 0;
                v20 = *v89;
                do
                {
                  v21 = 0;
                  v22 = v19;
                  do
                  {
                    if (*v89 != v20)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v23 = *(*(&v88 + 1) + 8 * v21);
                    v99[0] = @"status";
                    v99[1] = v9;
                    v100[0] = v15;
                    v100[1] = v23;
                    v24 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:2];
                    [v80 addObject:v24];

                    v25 = sub_100027A0C(v23);
                    v87 = v22;
                    [(LoadSubscriptionStatusTask *)self _replaceDate:&v87 ifBeforeDate:v25];
                    v19 = v87;

                    v21 = v21 + 1;
                    v22 = v19;
                  }

                  while (v18 != v21);
                  v18 = [v16 countByEnumeratingWithState:&v88 objects:v101 count:16];
                }

                while (v18);
                v4 = &_s10Foundation3URLVSEAAMc_ptr;
                v5 = v69;
                v7 = v70;
              }

              else
              {
                v19 = 0;
              }

LABEL_60:

              v15 = [NSMutableDictionary dictionaryWithCapacity:3];
              [v15 setObject:v77 forKeyedSubscript:@"subscriptionGroupIdentifier"];
              v65 = v80;
              [v15 setObject:v80 forKeyedSubscript:@"lastTransactions"];
              [v15 setObject:v19 forKeyedSubscript:@"gracePeriodExpiresDate"];
              [v71 addObject:v15];
LABEL_61:

              v8 = v72;
              goto LABEL_62;
            }

            if (qword_1003D44E0 != -1)
            {
              sub_1002CF8A8();
            }

            v55 = v13;
            v56 = qword_1003D44C0;
            if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
            {
              v57 = v56;
              v58 = [(LoadSubscriptionStatusTask *)self logKey];
              v59 = objc_opt_class();
              *buf = 138544130;
              v103 = v58;
              v104 = 2114;
              v105 = v59;
              v106 = 2114;
              v107 = v15;
              v108 = 2114;
              v109 = v12;
              v60 = v59;
              v61 = v57;
              v62 = "[%{public}@] [%{public}@]: Invalid status %{public}@ for subscription group ID %{public}@";
              v63 = 42;
              goto LABEL_65;
            }

            goto LABEL_57;
          }

          v15 = [v11 objectForKeyedSubscript:@"lastTransactions"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (qword_1003D44E0 != -1)
            {
              sub_1002CF8A8();
            }

            v55 = v13;
            v64 = qword_1003D44C0;
            if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
            {
              v57 = v64;
              v58 = [(LoadSubscriptionStatusTask *)self logKey];
              v66 = objc_opt_class();
              *buf = 138543874;
              v103 = v58;
              v104 = 2114;
              v105 = v66;
              v106 = 2114;
              v107 = v12;
              v60 = v66;
              v61 = v57;
              v62 = "[%{public}@] [%{public}@]: Invalid lastTransactions for subscription group ID %{public}@";
              v63 = 32;
LABEL_65:
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, buf, v63);

              v7 = v70;
            }

LABEL_57:
            v19 = 0;
            v65 = v55;
            goto LABEL_61;
          }

          v80 = v13;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v16 = v15;
          v79 = [v16 countByEnumeratingWithState:&v83 objects:v98 count:16];
          v19 = 0;
          if (!v79)
          {
            v15 = v16;
            goto LABEL_60;
          }

          v78 = *v84;
          while (2)
          {
            v31 = 0;
LABEL_25:
            if (*v84 != v78)
            {
              objc_enumerationMutation(v16);
            }

            v32 = v16;
            v33 = *(*(&v83 + 1) + 8 * v31);
            v34 = [v33 objectForKeyedSubscript:@"status"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [v33 objectForKeyedSubscript:v9];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v9;
                v37 = sub_100027A0C(v35);
                v82 = v19;
                [(LoadSubscriptionStatusTask *)self _replaceDate:&v82 ifBeforeDate:v37];
                v38 = v82;

                v39 = [v33 objectForKeyedSubscript:@"signedTransactionInfo"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v96[0] = @"status";
                  v96[1] = v36;
                  v97[0] = v34;
                  v97[1] = v35;
                  v96[2] = @"signedTransactionInfo";
                  v97[2] = v39;
                  v40 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:3];
                  [v80 addObject:v40];
                  goto LABEL_31;
                }

                if (qword_1003D44E0 != -1)
                {
                  sub_1002CF8A8();
                }

                v51 = qword_1003D44C0;
                if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
                {
                  log = v51;
                  v52 = [(LoadSubscriptionStatusTask *)self logKey];
                  v53 = objc_opt_class();
                  *buf = 138543874;
                  v103 = v52;
                  v104 = 2114;
                  v105 = v53;
                  v106 = 2114;
                  v107 = v77;
                  v74 = v53;
                  v40 = log;
                  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@]: Invalid transaction for subscription group ID %{public}@", buf, 0x20u);

LABEL_31:
                }

                v19 = v38;
                v9 = v36;
                v16 = v32;
              }

              else
              {
                if (qword_1003D44E0 != -1)
                {
                  sub_1002CF8A8();
                }

                v16 = v32;
                v46 = qword_1003D44C0;
                if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
                {
                  v47 = v46;
                  v48 = [(LoadSubscriptionStatusTask *)self logKey];
                  v49 = objc_opt_class();
                  *buf = 138543874;
                  v103 = v48;
                  v104 = 2114;
                  v105 = v49;
                  v106 = 2114;
                  v107 = v77;
                  v50 = v49;
                  _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@]: Invalid renewal info for subscription group ID %{public}@", buf, 0x20u);

                  v16 = v32;
                }
              }
            }

            else
            {
              if (qword_1003D44E0 != -1)
              {
                sub_1002CF8A8();
              }

              v16 = v32;
              v41 = qword_1003D44C0;
              if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
              {
                v42 = v41;
                v43 = [(LoadSubscriptionStatusTask *)self logKey];
                v44 = objc_opt_class();
                *buf = 138544130;
                v103 = v43;
                v104 = 2114;
                v105 = v44;
                v106 = 2114;
                v107 = v34;
                v108 = 2114;
                v109 = v77;
                v45 = v44;
                _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@]: Invalid status %{public}@ for subscription group ID %{public}@", buf, 0x2Au);
              }
            }

            if (v79 == ++v31)
            {
              v54 = [v16 countByEnumeratingWithState:&v83 objects:v98 count:16];
              v79 = v54;
              if (!v54)
              {
                v15 = v16;
                v4 = &_s10Foundation3URLVSEAAMc_ptr;
                v5 = v69;
                v7 = v70;
                goto LABEL_60;
              }

              continue;
            }

            goto LABEL_25;
          }
        }

        if (qword_1003D44E0 != -1)
        {
          sub_1002CF8A8();
        }

        v26 = qword_1003D44C0;
        if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
        {
          v27 = v26;
          v28 = [(LoadSubscriptionStatusTask *)self logKey];
          v29 = objc_opt_class();
          *buf = 138543874;
          v103 = v28;
          v104 = 2114;
          v105 = v29;
          v106 = 2114;
          v107 = v12;
          v30 = v29;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@]: Invalid subscription group ID for status request: %{public}@", buf, 0x20u);

          v7 = v70;
        }

LABEL_62:

        v10 = v76 + 1;
      }

      while ((v76 + 1) != v7);
      v67 = [v5 countByEnumeratingWithState:&v92 objects:v110 count:16];
      v7 = v67;
    }

    while (v67);
  }

  v68 = *(&self->_subscriptionGroupID + 2);
  *(&self->_subscriptionGroupID + 2) = v71;
}

- (void)_replaceDate:(id *)a3 ifBeforeDate:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v8 = v5;
    if (!*a3 || (v6 = [*a3 compare:v5], v5 = v8, v6 == -1))
    {
      v7 = v5;
      *a3 = v8;
    }
  }

  _objc_release_x1();
}

@end