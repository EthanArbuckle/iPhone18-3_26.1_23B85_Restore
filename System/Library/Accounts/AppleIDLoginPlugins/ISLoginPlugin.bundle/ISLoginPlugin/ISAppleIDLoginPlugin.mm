@interface ISAppleIDLoginPlugin
- (ISAppleIDLoginPlugin)init;
- (id)_accountWithParameters:(id)parameters;
- (id)parametersForIdentityEstablishmentRequest;
- (id)parametersForLoginRequest;
- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier withCookieStorage:(id)storage;
- (void)_setupHomeSharingWithParameters:(id)parameters;
- (void)_setupITunesMatchWithParameters:(id)parameters;
- (void)_setupiTunesBiometricsWithParameters:(id)parameters;
- (void)handleLoginResponse:(id)response completion:(id)completion;
@end

@implementation ISAppleIDLoginPlugin

- (ISAppleIDLoginPlugin)init
{
  v6.receiver = self;
  v6.super_class = ISAppleIDLoginPlugin;
  v2 = [(ISAppleIDLoginPlugin *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ISAppleIDLoginPlugin", &_dispatch_queue_attr_concurrent);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)handleLoginResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  kdebug_trace();
  val = self;
  [(ISAppleIDLoginPlugin *)self setHandler:completionCopy];
  v65 = [NSMutableDictionary dictionaryWithDictionary:responseCopy];
  [v65 removeObjectForKey:@"password"];
  v9 = ISAppleIDPluginLogConfig();
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = shouldLog;
  }

  else
  {
    v12 = shouldLog & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = v13;
    NSStringFromSelector(a2);
    *from = 138543874;
    *&from[4] = v13;
    v82 = v81 = 2114;
    v83 = 2112;
    v84 = v65;
    LODWORD(v58) = 32;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [NSString stringWithCString:v15 encoding:4, from, v58];
      free(v15);
      SSFileLog();
    }
  }

  else
  {
  }

  v63 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Cookies", @"com.apple.itunesstored.2.sqlitedb", 0}];
  v66 = [NSString pathWithComponents:v63];
  v62 = objc_alloc_init(NSFileManager);
  stringByDeletingLastPathComponent = [v66 stringByDeletingLastPathComponent];
  [v62 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  v18 = [SSVCookieStorage alloc];
  v19 = [NSURL fileURLWithPath:v66];
  v61 = [v18 initWithStorageLocation:v19];

  v20 = [responseCopy objectForKey:@"dsid"];
  v67 = SSAccountGetUniqueIdentifierFromValue();

  if (!v67)
  {
    v22 = ISAppleIDPluginLogConfig();
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog2 | 2;
    }

    else
    {
      v24 = shouldLog2;
    }

    oSLogObject2 = [v22 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      *from = 138543362;
      *&from[4] = v26;
      v27 = v26;
      LODWORD(v59) = 12;
      v57 = from;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_26:

        v29 = [NSError errorWithDomain:@"ISAppleIDLoginErrorDomain" code:1 userInfo:0];
        v30 = 0;
        goto LABEL_35;
      }

      oSLogObject2 = [NSString stringWithCString:v28 encoding:4, from, v59];
      free(v28);
      v57 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_26;
  }

  v21 = [responseCopy objectForKey:@"cookies"];
  if (v21)
  {
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v21 userIdentifier:v67 withCookieStorage:v61];
  }

  else
  {
    v31 = [responseCopy objectForKey:@"pod"];
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v31 userIdentifier:v67 withCookieStorage:v61];

    v32 = [responseCopy objectForKey:@"weak-token"];
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v32 userIdentifier:v67 withCookieStorage:v61];
  }

  v30 = [(ISAppleIDLoginPlugin *)val _accountWithParameters:responseCopy];
  v33 = +[SSAccountStore defaultStore];
  [v33 saveAccount:v30 verifyCredentials:0 error:0];

  if ([v30 isActive])
  {
    +[SSAccountStore resetExpiration];
    v34 = [responseCopy objectForKey:@"storefront"];
    if (v34)
    {
      v35 = +[SSDevice currentDevice];
      [v35 setStoreFrontIdentifier:v34];
    }

    if (PSIsRunningInAssistant())
    {
      v36 = +[SSDevice currentDevice];
      [v36 enableAllAutomaticDownloadKindsWithCompletionBlock:0];
    }
  }

  v29 = 0;
