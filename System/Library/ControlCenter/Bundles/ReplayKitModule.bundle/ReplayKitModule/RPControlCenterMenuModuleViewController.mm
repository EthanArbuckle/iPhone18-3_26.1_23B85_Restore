@interface RPControlCenterMenuModuleViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (RPControlCenterMenuModuleViewController)initWithClient:(id)a3 forBroadcastPicker:(BOOL)a4;
- (double)_maxVisibleMenuItems;
- (double)preferredExpandedContentHeight;
- (id)leadingImageForMenuItem:(id)a3;
- (void)acquireProcessAssertionWithHandler:(id)a3;
- (void)authenticateWithCompletionHandler:(id)a3;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)cancelPreviousCountdownRequest;
- (void)cancelRecordingCountdown;
- (void)dealloc;
- (void)didChangeAvailability:(BOOL)a3;
- (void)didStartRecordingOrBroadcast;
- (void)didStopRecordingOrBroadcast;
- (void)didUpdateClientStateWithAvailableExtensions:(id)a3 completionHandler:(id)a4;
- (void)invalidateProcessAssertion;
- (void)performButtonAction;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)presentRecordingAlertWithHandler:(id)a3;
- (void)recordButtonTapped;
- (void)sessionDidFailToStart;
- (void)sessionIsStarting;
- (void)setAvailableExtensions:(id)a3;
- (void)setContentModuleContext:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setupLockScreenNotifications;
- (void)startBroadcast;
- (void)startRecord;
- (void)startRecordingCountdown;
- (void)startSystemRecordingOrBroadcastWithDelay:(double)a3;
- (void)transitionToCountdownState;
- (void)updateGlyphPackageDescription;
- (void)updateGlyphState;
- (void)updateRPCCModuleMenuItems;
- (void)updateRecordButtonLabel;
- (void)updateStateAndUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RPControlCenterMenuModuleViewController

- (RPControlCenterMenuModuleViewController)initWithClient:(id)a3 forBroadcastPicker:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16.receiver = self;
  v16.super_class = RPControlCenterMenuModuleViewController;
  v7 = [(RPControlCenterMenuModuleViewController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_client, v6);
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&v8->_client);
      *buf = 136447234;
      v18 = "[RPControlCenterMenuModuleViewController initWithClient:forBroadcastPicker:]";
      v19 = 1024;
      v20 = 79;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = WeakRetained;
      v25 = 1024;
      v26 = v4;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p isBroadcast=%i ", buf, 0x2Cu);
    }

    v10 = objc_loadWeakRetained(&v8->_client);
    [v10 addDegate:v8];

    v8->_isBroadcastPicker = v4;
    v8->_bpStartedFromAnotherView = 0;
    v11 = objc_loadWeakRetained(&v8->_client);
    v12 = [v11 extensionBundleID];
    currentSelectedExtension = v8->_currentSelectedExtension;
    v8->_currentSelectedExtension = v12;

    [(RPControlCenterMenuModuleViewController *)v8 setGlyphState:@"Base State"];
    [(RPControlCenterMenuModuleViewController *)v8 updateGlyphState];
    [(RPControlCenterMenuModuleViewController *)v8 setIndentation:3];
    [(RPControlCenterMenuModuleViewController *)v8 setUseTrailingCheckmarkLayout:1];
    v14 = objc_loadWeakRetained(&v8->_client);
    [v14 updateClientState];
  }

  return v8;
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPControlCenterMenuModuleViewController dealloc]";
    v9 = 1024;
    v10 = 96;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained removeDelegate:self];

  [(RPControlCenterMenuModuleViewController *)self stopLockScreenNotifications];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  lockStateQueue = self->_lockStateQueue;
  self->_lockStateQueue = 0;

  v6.receiver = self;
  v6.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v6 dealloc];
}

- (void)updateGlyphPackageDescription
{
  v3 = [(RPControlCenterMenuModuleViewController *)self traitCollection];
  v4 = [v3 accessibilityContrast];
  v5 = @"replaykit-v2";
  if (v4 == &dword_0 + 1)
  {
    v5 = @"replaykit-v2_IC";
  }

  v6 = v5;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [CCUICAPackageDescription descriptionForPackageNamed:v6 inBundle:v8];

  [(RPControlCenterMenuModuleViewController *)self setGlyphPackageDescription:v7];
}

