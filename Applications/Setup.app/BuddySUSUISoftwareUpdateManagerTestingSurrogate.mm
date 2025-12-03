@interface BuddySUSUISoftwareUpdateManagerTestingSurrogate
+ (BOOL)enabled;
- (BOOL)_setStateAndCallDelegateWithOptionalState:(id)state behavior:(id)behavior;
- (BOOL)downloadProgressIsDone;
- (BOOL)enableUpdateButtonForError:(id)error;
- (BOOL)readyToDownloadUpdate:(id)update;
- (BuddySUSUISoftwareUpdateManagerTestingSurrogate)initWithDelegate:(id)delegate hostController:(id)controller;
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
- (void)_performInstallWithUpdate:(id)update;
- (void)_promptForPasscodeWithBehavior:(id)behavior completion:(id)completion;
- (void)_setDownloadProgress:(float)progress nextIncrement:(float)increment update:(id)update session:(id)session behavior:(id)behavior thenInstall:(BOOL)install;
- (void)_setStateAndCallDelegate:(int)delegate;
- (void)_startDownloadWithUpdate:(id)update thenInstall:(BOOL)install behavior:(id)behavior completion:(id)completion;
- (void)_startPerformDownloadWithUpdate:(id)update thenInstall:(BOOL)install;
- (void)_updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:(id)behavior;
- (void)refreshState;
- (void)scanForUpdatesCompletion:(id)completion;
- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion;
- (void)setAutoInstall:(id)install;
- (void)setServerFlowStyle:(id)style;
- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler;
- (void)startInstallWithHandler:(id)handler;
@end

@implementation BuddySUSUISoftwareUpdateManagerTestingSurrogate

+ (BOOL)enabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = +[BYTestingSurrogateBehaviorManager sharedInstance];
  domainSoftwareUpdate = [location[0] domainSoftwareUpdate];
  v3 = [location[0] enabledForDomain:domainSoftwareUpdate];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (BuddySUSUISoftwareUpdateManagerTestingSurrogate)initWithDelegate:(id)delegate hostController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  obj = 0;
  objc_storeStrong(&obj, controller);
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = BuddySUSUISoftwareUpdateManagerTestingSurrogate;
  selfCopy = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)&v13 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = selfCopy;
    objc_sync_enter(v6);
    v7 = +[BYTestingSurrogateBehaviorManager sharedInstance];
    v8 = *(selfCopy + 1);
    *(selfCopy + 1) = v7;

    v9 = &_dispatch_main_q;
    v10 = *(selfCopy + 2);
    *(selfCopy + 2) = v9;

    objc_storeWeak(selfCopy + 3, location[0]);
    objc_storeWeak(selfCopy + 4, obj);
    *(selfCopy + 11) = 0;
    objc_sync_exit(v6);
  }

  v11 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)setServerFlowStyle:(id)style
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, style);
  objc_storeStrong(location, 0);
}

- (int)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = self->_state;
  objc_sync_exit(selfCopy);

  return state;
}

- (NSString)progressString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (self->_clientUpdateError && self->_state >= 0xAu)
  {
    v6 = @"Unable to Install Fake Update";
  }

  else
  {
    state = self->_state;
    if (state == 6 || (state - 8) < 2)
    {
      v6 = [NSByteCountFormatter stringFromByteCount:[(SUDescriptor *)self->_clientUpdateToDownloadAndInstall downloadSize] countStyle:2];
    }

    else if ((state - 10) < 2)
    {
      v6 = @"Downloaded Fake Update";
    }

    else if ((state - 12) < 2)
    {
      if ([(NSString *)self->_downloadProgressPhase isEqualToString:kSUDownloadPhasePreparingForInstallation])
      {
        v6 = @"Preparing Fake Update…";
      }

      else
      {
        v6 = @"Downloading Fake Update…";
      }
    }

    else if (state == 14)
    {
      v6 = @"Paused Fake Update";
    }

    else
    {
      v6 = &stru_10032F900;
    }
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)actionString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = self->_state;
  if (state == 6 || (state - 8) < 2)
  {
    v6 = @"Fake Update Now";
  }

  else if ((state - 10) < 2)
  {
    v6 = @"Install Fake Update Now";
  }

  else if ((state - 12) < 2)
  {
    v6 = @"Downloading Fake Update…";
  }

  else if (state == 14)
  {
    v6 = @"Paused Fake Update";
  }

  else if ((state - 15) >= 2)
  {
    v6 = &stru_10032F900;
  }

  else
  {
    v6 = @"Installing Fake Update…";
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)downloadProgressIsDone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadProgressIsDone = self->_downloadProgressIsDone;
  objc_sync_exit(selfCopy);

  return downloadProgressIsDone;
}

