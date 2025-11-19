@interface BuddySUSUISoftwareUpdateManager
+ (id)createWithDelegate:(id)a3 hostController:(id)a4;
- (BOOL)downloadProgressIsDone;
- (BOOL)enableUpdateButtonForError:(id)a3;
- (BOOL)manager:(id)a3 shouldShowAlertForScanError:(id)a4;
- (BOOL)readyToDownloadPreferredUpdate;
- (BOOL)readyToDownloadUpdate:(id)a3;
- (BOOL)readyToResume;
- (BuddySUSUISoftwareUpdateManager)initWithDelegate:(id)a3 hostController:(id)a4;
- (BuddySUSUISoftwareUpdateManagerDelegate)delegate;
- (NSString)actionString;
- (NSString)progressString;
- (id)downloadDescriptor;
- (id)downloadProgressPhase;
- (id)errorForUpdate:(id)a3;
- (id)humanReadableDescriptionForError:(id)a3;
- (id)humanReadableDescriptionForError:(id)a3 enableButton:(BOOL *)a4;
- (id)prettyNameForUpdate:(id)a3;
- (id)publicCheckpointLogDetails;
- (int)state;
- (void)SUManagerIsDownloading:(id)a3;
- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5;
- (void)manager:(id)a3 download:(id)a4 failedWithError:(id)a5;
- (void)manager:(id)a3 downloadFinished:(id)a4;
- (void)manager:(id)a3 downloadProgressChanged:(id)a4 displayStyle:(int)a5;
- (void)manager:(id)a3 installFailedWithError:(id)a4;
- (void)manager:(id)a3 installStartedForUpdate:(id)a4;
- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4;
- (void)manager:(id)a3 scanFoundUpdates:(id)a4 error:(id)a5;
- (void)refreshState;
- (void)resumeDownload;
- (void)scanForUpdatesCompletion:(id)a3;
- (void)scanForUpdatesWithOptions:(id)a3 andCompletion:(id)a4;
- (void)setAllowCellularOverride:(BOOL)a3;
- (void)setAutoInstall:(id)a3;
- (void)setBypassTermsAndConditions:(BOOL)a3;
- (void)setClientIsBuddy:(BOOL)a3;
- (void)setServerFlowStyle:(id)a3;
- (void)startDownloadAndInstall:(unint64_t)a3 update:(id)a4 withHandler:(id)a5;
- (void)startInstallWithHandler:(id)a3;
@end

@implementation BuddySUSUISoftwareUpdateManager

+ (id)createWithDelegate:(id)a3 hostController:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  if ((os_variant_has_internal_ui() & 1) != 0 && +[BuddySUSUISoftwareUpdateManagerTestingSurrogate enabled])
  {
    v5 = [BuddySUSUISoftwareUpdateManagerTestingSurrogate alloc];
    v11 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v5 initWithDelegate:location[0] hostController:v9];
  }

  else
  {
    v6 = [BuddySUSUISoftwareUpdateManager alloc];
    v11 = [(BuddySUSUISoftwareUpdateManager *)v6 initWithDelegate:location[0] hostController:v9];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v7 = v11;

  return v7;
}

- (BuddySUSUISoftwareUpdateManager)initWithDelegate:(id)a3 hostController:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v5 = v13;
  v13 = 0;
  v10.receiver = v5;
  v10.super_class = BuddySUSUISoftwareUpdateManager;
  v13 = [(BuddySUSUISoftwareUpdateManager *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    [v13 setDelegate:location[0]];
    v6 = objc_alloc(sub_1000B1D14());
    v7 = [v6 initWithDelegate:v13 hostController:v11];
    [v13 setUnderlyingSoftwareUpdateManager:v7];
  }

  v8 = v13;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)setAllowCellularOverride:(BOOL)a3
{
  v4 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v4 setAllowCellularOverride:a3];
}

- (void)setClientIsBuddy:(BOOL)a3
{
  v4 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v4 setClientIsBuddy:a3];
}

- (void)setBypassTermsAndConditions:(BOOL)a3
{
  v4 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v4 setBypassTermsAndConditions:a3];
}

- (void)setServerFlowStyle:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddySUSUISoftwareUpdateManager *)v6 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v4 setServerFlowStyle:v3];

  objc_storeStrong(location, 0);
}

- (int)state
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 state];

  return v3;
}

- (NSString)progressString
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 progressString];

  return v3;
}

- (NSString)actionString
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 actionString];

  return v3;
}

- (BOOL)downloadProgressIsDone
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 download];
  v4 = [v3 progress];
  v5 = [v4 isDone];

  return v5 & 1;
}

- (id)downloadProgressPhase
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 download];
  v4 = [v3 progress];
  v5 = [v4 phase];

  return v5;
}

- (id)downloadDescriptor
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 download];
  v4 = [v3 descriptor];

  return v4;
}

- (void)SUManagerIsDownloading:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v6 underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)v3 SUManager];
  [v4 isDownloading:location[0]];

  objc_storeStrong(location, 0);
}

