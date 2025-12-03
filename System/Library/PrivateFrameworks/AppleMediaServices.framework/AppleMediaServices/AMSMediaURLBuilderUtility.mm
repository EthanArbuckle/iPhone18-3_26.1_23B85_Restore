@interface AMSMediaURLBuilderUtility
+ (id)devicePlatform;
@end

@implementation AMSMediaURLBuilderUtility

+ (id)devicePlatform
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[AMSDevice deviceIsAppleTV](AMSDevice, "deviceIsAppleTV") || +[AMSDevice deviceIsAppleTVSimulator])
  {
    v2 = AMSMediaTaskPlatformAppleTV;
LABEL_4:
    v3 = *v2;
    goto LABEL_5;
  }

  if (+[AMSDevice deviceIsAppleWatch](AMSDevice, "deviceIsAppleWatch") || +[AMSDevice deviceIsAppleWatchSimulator])
  {
    v2 = AMSMediaTaskPlatformAppleWatch;
    goto LABEL_4;
  }

  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v2 = AMSMediaTaskPlatformHomePod;
    goto LABEL_4;
  }

  if (+[AMSDevice deviceIsiPad](AMSDevice, "deviceIsiPad") || +[AMSDevice deviceIsiPadSimulator])
  {
    v2 = AMSMediaTaskPlatformiPad;
    goto LABEL_4;
  }

  if (+[AMSDevice deviceIsiPhone](AMSDevice, "deviceIsiPhone") || +[AMSDevice deviceIsiPhoneSimulator])
  {
    v2 = AMSMediaTaskPlatformiPhone;
    goto LABEL_4;
  }

  if (+[AMSDevice deviceIsMac])
  {
    v2 = AMSMediaTaskPlatformMac;
    goto LABEL_4;
  }

  if (+[AMSDevice deviceIsRealityDevice](AMSDevice, "deviceIsRealityDevice") || +[AMSDevice deviceIsRealityDeviceSimulator])
  {
    v2 = &AMSMediaTaskPlatformReality;
    goto LABEL_4;
  }

  v5 = +[AMSLogConfig sharedMediaConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown device platform", &v10, 0x16u);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

@end