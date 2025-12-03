@interface ABCPreferences
+ (id)initialValuesDictionary;
- (ABCPreferences)init;
- (BOOL)diagnosticPipelineEnabled;
- (BOOL)has_apple_email;
- (BOOL)is_automated_device_group;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)processInstalledVisibleProfileIdentifiers:(id)identifiers;
- (void)setABCUIUserConsent:(BOOL)consent;
- (void)setABCUserConsent:(BOOL)consent;
@end

@implementation ABCPreferences

- (ABCPreferences)init
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ABCPreferences;
  v2 = [(ABCPreferences *)&v16 init];
  if (v2)
  {
    v3 = +[ManagedConfigurationUtils sharedInstance];
    [v3 addObserver:v2 forKeyPath:@"diagnosticsAndUsageEnabled" options:1 context:0];
    -[ABCPreferences setDiagnosticsAndUsageEnabled:](v2, "setDiagnosticsAndUsageEnabled:", [v3 diagnosticsAndUsageEnabled]);
    if (!v2->_observedAutoBugCaptureUIPreference)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _settingsChanged, @"com.apple.autobugcapture.UserConsentYES", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v5 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v5, v2, _settingsChanged, @"com.apple.autobugcapture.UserConsentNO", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v2->_observedAutoBugCaptureUIPreference = 1;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = +[ABCPreferences initialValuesDictionary];
    [standardUserDefaults registerDefaults:v7];
    [standardUserDefaults addObserver:v2 forKeyPath:@"disable_internal_build" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"carrier_seed_flag" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"seed_flag" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"vendor_flag" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"disable_autobugcapture" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"optin_autobugcapture" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"dut_flag" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"npi_flag" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"arbitrator_disable_dampening" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"arbitrator_daily_count_limit" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"ABCUserConsent" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"apns_enable" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"apns_dev_environment" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"max_upload_retries" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"arbitrator_dampened_ips_limit" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"dampening_restriction_factor" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"disable_api_rate_limit" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"api_rate_limit" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"api_limit_window" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"database_container_path" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"ignore_automated_device_group" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"autoFeedbackAssistantEnable" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_enable" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_sandbox_environment" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_upload_expiration_timeout" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_upload_connection_timeout" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_upload_max_fallback_log_count" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_container_identifier" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_inverness_service" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"cloudkit_prefers_anonymous" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"case_summary_maximum_per_submission" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"case_summary_submitted_retention_days" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"case_summary_unsubmitted_retention_days" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"case_summary_enable" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"diagnostic_pipeline_submission" options:5 context:0];
    [standardUserDefaults addObserver:v2 forKeyPath:@"diagnostic_pipeline_submission_rate" options:5 context:0];
    v8 = configurationLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      autoFeedbackAssistantEnable = [(ABCPreferences *)v2 autoFeedbackAssistantEnable];
      v10 = "off";
      if (autoFeedbackAssistantEnable)
      {
        v10 = "on";
      }

      *buf = 136446210;
      v18 = v10;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "autoFeedbackAssistantEnable setting is %{public}s", buf, 0xCu);
    }

    v2->_diagnosticPipelineEnabled = 1;
    _DPCGetUploadServiceEnablement();
    v11 = 0;
    if (!v11)
    {
      v2->_diagnosticPipelineEnabled = 0;
    }

    v12 = configurationLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v2->_diagnosticPipelineEnabled)
      {
        v13 = "en";
      }

      else
      {
        v13 = "dis";
      }

      *buf = 136315394;
      v18 = v13;
      v19 = 2080;
      v20 = "";
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticPipeline is %sabled%s", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)initialValuesDictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ABCUserConsent"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"disable_autobugcapture"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"optin_autobugcapture"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"dut_flag"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"arbitrator_disable_dampening"];
  [v2 setObject:&unk_28537A110 forKeyedSubscript:@"arbitrator_daily_count_limit"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"apns_enable"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"apns_dev_environment"];
  [v2 setObject:&unk_28537A128 forKeyedSubscript:@"max_upload_retries"];
  [v2 setObject:&unk_28537A140 forKeyedSubscript:@"arbitrator_dampened_ips_limit"];
  [v2 setObject:&unk_28537A158 forKeyedSubscript:@"dampening_restriction_factor"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"disable_api_rate_limit"];
  [v2 setObject:&unk_28537A170 forKeyedSubscript:@"api_rate_limit"];
  [v2 setObject:&unk_28537A188 forKeyedSubscript:@"api_limit_window"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"ignore_automated_device_group"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"cloudkit_enable"];
  [v2 setObject:&unk_28537A1A0 forKeyedSubscript:@"case_summary_enable"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"cloudkit_sandbox_environment"];
  [v2 setObject:&unk_28537A1B8 forKeyedSubscript:@"cloudkit_upload_expiration_timeout"];
  [v2 setObject:&unk_28537A1D0 forKeyedSubscript:@"cloudkit_upload_connection_timeout"];
  [v2 setObject:&unk_28537A128 forKeyedSubscript:@"cloudkit_upload_max_fallback_log_count"];
  [v2 setObject:@"com.apple.autobugcapture.devicediagnostics" forKeyedSubscript:@"cloudkit_container_identifier"];
  [v2 setObject:@"AbcDecision" forKeyedSubscript:@"cloudkit_inverness_service"];
  [v2 setObject:&unk_28537A1A0 forKeyedSubscript:@"cloudkit_prefers_anonymous"];
  [v2 setObject:&unk_28537A0F8 forKeyedSubscript:@"autoFeedbackAssistantEnable"];
  [v2 setObject:&unk_28537A1E8 forKeyedSubscript:@"case_summary_maximum_per_submission"];
  [v2 setObject:&unk_28537A200 forKeyedSubscript:@"case_summary_submitted_retention_days"];
  [v2 setObject:&unk_28537A218 forKeyedSubscript:@"case_summary_unsubmitted_retention_days"];
  [v2 setObject:&unk_28537A1A0 forKeyedSubscript:@"diagnostic_pipeline_submission"];
  [v2 setObject:&unk_28537A710 forKeyedSubscript:@"diagnostic_pipeline_submission_rate"];

  return v2;
}