- (id)errorForUpdate:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  v3 = location[0];
  v4 = [(BuddySUSUISoftwareUpdateManager *)v22 underlyingSoftwareUpdateManager];
  v5 = [(SUSUISoftwareUpdateManager *)v4 preferredUpdate];
  LOBYTE(v3) = [v3 isEqual:v5];

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager errorForUpdate:]");
      _os_log_debug_impl(&_mh_execute_header, oslog, v18, "%s returning preferredUpdateError", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [(BuddySUSUISoftwareUpdateManager *)v22 underlyingSoftwareUpdateManager];
    v7 = [(SUSUISoftwareUpdateManager *)v6 preferredUpdateError];
    v8 = v20;
    v20 = v7;
  }

  else
  {
    v9 = location[0];
    v10 = [(BuddySUSUISoftwareUpdateManager *)v22 underlyingSoftwareUpdateManager];
    v11 = [(SUSUISoftwareUpdateManager *)v10 alternateUpdate];
    LOBYTE(v9) = [v9 isEqual:v11];

    if (v9)
    {
      v17 = _BYLoggingFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v23, "[BuddySUSUISoftwareUpdateManager errorForUpdate:]");
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s returning alternateUpdateError", v23, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      v12 = [(BuddySUSUISoftwareUpdateManager *)v22 underlyingSoftwareUpdateManager];
      v13 = [(SUSUISoftwareUpdateManager *)v12 alternateUpdateError];
      v14 = v20;
      v20 = v13;
    }
  }

  v15 = v20;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v15;
}

- (id)publicCheckpointLogDetails
{
  v21 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v20 = [(SUSUISoftwareUpdateManager *)v21 preferredUpdate];
  if (v20)
  {
    v33 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
    v32 = 1;
    v31 = [(SUSUISoftwareUpdateManager *)v33 preferredUpdate];
    v30 = 1;
    v15 = [v31 humanReadableUpdateName];
    v29 = v15;
    v28 = 1;
  }

  else
  {
    v15 = @"N/A";
  }

  v19 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v18 = [(SUSUISoftwareUpdateManager *)v19 preferredUpdate];
  v17 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v2 = [(SUSUISoftwareUpdateManager *)v17 preferredUpdateError];
  v16 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v3 = [(SUSUISoftwareUpdateManager *)v16 alternateUpdate];
  v26 = 0;
  v24 = 0;
  v22 = 0;
  if (v3)
  {
    v27 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
    v26 = 1;
    v25 = [(SUSUISoftwareUpdateManager *)v27 alternateUpdate];
    v24 = 1;
    v4 = [v25 humanReadableUpdateName];
    v23 = v4;
    v22 = 1;
  }

  else
  {
    v4 = @"N/A";
  }

  v5 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v6 = [(SUSUISoftwareUpdateManager *)v5 alternateUpdate];
  v7 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v8 = [(SUSUISoftwareUpdateManager *)v7 alternateUpdateError];
  v9 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  if (([(SUSUISoftwareUpdateManager *)v9 isDelayingUpdates]& 1) != 0)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v12 = [(SUSUISoftwareUpdateManager *)v11 automaticUpdateScheduled];
  v13 = "YES";
  if ((v12 & 1) == 0)
  {
    v13 = "NO";
  }

  v35 = [NSString stringWithFormat:@"\n\tmanager preferredUpdate: %@ (%p)\n\tmanager preferredUpdateError: %@\n\tmanager alternateDescriptor: %@ (%p)\n\tmanager alternateUpdateError: %@\n\tmanager isDelayingUpdates: %s\n\tmanager automaticUpdateScheduled: %s", v15, v18, v2, v4, v6, v8, v10, v13];

  if (v22)
  {
  }

  if (v24)
  {
  }

  if (v26)
  {
  }

  if (v28)
  {
  }

  if (v30)
  {
  }

  if (v32)
  {
  }

  return v35;
}

- (void)refreshState
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  [(SUSUISoftwareUpdateManager *)v2 refreshState];
}

- (void)scanForUpdatesWithOptions:(id)a3 andCompletion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddySUSUISoftwareUpdateManager *)v8 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v5 scanForUpdatesWithOptions:location[0] andCompletion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)scanForUpdatesCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v5 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v3 scanForUpdatesCompletion:location[0]];

  objc_storeStrong(location, 0);
}

- (id)prettyNameForUpdate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v7 underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)v3 prettyNameForUpdate:location[0]];

  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)enableUpdateButtonForError:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v7 underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)v3 enableUpdateButtonForError:location[0]];

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)humanReadableDescriptionForError:(id)a3 enableButton:(BOOL *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v5 = [(BuddySUSUISoftwareUpdateManager *)v10 underlyingSoftwareUpdateManager];
  v6 = [(SUSUISoftwareUpdateManager *)v5 humanReadableDescriptionForError:location[0] enableButton:v8];

  objc_storeStrong(location, 0);

  return v6;
}

- (id)humanReadableDescriptionForError:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v7 underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)v3 humanReadableTitleForError:location[0]];

  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)readyToResume
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 readyToResume];

  return v3 & 1;
}

