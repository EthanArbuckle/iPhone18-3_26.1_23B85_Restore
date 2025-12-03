@interface AXSB_SBApplicationSafeCategory
- (void)_updateProcess:(id)process withState:(id)state;
@end

@implementation AXSB_SBApplicationSafeCategory

- (void)_updateProcess:(id)process withState:(id)state
{
  v42 = *MEMORY[0x277D85DE8];
  processCopy = process;
  stateCopy = state;
  buf[0] = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = v8;
  bundleIdentifier = [v8 bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:*MEMORY[0x277CE6818]];

  bundleIdentifier2 = [v9 bundleIdentifier];
  v13 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277CE68B8]];

  v14 = [(AXSB_SBApplicationSafeCategory *)self safeValueForKeyPath:@"_appInfo.hasHiddenTag"];
  bOOLValue = [v14 BOOLValue];

  buf[0] = 0;
  v16 = [(AXSB_SBApplicationSafeCategory *)self safeValueForKey:@"_internalProcessState"];
  v17 = __UIAccessibilitySafeClass();

  v18 = [v17 safeIntForKey:@"taskState"];
  v19 = [v17 safeIntForKey:@"visibility"];
  v35.receiver = self;
  v35.super_class = AXSB_SBApplicationSafeCategory;
  v34 = stateCopy;
  [(AXSB_SBApplicationSafeCategory *)&v35 _updateProcess:processCopy withState:stateCopy];
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
  if (((v27 | bOOLValue | v11 | v13) & 1) == 0 && !v25)
  {
    mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
    if ([mEMORY[0x277D440D8] TTYHardwareEnabled])
    {
    }

    else
    {
      mEMORY[0x277D440D8]2 = [MEMORY[0x277D440D8] sharedInstance];
      tTYSoftwareEnabled = [mEMORY[0x277D440D8]2 TTYSoftwareEnabled];

      if (!tTYSoftwareEnabled)
      {
        goto LABEL_24;
      }
    }

    v31 = AXLogRTT();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier3 = [v9 bundleIdentifier];
      *buf = 138412802;
      v37 = bundleIdentifier3;
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