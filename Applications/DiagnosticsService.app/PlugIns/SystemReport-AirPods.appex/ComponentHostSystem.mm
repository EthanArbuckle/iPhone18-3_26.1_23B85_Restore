@interface ComponentHostSystem
- (BOOL)isInBoxUpdateEligibleMode;
- (BOOL)isPasscodeLocked;
- (BOOL)isPasscodeSet;
- (BOOL)isServicePart;
- (BOOL)supportsInductiveCharging;
- (id)carrierBundleVersion;
- (id)carrierName;
- (id)carrierName2;
- (id)carrierNameForSimCard:(int64_t)card;
- (id)currentStandbyTime;
- (id)currentUsageTime;
- (id)languageCode;
- (id)localeCode;
- (id)productVersionExtra;
- (id)supplementalBuildVersion;
- (void)_setupTelephonyClient;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentHostSystem

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v22.receiver = self;
  v22.super_class = ComponentHostSystem;
  [(ComponentSystemBase *)&v22 populateAttributes:attributesCopy];
  [(ComponentHostSystem *)self _setupTelephonyClient];
  carrierName = [(ComponentHostSystem *)self carrierName];
  [attributesCopy setObject:carrierName forKeyedSubscript:@"carrierName"];

  carrierName2 = [(ComponentHostSystem *)self carrierName2];
  [attributesCopy setObject:carrierName2 forKeyedSubscript:@"carrierName2"];

  carrierBundleVersion = [(ComponentHostSystem *)self carrierBundleVersion];
  [attributesCopy setObject:carrierBundleVersion forKeyedSubscript:@"carrierBundleVersion"];

  v8 = [NSNumber numberWithBool:_AXSVoiceOverTouchEnabled() != 0];
  [attributesCopy setObject:v8 forKeyedSubscript:@"voiceOverEnabled"];

  v9 = [NSNumber numberWithBool:[(ComponentHostSystem *)self isServicePart]];
  [attributesCopy setObject:v9 forKeyedSubscript:@"isServicePart"];

  localeCode = [(ComponentHostSystem *)self localeCode];
  [attributesCopy setObject:localeCode forKeyedSubscript:@"regionCode"];

  languageCode = [(ComponentHostSystem *)self languageCode];
  [attributesCopy setObject:languageCode forKeyedSubscript:@"languageCode"];

  v12 = [NSNumber numberWithBool:[(ComponentHostSystem *)self supportsInductiveCharging]];
  [attributesCopy setObject:v12 forKeyedSubscript:@"supportsInductiveCharging"];

  supplementalBuildVersion = [(ComponentHostSystem *)self supplementalBuildVersion];
  [attributesCopy setObject:supplementalBuildVersion forKeyedSubscript:@"supplementalBuildVersion"];

  productVersionExtra = [(ComponentHostSystem *)self productVersionExtra];
  [attributesCopy setObject:productVersionExtra forKeyedSubscript:@"productVersionExtra"];

  v15 = [NSNumber numberWithBool:[(ComponentHostSystem *)self isInBoxUpdateEligibleMode]];
  [attributesCopy setObject:v15 forKeyedSubscript:@"isInBoxUpdateEligibleMode"];

  if (![(ComponentSystemBase *)self isInDiagnosticsMode])
  {
    currentStandbyTime = [(ComponentHostSystem *)self currentStandbyTime];
    stringValue = [currentStandbyTime stringValue];
    [attributesCopy setObject:stringValue forKeyedSubscript:@"currentStandbyTime"];

    currentUsageTime = [(ComponentHostSystem *)self currentUsageTime];
    stringValue2 = [currentUsageTime stringValue];
    [attributesCopy setObject:stringValue2 forKeyedSubscript:@"currentUsageTime"];

    v20 = [NSNumber numberWithBool:[(ComponentHostSystem *)self isPasscodeLocked]];
    [attributesCopy setObject:v20 forKeyedSubscript:@"isPasscodeLocked"];

    v21 = [NSNumber numberWithBool:[(ComponentHostSystem *)self isPasscodeSet]];
    [attributesCopy setObject:v21 forKeyedSubscript:@"isPasscodeSet"];
  }

  removeNullFromDictionary(attributesCopy);
}

- (id)carrierName
{
  v2 = [(ComponentHostSystem *)self carrierNameForSimCard:0];
  v3 = stringOrNull(v2);

  return v3;
}

- (id)carrierName2
{
  v2 = [(ComponentHostSystem *)self carrierNameForSimCard:1];
  v3 = stringOrNull(v2);

  return v3;
}

- (id)carrierBundleVersion
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[ComponentHostSystem carrierBundleVersion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  telephonyClient = [(ComponentHostSystem *)self telephonyClient];
  if (telephonyClient && (v5 = telephonyClient, [(ComponentHostSystem *)self subscriptionInfo], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    subscriptionInfo = [(ComponentHostSystem *)self subscriptionInfo];
    subscriptions = [subscriptionInfo subscriptions];

    v10 = [subscriptions countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v28;
      *&v11 = 138412546;
      v25 = v11;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(subscriptions);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          telephonyClient2 = [(ComponentHostSystem *)self telephonyClient];
          v26 = 0;
          v17 = [telephonyClient2 copyCarrierBundleVersion:v15 error:&v26];
          v18 = v26;

          if (v18)
          {
            v19 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              slotID = [v15 slotID];
              *buf = v25;
              v32 = v18;
              v33 = 2048;
              v34 = slotID;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "copyCarrierBundleVersion failed: error: %@ on slot: %ld", buf, 0x16u);
            }
          }

          else
          {
            v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 slotID]);
            [v7 setObject:v17 forKeyedSubscript:v19];
          }
        }

        v12 = [subscriptions countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    allValues = [v7 allValues];
    v22 = [allValues componentsJoinedByString:@" "];;

    v23 = stringOrNull(v22);
  }

  else
  {
    v23 = +[NSNull null];
  }

  return v23;
}