- (id)downloadProgressPhase
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = self->_downloadProgressPhase;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)downloadDescriptor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = self->_downloadDescriptor;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)SUManagerIsDownloading:(id)downloading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  behaviorManager = selfCopy->_behaviorManager;
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v16 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"checkForPreexistingDownload" domain:domainSoftwareUpdate];

  [v16 duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001868D0;
  v12 = &unk_10032BC78;
  v13 = selfCopy;
  v14 = v16;
  v15 = location[0];
  dispatch_after(v6, completion_and_delegate_and_main_queue, &block);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)publicCheckpointLogDetails
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0;
  if (self->_clientUpdateToDownloadAndInstall)
  {
    v3 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)self prettyNameForUpdate:self->_clientUpdateToDownloadAndInstall];
    v18 = v3;
    v17 = 1;
  }

  else
  {
    v3 = @"N/A";
  }

  clientUpdateToDownloadAndInstall = self->_clientUpdateToDownloadAndInstall;
  v15 = 0;
  if (self->_scanPreferredDescriptor)
  {
    v5 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)self prettyNameForUpdate:self->_scanPreferredDescriptor];
    v16 = v5;
    v15 = 1;
  }

  else
  {
    v5 = @"N/A";
  }

  scanPreferredDescriptor = self->_scanPreferredDescriptor;
  v13 = 0;
  if (self->_scanAlternateDescriptor)
  {
    v7 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)self prettyNameForUpdate:self->_scanAlternateDescriptor];
    v14 = v7;
    v13 = 1;
  }

  else
  {
    v7 = @"N/A";
  }

  scanAlternateDescriptor = self->_scanAlternateDescriptor;
  v11 = 0;
  if (self->_downloadDescriptor)
  {
    v9 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)self prettyNameForUpdate:self->_downloadDescriptor];
    v12 = v9;
    v11 = 1;
  }

  else
  {
    v9 = @"N/A";
  }

  v20 = [NSString stringWithFormat:@"\n\t(testing surrogate)\n\tclientUpdateToDownloadAndInstall: %@ (%p)\n\tpreferredDescriptor: %@ (%p)\n\talternateDescriptor: %@ (%p)\n\tdownloadDescriptor: %@ (%p)", v3, clientUpdateToDownloadAndInstall, v5, scanPreferredDescriptor, v7, scanAlternateDescriptor, v9, self->_downloadDescriptor];
  if (v11)
  {
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v17)
  {
  }

  objc_sync_exit(selfCopy);

  return v20;
}

- (void)refreshState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!self->_state)
  {
    objc_exception_throw([NSException exceptionWithName:@"Testing surrogate refreshState currently assumes a non-idle state" reason:0 userInfo:0]);
  }

  objc_sync_exit(selfCopy);
}

- (id)errorForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v3 = selfCopy;
  objc_sync_enter(v3);
  if ([location[0] isEqual:selfCopy->_clientUpdateToDownloadAndInstall])
  {
    v8 = selfCopy->_clientUpdateError;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v3);

  objc_storeStrong(location, 0);
  v4 = v8;

  return v4;
}

- (BOOL)enableUpdateButtonForError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v4 = 0;
  if ([domain isEqualToString:@"BuddySUSUISoftwareUpdateManagerTestingSurrogate"])
  {
    v4 = [location[0] code] == 1;
  }

  v7 = v4;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_setStateAndCallDelegate:(int)delegate
{
  selfCopy = self;
  v7 = a2;
  delegateCopy = delegate;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (delegateCopy != selfCopy->_state)
  {
    state = selfCopy->_state;
    selfCopy->_state = delegateCopy;
    location = objc_loadWeakRetained(&selfCopy->_weakDelegate);
    [location manager:selfCopy didTransitionToState:delegateCopy fromState:state];
    objc_storeStrong(&location, 0);
  }

  objc_sync_exit(selfCopy2);
}

