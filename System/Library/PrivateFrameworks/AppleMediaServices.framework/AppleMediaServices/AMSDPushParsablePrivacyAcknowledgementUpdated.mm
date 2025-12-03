@interface AMSDPushParsablePrivacyAcknowledgementUpdated
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsablePrivacyAcknowledgementUpdated

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  v6 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = objc_opt_class();
    v8 = v49;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a push notification to update an account's privacy acknowledgement.", buf, 0xCu);
  }

  v9 = +[ACAccountStore ams_sharedAccountStore];
  accountIdentifier = [payloadCopy accountIdentifier];
  if (accountIdentifier)
  {
    account = [payloadCopy account];
    if (!account)
    {
      oSLogObject5 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!oSLogObject5)
      {
        oSLogObject5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v36 = objc_opt_class();
      v29OSLogObject = v36;
      stringValue = [accountIdentifier stringValue];
      AMSHashIfNeeded();
      v39 = v38 = v9;
      *buf = 138543618;
      v49 = v36;
      v50 = 2114;
      v51 = v39;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. No account exists with the specified DSID, %{public}@.", buf, 0x16u);

      v9 = v38;
      goto LABEL_35;
    }

    oSLogObject5 = [payloadCopy objectForKeyedSubscript:@"privacyAcknowledgement"];
    if (!oSLogObject5)
    {
      oSLogObject2 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      v29OSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(v29OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        *buf = 138543362;
        v49 = v40;
        v41 = v40;
        _os_log_impl(&_mh_execute_header, v29OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. The value for 'privacyAcknowledgement' in the push notification is nil.", buf, 0xCu);
      }

      goto LABEL_35;
    }

    v13 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v45 = accountIdentifier;
      v15 = v9;
      v16 = objc_opt_class();
      v43 = v16;
      hashedDescription = [account hashedDescription];
      v18 = [oSLogObject5 description];
      v19 = AMSHashIfNeeded();
      *buf = 138543874;
      v49 = v16;
      v9 = v15;
      accountIdentifier = v45;
      v50 = 2114;
      v51 = hashedDescription;
      v52 = 2114;
      v53 = v19;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: account = %{public}@ | newPrivacyAcknowledgement = %{public}@", buf, 0x20u);
    }

    v20 = [account ams_mergePrivacyAcknowledgement:oSLogObject5];
    v21 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v20;
      v23 = objc_opt_class();
      v42 = v23;
      ams_privacyAcknowledgement = [account ams_privacyAcknowledgement];
      [ams_privacyAcknowledgement description];
      v25 = v46 = v9;
      v26 = AMSHashIfNeeded();
      *buf = 138543618;
      v49 = v23;
      v20 = v44;
      v50 = 2114;
      v51 = v26;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: updatedPrivacyAcknowledgement = %{public}@", buf, 0x16u);

      v9 = v46;
    }

    if (v20)
    {
      [account ams_setDisablePrivacyAcknowledgementSync:1];
      v27 = [v9 ams_saveAccount:account];
      v47 = 0;
      v28 = [v27 resultWithError:&v47];
      oSLogObject2 = v47;

      if (v28)
      {
LABEL_36:

        goto LABEL_37;
      }

      v29OSLogObject = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v29OSLogObject)
      {
        v29OSLogObject = +[AMSLogConfig sharedConfig];
      }

      v30OSLogObject = [v29OSLogObject OSLogObject];
      if (os_log_type_enabled(v30OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138543618;
        v49 = v32;
        v50 = 2114;
        v51 = oSLogObject2;
        v33 = v32;
        _os_log_impl(&_mh_execute_header, v30OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save the account after updating its privacyAcknowledgement. error = %{public}@", buf, 0x16u);
      }

LABEL_35:
      goto LABEL_36;
    }
  }

  else
  {
    account = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!account)
    {
      account = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [account OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543362;
      v49 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update an account's privacy acknowledgement. The push notification doesn't have a DSID.", buf, 0xCu);
    }
  }

LABEL_37:
}

@end