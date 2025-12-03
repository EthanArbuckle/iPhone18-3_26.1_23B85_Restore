@interface NSMutableURLRequest(AppleMediaServices)
- (AMSMutablePromise)_ams_authKitHeaders;
- (AMSPromiseSerialQueue)_ams_promiseSerialQueue;
- (id)_ams_separateCookies:()AppleMediaServices;
- (id)ams_addAuthKitHeaders;
- (id)ams_addCookiesAsynchronouslyForAccount:()AppleMediaServices clientInfo:bag:cleanupGlobalCookies:;
- (id)ams_addHeadersFromPromise:()AppleMediaServices;
- (id)ams_modifyRequestWithBlock:()AppleMediaServices;
- (uint64_t)ams_addCacheBusterParameterWithPreservedQueryEncoding:()AppleMediaServices;
- (uint64_t)ams_addCachePolicyHeader;
- (uint64_t)ams_addContentTypeHeaderForEncoding:()AppleMediaServices;
- (uint64_t)ams_addForwardedForHeader;
- (uint64_t)ams_addHeaders:()AppleMediaServices;
- (uint64_t)ams_removeAnisetteHeaders;
- (uint64_t)ams_removeFPDIHeaders;
- (uint64_t)ams_setBodyParameters:()AppleMediaServices encoding:compressBody:error:;
- (void)_ams_addCookies:()AppleMediaServices;
- (void)_ams_replaceCookies:()AppleMediaServices;
- (void)ams_addAcceptLanguageHeader;
- (void)ams_addAuthorizationHeaderForAccount:()AppleMediaServices;
- (void)ams_addBiometricsHeadersForAccount:()AppleMediaServices options:;
- (void)ams_addClientIdentifierHeaderForClient:()AppleMediaServices;
- (void)ams_addClientVersionsForClient:()AppleMediaServices;
- (void)ams_addContentLengthHeaderForData:()AppleMediaServices;
- (void)ams_addCookiesForAccount:()AppleMediaServices clientInfo:bag:cleanupGlobalCookies:;
- (void)ams_addGSTokenForAccount:()AppleMediaServices identifier:;
- (void)ams_addIdentifierHeadersForAccount:()AppleMediaServices;
- (void)ams_addMMeClientInfoAndDeviceHeaders;
- (void)ams_addPrimaryiCloudIdentifierHeader;
- (void)ams_addSilentEnrollmentHeadersForAccount:()AppleMediaServices;
- (void)ams_addTimezoneOffsetHeader;
- (void)ams_addXGroupDSIDsWithPrimaryAccount:()AppleMediaServices andGroupAccounts:;
- (void)ams_addXTokenHeaderWithAccount:()AppleMediaServices;
@end

@implementation NSMutableURLRequest(AppleMediaServices)

- (AMSPromiseSerialQueue)_ams_promiseSerialQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &_ams_promiseSerialQueue_queueKey);
  if (!v2)
  {
    v2 = objc_alloc_init(AMSPromiseSerialQueue);
    objc_setAssociatedObject(selfCopy, &_ams_promiseSerialQueue_queueKey, v2, 1);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (void)ams_addAcceptLanguageHeader
{
  v2 = +[AMSDevice language];
  [self setValue:v2 forHTTPHeaderField:@"Accept-Language"];
}

- (uint64_t)ams_addCachePolicyHeader
{
  result = os_variant_has_internal_content();
  if (result)
  {
    cachePolicy = [self cachePolicy];
    if (cachePolicy > 5)
    {
      v4 = @"Unknown";
    }

    else
    {
      v4 = off_1E73BE518[cachePolicy];
    }

    return [self setValue:v4 forHTTPHeaderField:@"X-Apple-NSURLCachePolicy"];
  }

  return result;
}

- (void)ams_addTimezoneOffsetHeader
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:secondsFromGMT];
  stringValue = [v3 stringValue];
  [self setValue:stringValue forHTTPHeaderField:@"X-Apple-Tz"];
}

