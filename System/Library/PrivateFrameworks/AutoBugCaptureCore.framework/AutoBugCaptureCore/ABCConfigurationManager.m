@interface ABCConfigurationManager
+ (id)defaultLibraryDirectory;
- (ABCConfigurationManager)init;
- (BOOL)autoBugCaptureAvailable;
- (BOOL)autoBugCaptureEnabled;
- (BOOL)cloudKitEnabled;
- (BOOL)cloudKitPrefersAnonymous;
- (NSString)databaseContainerPath;
- (NSString)logArchivePath;
- (id)getAutoBugCaptureConfiguration;
- (id)loadEmbeddedConfigurationPlist:(const char *)a3;
- (int)autoBugCaptureFeatures;
- (unsigned)logArchiveGID;
- (unsigned)logArchiveUID;
- (void)dealloc;
- (void)initializeOverrides;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ABCConfigurationManager

- (int)autoBugCaptureFeatures
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild] & 1) != 0 || (objc_msgSend(v2, "carrierSeedBuild"))
  {
    v3 = 15;
  }

  else if ([v2 customerSeedBuild])
  {
    v3 = 7;
  }

  else if ([v2 vendorBuild])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)defaultLibraryDirectory
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = [v3 length];
  v5 = configurationLogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Found usable Library directory at %@", &v10, 0xCu);
    }

    v7 = v3;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Search for usable Library directory returned empty result: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (ABCConfigurationManager)init
{
  v6.receiver = self;
  v6.super_class = ABCConfigurationManager;
  v2 = [(ABCConfigurationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABCPreferences);
    preferences = v2->_preferences;
    v2->_preferences = v3;

    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"disable_internal_build" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"carrier_seed_flag" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"seed_flag" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"vendor_flag" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"npi_flag" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"optin_autobugcapture" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"disable_autobugcapture" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"ABCUserConsent" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"diagnosticsAndUsageEnabled" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"apns_enable" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"apns_dev_environment" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"is_automated_device_group" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"ignore_automated_device_group" options:1 context:0];
    [(ABCPreferences *)v2->_preferences addObserver:v2 forKeyPath:@"autoFeedbackAssistantEnable" options:1 context:0];
    [(ABCConfigurationManager *)v2 initializeOverrides];
  }

  return v2;
}

- (void)dealloc
{
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"disable_internal_build"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"carrier_seed_flag"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"seed_flag"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"vendor_flag"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"npi_flag"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"optin_autobugcapture"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"disable_autobugcapture"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"ABCUserConsent"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"diagnosticsAndUsageEnabled"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"apns_enable"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"apns_dev_environment"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"is_automated_device_group"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"ignore_automated_device_group"];
  [(ABCPreferences *)self->_preferences removeObserver:self forKeyPath:@"autoFeedbackAssistantEnable"];
  preferences = self->_preferences;
  self->_preferences = 0;

  v4.receiver = self;
  v4.super_class = ABCConfigurationManager;
  [(ABCConfigurationManager *)&v4 dealloc];
}

