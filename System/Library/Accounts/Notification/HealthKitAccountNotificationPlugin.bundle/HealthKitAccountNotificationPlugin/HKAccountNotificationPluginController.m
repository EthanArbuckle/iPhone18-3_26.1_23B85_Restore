@interface HKAccountNotificationPluginController
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation HKAccountNotificationPluginController

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v67 = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (a4 != 4)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    v14 = [v13 accountType];
    v15 = [v14 identifier];

    if (![v15 isEqualToString:*MEMORY[0x29EDB81C8]])
    {
      goto LABEL_34;
    }

    v16 = *MEMORY[0x29EDBE2C0];
    v17 = [v13 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
    v18 = [v11 aa_isAccountClass:v16];
    if (!v17)
    {
      goto LABEL_34;
    }

    v19 = v18;
    _HKInitializeLogging();
    v20 = MEMORY[0x29EDBA7B8];
    v21 = *MEMORY[0x29EDBA7B8];
    v22 = *MEMORY[0x29EDBA7B8];
    if (v19)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *buf = 138543362;
      v62 = self;
      v23 = "%{public}@: Standard primary account save.";
      v24 = v21;
      v25 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138543362;
      v62 = self;
      v23 = "%{public}@: Primary account added or promoted.";
      v24 = v21;
      v25 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_29C8CF000, v24, v25, v23, buf, 0xCu);
LABEL_13:
    v26 = *MEMORY[0x29EDB80E8];
    v27 = [v13 isEnabledForDataclass:*MEMORY[0x29EDB80E8]];
    v28 = [v11 isEnabledForDataclass:v26];
    _HKInitializeLogging();
    v29 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
    {
      v30 = @"NO";
      if (v27)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      *buf = 138543874;
      v62 = self;
      v64 = v31;
      v63 = 2112;
      if (v28)
      {
        v30 = @"YES";
      }

      v65 = 2112;
      v66 = v30;
      _os_log_impl(&dword_29C8CF000, v29, OS_LOG_TYPE_INFO, "%{public}@: IS Health enabled: %@. WAS health enabled: %@.", buf, 0x20u);
    }

    if (!v27 || (v28 & v19 & 1) != 0)
    {
      goto LABEL_34;
    }

    _HKInitializeLogging();
    v32 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v62 = self;
      _os_log_impl(&dword_29C8CF000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Handle account changes after dataclass enabled", buf, 0xCu);
    }

    v33 = objc_alloc_init(MEMORY[0x29EDBABE8]);
    v34 = [objc_alloc(MEMORY[0x29EDBAA90]) initWithHealthStore:v33];
    v60[0] = MEMORY[0x29EDCA5F8];
    v60[1] = 3221225472;
    v60[2] = sub_29C8D0288;
    v60[3] = &unk_29F32FF18;
    v60[4] = self;
    [v34 accountConfigurationDidChangeWithCompletion:v60];
    v35 = [MEMORY[0x29EDBAEC0] sharedBehavior];
    v36 = [v35 isiPad];

    if (!v36)
    {
      goto LABEL_33;
    }

    v52 = v34;
    v37 = objc_alloc(MEMORY[0x29EDBAC18]);
    v38 = [v37 initWithCategory:3 domainName:*MEMORY[0x29EDBB018] healthStore:v33];
    v39 = *MEMORY[0x29EDBB010];
    v40 = [MEMORY[0x29EDB8DB0] date];
    v59 = 0;
    v54 = v39;
    LOBYTE(v39) = [(__CFString *)v38 setDate:v40 forKey:v39 error:&v59];
    v53 = v59;

    if ((v39 & 1) == 0)
    {
      _HKInitializeLogging();
      v41 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v62 = self;
        v63 = 2114;
        v64 = v54;
        v65 = 2114;
        v66 = v53;
        _os_log_error_impl(&dword_29C8CF000, v41, OS_LOG_TYPE_ERROR, "%{public}@: Unable to persist %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v42 = *MEMORY[0x29EDBB028];
    v58 = 0;
    v51 = v38;
    v43 = [(__CFString *)v38 dateForKey:v42 error:&v58];
    v44 = v58;
    if (v44)
    {
      _HKInitializeLogging();
      v45 = *MEMORY[0x29EDBA7B0];
      if (os_log_type_enabled(*MEMORY[0x29EDBA7B0], OS_LOG_TYPE_ERROR))
      {
        sub_29C8D04E8(self, v44, v45);
      }
    }

    else
    {
      if (!v43)
      {
        v50 = [objc_alloc(MEMORY[0x29EDBACA8]) initWithClientIdentifier:@"NewDeviceSetup" healthStore:v33];
        v55[0] = MEMORY[0x29EDCA5F8];
        v55[1] = 3221225472;
        v55[2] = sub_29C8D0378;
        v55[3] = &unk_29F32FF40;
        v55[4] = self;
        v56 = v51;
        v57 = v42;
        v46 = v51;
        [v50 sendNewDeviceNotificationWithMessageKind:0 completion:v55];

        v42 = v50;
        v47 = v54;
        goto LABEL_32;
      }

      _HKInitializeLogging();
      v49 = *MEMORY[0x29EDBA7B0];
      if (os_log_type_enabled(*MEMORY[0x29EDBA7B0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = self;
        _os_log_impl(&dword_29C8CF000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: User previously notified of this device. Not doing anything", buf, 0xCu);
      }
    }

    v46 = v54;
    v47 = v51;
LABEL_32:

    v34 = v52;
LABEL_33:

LABEL_34:
  }

  v48 = *MEMORY[0x29EDCA608];
}

@end