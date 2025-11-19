@interface TelephonyProvider
- (TelephonyProvider)initWithRegistry:(const void *)a3;
@end

@implementation TelephonyProvider

- (TelephonyProvider)initWithRegistry:(const void *)a3
{
  v5 = objc_alloc_init(CXProviderConfiguration);
  [v5 setSupportsEmergency:1];
  [v5 setSupportsVoicemail:1];
  v6 = [NSSet setWithObjects:&off_101F91020, 0];
  [v5 setSupportedHandleTypes:v6];

  [v5 setSupportsAudioTranslation:1];
  v17.receiver = self;
  v17.super_class = TelephonyProvider;
  v7 = [(TelephonyProvider *)&v17 initWithConfiguration:v5];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("TelephonyProvider", v8);
    fObj = v7->fDelegateQueue.fObj.fObj;
    v7->fDelegateQueue.fObj.fObj = v9;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v11 = [TelephonyProviderDelegate alloc];
    v12 = v7->fDelegateQueue.fObj.fObj;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    v13 = [(TelephonyProviderDelegate *)v11 initWithProvider:v7 registry:a3 queue:&object];
    if (object)
    {
      dispatch_release(object);
    }

    [(TelephonyProvider *)v7 setDelegate:v13 queue:v7->fDelegateQueue.fObj.fObj];
    telephonyProviderDelegate = v7->_telephonyProviderDelegate;
    v7->_telephonyProviderDelegate = v13;
  }

  return v7;
}

@end