- (id)getAutoBugCaptureConfiguration
{
  v16 = *MEMORY[0x277D85DE8];
  outCount = 0;
  v3 = protocol_copyPropertyList(&unk_28537EB60, &outCount);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v4[i])];
        v8 = [(ABCConfigurationManager *)self valueForKey:v7];
        [v5 setObject:v8 forKeyedSubscript:v7];
      }
    }

    v9 = configurationLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "configuration dictionary: %@", buf, 0xCu);
    }

    free(v4);
  }

  else
  {
    v10 = configurationLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "ConfigurationProperties is nil!!!!", buf, 2u);
    }

    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)initializeOverrides
{
  v12 = +[SystemProperties sharedInstance];
  if ([(ABCPreferences *)self->_preferences disable_internal_build])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[ABCPreferences disable_internal_build](self->_preferences, "disable_internal_build")}];
  }

  else
  {
    v3 = 0;
  }

  [(ABCConfigurationManager *)self setDisable_internal_build:v3];
  [v12 setInternalBuildDisabledByOverride:{objc_msgSend(v3, "BOOLValue")}];
  v4 = [(ABCPreferences *)self->_preferences carrier_seed_flag];
  [(ABCConfigurationManager *)self setCarrier_seed_flag:v4];

  v5 = [(ABCPreferences *)self->_preferences carrier_seed_flag];
  [v12 setCarrierSeedBuildOverride:v5];

  v6 = [(ABCPreferences *)self->_preferences seed_flag];
  [(ABCConfigurationManager *)self setSeed_flag:v6];

  v7 = [(ABCPreferences *)self->_preferences seed_flag];
  [v12 setSeedBuildOverride:v7];

  v8 = [(ABCPreferences *)self->_preferences vendor_flag];
  [(ABCConfigurationManager *)self setVendor_flag:v8];

  v9 = [(ABCPreferences *)self->_preferences vendor_flag];
  [v12 setVendorBuildOverride:v9];

  v10 = [(ABCPreferences *)self->_preferences npi_flag];
  [(ABCConfigurationManager *)self setNpi_flag:v10];

  v11 = [(ABCPreferences *)self->_preferences npi_flag];
  [v12 setNpiDeviceOverride:v11];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a5 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = +[SystemProperties sharedInstance];
  if ([v8 isEqualToString:@"disable_internal_build"])
  {
    [(ABCConfigurationManager *)self setDisable_internal_build:v11];
    [v12 setInternalBuildDisabledByOverride:{objc_msgSend(v11, "BOOLValue")}];
    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"carrier_seed_flag"])
  {
    [(ABCConfigurationManager *)self setCarrier_seed_flag:v11];
    [v12 setCarrierSeedBuildOverride:v11];
    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"seed_flag"])
  {
    [(ABCConfigurationManager *)self setSeed_flag:v11];
    [v12 setSeedBuildOverride:v11];
LABEL_21:
    [(ABCConfigurationManager *)self autoBugCaptureEnabled];
    v13 = [(ABCConfigurationManager *)self getAutoBugCaptureConfiguration];
    if (v13)
    {
      previousConfiguration = self->_previousConfiguration;
      p_previousConfiguration = &self->_previousConfiguration;
      if (![(NSDictionary *)previousConfiguration isEqualToDictionary:v13])
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.autobugcapture.configurationchanged", 0, 0, 4u);
        objc_storeStrong(p_previousConfiguration, v13);
        v17 = configurationLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v13;
          _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "ABC Configuration dictionary changed: %@", &v19, 0xCu);
        }
      }
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"vendor_flag"])
  {
    [(ABCConfigurationManager *)self setVendor_flag:v11];
    [v12 setVendorBuildOverride:v11];
  }

  else if ([v8 isEqualToString:@"npi_flag"])
  {
    [(ABCConfigurationManager *)self setNpi_flag:v11];
    [v12 setNpiDeviceOverride:v11];
  }

  if (([v8 isEqualToString:@"optin_autobugcapture"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"disable_autobugcapture") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ABCUserConsent") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"diagnosticsAndUsageEnabled") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"is_automated_device_group") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ignore_automated_device_group") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"autoFeedbackAssistantEnable"))
  {
    goto LABEL_21;
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)autoBugCaptureAvailable
{
  v3 = [(ABCConfigurationManager *)self autoBugCaptureFeatures];
  if (v3)
  {
    v4 = ![(ABCConfigurationManager *)self autoBugCaptureSupportedHardware];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(ABCPreferences *)self->_preferences disable_autobugcapture];
  v6 = [(ABCPreferences *)self->_preferences optin_autobugcapture];
  v7 = [(ABCPreferences *)self->_preferences diagnosticPipelineEnabled];
  if (v4)
  {
    return 0;
  }

  else
  {
    v8 = (v3 & 0x20) == 0 || v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v5)
    {
      return 0;
    }
  }

  return v8;
}