- (void)updateGlyphState
{
  if ([(RPControlCenterMenuModuleViewController *)self contentRenderingMode]== &dword_0 + 1)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = [WeakRetained recordingOn];

  if (v4)
  {
    v5 = @"recording";
    goto LABEL_11;
  }

  v6 = objc_loadWeakRetained(&self->_client);
  if (([v6 isCountingDown] & 1) == 0)
  {

    goto LABEL_9;
  }

  v7 = objc_loadWeakRetained(&self->_client);
  v8 = [v7 systemCountdownStarted];

  if (!v8)
  {
LABEL_9:
    v11 = objc_loadWeakRetained(&self->_client);
    [v11 isAvailableAndInitialized];

LABEL_10:
    v5 = @"Base State";
    goto LABEL_11;
  }

  [(RPControlCenterMenuModuleViewController *)self setGlyphState:@"countdown"];
  v9 = +[RPFeatureFlagUtility sharedInstance];
  v10 = [v9 systemBannerEnabled];

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = @"recording-static";
LABEL_11:
  [(RPControlCenterMenuModuleViewController *)self setGlyphState:v5];
LABEL_12:
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(RPControlCenterMenuModuleViewController *)self glyphState];
    v13 = 136446978;
    v14 = "[RPControlCenterMenuModuleViewController updateGlyphState]";
    v15 = 1024;
    v16 = 126;
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated glyph state: %@", &v13, 0x26u);
  }
}

- (double)_maxVisibleMenuItems
{
  v2 = [(RPControlCenterMenuModuleViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = 2.5;
  if (UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryAccessibilityLarge) == NSOrderedDescending)
  {
    if (UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryAccessibilityExtraLarge) == NSOrderedDescending)
    {
      v4 = 1.5;
    }

    else
    {
      v4 = 2.0;
    }
  }

  return v4;
}