LABEL_35:
  objc_initWeak(&location, val);
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1A94;
  v73[3] = &unk_8400;
  v73[4] = val;
  objc_copyWeak(&v77, &location);
  v37 = responseCopy;
  v74 = v37;
  v38 = v30;
  v75 = v38;
  v78 = v67 != 0;
  v60 = v29;
  v76 = v60;
  v39 = objc_retainBlock(v73);
  v64 = [v37 objectForKeyedSubscript:@"password"];
  if (v38 && [v64 length])
  {
    v40 = ISAppleIDPluginLogConfig();
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = v40;
    shouldLog3 = [v40 shouldLog];
    shouldLogToDisk = [v41 shouldLogToDisk];
    v44 = completionCopy;
    oSLogObject3 = [v41 OSLogObject];
    v46 = oSLogObject3;
    if (shouldLogToDisk)
    {
      shouldLog3 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v47 = shouldLog3;
    }

    else
    {
      v47 = shouldLog3 & 2;
    }

    if (v47)
    {
      v48 = objc_opt_class();
      accountName = [v38 accountName];
      v50 = SSHashIfNeeded();
      *from = 138543618;
      *&from[4] = v48;
      v81 = 2114;
      v82 = v50;
      LODWORD(v59) = 22;
      v51 = _os_log_send_and_compose_impl();

      completionCopy = v44;
      if (!v51)
      {
LABEL_49:

        v52 = +[SSMutableAuthenticationContext contextForSignIn];
        accountName2 = [v38 accountName];
        [v52 setAccountName:accountName2];

        altDSID = [v38 altDSID];
        [v52 setAltDSID:altDSID];

        [v52 setAllowsRetry:0];
        [v52 setCanSetActiveAccount:0];
        [v52 setCanCreateNewAccount:0];
        uniqueIdentifier = [v38 uniqueIdentifier];
        [v52 setRequiredUniqueIdentifier:uniqueIdentifier];

        [v52 setShouldSuppressDialogs:1];
        [v52 setPasswordEquivalentToken:v64];
        [v52 setPromptStyle:1];
        v56 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v52];
        objc_initWeak(from, val);
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_23E8;
        v69[3] = &unk_8428;
        objc_copyWeak(&v72, from);
        v70 = v38;
        v71 = v39;
        [v56 startWithAuthenticateResponseBlock:v69];

        objc_destroyWeak(&v72);
        objc_destroyWeak(from);

        goto LABEL_50;
      }

      v46 = [NSString stringWithCString:v51 encoding:4, from, v59];
      free(v51);
      SSFileLog();
    }

    goto LABEL_49;
  }

  (v39[2])(v39);
LABEL_50:

  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);
}

- (id)parametersForIdentityEstablishmentRequest
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[SSAccountStore defaultStore];
  activeAccount = [v3 activeAccount];

  if (activeAccount)
  {
    [v2 setObject:&__kCFBooleanTrue forKey:@"account-exists"];
    accountName = [activeAccount accountName];
    if (accountName)
    {
      [v2 setObject:accountName forKey:@"apple-id"];
    }

    secureToken = [activeAccount secureToken];

    if (secureToken)
    {
      [v2 setObject:secureToken forKey:@"auth-token"];
    }

    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (uniqueIdentifier)
    {
      [v2 setObject:uniqueIdentifier forKey:@"dsid"];
    }
  }

  else
  {
    [v2 setObject:&__kCFBooleanFalse forKey:@"account-exists"];
  }

  return v2;
}

- (id)parametersForLoginRequest
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"iTunes" forKey:@"drm-client"];
  v3 = +[ISDevice sharedInstance];
  hardwareName = [v3 hardwareName];
  v5 = hardwareName;
  if (hardwareName)
  {
    lowercaseString = [hardwareName lowercaseString];
    [v2 setObject:lowercaseString forKey:@"drm-type"];
  }

  guid = [v3 guid];

  if (guid)
  {
    [v2 setObject:guid forKey:@"guid"];
  }

  deviceName = [v3 deviceName];

  if (deviceName)
  {
    [v2 setObject:deviceName forKey:@"device-name"];
  }

  v9 = +[SSDevice currentDevice];
  productVersion = [v9 productVersion];

  if (productVersion)
  {
    [v2 setObject:productVersion forKey:@"drm-version"];
  }

  userAgent = [v9 userAgent];

  if (userAgent)
  {
    [v2 setObject:userAgent forKey:@"user-agent"];
  }

  return v2;
}

