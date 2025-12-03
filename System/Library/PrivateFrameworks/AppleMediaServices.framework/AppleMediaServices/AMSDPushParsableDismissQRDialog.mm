@interface AMSDPushParsableDismissQRDialog
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableDismissQRDialog

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  accountIdentifier = [payloadCopy accountIdentifier];
  if (!accountIdentifier)
  {
    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v18 = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No account passed in the payload to dismiss a QR dialog", &v18, 0x16u);
    }
  }

  v11 = [payloadCopy objectForKeyedSubscript:@"PINCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [payloadCopy objectForKeyedSubscript:@"dialogId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v12;
  if (v12 || (v15 = v14) != 0)
  {
    v16 = v15;
    v17 = +[AMSDDismissQRDialogService sharedService];
    [v17 notifyDismissDialogWithIdentifier:v16];
  }

  else
  {
    v16 = 0;
  }
}

@end