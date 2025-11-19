@interface ComponentSystem
- (BOOL)isInBoxUpdateEligibleMode;
- (BOOL)isPasscodeLocked;
- (BOOL)isPasscodeSet;
- (BOOL)isServicePart;
- (BOOL)supportsInductiveCharging;
- (id)carrierBundleVersion;
- (id)carrierName;
- (id)carrierName2;
- (id)carrierNameForSimCard:(int64_t)a3;
- (id)currentStandbyTime;
- (id)currentUsageTime;
- (id)languageCode;
- (id)localeCode;
- (id)productVersionExtra;
- (id)supplementalBuildVersion;
- (void)_setupTelephonyClient;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentSystem

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ComponentSystem;
  [(ComponentSystemBase *)&v22 populateAttributes:v4];
  [(ComponentSystem *)self _setupTelephonyClient];
  v5 = [(ComponentSystem *)self carrierName];
  [v4 setObject:v5 forKeyedSubscript:@"carrierName"];

  v6 = [(ComponentSystem *)self carrierName2];
  [v4 setObject:v6 forKeyedSubscript:@"carrierName2"];

  v7 = [(ComponentSystem *)self carrierBundleVersion];
  [v4 setObject:v7 forKeyedSubscript:@"carrierBundleVersion"];

  v8 = [NSNumber numberWithBool:_AXSVoiceOverTouchEnabled() != 0];
  [v4 setObject:v8 forKeyedSubscript:@"voiceOverEnabled"];

  v9 = [NSNumber numberWithBool:[(ComponentSystem *)self isServicePart]];
  [v4 setObject:v9 forKeyedSubscript:@"isServicePart"];

  v10 = [(ComponentSystem *)self localeCode];
  [v4 setObject:v10 forKeyedSubscript:@"regionCode"];

  v11 = [(ComponentSystem *)self languageCode];
  [v4 setObject:v11 forKeyedSubscript:@"languageCode"];

  v12 = [NSNumber numberWithBool:[(ComponentSystem *)self supportsInductiveCharging]];
  [v4 setObject:v12 forKeyedSubscript:@"supportsInductiveCharging"];

  v13 = [(ComponentSystem *)self supplementalBuildVersion];
  [v4 setObject:v13 forKeyedSubscript:@"supplementalBuildVersion"];

  v14 = [(ComponentSystem *)self productVersionExtra];
  [v4 setObject:v14 forKeyedSubscript:@"productVersionExtra"];

  v15 = [NSNumber numberWithBool:[(ComponentSystem *)self isInBoxUpdateEligibleMode]];
  [v4 setObject:v15 forKeyedSubscript:@"isInBoxUpdateEligibleMode"];

  if (![(ComponentSystemBase *)self isInDiagnosticsMode])
  {
    v16 = [(ComponentSystem *)self currentStandbyTime];
    v17 = [v16 stringValue];
    [v4 setObject:v17 forKeyedSubscript:@"currentStandbyTime"];

    v18 = [(ComponentSystem *)self currentUsageTime];
    v19 = [v18 stringValue];
    [v4 setObject:v19 forKeyedSubscript:@"currentUsageTime"];

    v20 = [NSNumber numberWithBool:[(ComponentSystem *)self isPasscodeLocked]];
    [v4 setObject:v20 forKeyedSubscript:@"isPasscodeLocked"];

    v21 = [NSNumber numberWithBool:[(ComponentSystem *)self isPasscodeSet]];
    [v4 setObject:v21 forKeyedSubscript:@"isPasscodeSet"];
  }

  removeNullFromDictionary(v4);
}

- (id)carrierName
{
  v2 = [(ComponentSystem *)self carrierNameForSimCard:0];
  v3 = stringOrNull(v2);

  return v3;
}

- (id)carrierName2
{
  v2 = [(ComponentSystem *)self carrierNameForSimCard:1];
  v3 = stringOrNull(v2);

  return v3;
}

- (id)carrierBundleVersion
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[ComponentSystem carrierBundleVersion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(ComponentSystem *)self telephonyClient];
  if (v4 && (v5 = v4, [(ComponentSystem *)self subscriptionInfo], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(ComponentSystem *)self subscriptionInfo];
    v9 = [v8 subscriptions];

    v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [(ComponentSystem *)self telephonyClient];
          v26 = 0;
          v17 = [v16 copyCarrierBundleVersion:v15 error:&v26];
          v18 = v26;

          if (v18)
          {
            v19 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v15 slotID];
              *buf = v25;
              v32 = v18;
              v33 = 2048;
              v34 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "copyCarrierBundleVersion failed: error: %@ on slot: %ld", buf, 0x16u);
            }
          }

          else
          {
            v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 slotID]);
            [v7 setObject:v17 forKeyedSubscript:v19];
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    v21 = [v7 allValues];
    v22 = [v21 componentsJoinedByString:@" "];;

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
    v8 = "[ComponentSystem currentStandbyTime]";
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
    v8 = "[ComponentSystem currentUsageTime]";
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

- (id)carrierNameForSimCard:(int64_t)a3
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[ComponentSystem carrierNameForSimCard:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(ComponentSystem *)self telephonyClient];
  if (!v5 || (v6 = v5, [(ComponentSystem *)self subscriptionInfo], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v23 = +[NSNull null];
    goto LABEL_35;
  }

  v8 = 1;
  v29 = [[CTBundle alloc] initWithBundleType:1];
  if (a3)
  {
    if (a3 != 1)
    {
      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = a3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Requested sim card slot %ld is not present in CoreTelephony subscriptions", buf, 0xCu);
      }

      v23 = stringOrNull(0);
      v14 = 0;
      v22 = 0;
      goto LABEL_34;
    }

    v8 = 2;
  }

  v9 = [(ComponentSystem *)self subscriptionInfo];
  v10 = [v9 subscriptionsInUse];

  if (v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = v10;
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
            v18 = [(ComponentSystem *)self telephonyClient];
            v30 = v14;
            v19 = [v18 copyCarrierBundleValue:v17 key:@"CarrierName" bundleType:v29 error:&v30];
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
                  v37 = v19;
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
                v37 = a3;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No carrier name for card slot %ld", buf, 0xCu);
              }
            }

            v14 = v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
      v10 = v26;
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
    v5 = "[ComponentSystem isPasscodeLocked]";
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
    v5 = "[ComponentSystem isPasscodeSet]";
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
    v11 = "[ComponentSystem isServicePart]";
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
        v8 = [v4 localizedDescription];
        *buf = 138412290;
        v11 = v8;
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
    v4 = [v2 localeIdentifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)languageCode
{
  v2 = +[NSLocale currentLocale];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 languageCode];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (BOOL)supportsInductiveCharging
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentSystem supportsInductiveCharging]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (void)_setupTelephonyClient
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  [(ComponentSystem *)self setTelephonyClient:v3];

  v4 = [(ComponentSystem *)self telephonyClient];

  if (v4)
  {
    v5 = [(ComponentSystem *)self telephonyClient];
    v9 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v9];
    v7 = v9;
    [(ComponentSystem *)self setSubscriptionInfo:v6];

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
    v7 = "[ComponentSystem supplementalBuildVersion]";
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
    v7 = "[ComponentSystem productVersionExtra]";
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
    v11 = "[ComponentSystem isInBoxUpdateEligibleMode]";
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