- (id)_accountWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [parametersCopy objectForKeyedSubscript:@"dsid"];
  v5 = SSAccountGetUniqueIdentifierFromValue();

  v6 = +[SSAccountStore defaultStore];
  v86 = v5;
  v7 = [v6 accountWithUniqueIdentifier:v5];

  v8 = ISAppleIDPluginLogConfig();
  v9 = v8;
  v10 = &ISWeakLinkedClassForString_ptr;
  if (!v7)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = [v86 description];
      v26 = SSHashIfNeeded();
      v87 = 138543618;
      v88 = v23;
      v89 = 2114;
      v90 = v26;
      LODWORD(v82) = 22;
      v79 = &v87;
      v27 = _os_log_send_and_compose_impl();

      v10 = &ISWeakLinkedClassForString_ptr;
      if (!v27)
      {
LABEL_26:

        v7 = objc_alloc_init(SSAccount);
        goto LABEL_27;
      }

      oSLogObject = [NSString stringWithCString:v27 encoding:4, &v87, v82];
      free(v27);
      v79 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v12 = shouldLog2 | 2;
  }

  else
  {
    v12 = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = objc_opt_class();
  v16 = v15;
  v17 = [v86 description];
  v18 = SSHashIfNeeded();
  v87 = 138543618;
  v88 = v15;
  v10 = &ISWeakLinkedClassForString_ptr;
  v89 = 2114;
  v90 = v18;
  LODWORD(v82) = 22;
  v79 = &v87;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    oSLogObject2 = [NSString stringWithCString:v19 encoding:4, &v87, v82];
    free(v19);
    v79 = oSLogObject2;
    SSFileLog();
LABEL_13:
  }

LABEL_27:
  v28 = [parametersCopy objectForKeyedSubscript:{@"email", v79}];
  [v7 setAccountName:v28];

  v29 = [parametersCopy objectForKeyedSubscript:@"altDSID"];
  [v7 setAltDSID:v29];

  [v7 setAuthenticated:1];
  v30 = [parametersCopy objectForKeyedSubscript:@"firstName"];
  [v7 setFirstName:v30];

  v31 = [parametersCopy objectForKeyedSubscript:@"lastName"];
  [v7 setLastName:v31];

  v32 = [parametersCopy objectForKey:@"is-managed-id"];
  v85 = v32;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v32 BOOLValue])
  {
    v33 = ISAppleIDPluginLogConfig();
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = shouldLog3 | 2;
    }

    else
    {
      v35 = shouldLog3;
    }

    oSLogObject3 = [v33 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 2;
    }

    if (v37)
    {
      v38 = objc_opt_class();
      v87 = 138543362;
      v88 = v38;
      v39 = v38;
      LODWORD(v82) = 12;
      v80 = &v87;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
LABEL_41:

        v41 = 1;
        v10 = &ISWeakLinkedClassForString_ptr;
        goto LABEL_43;
      }

      oSLogObject3 = [NSString stringWithCString:v40 encoding:4, &v87, v82];
      free(v40);
      v80 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_41;
  }

  v41 = 0;
LABEL_43:
  [v7 setManagedAppleID:{v41, v80}];
  v42 = [parametersCopy objectForKeyedSubscript:@"newCustomer"];
  [v7 setNewCustomer:{objc_msgSend(v42, "BOOLValue")}];

  v43 = [parametersCopy objectForKeyedSubscript:@"strong-token"];
  v44 = v10[92];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v43 = 0;
  }

  v84 = v43;
  [v7 setSecureToken:v43];
  v45 = [parametersCopy objectForKeyedSubscript:@"storefront"];
  v46 = ISAppleIDPluginLogConfig();
  if (!v46)
  {
    v46 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v46 shouldLog];
  if ([v46 shouldLogToDisk])
  {
    v48 = shouldLog4 | 2;
  }

  else
  {
    v48 = shouldLog4;
  }

  oSLogObject4 = [v46 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v50 = v48;
  }

  else
  {
    v50 = v48 & 2;
  }

  if (v50)
  {
    v51 = objc_opt_class();
    v52 = v51;
    v53 = SSHashIfNeeded();
    v87 = 138543618;
    v88 = v51;
    v89 = 2114;
    v90 = v53;
    LODWORD(v82) = 22;
    v81 = &v87;
    v54 = _os_log_send_and_compose_impl();

    if (!v54)
    {
      goto LABEL_57;
    }

    oSLogObject4 = [v10[92] stringWithCString:v54 encoding:{4, &v87, v82}];
    free(v54);
    v81 = oSLogObject4;
    SSFileLog();
  }

