@interface BuddySUSUISoftwareUpdateManager
+ (id)createWithDelegate:(id)delegate hostController:(id)controller;
- (BOOL)downloadProgressIsDone;
- (BOOL)enableUpdateButtonForError:(id)error;
- (BOOL)manager:(id)manager shouldShowAlertForScanError:(id)error;
- (BOOL)readyToDownloadPreferredUpdate;
- (BOOL)readyToDownloadUpdate:(id)update;
- (BOOL)readyToResume;
- (BuddySUSUISoftwareUpdateManager)initWithDelegate:(id)delegate hostController:(id)controller;
- (BuddySUSUISoftwareUpdateManagerDelegate)delegate;
- (NSString)actionString;
- (NSString)progressString;
- (id)downloadDescriptor;
- (id)downloadProgressPhase;
- (id)errorForUpdate:(id)update;
- (id)humanReadableDescriptionForError:(id)error;
- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button;
- (id)prettyNameForUpdate:(id)update;
- (id)publicCheckpointLogDetails;
- (int)state;
- (void)SUManagerIsDownloading:(id)downloading;
- (void)manager:(id)manager didTransitionToState:(int)state fromState:(int)fromState;
- (void)manager:(id)manager download:(id)download failedWithError:(id)error;
- (void)manager:(id)manager downloadFinished:(id)finished;
- (void)manager:(id)manager downloadProgressChanged:(id)changed displayStyle:(int)style;
- (void)manager:(id)manager installFailedWithError:(id)error;
- (void)manager:(id)manager installStartedForUpdate:(id)update;
- (void)manager:(id)manager promptForDevicePasscodeWithDescriptorCompletion:(id)completion;
- (void)manager:(id)manager scanFoundUpdates:(id)updates error:(id)error;
- (void)refreshState;
- (void)resumeDownload;
- (void)scanForUpdatesCompletion:(id)completion;
- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion;
- (void)setAllowCellularOverride:(BOOL)override;
- (void)setAutoInstall:(id)install;
- (void)setBypassTermsAndConditions:(BOOL)conditions;
- (void)setClientIsBuddy:(BOOL)buddy;
- (void)setServerFlowStyle:(id)style;
- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler;
- (void)startInstallWithHandler:(id)handler;
@end

@implementation BuddySUSUISoftwareUpdateManager

+ (id)createWithDelegate:(id)delegate hostController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v9 = 0;
  objc_storeStrong(&v9, controller);
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

- (BuddySUSUISoftwareUpdateManager)initWithDelegate:(id)delegate hostController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v11 = 0;
  objc_storeStrong(&v11, controller);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = BuddySUSUISoftwareUpdateManager;
  selfCopy = [(BuddySUSUISoftwareUpdateManager *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setDelegate:location[0]];
    v6 = objc_alloc(sub_1000B1D14());
    v7 = [v6 initWithDelegate:selfCopy hostController:v11];
    [selfCopy setUnderlyingSoftwareUpdateManager:v7];
  }

  v8 = selfCopy;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)setAllowCellularOverride:(BOOL)override
{
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager setAllowCellularOverride:override];
}

- (void)setClientIsBuddy:(BOOL)buddy
{
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager setClientIsBuddy:buddy];
}

- (void)setBypassTermsAndConditions:(BOOL)conditions
{
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager setBypassTermsAndConditions:conditions];
}

- (void)setServerFlowStyle:(id)style
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, style);
  v3 = location[0];
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager setServerFlowStyle:v3];

  objc_storeStrong(location, 0);
}

- (int)state
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  state = [(SUSUISoftwareUpdateManager *)v2 state];

  return state;
}

- (NSString)progressString
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  progressString = [(SUSUISoftwareUpdateManager *)v2 progressString];

  return progressString;
}

- (NSString)actionString
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  actionString = [(SUSUISoftwareUpdateManager *)v2 actionString];

  return actionString;
}

- (BOOL)downloadProgressIsDone
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  download = [(SUSUISoftwareUpdateManager *)v2 download];
  progress = [download progress];
  isDone = [progress isDone];

  return isDone & 1;
}

- (id)downloadProgressPhase
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  download = [(SUSUISoftwareUpdateManager *)v2 download];
  progress = [download progress];
  phase = [progress phase];

  return phase;
}

- (id)downloadDescriptor
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  download = [(SUSUISoftwareUpdateManager *)v2 download];
  descriptor = [download descriptor];

  return descriptor;
}

- (void)SUManagerIsDownloading:(id)downloading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  sUManager = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager SUManager];
  [sUManager isDownloading:location[0]];

  objc_storeStrong(location, 0);
}

