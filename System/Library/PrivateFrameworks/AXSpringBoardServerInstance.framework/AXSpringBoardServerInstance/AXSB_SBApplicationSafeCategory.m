@interface AXSB_SBApplicationSafeCategory
- (void)_updateProcess:(id)a3 withState:(id)a4;
@end

@implementation AXSB_SBApplicationSafeCategory

- (void)_updateProcess:(id)a3 withState:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  buf[0] = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = v8;
  v10 = [v8 bundleIdentifier];
  v11 = [v10 isEqualToString:*MEMORY[0x277CE6818]];

  v12 = [v9 bundleIdentifier];
  v13 = [v12 isEqualToString:*MEMORY[0x277CE68B8]];

  v14 = [(AXSB_SBApplicationSafeCategory *)self safeValueForKeyPath:@"_appInfo.hasHiddenTag"];
  v15 = [v14 BOOLValue];

  buf[0] = 0;
  v16 = [(AXSB_SBApplicationSafeCategory *)self safeValueForKey:@"_internalProcessState"];
  v17 = __UIAccessibilitySafeClass();

  v18 = [v17 safeIntForKey:@"taskState"];
  v19 = [v17 safeIntForKey:@"visibility"];
  v35.receiver = self;
  v35.super_class = AXSB_SBApplicationSafeCategory;
  v34 = v7;
  [(AXSB_SBApplicationSafeCategory *)&v35 _updateProcess:v6 withState:v7];
  buf[0] = 0;
  v20 = [(AXSB_SBApplicationSafeCategory *)self safeValueForKey:@"_internalProcessState"];
  v21 = __UIAccessibilitySafeClass();

  if (buf[0] == 1)
  {
    abort();
  }

  v22 = [v21 safeIntForKey:@"taskState"];
  v23 = [v21 safeIntForKey:@"visibility"];
  v25 = v19 != 2 && v23 != 2;
  v27 = v18 == v22 && v19 == v23;
  if (((v27 | v15 | v11 | v13) & 1) == 0 && !v25)
  {
    v28 = [MEMORY[0x277D440D8] sharedInstance];
    if ([v28 TTYHardwareEnabled])
    {
    }

    else
    {
      v29 = [MEMORY[0x277D440D8] sharedInstance];
      v30 = [v29 TTYSoftwareEnabled];

      if (!v30)
      {
        goto LABEL_24;
      }
    }

    v31 = AXLogRTT();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 bundleIdentifier];
      *buf = 138412802;
      v37 = v32;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v21;
      _os_log_impl(&dword_21FE6B000, v31, OS_LOG_TYPE_DEFAULT, "Canceling RTT call prompt display because %@ moved from previous state %@ to new state %@", buf, 0x20u);
    }

    [MEMORY[0x277D440B0] cancelCallPromptDisplay];
  }

LABEL_24:

  v33 = *MEMORY[0x277D85DE8];
}

@end