- (uint64_t)ams_addForwardedForHeader
{
  v2 = +[AMSDefaults forwardedForIPAddress];
  if (v2)
  {
    [self setValue:v2 forHTTPHeaderField:@"X-Forwarded-For"];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)ams_addPrimaryiCloudIdentifierHeader
{
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiCloudAccount = [ams_sharedAccountStore ams_activeiCloudAccount];

  ams_DSID = [ams_activeiCloudAccount ams_DSID];
  if ([ams_DSID longLongValue])
  {
    stringValue = [ams_DSID stringValue];
    [self setValue:stringValue forHTTPHeaderField:@"iCloud-DSID"];
  }
}

- (uint64_t)ams_addHeaders:()AppleMediaServices
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__NSMutableURLRequest_AppleMediaServices__ams_addHeaders___block_invoke;
  v4[3] = &unk_1E73B7EE0;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)ams_addAuthKitHeaders
{
  _ams_authKitHeaders = [self _ams_authKitHeaders];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSMutableURLRequest_AppleMediaServices__ams_addAuthKitHeaders__block_invoke;
  v5[3] = &unk_1E73BE418;
  v5[4] = self;
  [_ams_authKitHeaders addSuccessBlock:v5];
  binaryPromiseAdapter = [_ams_authKitHeaders binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (void)ams_addAuthorizationHeaderForAccount:()AppleMediaServices
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    aa_personID = [v5 aa_personID];
    aa_authToken = [v5 aa_authToken];

    v10 = [v4 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

    v8 = [v10 dataUsingEncoding:4];
    v9 = [v8 base64EncodedStringWithOptions:0];

    [self setValue:v9 forHTTPHeaderField:@"Authorization"];
  }
}

- (void)ams_addBiometricsHeadersForAccount:()AppleMediaServices options:
{
  if (a3)
  {
    if (a4)
    {
      v5 = [AMSBiometrics headersWithAccount:"headersWithAccount:options:signatureResult:" options:? signatureResult:?];
      allHTTPHeaderFields = [self allHTTPHeaderFields];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __86__NSMutableURLRequest_AppleMediaServices__ams_addBiometricsHeadersForAccount_options___block_invoke;
      v8[3] = &unk_1E73B7F08;
      v9 = allHTTPHeaderFields;
      selfCopy = self;
      v7 = allHTTPHeaderFields;
      [v5 enumerateKeysAndObjectsUsingBlock:v8];
    }
  }
}

- (uint64_t)ams_addCacheBusterParameterWithPreservedQueryEncoding:()AppleMediaServices
{
  if ((a3 & 1) == 0)
  {
    v4 = +[AMSProcessInfo currentProcess];
    bundleIdentifier = [v4 bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.Music"])
    {
    }

    else
    {
      v6 = +[AMSProcessInfo currentProcess];
      bundleIdentifier2 = [v6 bundleIdentifier];
      v8 = [bundleIdentifier2 isEqualToString:@"com.apple.TVMusic"];

      if (!v8)
      {
        v9 = [self URL];
        ams_parameters = [v9 ams_parameters];
        v19 = [ams_parameters mutableCopy];
        if (!v19)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = 0;
          v13 = 0;
          goto LABEL_9;
        }

        v12 = v19;
        v13 = 0;
        goto LABEL_7;
      }
    }
  }

  v9 = [self URL];
  ams_parameters = [v9 ams_unmodifiedParameters];
  v11 = [ams_parameters mutableCopy];
  if (!v11)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = 1;
LABEL_7:
  v21 = v12;
LABEL_9:

  if (+[AMSDefaults alwaysSendCacheBuster])
  {
    v14 = [v21 objectForKeyedSubscript:@"buster"];

    if (!v14)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      [v21 setObject:uUIDString forKeyedSubscript:@"buster"];
      v17 = [self URL];
      v18 = [v17 ams_URLByReplacingQueryParameters:v21 withEncodedParameters:v13];

      [self setURL:v18];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)ams_addClientIdentifierHeaderForClient:()AppleMediaServices
{
  bundleIdentifier = [a3 bundleIdentifier];
  [self setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Client-Application"];
}

- (void)ams_addClientVersionsForClient:()AppleMediaServices
{
  v24 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  proxyAppBundleID = [v24 proxyAppBundleID];

  if (proxyAppBundleID)
  {
    proxyAppBundleID2 = [v24 proxyAppBundleID];
    [v4 addObject:proxyAppBundleID2];
  }

  mappedBundleInfo = [v24 mappedBundleInfo];
  bundleIdentifier = [mappedBundleInfo bundleIdentifier];

  if (bundleIdentifier)
  {
    mappedBundleInfo2 = [v24 mappedBundleInfo];
    bundleIdentifier2 = [mappedBundleInfo2 bundleIdentifier];
    [v4 addObject:bundleIdentifier2];
  }

  bundleIdentifier3 = [v24 bundleIdentifier];

  if (bundleIdentifier3)
  {
    bundleIdentifier4 = [v24 bundleIdentifier];
    [v4 addObject:bundleIdentifier4];
  }

  if ([v4 count])
  {
    v13 = 0;
    while (v13 < [v4 count])
    {
      v14 = [v4 objectAtIndexedSubscript:v13];
      lowercaseString = [v14 lowercaseString];
      v16 = [&unk_1F0779DA8 objectForKeyedSubscript:lowercaseString];

      if (v16)
      {
        bundleIdentifier5 = [v24 bundleIdentifier];
        v18 = [bundleIdentifier5 compare:v14 options:1];

        if (v18)
        {
          v19 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v14];
        }

        else
        {
          v19 = v24;
        }

        v21 = v19;
        clientVersion = [(AMSProcessInfo *)v19 clientVersion];
        [(__CFString *)clientVersion doubleValue];
        if (v23 == 0.0)
        {

          clientVersion = @"??";
        }

        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v16, clientVersion];
      }

      else
      {
        v20 = 0;
      }

      ++v13;

      if (v20)
      {
        goto LABEL_21;
      }
    }

    v20 = 0;
LABEL_21:
    [self setValue:v20 forHTTPHeaderField:@"X-Apple-Client-Versions"];
  }
}

- (void)ams_addContentLengthHeaderForData:()AppleMediaServices
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "length")}];
  stringValue = [v5 stringValue];
  [self setValue:stringValue forHTTPHeaderField:@"Content-Length"];
}