- (void)setAvailableExtensions:(id)a3
{
  v4 = buf;
  v5 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v66 = "[RPControlCenterMenuModuleViewController setAvailableExtensions:]";
    v67 = 1024;
    v68 = 141;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (![(NSMutableArray *)self->_availableExtensions isEqualToArray:self->_availableExtensions])
  {
    v6 = +[NSMutableArray array];
    availableExtensions = self->_availableExtensions;
    self->_availableExtensions = v6;

    v48 = self;
    if (!self->_isBroadcastPicker)
    {
      v51 = 0;
      if (!v5)
      {
        goto LABEL_39;
      }

LABEL_22:
      if ([v5 count])
      {
        currentSelectedExtension = +[NSMutableArray array];
        v47 = +[NSMutableArray array];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v46 = v5;
        obj = v5;
        v17 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v17)
        {
          v18 = v17;
          v50 = *v53;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v53 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v52 + 1) + 8 * i);
              v21 = [v20 objectForKey:@"displayName"];
              v22 = [v20 objectForKey:@"extBundleID"];
              v23 = [v20 objectForKey:@"extAppImgData"];
              v24 = v23;
              if (v23)
              {
                v62[0] = @"displayName";
                v62[1] = @"extBundleID";
                v63[0] = v21;
                v63[1] = v22;
                v62[2] = @"extAppImgData";
                v63[2] = v23;
                v25 = v63;
                v26 = v62;
                v27 = 3;
              }

              else
              {
                v60[0] = @"displayName";
                v60[1] = @"extBundleID";
                v61[0] = v21;
                v61[1] = v22;
                v25 = v61;
                v26 = v60;
                v27 = 2;
              }

              v28 = [NSDictionary dictionaryWithObjects:v25 forKeys:v26 count:v27];
              [currentSelectedExtension addObject:v28];
              if (v51)
              {
                WeakRetained = objc_loadWeakRetained(&self->_client);
                [WeakRetained preferredExtension];
                v31 = v30 = currentSelectedExtension;
                v32 = [v31 isEqualToString:v22];

                currentSelectedExtension = v30;
                self = v48;
                if (v32)
                {
                  [v47 addObject:v28];
                  objc_storeStrong(&v48->_currentSelectedExtension, v22);
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v18);
        }

        if (v51)
        {
          if ([v47 count])
          {
            [(NSMutableArray *)self->_availableExtensions addObjectsFromArray:v47];
LABEL_48:
            v5 = v46;
            [(RPControlCenterMenuModuleViewController *)self setVisibleMenuItems:0.0];
            if ([(NSMutableArray *)self->_availableExtensions count]>= 3)
            {
              [(RPControlCenterMenuModuleViewController *)self _maxVisibleMenuItems];
              [(RPControlCenterMenuModuleViewController *)self setVisibleMenuItems:?];
            }

            if (self->_bpStartedFromAnotherView)
            {
              v44 = objc_loadWeakRetained(&self->_client);
              v45 = [v44 preferredExtension];

              if (v45)
              {
                [(RPControlCenterMenuModuleViewController *)self setVisibleMenuItems:1.0];
              }
            }

            goto LABEL_54;
          }

          if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v66 = "[RPControlCenterMenuModuleViewController setAvailableExtensions:]";
            v67 = 1024;
            v68 = 180;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferred extension was not found, using default view with all extensions instead", buf, 0x12u);
          }

          v33 = objc_loadWeakRetained(&self->_client);
          [v33 setPreferredExtension:0];
        }

        v34 = +[UIScreen mainScreen];
        [v34 scale];
        v35 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.mobileslideshow" format:0 scale:?];

        v36 = UIImagePNGRepresentation(v35);
        v37 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_CAMERA_ROLL_DISPLAY_NAME"];
        v38 = v37;
        if (v36)
        {
          v58[0] = @"displayName";
          v58[1] = @"extBundleID";
          v59[0] = v37;
          v59[1] = @"com.apple.replaykit.recordToCameraRoll";
          v58[2] = @"extAppImgData";
          v59[2] = v36;
          v39 = v59;
          v40 = v58;
          v41 = 3;
        }

        else
        {
          v56[0] = @"displayName";
          v56[1] = @"extBundleID";
          v57[0] = v37;
          v57[1] = @"com.apple.replaykit.recordToCameraRoll";
          v39 = v57;
          v40 = v56;
          v41 = 2;
        }

        v42 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:v41];
        [currentSelectedExtension addObject:v42];
        v43 = [currentSelectedExtension sortedArrayUsingComparator:&stru_143F8];
        [(NSMutableArray *)self->_availableExtensions addObjectsFromArray:v43];

        goto LABEL_48;
      }

LABEL_39:
      [(RPControlCenterMenuModuleViewController *)self setVisibleMenuItems:0.0];
      currentSelectedExtension = self->_currentSelectedExtension;
      self->_currentSelectedExtension = @"com.apple.replaykit.recordToCameraRoll";
LABEL_54:

      [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];
      goto LABEL_55;
    }

    v8 = objc_loadWeakRetained(&self->_client);
    v9 = [v8 lockUIControls];
    if ((v9 & 1) != 0 || (v4 = objc_loadWeakRetained(&self->_client), [v4 preferredExtension], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = objc_loadWeakRetained(&self->_client);
      if ([v11 lockUIControls])
      {
        v12 = objc_loadWeakRetained(&self->_client);
        v13 = [v12 preferredExtension];
        v14 = objc_loadWeakRetained(&self->_client);
        v15 = [v14 extensionBundleID];
        v51 = [v13 isEqualToString:v15];

        if (v9)
        {
          self = v48;
          goto LABEL_21;
        }

        v10 = 0;
        self = v48;
      }

      else
      {

        v51 = 0;
        if (v9)
        {
          goto LABEL_21;
        }

        v10 = 0;
      }
    }

    else
    {
      v51 = 1;
    }

LABEL_21:
    if (!v5)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v66 = "[RPControlCenterMenuModuleViewController setAvailableExtensions:]";
    v67 = 1024;
    v68 = 144;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no change in available extensions", buf, 0x12u);
  }

LABEL_55:
}

