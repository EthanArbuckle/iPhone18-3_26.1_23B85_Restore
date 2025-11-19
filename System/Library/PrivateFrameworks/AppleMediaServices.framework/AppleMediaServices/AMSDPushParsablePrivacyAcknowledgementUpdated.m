@interface AMSDPushParsablePrivacyAcknowledgementUpdated
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSDPushParsablePrivacyAcknowledgementUpdated

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = objc_opt_class();
    v8 = v49;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a push notification to update an account's privacy acknowledgement.", buf, 0xCu);
  }

  v9 = +[ACAccountStore ams_sharedAccountStore];
  v10 = [v5 accountIdentifier];
  if (v10)
  {
    v11 = [v5 account];
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v12 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v36 = objc_opt_class();
      v30 = v36;
      v37 = [v10 stringValue];
      AMSHashIfNeeded();
      v39 = v38 = v9;
      *buf = 138543618;
      v49 = v36;
      v50 = 2114;
      v51 = v39;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. No account exists with the specified DSID, %{public}@.", buf, 0x16u);

      v9 = v38;
      goto LABEL_35;
    }

    v12 = [v5 objectForKeyedSubscript:@"privacyAcknowledgement"];
    if (!v12)
    {
      v29 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        *buf = 138543362;
        v49 = v40;
        v41 = v40;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. The value for 'privacyAcknowledgement' in the push notification is nil.", buf, 0xCu);
      }

      goto LABEL_35;
    }

    v13 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v10;
      v15 = v9;
      v16 = objc_opt_class();
      v43 = v16;
      v17 = [v11 hashedDescription];
      v18 = [v12 description];
      v19 = AMSHashIfNeeded();
      *buf = 138543874;
      v49 = v16;
      v9 = v15;
      v10 = v45;
      v50 = 2114;
      v51 = v17;
      v52 = 2114;
      v53 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: account = %{public}@ | newPrivacyAcknowledgement = %{public}@", buf, 0x20u);
    }

    v20 = [v11 ams_mergePrivacyAcknowledgement:v12];
    v21 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v20;
      v23 = objc_opt_class();
      v42 = v23;
      v24 = [v11 ams_privacyAcknowledgement];
      [v24 description];
      v25 = v46 = v9;
      v26 = AMSHashIfNeeded();
      *buf = 138543618;
      v49 = v23;
      v20 = v44;
      v50 = 2114;
      v51 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: updatedPrivacyAcknowledgement = %{public}@", buf, 0x16u);

      v9 = v46;
    }

    if (v20)
    {
      [v11 ams_setDisablePrivacyAcknowledgementSync:1];
      v27 = [v9 ams_saveAccount:v11];
      v47 = 0;
      v28 = [v27 resultWithError:&v47];
      v29 = v47;

      if (v28)
      {
LABEL_36:

        goto LABEL_37;
      }

      v30 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      v31 = [v30 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138543618;
        v49 = v32;
        v50 = 2114;
        v51 = v29;
        v33 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save the account after updating its privacyAcknowledgement. error = %{public}@", buf, 0x16u);
      }

LABEL_35:
      goto LABEL_36;
    }
  }

  else
  {
    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543362;
      v49 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. The push notification doesn't have a DSID.", buf, 0xCu);
    }
  }

LABEL_37:
}

@end