- (uint64_t)ams_addContentTypeHeaderForEncoding:()AppleMediaServices
{
  if (a3 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E73BE548[a3];
  }

  return [self setValue:v3 forHTTPHeaderField:@"Content-Type"];
}

- (id)ams_addCookiesAsynchronouslyForAccount:()AppleMediaServices clientInfo:bag:cleanupGlobalCookies:
{
  v72[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [self URL];

  if (v14)
  {
    v15 = &unk_193016000;
    v58 = a6;
    v57 = v12;
    if (v11 && [v11 ams_isEphemeralAccount])
    {
      v72[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
      v17 = [AMSPromise promiseWithResult:v16];
    }

    else
    {
      v18 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForProcessInfo:v12];
      if (v18)
      {
        v16 = v18;
        ams_mediaType = [v18 ams_mediaType];
        v20 = [v16 _ams_localiTunesAccountForAccountMediaType:ams_mediaType updateStorefront:0];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke;
        v64[3] = &unk_1E73B4538;
        v64[4] = self;
        v65 = v11;
        v17 = [v20 continueWithBlock:v64];
      }

      else
      {
        v30 = +[AMSLogConfig sharedConfig];
        if (!v30)
        {
          v30 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v30 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v55 = a2;
          v32 = AMSLogKey();
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v35 = v34;
          if (v32)
          {
            a4 = AMSLogKey();
            [v33 stringWithFormat:@"%@: [%@] ", v35, a4];
          }

          else
          {
            [v33 stringWithFormat:@"%@: ", v34];
          }
          v36 = ;
          v38 = [self URL];
          v39 = AMSHashIfNeeded(v38);
          *buf = 138543618;
          v69 = v36;
          v70 = 2114;
          v71 = v39;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@No account store was available. No local account cookies will be added to this request. URL = %{public}@", buf, 0x16u);

          if (v32)
          {

            v36 = a4;
          }

          a2 = v55;
        }

        if (v11)
        {
          v67 = v11;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
          v17 = [AMSPromise promiseWithResult:v40];
        }

        else
        {
          v17 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F0]];
        }

        v16 = 0;
        v15 = &unk_193016000;
      }
    }

    v41 = [v13 arrayForKey:@"clientIDDomains"];
    valuePromise = [v41 valuePromise];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_153;
    v63[3] = &unk_1E73BE440;
    v63[4] = self;
    v43 = [valuePromise continueWithBlock:v63];

    if (!v43)
    {
      v44 = +[AMSLogConfig sharedConfig];
      if (!v44)
      {
        v44 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v44 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v56 = a2;
        v46 = AMSLogKey();
        v47 = MEMORY[0x1E696AEC0];
        v48 = objc_opt_class();
        v49 = v48;
        if (v46)
        {
          v15 = AMSLogKey();
          [v47 stringWithFormat:@"%@: [%@] ", v49, v15];
        }

        else
        {
          [v47 stringWithFormat:@"%@: ", v48];
        }
        v50 = ;
        *buf = 138543362;
        v69 = v50;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@No bag was provided. Defaulting to not applying analytics cookies.", buf, 0xCu);
        if (v46)
        {

          v50 = v15;
        }

        a2 = v56;
      }

      v43 = [AMSPromise promiseWithResult:MEMORY[0x1E695E110]];
    }

    v66[0] = v17;
    v66[1] = v43;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v52 = [AMSPromise promiseWithAll:v51];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_157;
    v59[3] = &unk_1E73BE4B0;
    v59[4] = self;
    v61 = a2;
    v60 = v13;
    v62 = v58;
    v53 = [v52 thenWithBlock:v59];
    binaryPromiseAdapter = [v53 binaryPromiseAdapter];

    v12 = v57;
  }

  else
  {
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v12;
      v24 = a2;
      v25 = AMSLogKey();
      v26 = MEMORY[0x1E696AEC0];
      v27 = objc_opt_class();
      if (v25)
      {
        v28 = AMSLogKey();
        v24 = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: [%@] %@ ", v27, v28, v24];
      }

      else
      {
        v28 = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: %@ ", v27, v28];
      }
      v29 = ;
      *buf = 138543362;
      v69 = v29;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@URL is nil, can’t add cookies.", buf, 0xCu);
      if (v25)
      {

        v29 = v24;
      }

      v12 = v23;
    }

    v17 = AMSError(2, @"Can't add cookies as request doesn't have a URL.", 0, 0);
    binaryPromiseAdapter = [AMSBinaryPromise promiseWithError:v17];
  }

  return binaryPromiseAdapter;
}