- (BOOL)is_automated_device_group
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_diagnostics())
  {
    if (is_automated_device_group_foundAutomatedDeviceGroup)
    {
      automatedDeviceGroup = configurationLogHandle();
      if (os_log_type_enabled(automatedDeviceGroup, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        v3 = "Automated device group set. Skipping further OSAnalytics queries";
        v4 = automatedDeviceGroup;
        v5 = 2;
LABEL_8:
        _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, v3, &v13, v5);
      }
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v8 = v7;

      if (v8 - *&is_automated_device_group_lastQueryTimestamp >= *&is_automated_device_group_queryHysteresis)
      {
        automatedDeviceGroup = [MEMORY[0x277D36B80] automatedDeviceGroup];
        v9 = configurationLogHandle();
        v10 = v9;
        if (automatedDeviceGroup)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412290;
            v14 = automatedDeviceGroup;
            _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "AutomatedDeviceGroup is configured as: '%@'", &v13, 0xCu);
          }

          is_automated_device_group_foundAutomatedDeviceGroup = 1;
        }

        else
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "This device is not in an automated test group", &v13, 2u);
          }

          is_automated_device_group_foundAutomatedDeviceGroup = 0;
          is_automated_device_group_queryHysteresis = fmin(*&is_automated_device_group_queryHysteresis + *&is_automated_device_group_queryHysteresis, 3600.0);
        }

        is_automated_device_group_lastQueryTimestamp = *&v8;
        goto LABEL_17;
      }

      automatedDeviceGroup = configurationLogHandle();
      if (os_log_type_enabled(automatedDeviceGroup, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134217984;
        v14 = is_automated_device_group_lastQueryTimestamp;
        v3 = "Skipping this OSAnalytics query (last queried 'automatedDeviceGroup' at %.3lf)";
        v4 = automatedDeviceGroup;
        v5 = 12;
        goto LABEL_8;
      }
    }

LABEL_17:
  }

  result = is_automated_device_group_foundAutomatedDeviceGroup;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)has_apple_email
{
  if (os_variant_has_internal_diagnostics() && has_apple_email_onceToken != -1)
  {
    [ABCPreferences has_apple_email];
  }

  return has_apple_email_foundAppleEmailAccount;
}