- (BOOL)_setStateAndCallDelegateWithOptionalState:(id)state behavior:(id)behavior
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v11 = 0;
  objc_storeStrong(&v11, behavior);
  results = [v11 results];
  v6 = [results objectForKeyedSubscript:@"state"];
  v7 = v6;
  if (!v6)
  {
    v6 = location[0];
  }

  v10 = v6;

  if (v10)
  {
    -[BuddySUSUISoftwareUpdateManagerTestingSurrogate _setStateAndCallDelegate:](selfCopy, "_setStateAndCallDelegate:", [v10 intValue]);
  }

  v8 = v10 != 0;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)prettyNameForUpdate:(id)update
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v12 = 0;
  if (!location[0])
  {
    objc_storeStrong(&v12, @"(nil passed to -prettyNameForUpdate:)"));
  }

  if (![v12 length])
  {
    humanReadableUpdateName = [location[0] humanReadableUpdateName];
    v4 = v12;
    v12 = humanReadableUpdateName;
  }

  if (![v12 length])
  {
    productVersion = [location[0] productVersion];
    v6 = productVersion;
    if (productVersion)
    {
      v7 = productVersion;
    }

    else
    {
      v7 = @"<no fake version specified>";
    }

    v8 = [NSString stringWithFormat:@"iOS %@", v7];
    v9 = v12;
    v12 = v8;
  }

  v10 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (id)humanReadableDescriptionForError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (location[0])
  {
    domain = [location[0] domain];
    v4 = 0;
    if ([domain isEqualToString:@"BuddySUSUISoftwareUpdateManagerTestingSurrogate"])
    {
      v4 = [location[0] code] == 0;
    }

    if (v4)
    {
      v10 = 0;
    }

    else
    {
      domain2 = [location[0] domain];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] code]);
      v10 = [NSString stringWithFormat:@"%@ code %@ (from testing surrogate)", domain2, v6];
    }
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  v7 = v10;

  return v7;
}

- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (button)
  {
    *button = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy enableUpdateButtonForError:location[0]];
  }

  button = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy humanReadableDescriptionForError:location[0], button];
  objc_storeStrong(location, 0);

  return button;
}

- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _setStateAndCallDelegate:1];
  behaviorManager = selfCopy->_behaviorManager;
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v18 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"scanForUpdates" domain:domainSoftwareUpdate];

  [v18 duration];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100187720;
  v14 = &unk_10032BC78;
  v15 = v18;
  v16 = selfCopy;
  v17 = v19;
  dispatch_after(v8, completion_and_delegate_and_main_queue, &v10);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)scanForUpdatesCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy scanForUpdatesWithOptions:0 andCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:(id)behavior
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, behavior);
  v3 = selfCopy;
  objc_sync_enter(v3);
  results = [location[0] results];
  v5 = [results objectForKeyedSubscript:@"readyToDownload"];

  if (v5)
  {
    results2 = [location[0] results];
    v7 = [results2 objectForKeyedSubscript:@"readyToDownload"];
    bOOLValue = [v7 BOOLValue];
    selfCopy->_clientUpdateReadyToDownload = bOOLValue & 1;
  }

  objc_sync_exit(v3);

  objc_storeStrong(location, 0);
}

- (BOOL)readyToDownloadUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v3 = selfCopy;
  objc_sync_enter(v3);
  v7 = ([location[0] isEqual:selfCopy->_clientUpdateToDownloadAndInstall] & 1) != 0 && selfCopy->_clientUpdateReadyToDownload;
  objc_sync_exit(v3);

  objc_storeStrong(location, 0);
  return v7;
}

- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler
{
  selfCopy = self;
  v27 = a2;
  installCopy = install;
  location = 0;
  objc_storeStrong(&location, update);
  v24 = 0;
  objc_storeStrong(&v24, handler);
  if (installCopy >= 2)
  {
    objc_exception_throw([NSException exceptionWithName:@"Installation type not supported by testing surrogate" reason:0 userInfo:0]);
  }

  v23 = installCopy == 1;
  behaviorManager = selfCopy->_behaviorManager;
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v22 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"startDownload" domain:domainSoftwareUpdate];

  results = [v22 results];
  v9 = [results objectForKeyedSubscript:@"promptForPasscode"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = selfCopy;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100188224;
    v16 = &unk_10032BBB0;
    v17 = selfCopy;
    v18 = location;
    v21 = v23;
    v19 = v22;
    v20 = v24;
    [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v11 _promptForPasscodeWithBehavior:v22 completion:&v12];
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _startDownloadWithUpdate:location thenInstall:v23 behavior:v22 completion:v24];
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

- (void)_promptForPasscodeWithBehavior:(id)behavior completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, behavior);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  [location[0] duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001883A8;
  v12 = &unk_10032AFD0;
  v13 = selfCopy;
  v14 = v15;
  dispatch_after(v6, completion_and_delegate_and_main_queue, &v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_startDownloadWithUpdate:(id)update thenInstall:(BOOL)install behavior:(id)behavior completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  installCopy = install;
  v23 = 0;
  objc_storeStrong(&v23, behavior);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  [v23 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001886C4;
  v16 = &unk_10032BBB0;
  v17 = v23;
  v18 = selfCopy;
  v19 = location[0];
  v21 = installCopy;
  v20 = v22;
  dispatch_after(v10, completion_and_delegate_and_main_queue, &block);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_startPerformDownloadWithUpdate:(id)update thenInstall:(BOOL)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  installCopy = install;
  dispatch_assert_queue_V2(selfCopy[2]);
  v5 = selfCopy[1];
  domainSoftwareUpdate = [v5 domainSoftwareUpdate];
  v9 = [v5 acquireNextBehaviorWithName:@"performDownload" domain:domainSoftwareUpdate];

  LODWORD(v7) = 0;
  LODWORD(v8) = 1036831949;
  [(dispatch_queue_t *)selfCopy _setDownloadProgress:location[0] nextIncrement:selfCopy[6] update:v9 session:installCopy behavior:v7 thenInstall:v8];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setDownloadProgress:(float)progress nextIncrement:(float)increment update:(id)update session:(id)session behavior:(id)behavior thenInstall:(BOOL)install
{
  selfCopy = self;
  v56 = a2;
  progressCopy = progress;
  incrementCopy = increment;
  location = 0;
  objc_storeStrong(&location, update);
  v52 = 0;
  objc_storeStrong(&v52, session);
  v51 = 0;
  objc_storeStrong(&v51, behavior);
  installCopy = install;
  dispatch_assert_queue_V2(selfCopy->_completion_and_delegate_and_main_queue);
  if ([v52 isEqual:selfCopy->_clientDownloadAndInstallSession])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_weakDelegate);
    results = [v51 results];
    v47 = [results objectForKeyedSubscript:@"progressBeforeError"];

    error = [v51 error];
    v13 = 0;
    if (error)
    {
      v14 = error;
      [v47 floatValue];
      error = v14;
      v13 = v15 <= progressCopy;
    }

    if (v13)
    {
      v46 = 0;
      v16 = selfCopy;
      objc_sync_enter(v16);
      error2 = [v51 error];
      clientUpdateError = selfCopy->_clientUpdateError;
      selfCopy->_clientUpdateError = error2;

      [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:v51];
      objc_storeStrong(&selfCopy->_downloadDescriptor, 0);
      objc_storeStrong(&selfCopy->_downloadProgressPhase, 0);
      v46 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _setStateAndCallDelegateWithOptionalState:0 behavior:v51];
      objc_sync_exit(v16);

      if ((v46 & 1) == 0)
      {
        [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy scanForUpdatesCompletion:&stru_10032DF98];
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = selfCopy;
        error3 = [v51 error];
        [WeakRetained manager:v19 downloadFailedWithError:error3];
      }

      v49 = 1;
    }

    else
    {
      v45 = 0;
      v21 = selfCopy;
      objc_sync_enter(v21);
      [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:v51];
      if (progressCopy < 1.0)
      {
        if (progressCopy < 0.5)
        {
          if (progressCopy > 0.0)
          {
            objc_storeStrong(&selfCopy->_downloadProgressPhase, kSUDownloadPhaseUpdateFetching);
          }
        }

        else
        {
          objc_storeStrong(&selfCopy->_downloadProgressPhase, kSUDownloadPhasePreparingForInstallation);
        }
      }

      else
      {
        selfCopy->_downloadProgressIsDone = 1;
        objc_storeStrong(&selfCopy->_downloadProgressPhase, kSUDownloadPhasePreparingForInstallation);
      }

      v22 = progressCopy;
      v42 = 0;
      v23 = 1;
      if (progressCopy < 1.0)
      {
        error4 = [v51 error];
        v42 = 1;
        v23 = 0;
        if (error4)
        {
          [v47 floatValue];
          v23 = *&v22 <= (progressCopy + incrementCopy);
        }
      }

      if (v42)
      {
      }

      v44 = v23;
      if (v23)
      {
        v45 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy _setStateAndCallDelegateWithOptionalState:0 behavior:v51, v22];
      }

      objc_sync_exit(v21);

      if (objc_opt_respondsToSelector())
      {
        v41 = 0;
        v24 = selfCopy;
        objc_sync_enter(v24);
        if (selfCopy->_state == 14)
        {
          v41 = 2;
        }

        else
        {
          v41 = 1;
        }

        objc_sync_exit(v24);

        *&v25 = progressCopy;
        [WeakRetained manager:selfCopy downloadDescriptor:location progressChangedToNormalizedPercentComplete:v41 displayStyle:v25];
      }

      if (progressCopy < 1.0)
      {
        [v51 duration];
        v27 = dispatch_time(0, (v26 * 1000000000.0));
        completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
        v29 = _NSConcreteStackBlock;
        v30 = -1073741824;
        v31 = 0;
        v32 = sub_1001890E0;
        v33 = &unk_10032DFE0;
        v38 = progressCopy;
        v39 = incrementCopy;
        v34 = selfCopy;
        v35 = location;
        v36 = v52;
        v37 = v51;
        v40 = installCopy;
        dispatch_after(v27, completion_and_delegate_and_main_queue, &v29);
        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v34, 0);
        v49 = 0;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained managerDownloadFinished:selfCopy];
        }

        if (installCopy && (v45 & 1) == 0)
        {
          [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)selfCopy startInstallWithHandler:&stru_10032DFB8];
        }

        v49 = 1;
      }
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&WeakRetained, 0);
  }

  else
  {
    v49 = 1;
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&location, 0);
}