- (void)ams_addCookiesForAccount:()AppleMediaServices clientInfo:bag:cleanupGlobalCookies:
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  v2 = [self ams_addCookiesAsynchronouslyForAccount:? clientInfo:? bag:? cleanupGlobalCookies:?];
  v12 = 0;
  [v2 resultWithError:&v12];
  v3 = v12;

  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = v8;
      if (v6)
      {
        selfCopy = AMSLogKey();
        [v7 stringWithFormat:@"%@: [%@] ", v9, selfCopy];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v8];
      }
      v10 = ;
      v11 = AMSLogableError(v3);
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to synchronously add cookies for account. error = %{public}@", buf, 0x16u);
      if (v6)
      {

        v10 = selfCopy;
      }
    }
  }
}

- (void)ams_addGSTokenForAccount:()AppleMediaServices identifier:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 && v6)
  {
    v8 = a3;
    [self ams_addMMeClientInfoAndDeviceHeaders];
    accountStore = [v8 accountStore];
    v18 = 0;
    v10 = [accountStore ams_fetchGrandSlamTokenForAccount:v8 withIdentifier:v7 error:&v18];

    v11 = v18;
    if (v11 || !v10)
    {
      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = AMSLogKey();
        v17 = AMSLogableError(v11);
        *buf = 138543874;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch GrandSlam token. %{public}@", buf, 0x20u);
      }
    }

    [self setValue:v10 forHTTPHeaderField:@"X-Apple-GS-Token"];
    [self setValue:v7 forHTTPHeaderField:@"X-Apple-GS-Token-Identifier"];
  }
}