void __33__ABCPreferences_has_apple_email__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D36B80] sharedInstance];
  v1 = [v0 internalKey];

  v2 = configurationLogHandle();
  v3 = v2;
  if (!v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v7 = "Unable to fetch the internal key from OSASystemConfiguration";
      v8 = v3;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

LABEL_14:

    has_apple_email_foundAppleEmailAccount = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = v1;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "InternalKey is configured as: '%{private}@'", &v14, 0xCu);
  }

  v4 = [v1 rangeOfString:@"@apple.com"];
  if (v4 < 2 || v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = configurationLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v7 = "Did not find an email address as part of the internal key";
      v8 = v3;
      v9 = OS_LOG_TYPE_INFO;
LABEL_13:
      _os_log_impl(&dword_241804000, v8, v9, v7, &v14, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = [v1 substringToIndex:v4 + v5];
  v12 = configurationLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138477827;
    v15 = v11;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Found Apple email configured as: '%{private}@'", &v14, 0xCu);
  }

  has_apple_email_foundAppleEmailAccount = 1;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v99 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  changeCopy = change;
  v10 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = configurationLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v96 = pathCopy;
    v97 = 2112;
    v98 = changeCopy;
    _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "%@ preference notification. change: %@ ", buf, 0x16u);
  }

  if ([pathCopy isEqualToString:@"disable_internal_build"])
  {
    if (v12)
    {
      -[ABCPreferences setDisable_internal_build:](self, "setDisable_internal_build:", [v12 BOOLValue]);
      v16 = configurationLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        goto LABEL_72;
      }

      if ([(ABCPreferences *)self disable_internal_build])
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      disable_internal_build = [(ABCPreferences *)self disable_internal_build];
      *buf = 136315394;
      v96 = v17;
      v97 = 2048;
      v98 = disable_internal_build;
      v19 = "disable_internal_build override is %s (%ld)";
      v20 = v16;
      v21 = 22;
LABEL_16:
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      goto LABEL_41;
    }

    [(ABCPreferences *)self setDisable_internal_build:0];
    v29 = configurationLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v30 = "disable_internal_build configured as default: NO";
LABEL_69:
      v39 = v29;
      v40 = OS_LOG_TYPE_INFO;
      v41 = 2;
LABEL_70:
      _os_log_impl(&dword_241804000, v39, v40, v30, buf, v41);
      goto LABEL_71;
    }

    goto LABEL_71;
  }

  if ([pathCopy isEqualToString:@"carrier_seed_flag"])
  {
    if (!v12)
    {
      [(ABCPreferences *)self setCarrier_seed_flag:0];
      v29 = configurationLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v30 = "carrier_seed_flag override not configured";
        goto LABEL_69;
      }

LABEL_71:

      goto LABEL_72;
    }

    [(ABCPreferences *)self setCarrier_seed_flag:v12];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    carrier_seed_flag = [(ABCPreferences *)self carrier_seed_flag];
    if ([carrier_seed_flag BOOLValue])
    {
      v23 = "YES";
    }

    else
    {
      v23 = "NO";
    }

    carrier_seed_flag2 = [(ABCPreferences *)self carrier_seed_flag];
    bOOLValue = [carrier_seed_flag2 BOOLValue];
    *buf = 136315394;
    v96 = v23;
    v97 = 1024;
    LODWORD(v98) = bOOLValue;
    v26 = "carrier_seed_flag override is %s (%d)";
