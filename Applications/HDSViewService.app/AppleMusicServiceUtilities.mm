@interface AppleMusicServiceUtilities
- (void)registerDevice:(id)device model:(id)model callback:(id)callback;
- (void)serviceEnabled:(id)enabled;
@end

@implementation AppleMusicServiceUtilities

- (void)serviceEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008FA4;
  v6[3] = &unk_1000EDD00;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [v4 getSubscriptionStatusWithCompletionHandler:v6];
}

- (void)registerDevice:(id)device model:(id)model callback:(id)callback
{
  deviceCopy = device;
  modelCopy = model;
  callbackCopy = callback;
  amsDeviceRegistrationPromise = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
  if (!deviceCopy || amsDeviceRegistrationPromise)
  {
  }

  else if (modelCopy)
  {
    if (dword_100101508 <= 40 && (dword_100101508 != -1 || _LogCategory_Initialize()))
    {
      v22 = deviceCopy;
      v23 = modelCopy;
      LogPrintF();
    }

    v24 = [AMSDeviceOfferRegistrationTask createBagForSubProfile:v22];
    v12 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v12 ams_activeiTunesAccount];

    v14 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:ams_activeiTunesAccount bag:v24];
    v15 = [[AMSDeviceOfferRegistrationItem alloc] initWithSerialNumber:deviceCopy model:modelCopy validationData:0];
    v16 = [AMSDeviceOfferRegistrationGroup alloc];
    v30 = v15;
    v17 = [NSArray arrayWithObjects:&v30 count:1];
    v18 = [v16 initWithRegistrationItems:v17];

    [v18 setValidationOptions:5];
    v29 = v18;
    v19 = [NSArray arrayWithObjects:&v29 count:1];
    [v14 setRegistrationGroups:v19];

    perform = [v14 perform];
    [(AppleMusicServiceUtilities *)self setAmsDeviceRegistrationPromise:perform];

    objc_initWeak(&location, self);
    amsDeviceRegistrationPromise2 = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100009394;
    v25[3] = &unk_1000EDD28;
    v26 = callbackCopy;
    objc_copyWeak(&v27, &location);
    [amsDeviceRegistrationPromise2 addFinishBlock:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

@end