- (void)updateStateAndUI
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v4 = [WeakRetained recordingOn];
    v5 = objc_loadWeakRetained(&self->_client);
    v6 = [v5 isCountingDown];
    v7 = objc_loadWeakRetained(&self->_client);
    v8 = [v7 lockUIControls];
    v9 = objc_loadWeakRetained(&self->_client);
    v16 = 136447746;
    v17 = "[RPControlCenterMenuModuleViewController updateStateAndUI]";
    v18 = 1024;
    v19 = 229;
    v20 = 2048;
    v21 = self;
    v22 = 1024;
    v23 = v4;
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p recording is %i, counting down is %i, locked ui is %i, from client %p", &v16, 0x38u);
  }

  v10 = objc_loadWeakRetained(&self->_client);
  v11 = [v10 recordingOn];

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_client);
    v13 = [v12 extensionBundleID];
    currentSelectedExtension = self->_currentSelectedExtension;
    self->_currentSelectedExtension = v13;
  }

  if ([(RPControlCenterMenuModuleViewController *)self isExpanded])
  {
    [(RPControlCenterMenuModuleViewController *)self setSelected:0];
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_client);
    -[RPControlCenterMenuModuleViewController setSelected:](self, "setSelected:", [v15 recordingOn]);
  }

  [(RPControlCenterMenuModuleViewController *)self updateGlyphState];
  [(RPControlCenterMenuModuleViewController *)self updateRecordButtonLabel];
  [(RPControlCenterMenuModuleViewController *)self updateRPCCModuleMenuItems];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v11 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(RPControlCenterMenuModuleViewController *)self presentViewController:v11 animated:1 completion:v8];
}

- (void)viewDidLoad
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v19 = "[RPControlCenterMenuModuleViewController viewDidLoad]";
    v20 = 1024;
    v21 = 266;
    v22 = 2048;
    v23 = self;
    v24 = 2048;
    v25 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v16.receiver = self;
  v16.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v16 viewDidLoad];
  [(RPControlCenterMenuModuleViewController *)self updateGlyphPackageDescription];
  v4 = objc_opt_self();
  v17 = v4;
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [(RPControlCenterMenuModuleViewController *)self registerForTraitChanges:v5 withAction:"updateGlyphPackageDescription"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  RPCCModuleBundle = self->_RPCCModuleBundle;
  self->_RPCCModuleBundle = v7;

  if (self->_isBroadcastPicker)
  {
    v9 = @"BROADCAST_PICKER_TITLE";
  }

  else
  {
    v9 = @"CONTROL_CENTER_TITLE";
  }

  v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v9];
  [(RPControlCenterMenuModuleViewController *)self setTitle:v10];

  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  lockStateQueue = self->_lockStateQueue;
  self->_lockStateQueue = SerialWithQoS;

  v13 = self->_lockStateQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2F70;
  v15[3] = &unk_14420;
  v15[4] = self;
  dispatch_async(v13, v15);
  [(RPControlCenterMenuModuleViewController *)self updateRecordButtonLabel];
  [(RPControlCenterMenuModuleViewController *)self setupLockScreenNotifications];
  [(RPControlCenterMenuModuleViewController *)self setValueText:0];
  v14 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_SELECTED_VALUE_TEXT"];
  [(RPControlCenterMenuModuleViewController *)self setSelectedValueText:v14];
}

- (void)setupLockScreenNotifications
{
  objc_initWeak(&location, self);
  lockStateQueue = self->_lockStateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_309C;
  v4[3] = &unk_14448;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_lockToResetToken, lockStateQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v9 = "[RPControlCenterMenuModuleViewController viewWillAppear:]";
    v10 = 1024;
    v11 = 315;
    v12 = 2048;
    v13 = self;
    v14 = 2048;
    v15 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v6 = objc_loadWeakRetained(&self->_client);
  [v6 updateClientState];

  v7.receiver = self;
  v7.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v7 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v8 = "[RPControlCenterMenuModuleViewController viewDidAppear:]";
    v9 = 1024;
    v10 = 321;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v6.receiver = self;
  v6.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v8 = "[RPControlCenterMenuModuleViewController viewWillDisappear:]";
    v9 = 1024;
    v10 = 326;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v6.receiver = self;
  v6.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v6 viewWillDisappear:v3];
}