LABEL_40:
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, v26, buf, 0x12u);

    goto LABEL_41;
  }

  if ([pathCopy isEqualToString:@"seed_flag"])
  {
    if (!v12)
    {
      [(ABCPreferences *)self setSeed_flag:0];
      v29 = configurationLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v30 = "seed_flag override not configured";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    [(ABCPreferences *)self setSeed_flag:v12];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    carrier_seed_flag = [(ABCPreferences *)self seed_flag];
    if ([carrier_seed_flag BOOLValue])
    {
      v27 = "YES";
    }

    else
    {
      v27 = "NO";
    }

    carrier_seed_flag2 = [(ABCPreferences *)self seed_flag];
    bOOLValue2 = [carrier_seed_flag2 BOOLValue];
    *buf = 136315394;
    v96 = v27;
    v97 = 1024;
    LODWORD(v98) = bOOLValue2;
    v26 = "seed_flag override is %s (%d)";
    goto LABEL_40;
  }

  if ([pathCopy isEqualToString:@"vendor_flag"])
  {
    if (!v12)
    {
      [(ABCPreferences *)self setVendor_flag:0];
      v29 = configurationLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v30 = "vendor_flag override not configured";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    [(ABCPreferences *)self setVendor_flag:v12];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    carrier_seed_flag = [(ABCPreferences *)self vendor_flag];
    if ([carrier_seed_flag BOOLValue])
    {
      v31 = "YES";
    }

    else
    {
      v31 = "NO";
    }

    carrier_seed_flag2 = [(ABCPreferences *)self vendor_flag];
    bOOLValue3 = [carrier_seed_flag2 BOOLValue];
    *buf = 136315394;
    v96 = v31;
    v97 = 1024;
    LODWORD(v98) = bOOLValue3;
    v26 = "vendor_flag override is %s (%d)";
    goto LABEL_40;
  }

  if ([pathCopy isEqualToString:@"database_container_path"])
  {
    if (!v14)
    {
      [(ABCPreferences *)self setDatabase_container_path:0];
      v29 = configurationLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v30 = "database_container_path override not configured";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    [(ABCPreferences *)self setDatabase_container_path:v14];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    database_container_path = [(ABCPreferences *)self database_container_path];
    *buf = 138412290;
    v96 = database_container_path;
    v34 = "database_container_path override is %@";
LABEL_48:
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);

    goto LABEL_41;
  }

  if ([pathCopy isEqualToString:@"disable_autobugcapture"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setDisable_autobugcapture:](self, "setDisable_autobugcapture:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self disable_autobugcapture])
    {
      v35 = "YES";
    }

    else
    {
      v35 = "NO";
    }

    disable_autobugcapture = [(ABCPreferences *)self disable_autobugcapture];
    *buf = 136315394;
    v96 = v35;
    v97 = 1024;
    LODWORD(v98) = disable_autobugcapture;
    v19 = "disable_autobugcapture configuration is %s (%d)";
LABEL_80:
    v20 = v16;
    v21 = 18;
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:@"optin_autobugcapture"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setOptin_autobugcapture:](self, "setOptin_autobugcapture:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self optin_autobugcapture])
    {
      v37 = "YES";
    }

    else
    {
      v37 = "NO";
    }

    optin_autobugcapture = [(ABCPreferences *)self optin_autobugcapture];
    *buf = 136315394;
    v96 = v37;
    v97 = 1024;
    LODWORD(v98) = optin_autobugcapture;
    v19 = "optin_autobugcapture configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"dut_flag"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setDut_flag:](self, "setDut_flag:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self dut_flag])
    {
      v43 = "YES";
    }

    else
    {
      v43 = "NO";
    }

    dut_flag = [(ABCPreferences *)self dut_flag];
    *buf = 136315394;
    v96 = v43;
    v97 = 1024;
    LODWORD(v98) = dut_flag;
    v19 = "dut_flag configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"npi_flag"])
  {
    if (!v12)
    {
      [(ABCPreferences *)self setNpi_flag:0];
      v29 = configurationLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_71;
      }

      *buf = 0;
      v30 = "npi_flag override not configured";
      goto LABEL_69;
    }

    [(ABCPreferences *)self setNpi_flag:v12];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    carrier_seed_flag = [(ABCPreferences *)self npi_flag];
    if ([carrier_seed_flag BOOLValue])
    {
      v45 = "YES";
    }

    else
    {
      v45 = "NO";
    }

    carrier_seed_flag2 = [(ABCPreferences *)self npi_flag];
    bOOLValue4 = [carrier_seed_flag2 BOOLValue];
    *buf = 136315394;
    v96 = v45;
    v97 = 1024;
    LODWORD(v98) = bOOLValue4;
    v26 = "npi_flag override is %s (%d)";
    goto LABEL_40;
  }

  if ([pathCopy isEqualToString:@"arbitrator_disable_dampening"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setArbitrator_disable_dampening:](self, "setArbitrator_disable_dampening:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self arbitrator_disable_dampening])
    {
      v47 = "YES";
    }

    else
    {
      v47 = "NO";
    }

    arbitrator_disable_dampening = [(ABCPreferences *)self arbitrator_disable_dampening];
    *buf = 136315394;
    v96 = v47;
    v97 = 1024;
    LODWORD(v98) = arbitrator_disable_dampening;
    v19 = "arbitrator_disable_dampening override is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"arbitrator_daily_count_limit"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setArbitrator_daily_count_limit:](self, "setArbitrator_daily_count_limit:", [v12 integerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    arbitrator_daily_count_limit = [(ABCPreferences *)self arbitrator_daily_count_limit];
    *buf = 134217984;
    v96 = arbitrator_daily_count_limit;
    v19 = "arbitrator_daily_count_limit configuration is %ld";
LABEL_99:
    v20 = v16;
    v21 = 12;
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:@"apns_enable"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setApns_enable:](self, "setApns_enable:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self apns_enable])
    {
      v50 = "YES";
    }

    else
    {
      v50 = "NO";
    }

    apns_enable = [(ABCPreferences *)self apns_enable];
    *buf = 136315394;
    v96 = v50;
    v97 = 1024;
    LODWORD(v98) = apns_enable;
    v19 = "apns_enable configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"apns_dev_environment"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setApns_dev_environment:](self, "setApns_dev_environment:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self apns_dev_environment])
    {
      v52 = "YES";
    }

    else
    {
      v52 = "NO";
    }

    apns_dev_environment = [(ABCPreferences *)self apns_dev_environment];
    *buf = 136315394;
    v96 = v52;
    v97 = 1024;
    LODWORD(v98) = apns_dev_environment;
    v19 = "apns_dev_environment configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"max_upload_retries"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setMax_upload_retries:](self, "setMax_upload_retries:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    max_upload_retries = [(ABCPreferences *)self max_upload_retries];
    *buf = 134217984;
    v96 = max_upload_retries;
    v19 = "max_upload_retries configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"arbitrator_dampened_ips_limit"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setArbitrator_dampened_ips_limit:](self, "setArbitrator_dampened_ips_limit:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    arbitrator_dampened_ips_limit = [(ABCPreferences *)self arbitrator_dampened_ips_limit];
    *buf = 134217984;
    v96 = arbitrator_dampened_ips_limit;
    v19 = "arbitrator_dampened_ips_limit configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"ABCUserConsent"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setABCUserConsent:](self, "setABCUserConsent:", [v12 unsignedIntegerValue] != 0);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    aBCUserConsent = [(ABCPreferences *)self ABCUserConsent];
    *buf = 134217984;
    v96 = aBCUserConsent;
    v19 = "ABCUserConsent configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"dampening_restriction_factor"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setDampening_restriction_factor:](self, "setDampening_restriction_factor:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    dampening_restriction_factor = [(ABCPreferences *)self dampening_restriction_factor];
    *buf = 134217984;
    v96 = dampening_restriction_factor;
    v19 = "dampening_restriction_factor configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"disable_api_rate_limit"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setDisable_api_rate_limit:](self, "setDisable_api_rate_limit:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self disable_api_rate_limit])
    {
      v58 = "YES";
    }

    else
    {
      v58 = "NO";
    }

    disable_api_rate_limit = [(ABCPreferences *)self disable_api_rate_limit];
    *buf = 136315394;
    v96 = v58;
    v97 = 1024;
    LODWORD(v98) = disable_api_rate_limit;
    v19 = "disable_api_rate_limit override is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"api_rate_limit"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    [v12 doubleValue];
    [(ABCPreferences *)self setApi_rate_limit:?];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    [(ABCPreferences *)self api_rate_limit];
    *buf = 134217984;
    v96 = v60;
    v19 = "api_rate_limit configuration is %.1lf";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"api_limit_window"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    [v12 doubleValue];
    [(ABCPreferences *)self setApi_limit_window:?];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    [(ABCPreferences *)self api_limit_window];
    *buf = 134217984;
    v96 = v61;
    v19 = "api_limit_window configuration is %.1lf";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"ignore_automated_device_group"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setIgnore_automated_device_group:](self, "setIgnore_automated_device_group:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self ignore_automated_device_group])
    {
      v62 = "YES";
    }

    else
    {
      v62 = "NO";
    }

    ignore_automated_device_group = [(ABCPreferences *)self ignore_automated_device_group];
    *buf = 136315394;
    v96 = v62;
    v97 = 1024;
    LODWORD(v98) = ignore_automated_device_group;
    v19 = "ignore_automated_device_group override is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"cloudkit_enable"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_enable:](self, "setCloudkit_enable:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self cloudkit_enable])
    {
      v64 = "YES";
    }

    else
    {
      v64 = "NO";
    }

    cloudkit_enable = [(ABCPreferences *)self cloudkit_enable];
    *buf = 136315394;
    v96 = v64;
    v97 = 1024;
    LODWORD(v98) = cloudkit_enable;
    v19 = "cloudkit_enable configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"cloudkit_sandbox_environment"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_sandbox_environment:](self, "setCloudkit_sandbox_environment:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self cloudkit_sandbox_environment])
    {
      v66 = "YES";
    }

    else
    {
      v66 = "NO";
    }

    cloudkit_sandbox_environment = [(ABCPreferences *)self cloudkit_sandbox_environment];
    *buf = 136315394;
    v96 = v66;
    v97 = 1024;
    LODWORD(v98) = cloudkit_sandbox_environment;
    v19 = "cloudkit_sandbox_environment override is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"cloudkit_container_identifier"])
  {
    if (!v14)
    {
      goto LABEL_72;
    }

    [(ABCPreferences *)self setCloudkit_container_identifier:v14];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    database_container_path = [(ABCPreferences *)self cloudkit_container_identifier];
    *buf = 138412290;
    v96 = database_container_path;
    v34 = "cloudkit_container_identifier configuration is %@";
    goto LABEL_48;
  }

  if ([pathCopy isEqualToString:@"cloudkit_inverness_service"])
  {
    if (!v14)
    {
      goto LABEL_72;
    }

    [(ABCPreferences *)self setCloudkit_inverness_service:v14];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    database_container_path = [(ABCPreferences *)self cloudkit_inverness_service];
    *buf = 138412290;
    v96 = database_container_path;
    v34 = "cloudkit_inverness_service configuration is %@";
    goto LABEL_48;
  }

  if ([pathCopy isEqualToString:@"cloudkit_upload_expiration_timeout"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_upload_expiration_timeout:](self, "setCloudkit_upload_expiration_timeout:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    cloudkit_upload_expiration_timeout = [(ABCPreferences *)self cloudkit_upload_expiration_timeout];
    *buf = 134217984;
    v96 = cloudkit_upload_expiration_timeout;
    v19 = "cloudkit_upload_expiration_timeout configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"cloudkit_upload_connection_timeout"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_upload_connection_timeout:](self, "setCloudkit_upload_connection_timeout:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    cloudkit_upload_connection_timeout = [(ABCPreferences *)self cloudkit_upload_connection_timeout];
    *buf = 134217984;
    v96 = cloudkit_upload_connection_timeout;
    v19 = "cloudkit_upload_connection_timeout configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"cloudkit_upload_max_fallback_log_count"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_upload_max_fallback_log_count:](self, "setCloudkit_upload_max_fallback_log_count:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    cloudkit_upload_max_fallback_log_count = [(ABCPreferences *)self cloudkit_upload_max_fallback_log_count];
    *buf = 134217984;
    v96 = cloudkit_upload_max_fallback_log_count;
    v19 = "cloudkit_upload_max_fallback_log_count configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"cloudkit_prefers_anonymous"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCloudkit_prefers_anonymous:](self, "setCloudkit_prefers_anonymous:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self cloudkit_prefers_anonymous])
    {
      v71 = "YES";
    }

    else
    {
      v71 = "NO";
    }

    cloudkit_prefers_anonymous = [(ABCPreferences *)self cloudkit_prefers_anonymous];
    *buf = 136315394;
    v96 = v71;
    v97 = 1024;
    LODWORD(v98) = cloudkit_prefers_anonymous;
    v19 = "cloudkit_prefers_anonymous configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"case_summary_maximum_per_submission"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCase_summary_maximum_per_submission:](self, "setCase_summary_maximum_per_submission:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    case_summary_maximum_per_submission = [(ABCPreferences *)self case_summary_maximum_per_submission];
    *buf = 134217984;
    v96 = case_summary_maximum_per_submission;
    v19 = "case_summary_maximum_per_submission configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"case_summary_submitted_retention_days"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCase_summary_submitted_retention_days:](self, "setCase_summary_submitted_retention_days:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    case_summary_submitted_retention_days = [(ABCPreferences *)self case_summary_submitted_retention_days];
    *buf = 134217984;
    v96 = case_summary_submitted_retention_days;
    v19 = "case_summary_submitted_retention_days configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"case_summary_unsubmitted_retention_days"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCase_summary_unsubmitted_retention_days:](self, "setCase_summary_unsubmitted_retention_days:", [v12 unsignedIntegerValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    case_summary_unsubmitted_retention_days = [(ABCPreferences *)self case_summary_unsubmitted_retention_days];
    *buf = 134217984;
    v96 = case_summary_unsubmitted_retention_days;
    v19 = "case_summary_unsubmitted_retention_days configuration is %ld";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"case_summary_enable"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setCase_summary_enable:](self, "setCase_summary_enable:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self case_summary_enable])
    {
      v76 = "YES";
    }

    else
    {
      v76 = "NO";
    }

    case_summary_enable = [(ABCPreferences *)self case_summary_enable];
    *buf = 136315394;
    v96 = v76;
    v97 = 1024;
    LODWORD(v98) = case_summary_enable;
    v19 = "case_summary_enable configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"diagnostic_pipeline_submission"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    -[ABCPreferences setDiagnostic_pipeline_submission:](self, "setDiagnostic_pipeline_submission:", [v12 BOOLValue]);
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    if ([(ABCPreferences *)self diagnostic_pipeline_submission])
    {
      v78 = "YES";
    }

    else
    {
      v78 = "NO";
    }

    diagnostic_pipeline_submission = [(ABCPreferences *)self diagnostic_pipeline_submission];
    *buf = 136315394;
    v96 = v78;
    v97 = 1024;
    LODWORD(v98) = diagnostic_pipeline_submission;
    v19 = "diagnostic_pipeline_submission configuration is %s (%d)";
    goto LABEL_80;
  }

  if ([pathCopy isEqualToString:@"diagnostic_pipeline_submission_rate"])
  {
    if (!v12)
    {
      goto LABEL_72;
    }

    [v12 doubleValue];
    [(ABCPreferences *)self setDiagnostic_pipeline_submission_rate:?];
    v16 = configurationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    [(ABCPreferences *)self diagnostic_pipeline_submission_rate];
    *buf = 134217984;
    v96 = v80;
    v19 = "diagnostic_pipeline_submission_rate configuration is %.3lf";
    goto LABEL_99;
  }

  if ([pathCopy isEqualToString:@"autoFeedbackAssistantEnable"])
  {
    if (v12)
    {
      -[ABCPreferences setAutoFeedbackAssistantEnable:](self, "setAutoFeedbackAssistantEnable:", [v12 BOOLValue]);
      v81 = configurationLogHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        if ([(ABCPreferences *)self autoFeedbackAssistantEnable])
        {
          v82 = "YES";
        }

        else
        {
          v82 = "NO";
        }

        autoFeedbackAssistantEnable = [(ABCPreferences *)self autoFeedbackAssistantEnable];
        *buf = 136315394;
        v96 = v82;
        v97 = 1024;
        LODWORD(v98) = autoFeedbackAssistantEnable;
        _os_log_impl(&dword_241804000, v81, OS_LOG_TYPE_DEFAULT, "autoFeedbackAssistantEnable configuration is %s (%d)", buf, 0x12u);
      }

      if ([(ABCPreferences *)self autoFeedbackAssistantEnable]&& !self->_observingInstalledProfiles)
      {
        v84 = +[ManagedConfigurationUtils sharedInstance];
        [v84 addObserver:self forKeyPath:@"installedVisibleProfileIdentifiers" options:1 context:0];

        v85 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        checkProfilesTimer = self->_checkProfilesTimer;
        self->_checkProfilesTimer = v85;

        v87 = self->_checkProfilesTimer;
        v88 = dispatch_time(0, 120000000000);
        dispatch_source_set_timer(v87, v88, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        v89 = self->_checkProfilesTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __65__ABCPreferences_observeValueForKeyPath_ofObject_change_context___block_invoke;
        handler[3] = &unk_278CEFE88;
        handler[4] = self;
        dispatch_source_set_event_handler(v89, handler);
        dispatch_resume(self->_checkProfilesTimer);
        self->_observingInstalledProfiles = 1;
      }
    }
  }

  else
  {
    if ([pathCopy isEqualToString:@"diagnosticsAndUsageEnabled"])
    {
      if (!v12)
      {
        goto LABEL_72;
      }

      -[ABCPreferences setDiagnosticsAndUsageEnabled:](self, "setDiagnosticsAndUsageEnabled:", [v12 BOOLValue]);
      v16 = configurationLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      if ([(ABCPreferences *)self diagnosticsAndUsageEnabled])
      {
        v90 = "YES";
      }

      else
      {
        v90 = "NO";
      }

      diagnosticsAndUsageEnabled = [(ABCPreferences *)self diagnosticsAndUsageEnabled];
      *buf = 136315394;
      v96 = v90;
      v97 = 1024;
      LODWORD(v98) = diagnosticsAndUsageEnabled;
      v19 = "diagnosticsAndUsageEnabled configuration is %s (%d)";
      goto LABEL_80;
    }

    if (![pathCopy isEqualToString:@"installedVisibleProfileIdentifiers"])
    {
      v29 = configurationLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      *buf = 138412546;
      v96 = changeCopy;
      v97 = 2112;
      v98 = pathCopy;
      v30 = "Received an unexpected symptomsd-diag preference change: %@ for %@";
      v39 = v29;
      v40 = OS_LOG_TYPE_DEFAULT;
      v41 = 22;
      goto LABEL_70;
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v92 = self->_checkProfilesTimer;
        if (v92)
        {
          dispatch_source_cancel(v92);
          v93 = self->_checkProfilesTimer;
          self->_checkProfilesTimer = 0;
        }

        [(ABCPreferences *)self processInstalledVisibleProfileIdentifiers:v10];
      }
    }
  }