- (id)currentStandbyTime
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ComponentHostSystem currentStandbyTime]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = -1082130432;
  SBSSpringBoardServerPort();
  SBGetBatteryUsageTimesInSeconds();
  LODWORD(v3) = -1082130432;
  v4 = [NSNumber numberWithFloat:v3];
  v5 = numberOrNull(v4);

  return v5;
}

- (id)currentUsageTime
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ComponentHostSystem currentUsageTime]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = -1082130432;
  SBSSpringBoardServerPort();
  SBGetBatteryUsageTimesInSeconds();
  LODWORD(v3) = *buf;
  v4 = [NSNumber numberWithFloat:v3];
  v5 = numberOrNull(v4);

  return v5;
}

- (id)carrierNameForSimCard:(int64_t)card
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    cardCopy2 = "[ComponentHostSystem carrierNameForSimCard:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  telephonyClient = [(ComponentHostSystem *)self telephonyClient];
  if (!telephonyClient || (v6 = telephonyClient, [(ComponentHostSystem *)self subscriptionInfo], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v23 = +[NSNull null];
    goto LABEL_35;
  }

  v8 = 1;
  v29 = [[CTBundle alloc] initWithBundleType:1];
  if (card)
  {
    if (card != 1)
    {
      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        cardCopy2 = card;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Requested sim card slot %ld is not present in CoreTelephony subscriptions", buf, 0xCu);
      }

      v23 = stringOrNull(0);
      v14 = 0;
      v22 = 0;
      goto LABEL_34;
    }

    v8 = 2;
  }

  subscriptionInfo = [(ComponentHostSystem *)self subscriptionInfo];
  subscriptionsInUse = [subscriptionInfo subscriptionsInUse];

  if (subscriptionsInUse)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = subscriptionsInUse;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = subscriptionsInUse;
      v14 = 0;
      v28 = 0;
      v15 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if ([v17 slotID] == v8)
          {
            telephonyClient2 = [(ComponentHostSystem *)self telephonyClient];
            v30 = v14;
            v19 = [telephonyClient2 copyCarrierBundleValue:v17 key:@"CarrierName" bundleType:v29 error:&v30];
            v20 = v30;

            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v28;
                v28 = v19;
              }

              else
              {
                v21 = DiagnosticLogHandleForCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  cardCopy2 = v19;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Carrier name %@ is not a string!", buf, 0xCu);
                }
              }
            }

            else
            {
              v21 = DiagnosticLogHandleForCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                cardCopy2 = card;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No carrier name for card slot %ld", buf, 0xCu);
              }
            }

            v14 = v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
      subscriptionsInUse = v26;
      v22 = v28;
      goto LABEL_33;
    }
  }

  else
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get subscriptions from subscription info", buf, 2u);
    }
  }

  v22 = 0;
  v14 = 0;
LABEL_33:

  v23 = stringOrNull(v22);

LABEL_34:
LABEL_35:

  return v23;
}

- (BOOL)isPasscodeLocked
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentHostSystem isPasscodeLocked]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (BOOL)isPasscodeSet
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentHostSystem isPasscodeSet]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (BOOL)isServicePart
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[ComponentHostSystem isServicePart]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (objc_opt_class())
  {
    v9 = 0;
    v3 = [CRRepairStatus isServicePartWithError:&v9];
    v4 = v9;
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v4 localizedDescription];
        *buf = 138412290;
        v11 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error getting Service Part Status. Error: %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      v6 = [v3 isEqualToString:@"1"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Repair data not available for this device, skipping.", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)localeCode
{
  v2 = +[NSLocale currentLocale];
  v3 = v2;
  if (v2)
  {
    localeIdentifier = [v2 localeIdentifier];
  }

  else
  {
    localeIdentifier = 0;
  }

  v5 = stringOrNull(localeIdentifier);

  return v5;
}

- (id)languageCode
{
  v2 = +[NSLocale currentLocale];
  v3 = v2;
  if (v2)
  {
    languageCode = [v2 languageCode];
  }

  else
  {
    languageCode = 0;
  }

  v5 = stringOrNull(languageCode);

  return v5;
}

- (BOOL)supportsInductiveCharging
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentHostSystem supportsInductiveCharging]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (void)_setupTelephonyClient
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  [(ComponentHostSystem *)self setTelephonyClient:v3];

  telephonyClient = [(ComponentHostSystem *)self telephonyClient];

  if (telephonyClient)
  {
    telephonyClient2 = [(ComponentHostSystem *)self telephonyClient];
    v9 = 0;
    v6 = [telephonyClient2 getSubscriptionInfoWithError:&v9];
    v7 = v9;
    [(ComponentHostSystem *)self setSubscriptionInfo:v6];

    if (!v7)
    {
      return;
    }

    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CoreTelephonyClient getSubscriptionInfoWithError failed: error: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create CoreTelephony client!", buf, 2u);
    }
  }
}

- (id)supplementalBuildVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentHostSystem supplementalBuildVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)productVersionExtra
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentHostSystem productVersionExtra]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (BOOL)isInBoxUpdateEligibleMode
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[ComponentHostSystem isInBoxUpdateEligibleMode]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = objc_alloc_init(MIBUClient);
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    v5 = [v3 isInBoxUpdateMode:&v9];
    v6 = v9;
    if (v6)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to check if we are in in-box update eligible mode with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end