- (void)ams_addIdentifierHeadersForAccount:()AppleMediaServices
{
  v4 = a3;
  ams_DSID = [v4 ams_DSID];
  stringValue = [ams_DSID stringValue];
  [self setValue:stringValue forHTTPHeaderField:@"X-DSID"];

  ams_altDSID = [v4 ams_altDSID];

  [self setValue:ams_altDSID forHTTPHeaderField:@"X-Apple-ADSID"];
}

- (void)ams_addMMeClientInfoAndDeviceHeaders
{
  currentInfo = [MEMORY[0x1E698B890] currentInfo];
  clientInfoHeader = [currentInfo clientInfoHeader];

  v3 = +[AMSDevice uniqueDeviceId];
  [self setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];
  [self setValue:v3 forHTTPHeaderField:@"X-Mme-Device-Id"];
}

- (void)ams_addSilentEnrollmentHeadersForAccount:()AppleMediaServices
{
  v2 = [AMSAppleCardSilentEnrollment headersForAccount:?];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__NSMutableURLRequest_AppleMediaServices__ams_addSilentEnrollmentHeadersForAccount___block_invoke;
  v3[3] = &unk_1E73B7EE0;
  v3[4] = self;
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)ams_addXTokenHeaderWithAccount:()AppleMediaServices
{
  v6 = a3;
  if (v6)
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v5 = [ams_sharedAccountStore ams_secureTokenForAccount:v6];

    if (v5)
    {
      [self setValue:v5 forHTTPHeaderField:@"X-Token"];
    }
  }
}

- (void)ams_addXGroupDSIDsWithPrimaryAccount:()AppleMediaServices andGroupAccounts:
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [AMSMutableSet setWithHashBlock:&__block_literal_global_187];
  v36 = v7;
  [v8 addObjectsFromArray:v7];
  string = [MEMORY[0x1E696AD60] string];
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v37 = v6;
  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = AMSLogKey();
    *buf = 138543874;
    v44 = v12;
    v45 = 2114;
    v46 = v14;
    v47 = 2048;
    v48 = [v8 count];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding Group DSIDs for %lu accounts", buf, 0x20u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        ams_DSID = [v20 ams_DSID];
        stringValue = [ams_DSID stringValue];

        if ([stringValue length])
        {
          [string appendFormat:@"%@; ", stringValue];
          ams_cookies = [v20 ams_cookies];
          [self _ams_addCookies:ams_cookies];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }

  if (v37)
  {
    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = v26;
      v28 = AMSLogKey();
      v29 = AMSHashIfNeeded(v37);
      *buf = 138543874;
      v44 = v26;
      v45 = 2114;
      v46 = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding DSID to group list for primary account: %@", buf, 0x20u);
    }

    ams_cookies2 = [v37 ams_cookies];
    [self _ams_addCookies:ams_cookies2];
  }

  if ([string length])
  {
    v31 = +[AMSLogConfig sharedConfig];
    if (!v31)
    {
      v31 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v31 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = v33;
      v35 = AMSLogKey();
      *buf = 138543874;
      v44 = v33;
      v45 = 2114;
      v46 = v35;
      v47 = 2112;
      v48 = string;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Group DSIDs list: %@", buf, 0x20u);
    }

    [self setValue:string forHTTPHeaderField:@"X-Group-DSIDs"];
  }
}