- (void)acquireProcessAssertionWithHandler:(id)a3
{
  v4 = a3;
  v5 = [BKSProcessAssertion alloc];
  v6 = getpid();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3618;
  v10[3] = &unk_14498;
  v11 = v4;
  v7 = v4;
  v8 = [v5 initWithPID:v6 flags:1 reason:4 name:@"HomeNFCStopAssertion" withHandler:v10];
  backgroundProcessAssertion = self->_backgroundProcessAssertion;
  self->_backgroundProcessAssertion = v8;
}

- (void)invalidateProcessAssertion
{
  [(BKSProcessAssertion *)self->_backgroundProcessAssertion invalidate];
  backgroundProcessAssertion = self->_backgroundProcessAssertion;
  self->_backgroundProcessAssertion = 0;
}

- (void)authenticateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v11 = "[RPControlCenterMenuModuleViewController authenticateWithCompletionHandler:]";
    v12 = 1024;
    v13 = 357;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  lockStateQueue = self->_lockStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3984;
  block[3] = &unk_14470;
  v9 = v4;
  v7 = v4;
  dispatch_async(lockStateQueue, block);
}

- (void)transitionToCountdownState
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v7 = "[RPControlCenterMenuModuleViewController transitionToCountdownState]";
    v8 = 1024;
    v9 = 368;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 setSystemCountdownStarted:1];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3BD8;
  v5[3] = &unk_14420;
  v5[4] = self;
  [(RPControlCenterMenuModuleViewController *)self acquireProcessAssertionWithHandler:v5];
}

- (void)startSystemRecordingOrBroadcastWithDelay:(double)a3
{
  v5 = [(RPControlCenterMenuModuleViewController *)self currentSelectedExtensionIsSystemRecording];
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained setRecordingType:2];

    v8 = +[RPFeatureFlagUtility sharedInstance];
    v9 = [v8 systemBannerEnabled];

    if (v9)
    {
      [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];

      [(RPControlCenterMenuModuleViewController *)self startRecordingCountdown];
      return;
    }

    v10 = "startRecord";
  }

  else
  {
    [WeakRetained setRecordingType:1];

    v10 = "startBroadcast";
  }

  v11 = [NSArray arrayWithObject:NSRunLoopCommonModes];
  [(RPControlCenterMenuModuleViewController *)self performSelector:v10 withObject:self afterDelay:v11 inModes:a3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v9 = "[RPControlCenterMenuModuleViewController viewWillTransitionToSize:withTransitionCoordinator:]";
    v10 = 1024;
    v11 = 413;
    v12 = 2048;
    v13 = self;
    v14 = 2048;
    v15 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3F28;
  v7[3] = &unk_144E8;
  v7[4] = self;
  [v5 animateAlongsideTransition:v7 completion:&stru_14528];
}

- (void)startRecord
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v7 = "[RPControlCenterMenuModuleViewController startRecord]";
    v8 = 1024;
    v9 = 432;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4124;
  v5[3] = &unk_14420;
  v5[4] = self;
  [v4 startRecordingWithHandler:v5];
}

- (void)startBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v7 = "[RPControlCenterMenuModuleViewController startBroadcast]";
    v8 = 1024;
    v9 = 441;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_42C4;
  v5[3] = &unk_14420;
  v5[4] = self;
  [v4 startBroadcastWithHandler:v5];
}

- (void)startRecordingCountdown
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPControlCenterMenuModuleViewController startRecordingCountdown]";
    v7 = 1024;
    v8 = 450;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 startRecordingCountdown];
}

- (void)cancelRecordingCountdown
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPControlCenterMenuModuleViewController cancelRecordingCountdown]";
    v7 = 1024;
    v8 = 455;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 cancelRecordingCountdown];
}

