@interface BuddySUSUISoftwareUpdateManagerTestingSurrogate
+ (BOOL)enabled;
- (BOOL)_setStateAndCallDelegateWithOptionalState:(id)a3 behavior:(id)a4;
- (BOOL)downloadProgressIsDone;
- (BOOL)enableUpdateButtonForError:(id)a3;
- (BOOL)readyToDownloadUpdate:(id)a3;
- (BuddySUSUISoftwareUpdateManagerTestingSurrogate)initWithDelegate:(id)a3 hostController:(id)a4;
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
- (void)_performInstallWithUpdate:(id)a3;
- (void)_promptForPasscodeWithBehavior:(id)a3 completion:(id)a4;
- (void)_setDownloadProgress:(float)a3 nextIncrement:(float)a4 update:(id)a5 session:(id)a6 behavior:(id)a7 thenInstall:(BOOL)a8;
- (void)_setStateAndCallDelegate:(int)a3;
- (void)_startDownloadWithUpdate:(id)a3 thenInstall:(BOOL)a4 behavior:(id)a5 completion:(id)a6;
- (void)_startPerformDownloadWithUpdate:(id)a3 thenInstall:(BOOL)a4;
- (void)_updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:(id)a3;
- (void)refreshState;
- (void)scanForUpdatesCompletion:(id)a3;
- (void)scanForUpdatesWithOptions:(id)a3 andCompletion:(id)a4;
- (void)setAutoInstall:(id)a3;
- (void)setServerFlowStyle:(id)a3;
- (void)startDownloadAndInstall:(unint64_t)a3 update:(id)a4 withHandler:(id)a5;
- (void)startInstallWithHandler:(id)a3;
@end

@implementation BuddySUSUISoftwareUpdateManagerTestingSurrogate

+ (BOOL)enabled
{
  location[2] = a1;
  location[1] = a2;
  location[0] = +[BYTestingSurrogateBehaviorManager sharedInstance];
  v2 = [location[0] domainSoftwareUpdate];
  v3 = [location[0] enabledForDomain:v2];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (BuddySUSUISoftwareUpdateManagerTestingSurrogate)initWithDelegate:(id)a3 hostController:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v16;
  v16 = 0;
  v13.receiver = v5;
  v13.super_class = BuddySUSUISoftwareUpdateManagerTestingSurrogate;
  v16 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)&v13 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v6 = v16;
    objc_sync_enter(v6);
    v7 = +[BYTestingSurrogateBehaviorManager sharedInstance];
    v8 = *(v16 + 1);
    *(v16 + 1) = v7;

    v9 = &_dispatch_main_q;
    v10 = *(v16 + 2);
    *(v16 + 2) = v9;

    objc_storeWeak(v16 + 3, location[0]);
    objc_storeWeak(v16 + 4, obj);
    *(v16 + 11) = 0;
    objc_sync_exit(v6);
  }

  v11 = v16;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v11;
}

- (void)setServerFlowStyle:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (int)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = self->_state;
  objc_sync_exit(v2);

  return state;
}

- (NSString)progressString
{
  v2 = self;
  objc_sync_enter(v2);
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

  objc_sync_exit(v2);

  return v6;
}

- (NSString)actionString
{
  v2 = self;
  objc_sync_enter(v2);
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

  objc_sync_exit(v2);

  return v6;
}

- (BOOL)downloadProgressIsDone
{
  v2 = self;
  objc_sync_enter(v2);
  downloadProgressIsDone = self->_downloadProgressIsDone;
  objc_sync_exit(v2);

  return downloadProgressIsDone;
}

- (id)downloadProgressPhase
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = self->_downloadProgressPhase;
  objc_sync_exit(v2);

  return v3;
}

- (id)downloadDescriptor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = self->_downloadDescriptor;
  objc_sync_exit(v2);

  return v3;
}

- (void)SUManagerIsDownloading:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  behaviorManager = v18->_behaviorManager;
  v4 = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v16 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"checkForPreexistingDownload" domain:v4];

  [v16 duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = v18->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001868D0;
  v12 = &unk_10032BC78;
  v13 = v18;
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
  v2 = self;
  objc_sync_enter(v2);
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

  objc_sync_exit(v2);

  return v20;
}

