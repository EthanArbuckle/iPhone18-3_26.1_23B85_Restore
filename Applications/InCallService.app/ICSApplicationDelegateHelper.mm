@interface ICSApplicationDelegateHelper
- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)necessary options:(id)options url:(id)url;
- (BOOL)isDefaultOrTelephonyScheme:(id)scheme;
- (BOOL)openDialRequestIfNecessary:(id)necessary options:(id)options bypassUIPromptIfDefaultProvider:(BOOL)provider;
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

- (BOOL)openDialRequestIfNecessary:(id)necessary options:(id)options bypassUIPromptIfDefaultProvider:(BOOL)provider
{
  providerCopy = provider;
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    v9 = [options objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      provider = [necessaryCopy provider];
      if ([provider isSystemProvider])
      {

LABEL_8:
        openDialRequestBlock = [(ICSApplicationDelegateHelper *)self openDialRequestBlock];
        (openDialRequestBlock)[2](openDialRequestBlock, necessaryCopy, v9, providerCopy);

LABEL_11:
        goto LABEL_12;
      }

      featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
      v13 = TUDefaultAppsEnabled();

      if (v13)
      {
        goto LABEL_8;
      }

      v11 = +[TUCallCenter sharedInstance];
      [v11 launchAppForDialRequest:necessaryCopy completion:0];
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

  return necessaryCopy != 0;
}

- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)necessary options:(id)options url:(id)url
{
  necessaryCopy = necessary;
  optionsCopy = options;
  v11 = [(ICSApplicationDelegateHelper *)self isDefaultOrTelephonyScheme:url];
  if (!necessaryCopy)
  {
    v17 = 0;
    goto LABEL_53;
  }

  v12 = v11;
  featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
  phoneAppCoupledRelayEnabled = [featureFlags phoneAppCoupledRelayEnabled];
  if (phoneAppCoupledRelayEnabled)
  {
    v5 = defaultCallingAppLSBundleIdentifier();
    if (!v5)
    {
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  featureFlags2 = [(ICSApplicationDelegateHelper *)self featureFlags];
  v16 = ([featureFlags2 phoneAppCoupledRelayEnabled] & 1) == 0 && defaultAppRelayTelephonySetting() == 1;

  if (phoneAppCoupledRelayEnabled)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (![necessaryCopy preferDefaultApp] || !v16)
  {
    if (+[PHDevice isGeminiCapable])
    {
      provider = [necessaryCopy provider];
      if ([provider isTelephonyProvider])
      {
        localSenderIdentityAccountUUID = [necessaryCopy localSenderIdentityAccountUUID];

        if (!localSenderIdentityAccountUUID)
        {
          v21 = +[ICSApplicationServices sharedInstance];
          contactGeminiManager = [v21 contactGeminiManager];

          v23 = +[ICSApplicationServices sharedInstance];
          contactStore = [v23 contactStore];

          v25 = +[CNGeminiManager descriptorForRequiredKeys];
          v52 = v25;
          v26 = [NSArray arrayWithObjects:&v52 count:1];

          contactIdentifier = [necessaryCopy contactIdentifier];
          v46 = v26;
          if (contactIdentifier)
          {
            v28 = sub_100004F84();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v51 = contactIdentifier;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retrieving contact with identifier %{sensitive}@", buf, 0xCu);
            }

            v49 = 0;
            v29 = [contactStore unifiedContactWithIdentifier:contactIdentifier keysToFetch:v26 error:&v49];
            v30 = v49;
            cnHandle = v30;
            if (!v29)
            {
              if (!v30 || [v30 code]== 200)
              {
                goto LABEL_51;
              }

              v44 = contactStore;
              v33 = contactGeminiManager;
              v34 = sub_100004F84();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_10025628C();
              }

              v35 = cnHandle;
              goto LABEL_43;
            }

            v44 = contactStore;
            v32 = sub_100004F84();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v51 = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact %{sensitive}@", buf, 0xCu);
            }

            v48 = cnHandle;
            v33 = contactGeminiManager;
            v34 = [contactGeminiManager bestSenderIdentityForContact:v29 error:&v48];
            v35 = v48;

            if (v34)
            {
              accountUUID = [v34 accountUUID];
              [necessaryCopy setLocalSenderIdentityAccountUUID:accountUUID];
            }

            else
            {
              if (!v35)
              {
LABEL_43:

                cnHandle = v35;
                contactGeminiManager = v33;
                contactStore = v44;
LABEL_51:

                goto LABEL_52;
              }

              accountUUID = sub_100004F84();
              if (os_log_type_enabled(accountUUID, OS_LOG_TYPE_ERROR))
              {
                sub_100256214(v35, accountUUID);
              }
            }

            goto LABEL_43;
          }

          handle = [necessaryCopy handle];
          cnHandle = [handle cnHandle];

          v29 = sub_100004F84();
          v38 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (cnHandle)
          {
            if (v38)
            {
              *buf = 138739971;
              v51 = cnHandle;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact handle %{sensitive}@", buf, 0xCu);
            }

            v47 = 0;
            handle2 = [contactGeminiManager bestSenderIdentityForHandle:cnHandle contactStore:contactStore error:&v47];
            v40 = v47;
            v29 = v40;
            if (handle2)
            {
              v45 = contactStore;
              v41 = contactGeminiManager;
              accountUUID2 = [handle2 accountUUID];
              [necessaryCopy setLocalSenderIdentityAccountUUID:accountUUID2];
LABEL_49:

              contactGeminiManager = v41;
              contactStore = v45;
              goto LABEL_50;
            }

            if (v40)
            {
              v45 = contactStore;
              v41 = contactGeminiManager;
              accountUUID2 = sub_100004F84();
              if (os_log_type_enabled(accountUUID2, OS_LOG_TYPE_ERROR))
              {
                sub_1002562F4(v29, accountUUID2);
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

            handle2 = [necessaryCopy handle];
            *buf = 138412290;
            v51 = handle2;
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
    v17 = [(ICSApplicationDelegateHelper *)self openDialRequestIfNecessary:necessaryCopy options:optionsCopy bypassUIPromptIfDefaultProvider:v12];
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

- (BOOL)isDefaultOrTelephonyScheme:(id)scheme
{
  schemeCopy = scheme;
  featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
  defaultCallingAppsGracefulFallbackEnabled = [featureFlags defaultCallingAppsGracefulFallbackEnabled];

  if (defaultCallingAppsGracefulFallbackEnabled)
  {
    scheme = [schemeCopy scheme];
    v8 = +[NSURL TUDialRequestSchemeDefaultApp];
    if ([scheme isEqualToString:v8])
    {
      v9 = 1;
    }

    else
    {
      scheme2 = [schemeCopy scheme];
      v11 = +[NSURL TUDialRequestSchemeForceTelephony];
      v9 = [scheme2 isEqualToString:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end