- (BOOL)autoBugCaptureEnabled
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(ABCConfigurationManager *)self autoBugCaptureAvailable];
  v4 = [(ABCPreferences *)self->_preferences diagnosticsAndUsageEnabled];
  v27 = [(ABCPreferences *)self->_preferences diagnosticPipelineEnabled];
  v5 = [(ABCPreferences *)self->_preferences ABCUserConsent];
  v6 = [(ABCPreferences *)self->_preferences is_automated_device_group];
  v7 = [(ABCPreferences *)self->_preferences ignore_automated_device_group];
  v8 = !v6 || v7;
  if (!v5)
  {
    v8 = 0;
  }

  if (!v4)
  {
    v8 = 0;
  }

  autoBugCaptureEnabled = v3 && v8;
  v10 = autoBugCaptureEnabled;
  if (autoBugCaptureEnabled__logPrintCount && autoBugCaptureEnabled__prevEnabledValue == v10)
  {
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * autoBugCaptureEnabled__logPrintCount, 2) <= 0xCCCCCCCCCCCCCCCuLL)
    {
      v18 = configurationLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        loga = v18;
        if (autoBugCaptureEnabled)
        {
          v19 = "ON";
        }

        else
        {
          v19 = "OFF";
        }

        v20 = "(ignored)";
        if (!v7)
        {
          v20 = "";
        }

        if (v27)
        {
          v21 = "en";
        }

        else
        {
          v21 = "dis";
        }

        if (v3)
        {
          v22 = "";
        }

        else
        {
          v22 = "not ";
        }

        *buf = 136316930;
        v29 = v19;
        v18 = loga;
        v30 = 1024;
        v31 = v4;
        v32 = 1024;
        v33 = v5;
        v34 = 1024;
        v35 = v6;
        v36 = 2080;
        v37 = v20;
        v38 = 2080;
        v39 = v21;
        v40 = 2080;
        v41 = v22;
        v42 = 1024;
        v43 = [(ABCConfigurationManager *)self autoBugCaptureFeatures];
        _os_log_impl(&dword_241804000, loga, OS_LOG_TYPE_INFO, "AutoBugCapture is %s - DNU:%d, user consent:%d, automated device group:%d%s, DP:%sabled, ABC:%savailable, ABC features:%d", buf, 0x42u);
      }
    }
  }

  else
  {
    log = configurationLogHandle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      if (autoBugCaptureEnabled)
      {
        v13 = "ON";
      }

      else
      {
        v13 = "OFF";
      }

      v14 = "(ignored)";
      if (!v7)
      {
        v14 = "";
      }

      v24 = v14;
      if (v27)
      {
        v15 = "en";
      }

      else
      {
        v15 = "dis";
      }

      if (v3)
      {
        v16 = "";
      }

      else
      {
        v16 = "not ";
      }

      v17 = [(ABCConfigurationManager *)self autoBugCaptureFeatures];
      *buf = 136316930;
      v29 = v23;
      v30 = 1024;
      v31 = v4;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      v36 = 2080;
      v37 = v24;
      v38 = 2080;
      v39 = v15;
      v40 = 2080;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&dword_241804000, log, OS_LOG_TYPE_DEFAULT, "AutoBugCapture is %s - DNU:%d, user consent:%d, automated device group:%d%s, DP:%sabled, ABC:%savailable, ABC features:%d", buf, 0x42u);
    }

    autoBugCaptureEnabled__prevEnabledValue = autoBugCaptureEnabled;
  }

  ++autoBugCaptureEnabled__logPrintCount;
  if (self->_autoBugCaptureEnabled != v10)
  {
    [(ABCConfigurationManager *)self willChangeValueForKey:@"autoBugCaptureEnabled"];
    self->_autoBugCaptureEnabled = v10;
    [(ABCConfigurationManager *)self didChangeValueForKey:@"autoBugCaptureEnabled"];
    autoBugCaptureEnabled = self->_autoBugCaptureEnabled;
  }

  v11 = *MEMORY[0x277D85DE8];
  return autoBugCaptureEnabled;
}

- (NSString)logArchivePath
{
  v11 = *MEMORY[0x277D85DE8];
  if (![logArchivePath_logArchivePath length])
  {
    v2 = +[ABCConfigurationManager defaultLibraryDirectory];
    if ([v2 length])
    {
      v3 = [v2 stringByAppendingPathComponent:@"Logs/AutoBugCapture"];
      v4 = logArchivePath_logArchivePath;
      logArchivePath_logArchivePath = v3;

      v5 = configurationLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = logArchivePath_logArchivePath;
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Configured logArchivePath to be %@", &v9, 0xCu);
      }
    }
  }

  v6 = logArchivePath_logArchivePath;
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unsigned)logArchiveUID
{
  result = logArchiveUID_logArchiveUID;
  if (!logArchiveUID_logArchiveUID)
  {
    result = getuid();
    logArchiveUID_logArchiveUID = result;
  }

  return result;
}