- (void)refreshState
{
  v2 = self;
  objc_sync_enter(v2);
  if (!self->_state)
  {
    objc_exception_throw([NSException exceptionWithName:@"Testing surrogate refreshState currently assumes a non-idle state" reason:0 userInfo:0]);
  }

  objc_sync_exit(v2);
}

- (id)errorForUpdate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  objc_sync_enter(v3);
  if ([location[0] isEqual:v7->_clientUpdateToDownloadAndInstall])
  {
    v8 = v7->_clientUpdateError;
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

- (BOOL)enableUpdateButtonForError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] domain];
  v4 = 0;
  if ([v3 isEqualToString:@"BuddySUSUISoftwareUpdateManagerTestingSurrogate"])
  {
    v4 = [location[0] code] == 1;
  }

  v7 = v4;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_setStateAndCallDelegate:(int)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v3 = self;
  objc_sync_enter(v3);
  if (v6 != v8->_state)
  {
    state = v8->_state;
    v8->_state = v6;
    location = objc_loadWeakRetained(&v8->_weakDelegate);
    [location manager:v8 didTransitionToState:v6 fromState:state];
    objc_storeStrong(&location, 0);
  }

  objc_sync_exit(v3);
}

- (BOOL)_setStateAndCallDelegateWithOptionalState:(id)a3 behavior:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v5 = [v11 results];
  v6 = [v5 objectForKeyedSubscript:@"state"];
  v7 = v6;
  if (!v6)
  {
    v6 = location[0];
  }

  v10 = v6;

  if (v10)
  {
    -[BuddySUSUISoftwareUpdateManagerTestingSurrogate _setStateAndCallDelegate:](v13, "_setStateAndCallDelegate:", [v10 intValue]);
  }

  v8 = v10 != 0;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)prettyNameForUpdate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  if (!location[0])
  {
    objc_storeStrong(&v12, @"(nil passed to -prettyNameForUpdate:)"));
  }

  if (![v12 length])
  {
    v3 = [location[0] humanReadableUpdateName];
    v4 = v12;
    v12 = v3;
  }

  if (![v12 length])
  {
    v5 = [location[0] productVersion];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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

- (id)humanReadableDescriptionForError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [location[0] domain];
    v4 = 0;
    if ([v3 isEqualToString:@"BuddySUSUISoftwareUpdateManagerTestingSurrogate"])
    {
      v4 = [location[0] code] == 0;
    }

    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v5 = [location[0] domain];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] code]);
      v10 = [NSString stringWithFormat:@"%@ code %@ (from testing surrogate)", v5, v6];
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

- (id)humanReadableDescriptionForError:(id)a3 enableButton:(BOOL *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    *a4 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v8 enableUpdateButtonForError:location[0]];
  }

  v5 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v8 humanReadableDescriptionForError:location[0], a4];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)scanForUpdatesWithOptions:(id)a3 andCompletion:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v21 _setStateAndCallDelegate:1];
  behaviorManager = v21->_behaviorManager;
  v6 = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v18 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"scanForUpdates" domain:v6];

  [v18 duration];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  completion_and_delegate_and_main_queue = v21->_completion_and_delegate_and_main_queue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100187720;
  v14 = &unk_10032BC78;
  v15 = v18;
  v16 = v21;
  v17 = v19;
  dispatch_after(v8, completion_and_delegate_and_main_queue, &v10);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)scanForUpdatesCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v4 scanForUpdatesWithOptions:0 andCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  objc_sync_enter(v3);
  v4 = [location[0] results];
  v5 = [v4 objectForKeyedSubscript:@"readyToDownload"];

  if (v5)
  {
    v6 = [location[0] results];
    v7 = [v6 objectForKeyedSubscript:@"readyToDownload"];
    v8 = [v7 BOOLValue];
    v10->_clientUpdateReadyToDownload = v8 & 1;
  }

  objc_sync_exit(v3);

  objc_storeStrong(location, 0);
}