- (id)leadingImageForMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"Current"];

  if (v7)
  {
    v8 = self->_currentSelectedExtension;

    v5 = v8;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_availableExtensions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = self;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"extBundleID"];
        v16 = [v5 isEqualToString:v15];

        if (v16)
        {
          v17 = v14;
          goto LABEL_13;
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_13:
    self = v21;
  }

  else
  {
    v17 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  v19 = [WeakRetained imageForBundleID:v5 extensionInfo:v17];

  return v19;
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = RPControlCenterMenuModuleViewController;
  if ([(RPControlCenterMenuModuleViewController *)&v6 contentRenderingMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = RPControlCenterMenuModuleViewController;
    [(RPControlCenterMenuModuleViewController *)&v5 setContentRenderingMode:a3];
    [(RPControlCenterMenuModuleViewController *)self updateGlyphState];
  }
}

- (void)updateRecordButtonLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v5 = [WeakRetained lockUIControls];
  if ((v5 & 1) == 0)
  {
    v2 = objc_loadWeakRetained(&self->_client);
    if (([v2 isCountingDown] & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  v6 = objc_loadWeakRetained(&self->_client);
  v7 = [v6 isClientRecordingTypeSystemRecording];

  if (v5)
  {

    if (!v7)
    {
LABEL_10:
      if ([(NSString *)self->_currentSelectedExtension isEqualToString:@"com.apple.replaykit.recordToCameraRoll"])
      {
        v8 = @"CONTROL_CENTER_START_RECORDING";
      }

      else
      {
        v8 = @"CONTROL_CENTER_START_BROADCAST";
      }

      goto LABEL_14;
    }
  }

  else
  {

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([(NSString *)self->_currentSelectedExtension isEqualToString:@"com.apple.replaykit.recordToCameraRoll"])
  {
    v8 = @"CONTROL_CENTER_STOP_RECORDING";
  }

  else
  {
    v8 = @"CONTROL_CENTER_STOP_BROADCAST";
  }

LABEL_14:
  [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v8];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4944;
  v10[3] = &unk_14578;
  v11 = v10[4] = self;
  v9 = v11;
  [UIView performWithoutAnimation:v10];
}

- (void)updateRPCCModuleMenuItems
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v36 = "[RPControlCenterMenuModuleViewController updateRPCCModuleMenuItems]";
    v37 = 1024;
    v38 = 515;
    v39 = 2048;
    v40 = self;
    v41 = 2048;
    v42 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  objc_initWeak(buf, self);
  v23 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_availableExtensions;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v22 = *v31;
    do
    {
      v24 = v4;
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [v6 objectForKey:@"displayName"];
        v8 = [v6 objectForKey:@"extBundleID"];
        v9 = @"Current";
        if (([v8 isEqualToString:self->_currentSelectedExtension] & 1) == 0)
        {
          v9 = v8;
        }

        v10 = [CCUIMenuModuleItem alloc];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_4F64;
        v27[3] = &unk_145A0;
        objc_copyWeak(&v29, buf);
        v11 = v8;
        v28 = v11;
        v12 = [v10 initWithTitle:v7 identifier:v9 handler:v27];
        [v12 setBusy:0];
        [v12 setSelected:0];
        if ([v11 isEqualToString:self->_currentSelectedExtension])
        {
          v13 = objc_loadWeakRetained(&self->_client);
          v14 = [v13 recordingOn];

          if (v14)
          {
            [v12 setBusy:1];
            v15 = objc_loadWeakRetained(&self->_client);
            v16 = [v15 currentTimerString];
            [v12 setSubtitle:v16];
          }

          [v12 setSelected:1];
          [v23 insertObject:v12 atIndex:0];
        }

        else
        {
          [v23 addObject:v12];
        }

        objc_destroyWeak(&v29);
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v4);
  }

  v17 = objc_loadWeakRetained(&self->_client);
  if (([v17 recordingOn] & 1) == 0)
  {

    goto LABEL_22;
  }

  v18 = objc_loadWeakRetained(&self->_client);
  v19 = [v18 currentTimerString];
  v20 = [v19 isEqualToString:@"00:00"];

  if (v20)
  {
LABEL_22:
    [(RPControlCenterMenuModuleViewController *)self setMenuItems:v23];
    [(RPControlCenterMenuModuleViewController *)self scrollToTop:1];
    goto LABEL_23;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_502C;
  v25[3] = &unk_14578;
  v25[4] = self;
  v26 = v23;
  [UIView performWithoutAnimation:v25];

LABEL_23:
  objc_destroyWeak(buf);
}

- (void)cancelPreviousCountdownRequest
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPControlCenterMenuModuleViewController cancelPreviousCountdownRequest]";
    v7 = 1024;
    v8 = 574;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 notifyClientDelegatesStart:0];

  [(RPControlCenterMenuModuleViewController *)self cancelRecordingCountdown];
}