LABEL_57:
  [v7 setStoreFrontIdentifier:v45];
  [v7 setUniqueIdentifier:v86];
  v55 = +[SSAccountStore defaultStore];
  activeAccount = [v55 activeAccount];

  if (activeAccount)
  {
    v83 = v45;
    uniqueIdentifier = [activeAccount uniqueIdentifier];
    uniqueIdentifier2 = [v7 uniqueIdentifier];
    v59 = [uniqueIdentifier isEqualToNumber:uniqueIdentifier2];

    v60 = ISAppleIDPluginLogConfig();
    v61 = v60;
    if (v59)
    {
      if (!v60)
      {
        v61 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v61 shouldLog];
      if ([v61 shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      oSLogObject5 = [v61 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog5 &= 2u;
      }

      if (shouldLog5)
      {
        v64 = objc_opt_class();
        v65 = v64;
        accountName = [v7 accountName];
        v67 = SSHashIfNeeded();
        v87 = 138543618;
        v88 = v64;
        v89 = 2114;
        v90 = v67;
        LODWORD(v82) = 22;
        goto LABEL_75;
      }

      v71 = 1;
    }

    else
    {
      if (!v60)
      {
        v61 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v61 shouldLog];
      if ([v61 shouldLogToDisk])
      {
        shouldLog6 |= 2u;
      }

      oSLogObject5 = [v61 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog6 &= 2u;
      }

      if (shouldLog6)
      {
        v73 = objc_opt_class();
        v74 = v73;
        accountName2 = [v7 accountName];
        v76 = SSHashIfNeeded();
        v87 = 138543618;
        v88 = v73;
        v89 = 2114;
        v90 = v76;
        LODWORD(v82) = 22;
        v70 = _os_log_send_and_compose_impl();

        v71 = 0;
        if (v70)
        {
          goto LABEL_76;
        }

LABEL_85:
        v77 = v85;
        v45 = v83;
        goto LABEL_92;
      }

      v71 = 0;
    }

    v77 = v85;
    goto LABEL_91;
  }

  v61 = ISAppleIDPluginLogConfig();
  if (!v61)
  {
    v61 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v61 shouldLog];
  if ([v61 shouldLogToDisk])
  {
    shouldLog7 |= 2u;
  }

  oSLogObject5 = [v61 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog7 &= 2u;
  }

  if (!shouldLog7)
  {
    v71 = 1;
    goto LABEL_87;
  }

  v83 = v45;
  v69 = objc_opt_class();
  v65 = v69;
  accountName = [v7 accountName];
  v67 = SSHashIfNeeded();
  v87 = 138543618;
  v88 = v69;
  v89 = 2114;
  v90 = v67;
  LODWORD(v82) = 22;
LABEL_75:
  v70 = _os_log_send_and_compose_impl();

  v71 = 1;
  if (!v70)
  {
    goto LABEL_85;
  }

LABEL_76:
  v45 = v83;
  oSLogObject5 = [NSString stringWithCString:v70 encoding:4, &v87, v82];
  free(v70);
  SSFileLog();
LABEL_87:
  v77 = v85;
LABEL_91:

LABEL_92:
  [v7 setActive:v71];

  return v7;
}

- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier withCookieStorage:(id)storage
{
  stringCopy = string;
  if (stringCopy)
  {
    storageCopy = storage;
    identifierCopy = identifier;
    v10 = ISAppleIDPluginLogConfig();
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2112;
      *&v20[14] = stringCopy;
      v14 = *&v20[4];
      LODWORD(v19) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        v16 = [[NSDictionary alloc] initWithObjectsAndKeys:{stringCopy, @"Set-Cookie", 0}];
        v17 = [NSURL URLWithString:@"https://itunes.apple.com"];
        v18 = [NSHTTPCookie cookiesWithResponseHeaderFields:v16 forURL:v17];

        [storageCopy setCookies:v18 forUserIdentifier:identifierCopy];
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v15 encoding:4, v20, v19, *v20, *&v20[16]];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_setupHomeSharingWithParameters:(id)parameters
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3740;
  block[3] = &unk_8478;
  parametersCopy = parameters;
  v8 = dispatch_semaphore_create(0);
  selfCopy = self;
  v4 = v8;
  v5 = parametersCopy;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_setupiTunesBiometricsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v5 isPasscodeSet];

  if (isPasscodeSet)
  {
    manager = [ISWeakLinkedClassForString() manager];
    oSLogObject4 = [manager identities:0];
    if (![oSLogObject4 count])
    {
      oSLogObject3 = ISAppleIDPluginLogConfig();
      if (!oSLogObject3)
      {
        oSLogObject3 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [oSLogObject3 shouldLog];
      if ([oSLogObject3 shouldLogToDisk])
      {
        v23 = shouldLog | 2;
      }

      else
      {
        v23 = shouldLog;
      }

      oSLogObject = [oSLogObject3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v33 = 138543362;
        v34 = objc_opt_class();
        v25 = v34;
        LODWORD(v31) = 12;
        v26 = _os_log_send_and_compose_impl();

        if (!v26)
        {
          goto LABEL_47;
        }

        oSLogObject = [NSString stringWithCString:v26 encoding:4, &v33, v31];
        free(v26);
        SSFileLog();
      }

      goto LABEL_47;
    }

    v9 = [parametersCopy objectForKey:@"dsid"];
    manager = SSAccountGetUniqueIdentifierFromValue();

    v10 = ISAppleIDPluginLogConfig();
    oSLogObject4 = v10;
    if (manager)
    {
      if (!v10)
      {
        oSLogObject4 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject4 shouldLog];
      if ([oSLogObject4 shouldLogToDisk])
      {
        v12 = shouldLog2 | 2;
      }

      else
      {
        v12 = shouldLog2;
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v33 = 138543618;
        v34 = objc_opt_class();
        v35 = 2114;
        v36 = manager;
        v14 = v34;
        LODWORD(v31) = 22;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_15:

          oSLogObject4 = objc_opt_new();
          [oSLogObject4 setBiometricState:2];
          [oSLogObject4 saveIdentityMapForAccountIdentifier:manager];
          [oSLogObject4 registerAccountIdentifier:manager];
          oSLogObject3 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:manager];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_4008;
          v32[3] = &unk_84A0;
          v32[4] = self;
          [oSLogObject3 setResultBlock:v32];
          v17 = +[ISOperationQueue mainQueue];
          [v17 addOperation:oSLogObject3];

LABEL_47:
          goto LABEL_48;
        }

        oSLogObject2 = [NSString stringWithCString:v15 encoding:4, &v33, v31];
        free(v15);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v10)
    {
      oSLogObject4 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [oSLogObject4 shouldLog];
    if ([oSLogObject4 shouldLogToDisk])
    {
      v28 = shouldLog3 | 2;
    }

    else
    {
      v28 = shouldLog3;
    }

    oSLogObject3 = [oSLogObject4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_47;
    }

    v33 = 138543362;
    v34 = objc_opt_class();
    v29 = v34;
    LODWORD(v31) = 12;
    v30 = _os_log_send_and_compose_impl();

    if (v30)
    {
      oSLogObject3 = [NSString stringWithCString:v30 encoding:4, &v33, v31];
      free(v30);
      SSFileLog();
      goto LABEL_47;
    }

LABEL_48:

    goto LABEL_49;
  }

  manager = ISAppleIDPluginLogConfig();
  if (!manager)
  {
    manager = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [manager shouldLog];
  if ([manager shouldLogToDisk])
  {
    v19 = shouldLog4 | 2;
  }

  else
  {
    v19 = shouldLog4;
  }

  oSLogObject4 = [manager OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_48;
  }

  v33 = 138543362;
  v34 = objc_opt_class();
  v20 = v34;
  LODWORD(v31) = 12;
  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    oSLogObject4 = [NSString stringWithCString:v21 encoding:4, &v33, v31];
    free(v21);
    SSFileLog();
    goto LABEL_48;
  }

LABEL_49:
}

- (void)_setupITunesMatchWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"slot-acquired"];
  if (objc_opt_respondsToSelector())
  {
    if ([v5 BOOLValue])
    {
      v6 = +[ML3MusicLibrary sharedLibrary];
      isLibraryEmpty = [v6 isLibraryEmpty];

      if (isLibraryEmpty)
      {
        v8 = +[SSAccountStore defaultStore];
        activeAccount = [v8 activeAccount];
        uniqueIdentifier = [activeAccount uniqueIdentifier];

        v10 = ISAppleIDPluginLogConfig();
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v10 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v13 = shouldLog;
        }

        else
        {
          v13 = shouldLog & 2;
        }

        if (v13)
        {
          v14 = objc_opt_class();
          v15 = v14;
          v16 = [uniqueIdentifier description];
          v17 = SSHashIfNeeded();
          *v53 = 138543618;
          *&v53[4] = v14;
          *&v53[12] = 2114;
          *&v53[14] = v17;
          LODWORD(v42) = 22;
          v41 = v53;
          v18 = _os_log_send_and_compose_impl();

          if (v18)
          {
            v19 = [NSString stringWithCString:v18 encoding:4, v53, v42];
            free(v18);
            v41 = v19;
            SSFileLog();
          }
        }

        else
        {
        }

        v44 = [SSURLBagContext contextWithBagType:0];
        if (uniqueIdentifier)
        {
          [v44 setUserIdentifier:uniqueIdentifier];
        }

        v20 = [[SSURLBag alloc] initWithURLBagContext:v44];
        [v20 invalidate];
        *v53 = 0;
        *&v53[8] = v53;
        *&v53[16] = 0x2020000000;
        v54 = 0;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_495C;
        v48[3] = &unk_84C8;
        v48[4] = self;
        v50 = v53;
        v21 = dispatch_semaphore_create(0);
        v49 = v21;
        [v20 loadWithCompletionBlock:v48];
        dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
        if (*(*&v53[8] + 24) != 1)
        {
          v33 = ISAppleIDPluginLogConfig();
          if (!v33)
          {
            v33 = +[SSLogConfig sharedConfig];
          }

          v22 = v33;
          shouldLog2 = [v33 shouldLog];
          shouldLogToDisk = [v22 shouldLogToDisk];
          oSLogObject2 = [v22 OSLogObject];
          v32 = oSLogObject2;
          if (shouldLogToDisk)
          {
            shouldLog2 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v37 = shouldLog2;
          }

          else
          {
            v37 = shouldLog2 & 2;
          }

          if (v37)
          {
            v38 = objc_opt_class();
            v51 = 138543362;
            v52 = v38;
            v39 = v38;
            LODWORD(v42) = 12;
            v40 = _os_log_send_and_compose_impl();

            if (!v40)
            {
LABEL_40:

              _Block_object_dispose(v53, 8);
              goto LABEL_41;
            }

            v32 = [NSString stringWithCString:v40 encoding:4, &v51, v42];
            free(v40);
            SSFileLog();
          }

LABEL_39:

          goto LABEL_40;
        }

        v22 = objc_alloc_init(HSCloudClient);
        v43 = dispatch_semaphore_create(0);
        v23 = ISAppleIDPluginLogConfig();
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        v24 = v23;
        shouldLog3 = [v23 shouldLog];
        shouldLogToDisk2 = [v24 shouldLogToDisk];
        oSLogObject3 = [v24 OSLogObject];
        v28 = oSLogObject3;
        if (shouldLogToDisk2)
        {
          shouldLog3 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
        {
          v29 = objc_opt_class();
          v51 = 138543362;
          v52 = v29;
          v30 = v29;
          LODWORD(v42) = 12;
          v31 = _os_log_send_and_compose_impl();

          if (!v31)
          {
LABEL_28:

            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_4B6C;
            v46[3] = &unk_84F0;
            v32 = v43;
            v47 = v32;
            [v22 authenticateWithCompletionHandler:v46];
            dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);

            goto LABEL_39;
          }

          v28 = [NSString stringWithCString:v31 encoding:4, &v51, v42];
          free(v31);
          SSFileLog();
        }

        goto LABEL_28;
      }
    }
  }

LABEL_41:
}

@end