- (BOOL)readyToDownloadUpdate:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  objc_sync_enter(v3);
  v7 = ([location[0] isEqual:v6->_clientUpdateToDownloadAndInstall] & 1) != 0 && v6->_clientUpdateReadyToDownload;
  objc_sync_exit(v3);

  objc_storeStrong(location, 0);
  return v7;
}

- (void)startDownloadAndInstall:(unint64_t)a3 update:(id)a4 withHandler:(id)a5
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  if (v26 >= 2)
  {
    objc_exception_throw([NSException exceptionWithName:@"Installation type not supported by testing surrogate" reason:0 userInfo:0]);
  }

  v23 = v26 == 1;
  behaviorManager = v28->_behaviorManager;
  v7 = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v22 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"startDownload" domain:v7];

  v8 = [v22 results];
  v9 = [v8 objectForKeyedSubscript:@"promptForPasscode"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = v28;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100188224;
    v16 = &unk_10032BBB0;
    v17 = v28;
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
    [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v28 _startDownloadWithUpdate:location thenInstall:v23 behavior:v22 completion:v24];
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

- (void)_promptForPasscodeWithBehavior:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  [location[0] duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = v17->_completion_and_delegate_and_main_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001883A8;
  v12 = &unk_10032AFD0;
  v13 = v17;
  v14 = v15;
  dispatch_after(v6, completion_and_delegate_and_main_queue, &v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_startDownloadWithUpdate:(id)a3 thenInstall:(BOOL)a4 behavior:(id)a5 completion:(id)a6
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  [v23 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  completion_and_delegate_and_main_queue = v26->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001886C4;
  v16 = &unk_10032BBB0;
  v17 = v23;
  v18 = v26;
  v19 = location[0];
  v21 = v24;
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

- (void)_startPerformDownloadWithUpdate:(id)a3 thenInstall:(BOOL)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  dispatch_assert_queue_V2(v12[2]);
  v5 = v12[1];
  v6 = [v5 domainSoftwareUpdate];
  v9 = [v5 acquireNextBehaviorWithName:@"performDownload" domain:v6];

  LODWORD(v7) = 0;
  LODWORD(v8) = 1036831949;
  [(dispatch_queue_t *)v12 _setDownloadProgress:location[0] nextIncrement:v12[6] update:v9 session:v10 behavior:v7 thenInstall:v8];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setDownloadProgress:(float)a3 nextIncrement:(float)a4 update:(id)a5 session:(id)a6 behavior:(id)a7 thenInstall:(BOOL)a8
{
  v57 = self;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v52 = 0;
  objc_storeStrong(&v52, a6);
  v51 = 0;
  objc_storeStrong(&v51, a7);
  v50 = a8;
  dispatch_assert_queue_V2(v57->_completion_and_delegate_and_main_queue);
  if ([v52 isEqual:v57->_clientDownloadAndInstallSession])
  {
    WeakRetained = objc_loadWeakRetained(&v57->_weakDelegate);
    v11 = [v51 results];
    v47 = [v11 objectForKeyedSubscript:@"progressBeforeError"];

    v12 = [v51 error];
    v13 = 0;
    if (v12)
    {
      v14 = v12;
      [v47 floatValue];
      v12 = v14;
      v13 = v15 <= v55;
    }

    if (v13)
    {
      v46 = 0;
      v16 = v57;
      objc_sync_enter(v16);
      v17 = [v51 error];
      clientUpdateError = v57->_clientUpdateError;
      v57->_clientUpdateError = v17;

      [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:v51];
      objc_storeStrong(&v57->_downloadDescriptor, 0);
      objc_storeStrong(&v57->_downloadProgressPhase, 0);
      v46 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 _setStateAndCallDelegateWithOptionalState:0 behavior:v51];
      objc_sync_exit(v16);

      if ((v46 & 1) == 0)
      {
        [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 scanForUpdatesCompletion:&stru_10032DF98];
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = v57;
        v20 = [v51 error];
        [WeakRetained manager:v19 downloadFailedWithError:v20];
      }

      v49 = 1;
    }

    else
    {
      v45 = 0;
      v21 = v57;
      objc_sync_enter(v21);
      [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:v51];
      if (v55 < 1.0)
      {
        if (v55 < 0.5)
        {
          if (v55 > 0.0)
          {
            objc_storeStrong(&v57->_downloadProgressPhase, kSUDownloadPhaseUpdateFetching);
          }
        }

        else
        {
          objc_storeStrong(&v57->_downloadProgressPhase, kSUDownloadPhasePreparingForInstallation);
        }
      }

      else
      {
        v57->_downloadProgressIsDone = 1;
        objc_storeStrong(&v57->_downloadProgressPhase, kSUDownloadPhasePreparingForInstallation);
      }

      v22 = v55;
      v42 = 0;
      v23 = 1;
      if (v55 < 1.0)
      {
        v43 = [v51 error];
        v42 = 1;
        v23 = 0;
        if (v43)
        {
          [v47 floatValue];
          v23 = *&v22 <= (v55 + v54);
        }
      }

      if (v42)
      {
      }

      v44 = v23;
      if (v23)
      {
        v45 = [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 _setStateAndCallDelegateWithOptionalState:0 behavior:v51, v22];
      }

      objc_sync_exit(v21);

      if (objc_opt_respondsToSelector())
      {
        v41 = 0;
        v24 = v57;
        objc_sync_enter(v24);
        if (v57->_state == 14)
        {
          v41 = 2;
        }

        else
        {
          v41 = 1;
        }

        objc_sync_exit(v24);

        *&v25 = v55;
        [WeakRetained manager:v57 downloadDescriptor:location progressChangedToNormalizedPercentComplete:v41 displayStyle:v25];
      }

      if (v55 < 1.0)
      {
        [v51 duration];
        v27 = dispatch_time(0, (v26 * 1000000000.0));
        completion_and_delegate_and_main_queue = v57->_completion_and_delegate_and_main_queue;
        v29 = _NSConcreteStackBlock;
        v30 = -1073741824;
        v31 = 0;
        v32 = sub_1001890E0;
        v33 = &unk_10032DFE0;
        v38 = v55;
        v39 = v54;
        v34 = v57;
        v35 = location;
        v36 = v52;
        v37 = v51;
        v40 = v50;
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
          [WeakRetained managerDownloadFinished:v57];
        }

        if (v50 && (v45 & 1) == 0)
        {
          [(BuddySUSUISoftwareUpdateManagerTestingSurrogate *)v57 startInstallWithHandler:&stru_10032DFB8];
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

- (void)startInstallWithHandler:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  v3 = v21;
  objc_sync_enter(v3);
  objc_storeStrong(&v19, v21->_clientUpdateToDownloadAndInstall);
  if (!v19)
  {
    objc_exception_throw([NSException exceptionWithName:@"Installation requested in testing surrogate without update" reason:0 userInfo:0]);
  }

  objc_sync_exit(v3);

  behaviorManager = v21->_behaviorManager;
  v5 = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v18 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"startInstall" domain:v5];

  [v18 duration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  completion_and_delegate_and_main_queue = v21->_completion_and_delegate_and_main_queue;
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100189420;
  v13 = &unk_10032D218;
  v14 = v18;
  v15 = v21;
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

- (void)_performInstallWithUpdate:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  behaviorManager = v17->_behaviorManager;
  v4 = [(BYTestingSurrogateBehaviorManager *)behaviorManager domainSoftwareUpdate];
  v15 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"performInstall" domain:v4];

  [v15 duration];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  completion_and_delegate_and_main_queue = v17->_completion_and_delegate_and_main_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100189768;
  v12 = &unk_10032B838;
  v13 = v15;
  v14 = v17;
  dispatch_after(v6, completion_and_delegate_and_main_queue, &v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutoInstall:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_exception_throw([NSException exceptionWithName:@"Testing surrogate does not support setAutoInstall:" reason:0 userInfo:0]);
}

@end