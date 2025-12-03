@interface AMSQRCodeDialogTask
- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options;
@end

@implementation AMSQRCodeDialogTask

- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options
{
  v32.receiver = self;
  v32.super_class = AMSQRCodeDialogTask;
  v6 = [(AMSSystemAlertDialogTask *)&v32 _createNoteDictionaryWithKeys:keys buttonActions:actions outOptions:options];
  request = [(AMSSystemAlertDialogTask *)self request];
  userInfo = [request userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

  CFDictionarySetValue(v6, @"PBCFUserNotificationTemplateType", @"PBCFUserNotificationTwoWaySignInTemplate");
  v10 = [v9 objectForKeyedSubscript:@"PINCodeTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    if (v11)
    {
      v31 = v11;
      CFDictionarySetValue(v6, @"PBCFUserNotificationPINCodeTitle", v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v31 = 0;
LABEL_6:
  v12 = [v9 objectForKeyedSubscript:@"PINCodeUrlSubtitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;

    if (v13)
    {
      v29 = v13;
      CFDictionarySetValue(v6, @"PBCFUserNotificationPINCodeURLSubtitle", v13);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v29 = 0;
LABEL_11:
  v14 = [v9 objectForKeyedSubscript:{@"PINCodeUrl", v29}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;

    if (v15)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationPINCodeURL", v15);
    }
  }

  else
  {

    v15 = 0;
  }

  v16 = [v9 objectForKeyedSubscript:@"PINCodeSubtitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;

    if (v17)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationPINCodeSubtitle", v17);
    }
  }

  else
  {

    v17 = 0;
  }

  v18 = [v9 objectForKeyedSubscript:@"PINCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;

    if (v19)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationPINCode", v19);
    }
  }

  else
  {

    v19 = 0;
  }

  v20 = [v9 objectForKeyedSubscript:@"Divider"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;

    if (v21)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationDividerText", v21);
    }
  }

  else
  {

    v21 = 0;
  }

  v22 = [v9 objectForKeyedSubscript:@"QRCodeTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;

    if (v23)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationQRCodeTitle", v23);
    }
  }

  else
  {

    v23 = 0;
  }

  v24 = [v9 objectForKeyedSubscript:@"QRCodeSubtitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;

    if (v25)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationQRCodeSubtitle", v25);
    }
  }

  else
  {

    v25 = 0;
  }

  v26 = [v9 objectForKeyedSubscript:@"QRCodeUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;

    if (v27)
    {
      CFDictionarySetValue(v6, @"PBCFUserNotificationQRCodeURL", v27);
    }
  }

  else
  {

    v27 = 0;
  }

  return v6;
}

@end