- (id)errorForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v20 = 0;
  v3 = location[0];
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  preferredUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager preferredUpdate];
  LOBYTE(v3) = [v3 isEqual:preferredUpdate];

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
    underlyingSoftwareUpdateManager2 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
    preferredUpdateError = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager2 preferredUpdateError];
    v8 = v20;
    v20 = preferredUpdateError;
  }

  else
  {
    v9 = location[0];
    underlyingSoftwareUpdateManager3 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
    alternateUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager3 alternateUpdate];
    LOBYTE(v9) = [v9 isEqual:alternateUpdate];

    if (v9)
    {
      v17 = _BYLoggingFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v23, "[BuddySUSUISoftwareUpdateManager errorForUpdate:]");
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s returning alternateUpdateError", v23, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      underlyingSoftwareUpdateManager4 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
      alternateUpdateError = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager4 alternateUpdateError];
      v14 = v20;
      v20 = alternateUpdateError;
    }
  }

  v15 = v20;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v15;
}

- (id)publicCheckpointLogDetails
{
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  preferredUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager preferredUpdate];
  if (preferredUpdate)
  {
    underlyingSoftwareUpdateManager2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
    v32 = 1;
    preferredUpdate2 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager2 preferredUpdate];
    v30 = 1;
    humanReadableUpdateName = [preferredUpdate2 humanReadableUpdateName];
    v29 = humanReadableUpdateName;
    v28 = 1;
  }

  else
  {
    humanReadableUpdateName = @"N/A";
  }

  underlyingSoftwareUpdateManager3 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  preferredUpdate3 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager3 preferredUpdate];
  underlyingSoftwareUpdateManager4 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  preferredUpdateError = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager4 preferredUpdateError];
  underlyingSoftwareUpdateManager5 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  alternateUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager5 alternateUpdate];
  v26 = 0;
  v24 = 0;
  v22 = 0;
  if (alternateUpdate)
  {
    underlyingSoftwareUpdateManager6 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
    v26 = 1;
    alternateUpdate2 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager6 alternateUpdate];
    v24 = 1;
    humanReadableUpdateName2 = [alternateUpdate2 humanReadableUpdateName];
    v23 = humanReadableUpdateName2;
    v22 = 1;
  }

  else
  {
    humanReadableUpdateName2 = @"N/A";
  }

  underlyingSoftwareUpdateManager7 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  alternateUpdate3 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager7 alternateUpdate];
  underlyingSoftwareUpdateManager8 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  alternateUpdateError = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager8 alternateUpdateError];
  underlyingSoftwareUpdateManager9 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  if (([(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager9 isDelayingUpdates]& 1) != 0)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  underlyingSoftwareUpdateManager10 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager];
  automaticUpdateScheduled = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager10 automaticUpdateScheduled];
  v13 = "YES";
  if ((automaticUpdateScheduled & 1) == 0)
  {
    v13 = "NO";
  }

  v35 = [NSString stringWithFormat:@"\n\tmanager preferredUpdate: %@ (%p)\n\tmanager preferredUpdateError: %@\n\tmanager alternateDescriptor: %@ (%p)\n\tmanager alternateUpdateError: %@\n\tmanager isDelayingUpdates: %s\n\tmanager automaticUpdateScheduled: %s", humanReadableUpdateName, preferredUpdate3, preferredUpdateError, humanReadableUpdateName2, alternateUpdate3, alternateUpdateError, v10, v13];

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

- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager scanForUpdatesWithOptions:location[0] andCompletion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)scanForUpdatesCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager scanForUpdatesCompletion:location[0]];

  objc_storeStrong(location, 0);
}

- (id)prettyNameForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager prettyNameForUpdate:location[0]];

  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)enableUpdateButtonForError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager enableUpdateButtonForError:location[0]];

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  buttonCopy = button;
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  v6 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager humanReadableDescriptionForError:location[0] enableButton:buttonCopy];

  objc_storeStrong(location, 0);

  return v6;
}

- (id)humanReadableDescriptionForError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  v4 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager humanReadableTitleForError:location[0]];

  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)readyToResume
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  readyToResume = [(SUSUISoftwareUpdateManager *)v2 readyToResume];

  return readyToResume & 1;
}