- (unsigned)logArchiveGID
{
  result = logArchiveGID_logArchiveGID;
  if (!logArchiveGID_logArchiveGID)
  {
    v3 = getgrnam("_analyticsusers");
    if (v3)
    {
      logArchiveGID_logArchiveGID = v3->gr_gid;
    }

    else
    {
      logArchiveGID_logArchiveGID = getgid();
      v4 = configurationLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Failed to get _analyticsusers gid, using current user", v5, 2u);
      }
    }

    endgrent();
    return logArchiveGID_logArchiveGID;
  }

  return result;
}

- (NSString)databaseContainerPath
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(ABCPreferences *)self->_preferences database_container_path];
  if ([v3 length])
  {
    v4 = [(ABCPreferences *)self->_preferences database_container_path];
    v5 = [v4 isAbsolutePath];

    if (v5)
    {
      v6 = [(ABCPreferences *)self->_preferences database_container_path];
      v7 = databaseContainerPath_dbContainerPath;
      databaseContainerPath_dbContainerPath = v6;

      v8 = configurationLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = databaseContainerPath_dbContainerPath;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Database directory overridden with: %@", &v16, 0xCu);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  if (databaseContainerPath_dbContainerPath)
  {
    goto LABEL_12;
  }

  v8 = +[ABCConfigurationManager defaultLibraryDirectory];
  if ([v8 length])
  {
    v9 = +[ABCConfigurationManager autoBugCapturePrefix];
    v10 = [v8 stringByAppendingPathComponent:v9];
    v11 = databaseContainerPath_dbContainerPath;
    databaseContainerPath_dbContainerPath = v10;

    v12 = configurationLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = databaseContainerPath_dbContainerPath;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Using default database directory: %@", &v16, 0xCu);
    }
  }

LABEL_11:

LABEL_12:
  v13 = databaseContainerPath_dbContainerPath;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)cloudKitEnabled
{
  v2 = [(ABCPreferences *)self->_preferences cloudkit_enable];
  v3 = +[SystemProperties sharedInstance];
  if (([v3 vendorBuild] & 1) != 0 || objc_msgSend(v3, "customerBuild") && (objc_msgSend(v3, "seedBuild") & 1) == 0)
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)cloudKitPrefersAnonymous
{
  v2 = [(ABCPreferences *)self->_preferences cloudkit_prefers_anonymous];
  v3 = +[SystemProperties sharedInstance];
  if (([v3 vendorBuild] & 1) != 0 || objc_msgSend(v3, "customerBuild"))
  {
    v2 = 1;
  }

  return v2;
}

- (id)loadEmbeddedConfigurationPlist:(const char *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = load_embedded_xml_plist(a3);
  v4 = [v3 objectForKeyedSubscript:@"CONFIG_IDENTIFIER"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = configurationLogHandle();
  v7 = v6;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v4;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Embedded configuration identifier: %@", &v26, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v26 = 138412546;
    v27 = v9;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Found unexpected class %@ (%@) for configuration identifier - expected NSString", &v26, 0x16u);
  }

  v10 = [v3 objectForKeyedSubscript:@"CONFIG_VERSION"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  v12 = configurationLogHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [v10 longValue];
      v26 = 134217984;
      v27 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Embedded configuration version: %ld", &v26, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v26 = 138412546;
    v27 = v16;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected class %@ (%@) for configuration version - expected NSNumber", &v26, 0x16u);
  }

  v17 = [v3 objectForKeyedSubscript:@"CONFIG_CONTENT"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = configurationLogHandle();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v17;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "Embedded configuration content: %@", &v26, 0xCu);
    }

    v21 = v17;
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v26 = 138412546;
      v27 = v23;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Found unexpected class %@ (%@) for configuration content - expected NSDictionary", &v26, 0x16u);
    }

    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

@end