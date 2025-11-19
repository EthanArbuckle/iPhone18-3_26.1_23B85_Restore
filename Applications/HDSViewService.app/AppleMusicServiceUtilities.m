@interface AppleMusicServiceUtilities
- (void)registerDevice:(id)a3 model:(id)a4 callback:(id)a5;
- (void)serviceEnabled:(id)a3;
@end

@implementation AppleMusicServiceUtilities

- (void)serviceEnabled:(id)a3
{
  v3 = a3;
  v4 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008FA4;
  v6[3] = &unk_1000EDD00;
  v7 = v3;
  v5 = v3;
  [v4 getSubscriptionStatusWithCompletionHandler:v6];
}

- (void)registerDevice:(id)a3 model:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
  if (!v8 || v11)
  {
  }

  else if (v9)
  {
    if (dword_100101508 <= 40 && (dword_100101508 != -1 || _LogCategory_Initialize()))
    {
      v22 = v8;
      v23 = v9;
      LogPrintF();
    }

    v24 = [AMSDeviceOfferRegistrationTask createBagForSubProfile:v22];
    v12 = +[ACAccountStore ams_sharedAccountStore];
    v13 = [v12 ams_activeiTunesAccount];

    v14 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:v13 bag:v24];
    v15 = [[AMSDeviceOfferRegistrationItem alloc] initWithSerialNumber:v8 model:v9 validationData:0];
    v16 = [AMSDeviceOfferRegistrationGroup alloc];
    v30 = v15;
    v17 = [NSArray arrayWithObjects:&v30 count:1];
    v18 = [v16 initWithRegistrationItems:v17];

    [v18 setValidationOptions:5];
    v29 = v18;
    v19 = [NSArray arrayWithObjects:&v29 count:1];
    [v14 setRegistrationGroups:v19];

    v20 = [v14 perform];
    [(AppleMusicServiceUtilities *)self setAmsDeviceRegistrationPromise:v20];

    objc_initWeak(&location, self);
    v21 = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100009394;
    v25[3] = &unk_1000EDD28;
    v26 = v10;
    objc_copyWeak(&v27, &location);
    [v21 addFinishBlock:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

@end