LABEL_72:

  v42 = *MEMORY[0x277D85DE8];
}

void __65__ABCPreferences_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ManagedConfigurationUtils sharedInstance];
  v4 = [v3 installedVisibleProfileIdentifiers];
  [v2 processInstalledVisibleProfileIdentifiers:v4];

  dispatch_source_cancel(*(*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;
}

- (BOOL)diagnosticPipelineEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  _DPCGetUploadServiceEnablement();
  v3 = 0;
  if (!v3 && !self->_diagnosticPipelineEnabled)
  {
    v4 = configurationLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_diagnosticPipelineEnabled)
      {
        v5 = "en";
      }

      else
      {
        v5 = "dis";
      }

      *buf = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "en";
      v12 = 2080;
      v13 = "";
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticPipeline: %sabled -> %sabled%s", buf, 0x20u);
    }

    self->_diagnosticPipelineEnabled = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)processInstalledVisibleProfileIdentifiers:(id)identifiers
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [identifiers containsObject:@"com.apple.basebandlogging"];
  if (self->_autoFeedbackAssistantEnable && (v4 & 1) == 0)
  {
    v5 = configurationLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "autoFeedbackAssistantEnable";
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Disabling the %s Preference", &v9, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:0 forKey:@"autoFeedbackAssistantEnable"];

    if (self->_observingInstalledProfiles)
    {
      v7 = +[ManagedConfigurationUtils sharedInstance];
      [v7 removeObserver:self forKeyPath:@"installedVisibleProfileIdentifiers"];

      self->_observingInstalledProfiles = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:@"disable_internal_build"];
  [standardUserDefaults removeObserver:self forKeyPath:@"carrier_seed_flag"];
  [standardUserDefaults removeObserver:self forKeyPath:@"seed_flag"];
  [standardUserDefaults removeObserver:self forKeyPath:@"vendor_flag"];
  [standardUserDefaults removeObserver:self forKeyPath:@"disable_autobugcapture"];
  [standardUserDefaults removeObserver:self forKeyPath:@"optin_autobugcapture"];
  [standardUserDefaults removeObserver:self forKeyPath:@"dut_flag"];
  [standardUserDefaults removeObserver:self forKeyPath:@"npi_flag"];
  [standardUserDefaults removeObserver:self forKeyPath:@"arbitrator_disable_dampening"];
  [standardUserDefaults removeObserver:self forKeyPath:@"arbitrator_daily_count_limit"];
  [standardUserDefaults removeObserver:self forKeyPath:@"ABCUserConsent"];
  [standardUserDefaults removeObserver:self forKeyPath:@"apns_enable"];
  [standardUserDefaults removeObserver:self forKeyPath:@"apns_dev_environment"];
  [standardUserDefaults removeObserver:self forKeyPath:@"max_upload_retries"];
  [standardUserDefaults removeObserver:self forKeyPath:@"arbitrator_dampened_ips_limit"];
  [standardUserDefaults removeObserver:self forKeyPath:@"dampening_restriction_factor"];
  [standardUserDefaults removeObserver:self forKeyPath:@"disable_api_rate_limit"];
  [standardUserDefaults removeObserver:self forKeyPath:@"api_rate_limit"];
  [standardUserDefaults removeObserver:self forKeyPath:@"api_limit_window"];
  [standardUserDefaults removeObserver:self forKeyPath:@"database_container_path"];
  [standardUserDefaults removeObserver:self forKeyPath:@"ignore_automated_device_group"];
  [standardUserDefaults removeObserver:self forKeyPath:@"autoFeedbackAssistantEnable"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_enable"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_sandbox_environment"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_upload_expiration_timeout"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_upload_connection_timeout"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_upload_max_fallback_log_count"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_container_identifier"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_inverness_service"];
  [standardUserDefaults removeObserver:self forKeyPath:@"cloudkit_prefers_anonymous"];
  [standardUserDefaults removeObserver:self forKeyPath:@"case_summary_maximum_per_submission"];
  [standardUserDefaults removeObserver:self forKeyPath:@"case_summary_submitted_retention_days"];
  [standardUserDefaults removeObserver:self forKeyPath:@"case_summary_unsubmitted_retention_days"];
  [standardUserDefaults removeObserver:self forKeyPath:@"case_summary_enable"];
  [standardUserDefaults removeObserver:self forKeyPath:@"diagnostic_pipeline_submission"];
  [standardUserDefaults removeObserver:self forKeyPath:@"diagnostic_pipeline_submission_rate"];
  if (self->_observedAutoBugCaptureUIPreference)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.autobugcapture.UserConsentYES", 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v5, self, @"com.apple.autobugcapture.UserConsentNO", 0);
    self->_observedAutoBugCaptureUIPreference = 0;
  }

  v6 = +[ManagedConfigurationUtils sharedInstance];
  [v6 removeObserver:self forKeyPath:@"diagnosticsAndUsageEnabled"];
  if (self->_observingInstalledProfiles)
  {
    [v6 removeObserver:self forKeyPath:@"installedVisibleProfileIdentifiers"];
  }

  checkProfilesTimer = self->_checkProfilesTimer;
  if (checkProfilesTimer)
  {
    dispatch_source_cancel(checkProfilesTimer);
  }

  v8.receiver = self;
  v8.super_class = ABCPreferences;
  [(ABCPreferences *)&v8 dealloc];
}

- (void)setABCUIUserConsent:(BOOL)consent
{
  if (self->_abcUIUserConsent != consent)
  {
    [(ABCPreferences *)self willChangeValueForKey:@"abcUIUserConsent"];
    self->_abcUIUserConsent = consent;
    [(ABCPreferences *)self didChangeValueForKey:@"abcUIUserConsent"];
    abcUIUserConsent = self->_abcUIUserConsent;

    [(ABCPreferences *)self setABCUserConsent:abcUIUserConsent];
  }
}

- (void)setABCUserConsent:(BOOL)consent
{
  if (self->_ABCUserConsent != consent)
  {
    [(ABCPreferences *)self willChangeValueForKey:@"ABCUserConsent"];
    self->_ABCUserConsent = consent;

    [(ABCPreferences *)self didChangeValueForKey:@"ABCUserConsent"];
  }
}

@end