- (void)startInstallWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v19 = 0;
  v3 = selfCopy;
  objc_sync_enter(v3);
  objc_storeStrong(&v19, selfCopy->_clientUpdateToDownloadAndInstall);
  if (!v19)
  {
    objc_exception_throw([NSException exceptionWithName:@"Installation requested in testing surrogate without update" reason:0 userInfo:0]);
  }

  objc_sync_exit(v3);

  behaviorManager = selfCopy->_behaviorManager;
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v18 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"startInstall" domain:domainSoftwareUpdate];

  [v18 duration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100189420;
  v13 = &unk_10032D218;
  v14 = v18;
  v15 = selfCopy;
  v17 = location[0];
  v16 = v19;
  dispatch_after(v7, completion_and_delegate_and_main_queue, &block);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_performInstallWithUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  behaviorManager = selfCopy->_behaviorManager;
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v15 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"performInstall" domain:domainSoftwareUpdate];

  [v15 duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = selfCopy->_completion_and_delegate_and_main_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100189768;
  v12 = &unk_10032B838;
  v13 = v15;
  v14 = selfCopy;
  dispatch_after(v6, completion_and_delegate_and_main_queue, &v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutoInstall:(id)install
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  objc_exception_throw([NSException exceptionWithName:@"Testing surrogate does not support setAutoInstall:" reason:0 userInfo:0]);
}

@end