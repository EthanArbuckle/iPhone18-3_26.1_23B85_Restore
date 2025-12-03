@interface SANodeIntent
- (id)_tccAccessInfoForAppID:(id)d;
- (id)ad_filteredDictionaryWithAppID:(id)d;
@end

@implementation SANodeIntent

- (id)ad_filteredDictionaryWithAppID:(id)d
{
  dCopy = d;
  dictionary = [(SANodeIntent *)self dictionary];
  v39 = [dictionary mutableCopy];

  v36 = [(SANodeIntent *)self _tccAccessInfoForAppID:dCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(SANodeIntent *)self privacyPolicy];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v9 = SAIntentGroupPrivacyCategoryContactsValue;
    v10 = SAIntentGroupPrivacyCategoryLocationServicesValue;
    v37 = SAIntentGroupRedactionTargetMatchingSpansValue;
    v35 = SAIntentGroupRedactionTargetNodeIntentValue;
    v33 = SAIntentGroupRedactionTargetValueValue;
    v32 = SANodeIntentValuePListKey;
    v34 = SANodeIntentMatchingSpansPListKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        privacyCategory = [v12 privacyCategory];
        v14 = [privacyCategory isEqualToString:v9];

        if (v14)
        {
          if ([dCopy isEqualToString:@"com.apple.mobileslideshow"])
          {
            bOOLValue = 1;
          }

          else
          {
            v16 = [v36 objectForKey:kTCCServiceAddressBook];
            bOOLValue = [v16 BOOLValue];
          }
        }

        else
        {
          bOOLValue = 0;
        }

        privacyCategory2 = [v12 privacyCategory];
        v18 = [privacyCategory2 isEqualToString:v10];

        if (v18)
        {
          [CLLocationManager authorizationStatusForBundleIdentifier:dCopy];
          if (AFLocationStatusIsAllowed())
          {
            continue;
          }
        }

        else if (bOOLValue)
        {
          continue;
        }

        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          privacyCategory3 = [v12 privacyCategory];
          redactionTarget = [v12 redactionTarget];
          *buf = 136315906;
          v45 = "[SANodeIntent(ADGenericIntentRequestTransformer) ad_filteredDictionaryWithAppID:]";
          v46 = 2112;
          v47 = dCopy;
          v48 = 2112;
          v49 = privacyCategory3;
          v50 = 2112;
          v51 = redactionTarget;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Application %@ does not have access to %@, removing %@ from the intent node", buf, 0x2Au);
        }

        redactionTarget2 = [v12 redactionTarget];
        v24 = [redactionTarget2 isEqualToString:v37];

        if (v24)
        {
          v25 = v39;
          v26 = v34;
LABEL_19:
          [v25 removeObjectForKey:v26];
          continue;
        }

        redactionTarget3 = [v12 redactionTarget];
        v28 = [redactionTarget3 isEqualToString:v35];

        if (v28)
        {

          v39 = 0;
        }

        else
        {
          redactionTarget4 = [v12 redactionTarget];
          v30 = [redactionTarget4 isEqualToString:v33];

          if (v30)
          {
            v25 = v39;
            v26 = v32;
            goto LABEL_19;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v7);
  }

  return v39;
}

- (id)_tccAccessInfoForAppID:(id)d
{
  v3 = [LSBundleProxy bundleProxyForIdentifier:d];
  v4 = CFBundleCreate(0, [v3 bundleURL]);
  if (v4)
  {
    v5 = v4;
    v17 = v3;
    v6 = TCCAccessCopyInformationForBundle();
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 objectForKey:kTCCInfoService];
          v15 = [v13 objectForKey:kTCCInfoGranted];
          [v7 setObject:v15 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    CFRelease(v5);
    v3 = v17;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end