- (BOOL)readyToDownloadUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v3 = location[0];
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  preferredUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager preferredUpdate];
  LOBYTE(v3) = [v3 isEqual:preferredUpdate];

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
    underlyingSoftwareUpdateManager2 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
    v18 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager2 readyToDownloadPreferredUpdate]& 1;

    v13 = 1;
  }

  else
  {
    v7 = location[0];
    underlyingSoftwareUpdateManager3 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
    alternateUpdate = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager3 alternateUpdate];
    LOBYTE(v7) = [v7 isEqual:alternateUpdate];

    if (v7)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v19, "[BuddySUSUISoftwareUpdateManager readyToDownloadUpdate:]");
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s returning readyToDownloadAlternateUpdate", v19, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      underlyingSoftwareUpdateManager4 = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
      v18 = [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager4 readyToDownloadAlternateUpdate]& 1;

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
  readyToDownloadPreferredUpdate = [(SUSUISoftwareUpdateManager *)v2 readyToDownloadPreferredUpdate];

  return readyToDownloadPreferredUpdate & 1;
}

- (void)resumeDownload
{
  v2 = [(BuddySUSUISoftwareUpdateManager *)self underlyingSoftwareUpdateManager:a2];
  [(SUSUISoftwareUpdateManager *)v2 resumeDownload];
}

- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler
{
  selfCopy = self;
  v10 = a2;
  installCopy = install;
  location = 0;
  objc_storeStrong(&location, update);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager startDownloadAndInstall:installCopy update:location withHandler:v7];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)setAutoInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager setAutoInstall:location[0]];

  objc_storeStrong(location, 0);
}

- (void)startInstallWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  underlyingSoftwareUpdateManager = [(BuddySUSUISoftwareUpdateManager *)selfCopy underlyingSoftwareUpdateManager];
  [(SUSUISoftwareUpdateManager *)underlyingSoftwareUpdateManager startInstallWithHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager didTransitionToState:(int)state fromState:(int)fromState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  stateCopy = state;
  fromStateCopy = fromState;
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:didTransitionToState:fromState:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v8, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  [delegate manager:selfCopy didTransitionToState:stateCopy fromState:fromStateCopy];
  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager downloadProgressChanged:(id)changed displayStyle:(int)style
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v15 = 0;
  objc_storeStrong(&v15, changed);
  styleCopy = style;
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:downloadProgressChanged:displayStyle:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v12, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  v8 = selfCopy;
  descriptor = [v15 descriptor];
  progress = [v15 progress];
  [progress normalizedPercentComplete];
  [(BuddySUSUISoftwareUpdateManagerDelegate *)delegate manager:v8 downloadDescriptor:descriptor progressChangedToNormalizedPercentComplete:styleCopy displayStyle:?];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager promptForDevicePasscodeWithDescriptorCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:promptForDevicePasscodeWithDescriptorCompletion:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v6, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  [delegate manager:selfCopy promptForDevicePasscodeWithDescriptorCompletion:v8];
  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager scanFoundUpdates:(id)updates error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v12 = 0;
  objc_storeStrong(&v12, updates);
  v11 = 0;
  objc_storeStrong(&v11, error);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:scanFoundUpdates:error:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v9, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v15, "[BuddySUSUISoftwareUpdateManager manager:scanFoundUpdates:error:]");
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s calling delegate", v15, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [delegate manager:selfCopy scanFoundUpdates:v12 error:v11];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)manager:(id)manager shouldShowAlertForScanError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v13 = 0;
  objc_storeStrong(&v13, error);
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:shouldShowAlertForScanError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
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
    v16 = [delegate manager:selfCopy shouldShowAlertForScanError:v13] & 1;
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

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (void)manager:(id)manager downloadFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, finished);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:downloadFinished:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:downloadFinished:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [delegate managerDownloadFinished:selfCopy];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager download:(id)download failedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v12 = 0;
  objc_storeStrong(&v12, download);
  v11 = 0;
  objc_storeStrong(&v11, error);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:download:failedWithError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v9, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v15, "[BuddySUSUISoftwareUpdateManager manager:download:failedWithError:]");
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s calling delegate", v15, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [delegate manager:selfCopy downloadFailedWithError:v11];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager installStartedForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, update);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:installStartedForUpdate:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:installStartedForUpdate:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [delegate manager:selfCopy installStartedForUpdate:v9];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager installFailedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, error);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B25DC(buf, "[BuddySUSUISoftwareUpdateManager manager:installFailedWithError:]");
    _os_log_debug_impl(&_mh_execute_header, oslog, v7, "%s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(BuddySUSUISoftwareUpdateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v12, "[BuddySUSUISoftwareUpdateManager manager:installFailedWithError:]");
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s calling delegate", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    [delegate manager:selfCopy installFailedWithError:v9];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BuddySUSUISoftwareUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end