- (BOOL)readyToDownloadUpdate:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddySUSUISoftwareUpdateManager *)v17 underlyingSoftwareUpdateManager];
  v5 = [(SUSUISoftwareUpdateManager *)v4 preferredUpdate];
  LOBYTE(v3) = [v3 isEqual:v5];

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager readyToDownloadUpdate:]");
      _os_log_debug_impl(&_mh_execute_header, oslog, v14, "%s returning readyToDownloadPreferredUpdate", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [(BuddySUSUISoftwareUpdateManager *)v17 underlyingSoftwareUpdateManager];
    v18 = [(SUSUISoftwareUpdateManager *)v6 readyToDownloadPreferredUpdate]& 1;

    v13 = 1;
  }

  else
  {
    v7 = location[0];
    v8 = [(BuddySUSUISoftwareUpdateManager *)v17 underlyingSoftwareUpdateManager];
    v9 = [(SUSUISoftwareUpdateManager *)v8 alternateUpdate];
    LOBYTE(v7) = [v7 isEqual:v9];

    if (v7)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v19, "[BuddySUSUISoftwareUpdateManager readyToDownloadUpdate:]");
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s returning readyToDownloadAlternateUpdate", v19, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      v10 = [(BuddySUSUISoftwareUpdateManager *)v17 underlyingSoftwareUpdateManager];
      v18 = [(SUSUISoftwareUpdateManager *)v10 readyToDownloadAlternateUpdate]& 1;

      v13 = 1;
    }

    else
    {
      v18 = 0;
      v13 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (BOOL)readyToDownloadPreferredUpdate
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  v3 = [(SUSUISoftwareUpdateManager *)v2 readyToDownloadPreferredUpdate];

  return v3 & 1;
}

- (void)resumeDownload
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  [(SUSUISoftwareUpdateManager *)v2 resumeDownload];
}

- (void)startDownloadAndInstall:(unint64_t)a3 update:(id)a4 withHandler:(id)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  v6 = [(BuddySUSUISoftwareUpdateManager *)v11 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v6 startDownloadAndInstall:v9 update:location withHandler:v7];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)setAutoInstall:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v5 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v3 setAutoInstall:location[0]];

  objc_storeStrong(location, 0);
}

- (void)startInstallWithHandler:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySUSUISoftwareUpdateManager *)v5 underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)v3 startInstallWithHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = a5;
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:didTransitionToState:fromState:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v8, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = [(BuddySUSUISoftwareUpdateManager *)v13 delegate];
  [v7 manager:v13 didTransitionToState:v11 fromState:v10];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 downloadProgressChanged:(id)a4 displayStyle:(int)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:downloadProgressChanged:displayStyle:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v12, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = [(BuddySUSUISoftwareUpdateManager *)v17 delegate];
  v8 = v17;
  v9 = [v15 descriptor];
  v10 = [v15 progress];
  [v10 normalizedPercentComplete];
  [(BuddySUSUISoftwareUpdateManagerDelegate *)v7 manager:v8 downloadDescriptor:v9 progressChangedToNormalizedPercentComplete:v14 displayStyle:?];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:promptForDevicePasscodeWithDescriptorCompletion:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v6, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddySUSUISoftwareUpdateManager *)v10 delegate];
  [v5 manager:v10 promptForDevicePasscodeWithDescriptorCompletion:v8];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 scanFoundUpdates:(id)a4 error:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:scanFoundUpdates:error:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v9, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [(BuddySUSUISoftwareUpdateManager *)v14 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v15, "[BuddySUSUISoftwareUpdateManager manager:scanFoundUpdates:error:]");
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s calling delegate", v15, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [v8 manager:v14 scanFoundUpdates:v12 error:v11];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)manager:(id)a3 shouldShowAlertForScanError:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:shouldShowAlertForScanError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v10 = [(BuddySUSUISoftwareUpdateManager *)v15 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v18, "[BuddySUSUISoftwareUpdateManager manager:shouldShowAlertForScanError:]");
      _os_log_debug_impl(&_mh_execute_header, v9, v8, "%s calling delegate", v18, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    v16 = [v10 manager:v15 shouldShowAlertForScanError:v13] & 1;
    v7 = 1;
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v17, "[BuddySUSUISoftwareUpdateManager manager:shouldShowAlertForScanError:]");
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s returning YES", v17, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    v16 = 1;
    v7 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (void)manager:(id)a3 downloadFinished:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:downloadFinished:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(BuddySUSUISoftwareUpdateManager *)v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:downloadFinished:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [v6 managerDownloadFinished:v11];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 download:(id)a4 failedWithError:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:download:failedWithError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v9, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [(BuddySUSUISoftwareUpdateManager *)v14 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v15, "[BuddySUSUISoftwareUpdateManager manager:download:failedWithError:]");
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s calling delegate", v15, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [v8 manager:v14 downloadFailedWithError:v11];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installStartedForUpdate:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:installStartedForUpdate:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(BuddySUSUISoftwareUpdateManager *)v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:installStartedForUpdate:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [v6 manager:v11 installStartedForUpdate:v9];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installFailedWithError:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:installFailedWithError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(BuddySUSUISoftwareUpdateManager *)v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:installFailedWithError:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [v6 manager:v11 installFailedWithError:v9];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BuddySUSUISoftwareUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end