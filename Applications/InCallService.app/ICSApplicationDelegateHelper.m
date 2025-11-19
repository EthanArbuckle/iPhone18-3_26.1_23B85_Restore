@interface ICSApplicationDelegateHelper
- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)a3 options:(id)a4 url:(id)a5;
- (BOOL)isDefaultOrTelephonyScheme:(id)a3;
- (BOOL)openDialRequestIfNecessary:(id)a3 options:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5;
- (ICSApplicationDelegateHelper)init;
@end

@implementation ICSApplicationDelegateHelper

- (ICSApplicationDelegateHelper)init
{
  v6.receiver = self;
  v6.super_class = ICSApplicationDelegateHelper;
  v2 = [(ICSApplicationDelegateHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;
  }

  return v2;
}

- (BOOL)openDialRequestIfNecessary:(id)a3 options:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8)
  {
    v9 = [a4 objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 provider];
      if ([v10 isSystemProvider])
      {

LABEL_8:
        v14 = [(ICSApplicationDelegateHelper *)self openDialRequestBlock];
        (v14)[2](v14, v8, v9, v5);

LABEL_11:
        goto LABEL_12;
      }

      v12 = [(ICSApplicationDelegateHelper *)self featureFlags];
      v13 = TUDefaultAppsEnabled();

      if (v13)
      {
        goto LABEL_8;
      }

      v11 = +[TUCallCenter sharedInstance];
      [v11 launchAppForDialRequest:v8 completion:0];
    }

    else
    {
      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1002561AC();
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return v8 != 0;
}

- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)a3 options:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(ICSApplicationDelegateHelper *)self isDefaultOrTelephonyScheme:a5];
  if (!v9)
  {
    v17 = 0;
    goto LABEL_53;
  }

  v12 = v11;
  v13 = [(ICSApplicationDelegateHelper *)self featureFlags];
  v14 = [v13 phoneAppCoupledRelayEnabled];
  if (v14)
  {
    v5 = defaultCallingAppLSBundleIdentifier();
    if (!v5)
    {
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v15 = [(ICSApplicationDelegateHelper *)self featureFlags];
  v16 = ([v15 phoneAppCoupledRelayEnabled] & 1) == 0 && defaultAppRelayTelephonySetting() == 1;

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (![v9 preferDefaultApp] || !v16)
  {
    if (+[PHDevice isGeminiCapable])
    {
      v19 = [v9 provider];
      if ([v19 isTelephonyProvider])
      {
        v20 = [v9 localSenderIdentityAccountUUID];

        if (!v20)
        {
          v21 = +[ICSApplicationServices sharedInstance];
          v22 = [v21 contactGeminiManager];

          v23 = +[ICSApplicationServices sharedInstance];
          v24 = [v23 contactStore];

          v25 = +[CNGeminiManager descriptorForRequiredKeys];
          v52 = v25;
          v26 = [NSArray arrayWithObjects:&v52 count:1];

          v27 = [v9 contactIdentifier];
          v46 = v26;
          if (v27)
          {
            v28 = sub_100004F84();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v51 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retrieving contact with identifier %{sensitive}@", buf, 0xCu);
            }

            v49 = 0;
            v29 = [v24 unifiedContactWithIdentifier:v27 keysToFetch:v26 error:&v49];
            v30 = v49;
            v31 = v30;
            if (!v29)
            {
              if (!v30 || [v30 code]== 200)
              {
                goto LABEL_51;
              }

              v44 = v24;
              v33 = v22;
              v34 = sub_100004F84();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_10025628C();
              }

              v35 = v31;
              goto LABEL_43;
            }

            v44 = v24;
            v32 = sub_100004F84();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v51 = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact %{sensitive}@", buf, 0xCu);
            }

            v48 = v31;
            v33 = v22;
            v34 = [v22 bestSenderIdentityForContact:v29 error:&v48];
            v35 = v48;

            if (v34)
            {
              v36 = [v34 accountUUID];
              [v9 setLocalSenderIdentityAccountUUID:v36];
            }

            else
            {
              if (!v35)
              {
LABEL_43:

                v31 = v35;
                v22 = v33;
                v24 = v44;
LABEL_51:

                goto LABEL_52;
              }

              v36 = sub_100004F84();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_100256214(v35, v36);
              }
            }

            goto LABEL_43;
          }

          v37 = [v9 handle];
          v31 = [v37 cnHandle];

          v29 = sub_100004F84();
          v38 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            if (v38)
            {
              *buf = 138739971;
              v51 = v31;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact handle %{sensitive}@", buf, 0xCu);
            }

            v47 = 0;
            v39 = [v22 bestSenderIdentityForHandle:v31 contactStore:v24 error:&v47];
            v40 = v47;
            v29 = v40;
            if (v39)
            {
              v45 = v24;
              v41 = v22;
              v42 = [v39 accountUUID];
              [v9 setLocalSenderIdentityAccountUUID:v42];
LABEL_49:

              v22 = v41;
              v24 = v45;
              goto LABEL_50;
            }

            if (v40)
            {
              v45 = v24;
              v41 = v22;
              v42 = sub_100004F84();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                sub_1002562F4(v29, v42);
              }

              goto LABEL_49;
            }
          }

          else
          {
            if (!v38)
            {
              goto LABEL_51;
            }

            v39 = [v9 handle];
            *buf = 138412290;
            v51 = v39;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Could not create a contact handle from dial request handle %@.", buf, 0xCu);
          }

LABEL_50:

          goto LABEL_51;
        }
      }

      else
      {
      }
    }

LABEL_52:
    v17 = [(ICSApplicationDelegateHelper *)self openDialRequestIfNecessary:v9 options:v10 bypassUIPromptIfDefaultProvider:v12];
    goto LABEL_53;
  }

  v18 = sub_100004F84();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Cannot proceed with dial request because user has 'None' selected as their default app", buf, 2u);
  }

  v17 = 1;
LABEL_53:

  return v17;
}

- (BOOL)isDefaultOrTelephonyScheme:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegateHelper *)self featureFlags];
  v6 = [v5 defaultCallingAppsGracefulFallbackEnabled];

  if (v6)
  {
    v7 = [v4 scheme];
    v8 = +[NSURL TUDialRequestSchemeDefaultApp];
    if ([v7 isEqualToString:v8])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v4 scheme];
      v11 = +[NSURL TUDialRequestSchemeForceTelephony];
      v9 = [v10 isEqualToString:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end