- (void)recordButtonTapped
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v11 = "[RPControlCenterMenuModuleViewController recordButtonTapped]";
    v12 = 1024;
    v13 = 581;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  v5 = [v4 isAvailableAndInitialized];

  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_53AC;
    v9[3] = &unk_145C8;
    v9[4] = self;
    [(RPControlCenterMenuModuleViewController *)self authenticateWithCompletionHandler:v9];
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "[RPControlCenterMenuModuleViewController recordButtonTapped]";
      v12 = 1024;
      v13 = 605;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Recording not available due to AirPlay, Restriction, or screen mirroring active", buf, 0x12u);
    }

    v6 = [(RPControlCenterMenuModuleViewController *)self title];
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v6];
    v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_ERROR_NOT_AVAILABLE"];
    [(RPControlCenterMenuModuleViewController *)self presentAlertWithTitle:v7 message:v8 completion:&stru_14608];
  }
}

- (void)performButtonAction
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained setCurrentTimerString:0];

  v4 = objc_loadWeakRetained(&self->_client);
  v5 = [v4 isCountingDown];

  v6 = objc_loadWeakRetained(&self->_client);
  v7 = v6;
  if (v5)
  {
    v8 = [v6 systemCountdownStarted];

    if (v8)
    {

      [(RPControlCenterMenuModuleViewController *)self cancelPreviousCountdownRequest];
    }
  }

  else
  {
    v9 = [v6 recordingOn];

    if (v9)
    {
      if (self->_isBroadcastPicker)
      {
        v10 = objc_loadWeakRetained(&self->_client);
        v11 = [v10 extensionBundleID];
        v12 = objc_loadWeakRetained(&self->_client);
        v13 = [v12 preferredExtension];
        v14 = [v11 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          self->_bpStartedFromAnotherView = 1;
        }
      }

      v15 = objc_loadWeakRetained(&self->_client);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_5A10;
      v16[3] = &unk_14420;
      v16[4] = self;
      [v15 stopCurrentSession:v16];
    }

    else
    {

      [(RPControlCenterMenuModuleViewController *)self transitionToCountdownState];
    }
  }
}

- (void)presentRecordingAlertWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_ALERT_TITLE"];
  v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_ALERT_DESCRIPTION"];
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_RECORDING_ALERT_CANCEL"];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&stru_14648];

  v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_RECORDING_ALERT_STOP"];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_5C54;
  v16 = &unk_14698;
  v17 = self;
  v18 = v4;
  v11 = v4;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v13];

  [v7 addAction:{v9, v13, v14, v15, v16, v17}];
  [v7 addAction:v12];
  [(RPControlCenterMenuModuleViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPControlCenterMenuModuleViewController shouldBeginTransitionToExpandedContentModule]";
    v7 = 1024;
    v8 = 675;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  self->_didStartFromLongPress = 1;
  return ![(RPControlCenterMenuModuleViewController *)self isDeviceLocked];
}

- (double)preferredExpandedContentHeight
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom])
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    Height = CGRectGetHeight(v19);

    if (Height > 568.0)
    {
      v18.receiver = self;
      v18.super_class = RPControlCenterMenuModuleViewController;
      [(RPControlCenterMenuModuleViewController *)&v18 preferredExpandedContentHeight];
      v6 = 349.5;
      return fmin(v5, v6);
    }
  }

  v7 = [(RPControlCenterMenuModuleViewController *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  if (!IsAccessibilityCategory)
  {
    v16.receiver = self;
    v16.super_class = RPControlCenterMenuModuleViewController;
    [(RPControlCenterMenuModuleViewController *)&v16 preferredExpandedContentHeight];
    v6 = 279.5;
    return fmin(v5, v6);
  }

  v17.receiver = self;
  v17.super_class = RPControlCenterMenuModuleViewController;
  [(RPControlCenterMenuModuleViewController *)&v17 preferredExpandedContentHeight];
  v11 = v10;
  v12 = +[UIScreen mainScreen];
  [v12 bounds];
  v14 = v13;

  if (v11 >= v14)
  {
    return v14;
  }

  else
  {
    return v11;
  }
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPControlCenterMenuModuleViewController buttonTapped:forEvent:]";
    v12 = 1024;
    v13 = 695;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  currentSelectedExtension = self->_currentSelectedExtension;
  self->_currentSelectedExtension = @"com.apple.replaykit.recordToCameraRoll";

  if (self->_didStartFromLongPress && [(RPControlCenterMenuModuleViewController *)self isDeviceLocked])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_622C;
    v9[3] = &unk_145C8;
    v9[4] = self;
    [(RPControlCenterMenuModuleViewController *)self authenticateWithCompletionHandler:v9];
    self->_didStartFromLongPress = 0;
  }

  else
  {
    [(RPControlCenterMenuModuleViewController *)self recordButtonTapped];
  }
}