- (uint64_t)ams_removeAnisetteHeaders
{
  [self setValue:0 forHTTPHeaderField:@"X-Apple-AMD-M"];
  [self setValue:0 forHTTPHeaderField:@"X-Apple-MD-M"];
  [self setValue:0 forHTTPHeaderField:@"X-Apple-AMD"];

  return [self setValue:0 forHTTPHeaderField:@"X-Apple-MD"];
}

- (uint64_t)ams_removeFPDIHeaders
{
  [self setValue:0 forHTTPHeaderField:@"X-Apple-FPDISignature"];
  [self setValue:0 forHTTPHeaderField:@"X-Apple-FPDIAction"];

  return [self setValue:0 forHTTPHeaderField:@"X-Apple-FPDIRetryCount"];
}

- (uint64_t)ams_setBodyParameters:()AppleMediaServices encoding:compressBody:error:
{
  v52 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 2;
  }

  if (!v10)
  {
    if (a6)
    {
      v20 = @"Invalid Parameters";
      v21 = @"Parameters must not be nil";
      v22 = 2;
LABEL_15:
      AMSError(v22, v20, v21, 0);
      *a6 = v23 = 0;
      goto LABEL_46;
    }

LABEL_43:
    v23 = 0;
    goto LABEL_46;
  }

  hTTPMethod = [self HTTPMethod];
  if ([hTTPMethod isEqualToString:@"POST"])
  {
LABEL_8:

    goto LABEL_9;
  }

  hTTPMethod2 = [self HTTPMethod];
  if ([hTTPMethod2 isEqualToString:@"PATCH"])
  {

    goto LABEL_8;
  }

  hTTPMethod3 = [self HTTPMethod];
  v35 = [hTTPMethod3 isEqualToString:@"PUT"];

  if (v35)
  {
LABEL_9:
    v45 = 0;
    v15 = [AMSData dataWithObject:v11 encoding:v12 error:&v45];
    v16 = v45;
    v17 = v16;
    if (v15)
    {
      if (!a5)
      {
        [self setHTTPBody:v15];
        goto LABEL_25;
      }

      v18 = [AMSData compressedGzippedDataWithData:v15];
      if (v18)
      {
        v19 = v18;
        [self setHTTPBody:v18];
        [self setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];

LABEL_25:
        v31 = [self valueForHTTPHeaderField:@"Content-Type"];

        if (!v31)
        {
          [self ams_addContentTypeHeaderForEncoding:v12];
        }

        v32 = [self valueForHTTPHeaderField:@"Content-Length"];

        if (!v32)
        {
          hTTPBody = [self HTTPBody];
          [self ams_addContentLengthHeaderForData:hTTPBody];
        }

        v23 = 1;
        goto LABEL_30;
      }

      if (a6)
      {
        AMSError(3, @"Failed to GZip-encode request body", @"Failed to GZip-encode request body", 0);
        *a6 = v23 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (a6)
      {
        v24 = v16;
        *a6 = v17;
      }

      v25 = +[AMSLogConfig sharedConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v25 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = v27;
        v29 = AMSLogKey();
        v30 = AMSLogableError(v17);
        *buf = 138543874;
        v47 = v27;
        v48 = 2114;
        v49 = v29;
        v50 = 2114;
        v51 = v30;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode data from parameters. Error: %{public}@", buf, 0x20u);
      }
    }

    v23 = 0;
LABEL_30:

    goto LABEL_46;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = +[AMSLogConfig sharedConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v38 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = v40;
      v42 = AMSLogKey();
      *buf = 138543618;
      v47 = v40;
      v48 = 2114;
      v49 = v42;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Only dictionaries are supported for query parameters;", buf, 0x16u);
    }

    if (a6)
    {
      v20 = @"Invalid Query Parameters";
      v21 = @"Query parameters must be dictionary format";
      v22 = 309;
      goto LABEL_15;
    }

    goto LABEL_43;
  }

  v36 = [self URL];
  v37 = [v36 ams_URLByAppendingQueryParameters:v11];

  if (v37)
  {
    [self setURL:v37];
  }

  else
  {
    v43 = [self URL];
    [self setURL:v43];
  }

  v23 = 1;
LABEL_46:

  return v23;
}