- (void)didChangeAvailability:(BOOL)a3
{
  if (__RPLogLevel <= 1u)
  {
    v4 = a3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_client);
      v6 = 136447234;
      v7 = "[RPControlCenterMenuModuleViewController didChangeAvailability:]";
      v8 = 1024;
      v9 = 715;
      v10 = 2048;
      v11 = self;
      v12 = 2048;
      v13 = WeakRetained;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p isAvailable:%i", &v6, 0x2Cu);
    }
  }

  [(RPControlCenterMenuModuleViewController *)self updateGlyphState];
}

- (void)sessionIsStarting
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v4 = 136446978;
    v5 = "[RPControlCenterMenuModuleViewController sessionIsStarting]";
    v6 = 1024;
    v7 = 721;
    v8 = 2048;
    v9 = self;
    v10 = 2048;
    v11 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v4, 0x26u);
  }

  [(RPControlCenterMenuModuleViewController *)self updateGlyphState];
  [(RPControlCenterMenuModuleViewController *)self updateRecordButtonLabel];
}

- (void)sessionDidFailToStart
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v4 = 136446978;
    v5 = "[RPControlCenterMenuModuleViewController sessionDidFailToStart]";
    v6 = 1024;
    v7 = 728;
    v8 = 2048;
    v9 = self;
    v10 = 2048;
    v11 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v4, 0x26u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"startBroadcast" object:self];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"startRecord" object:self];
  [(RPControlCenterMenuModuleViewController *)self invalidateProcessAssertion];
  [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];
}

- (void)didStopRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v4 = 136446978;
    v5 = "[RPControlCenterMenuModuleViewController didStopRecordingOrBroadcast]";
    v6 = 1024;
    v7 = 741;
    v8 = 2048;
    v9 = self;
    v10 = 2048;
    v11 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v4, 0x26u);
  }

  [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];
}

- (void)didStartRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v7 = 136446978;
    v8 = "[RPControlCenterMenuModuleViewController didStartRecordingOrBroadcast]";
    v9 = 1024;
    v10 = 752;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v7, 0x26u);
  }

  [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];
  v4 = +[RPFeatureFlagUtility sharedInstance];
  v5 = [v4 systemBannerEnabled];

  if (v5)
  {
    [(RPControlCenterMenuModuleViewController *)self invalidateProcessAssertion];
  }

  if ([(RPControlCenterMenuModuleViewController *)self currentSelectedExtensionIsSystemRecording])
  {
    v6 = objc_loadWeakRetained(&self->_client);
    [v6 showRecordingBanner];
  }
}

- (void)didUpdateClientStateWithAvailableExtensions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v9 = 136446978;
    v10 = "[RPControlCenterMenuModuleViewController didUpdateClientStateWithAvailableExtensions:completionHandler:]";
    v11 = 1024;
    v12 = 764;
    v13 = 2048;
    v14 = self;
    v15 = 2048;
    v16 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v9, 0x26u);
  }

  [(RPControlCenterMenuModuleViewController *)self setAvailableExtensions:v6];
  [(RPControlCenterMenuModuleViewController *)self updateStateAndUI];
  v7[2](v7);
}

- (void)setContentModuleContext:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPControlCenterMenuModuleViewController setContentModuleContext:]";
    v8 = 1024;
    v9 = 780;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v6, 0x1Cu);
  }

  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = v4;
}

@end