- (id)ams_addHeadersFromPromise:()AppleMediaServices
{
  v4 = a3;
  _ams_promiseSerialQueue = [self _ams_promiseSerialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__NSMutableURLRequest_AppleMediaServices__ams_addHeadersFromPromise___block_invoke;
  v9[3] = &unk_1E73BD228;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [_ams_promiseSerialQueue runBinaryPromiseBlock:v9];

  return v7;
}

- (id)ams_modifyRequestWithBlock:()AppleMediaServices
{
  v4 = a3;
  _ams_promiseSerialQueue = [self _ams_promiseSerialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__NSMutableURLRequest_AppleMediaServices__ams_modifyRequestWithBlock___block_invoke;
  v9[3] = &unk_1E73BE4F8;
  v10 = v4;
  v6 = v4;
  v7 = [_ams_promiseSerialQueue runBinaryPromiseBlock:v9];

  return v7;
}

- (AMSMutablePromise)_ams_authKitHeaders
{
  v2 = objc_alloc_init(AMSMutablePromise);
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urlRequest = [selfCopy urlRequest];

    selfCopy = urlRequest;
  }

  v5 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NSMutableURLRequest_AppleMediaServices___ams_authKitHeaders__block_invoke;
  v11[3] = &unk_1E73B3DE0;
  v12 = selfCopy;
  v6 = v2;
  v13 = v6;
  v7 = selfCopy;
  dispatch_async(v5, v11);

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)_ams_replaceCookies:()AppleMediaServices
{
  v4 = a3;
  [self setHTTPShouldHandleCookies:0];
  v5 = [MEMORY[0x1E695ABF8] requestHeaderFieldsWithCookies:v4];

  [self ams_addHeaders:v5];
}

- (void)_ams_addCookies:()AppleMediaServices
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ams_cookies = [self ams_cookies];
  v6 = [ams_cookies mutableCopy];

  v18 = v4;
  v7 = [self _ams_separateCookies:v4];
  [v6 addEntriesFromDictionary:v7];

  string = [MEMORY[0x1E696AD60] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [v6 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        [string appendFormat:@"%@=%@; ", v14, v15];
      }

      v11 = [allKeys countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  v23 = @"Cookie";
  v16 = [MEMORY[0x1E696AEC0] stringWithString:string];
  v24 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  [self ams_addHeaders:v17];
}

- (id)_ams_separateCookies:()AppleMediaServices
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695ABF8] requestHeaderFieldsWithCookies:?];
  v0 = [v18 objectForKeyedSubscript:@"Cookie"];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [v0 componentsSeparatedByString:@""];;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v9 = [v8 rangeOfString:@"="];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v9;
          v11 = v9 + 1;
          v12 = [v8 length];
          if (v10 && v11 < v12)
          {
            v14 = [v8 substringToIndex:v10];
            v15 = [v8 substringFromIndex:v11];
            [v19 setObject:v15 forKeyedSubscript:v14];
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v16 = [v19 copy];

  return v16;
}

@end