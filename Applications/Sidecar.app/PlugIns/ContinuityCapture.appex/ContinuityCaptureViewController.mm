@interface ContinuityCaptureViewController
+ (void)initialize;
- (ContinuityCaptureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_disconnectSession;
- (void)_handleLayout:(id)layout ignoringStandby:(BOOL)standby;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_resolveUserPauseState;
- (void)_setConnectionInterruptTimer;
- (void)_showHowToReconnectDialog;
- (void)_terminate;
- (void)_updateUI;
- (void)callActive:(BOOL)active;
- (void)dealloc;
- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state;
- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)receivedItems:(id)items;
- (void)requestDidFinish:(id)finish;
- (void)requestDidStart:(id)start;
- (void)sidecarServiceActive;
- (void)updateRequestState;
- (void)viewDidLoad;
@end

@implementation ContinuityCaptureViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (ContinuityCaptureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  global_queue = dispatch_get_global_queue(2, 0);
  dispatch_async(global_queue, &stru_100014608);
  v13.receiver = self;
  v13.super_class = ContinuityCaptureViewController;
  v8 = [(ContinuityCaptureViewController *)&v13 initWithNibName:name bundle:bundle];
  v9 = v8;
  if (v8)
  {
    objc_sync_enter(v8);
    v9->_activeRequests = objc_alloc_init(NSMutableArray);
    objc_sync_exit(v9);
    v9->_uiState = 0;
    FigCaptureSessionRemoteSetWombatInUse();
    v10 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    [(ContinuityCaptureRemoteUISystemStatus *)v10 addObserver:v9 forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey options:3 context:0];
    v11 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    [(ContinuityCaptureRemoteUISystemStatus *)v11 addObserver:v9 forKeyPath:CMContinuityCaptureCallStateKVOKey options:3 context:0];
    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus holdIdleSleepAssertionForReason:"holdIdleSleepAssertionForReason:", &stru_100014A90];
    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus addObserver:"addObserver:", v9];
  }

  return v9;
}

- (void)dealloc
{
  if (dword_100019EC8)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigCaptureSessionRemoteSetWombatInUse();
  FigCaptureSessionRemoteSetWombatEnabled();

  [(FigCaptureDeviceLockStateMonitor *)self->_lockStateMonitor removeDeviceLockStateObserver:self];
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];

  connectionInterruptTimer = self->_connectionInterruptTimer;
  if (connectionInterruptTimer)
  {
    dispatch_source_cancel(connectionInterruptTimer);
  }

  v5 = [ContinuityCaptureRemoteUISystemStatus sharedInstance:v8];
  [(ContinuityCaptureRemoteUISystemStatus *)v5 removeObserver:self forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey context:0];
  v6 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  [(ContinuityCaptureRemoteUISystemStatus *)v6 removeObserver:self forKeyPath:CMContinuityCaptureCallStateKVOKey context:0];
  [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus removeObserver:"removeObserver:", self];
  continuityCaptureDevice = self->_continuityCaptureDevice;
  if (continuityCaptureDevice)
  {
    [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice removeObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey context:0];
    [(CMContinuityCaptureRemoteCompositeDevice *)self->_continuityCaptureDevice invalidate];
  }

  v10.receiver = self;
  v10.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v10 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(ContinuityCaptureShieldUIContentView);
  [(ContinuityCaptureShieldUIContentView *)v3 setDelegate:self];

  [(ContinuityCaptureViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7.receiver = self;
  v7.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v7 viewDidLoad];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  self->_connectionType = 0;
  [(ContinuityCaptureViewController *)self _updateUI];
  self->_sidecarLayoutValue = -1;
  v4 = objc_alloc_init(FigCaptureDeviceLockStateMonitor);
  self->_lockStateMonitor = v4;
  [(FigCaptureDeviceLockStateMonitor *)v4 addDeviceLockStateObserver:self];
  v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v5 setNeedsUserInteractivePriority:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005AD8;
  v6[3] = &unk_100014658;
  v6[4] = self;
  [v5 setTransitionHandler:v6];
  self->_layoutMonitor = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
}

- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification
{
  if (dword_100019EC8)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006200;
  block[3] = &unk_100014680;
  callCopy = call;
  block[4] = self;
  block[5] = data;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)callActive:(BOOL)active
{
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000063D4;
  block[3] = &unk_1000146A8;
  activeCopy = active;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showHowToReconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:v5 value:v6) table:"localizedStringForKey:value:table:", @"ALERT_DISCONNECTED_TITLE", &stru_100014A90, 0], [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000066C8;
  v8[3] = &unk_1000146D0;
  v8[4] = self;
  -[UIAlertController addAction:](v4, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" table:&stru_100014A90, 0], 2, v8));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000067FC;
  v7[3] = &unk_1000146D0;
  v7[4] = self;
  -[UIAlertController addAction:](v4, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" table:&stru_100014A90, 0], 1, v7));
  [(ContinuityCaptureViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_updateUI
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  uiState = self->_uiState;
  if (dword_100019EC8)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [(ContinuityCaptureViewController *)self view:v15];
  connectionType = self->_connectionType;
  if (connectionType)
  {
    if (connectionType != 1)
    {
      goto LABEL_8;
    }

    v7 = @"mic.circle.fill";
  }

  else
  {
    v7 = @"video.circle.fill";
  }

  [v5 setImage:{+[UIImage systemImageNamed:](UIImage, "systemImageNamed:", v7)}];
LABEL_8:
  macName = [objc_msgSend(-[ContinuityCaptureViewController request](self "request")];
  if (![(NSString *)macName length])
  {
    macName = self->_macName;
  }

  if (uiState == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v5 setPauseButtonState:v9];
  if ((uiState - 1) >= 2)
  {
    if (!uiState)
    {
      if ([(NSString *)macName length])
      {
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
      }

      else
      {
        v11 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"LABEL_CONNECTING_TO_MAC" table:&stru_100014A90, 0];
      }

      [v5 setPrimaryText:v11];
    }
  }

  else
  {
    if ([(NSString *)macName length])
    {
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
    }

    else
    {
      v10 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"LABEL_CONNECTED_TO_MAC" table:&stru_100014A90, 0];
    }

    [v5 setPrimaryText:v10];
    v12 = self->_connectionType;
    if (v12 == 1)
    {
      v13 = +[NSBundle mainBundle];
      v14 = @"LABEL_DISCONNECT_DESCRIPTION_MICROPHONE";
    }

    else
    {
      if (v12)
      {
        return;
      }

      v13 = +[NSBundle mainBundle];
      v14 = @"LABEL_DISCONNECT_DESCRIPTION_CAMERA";
    }

    [v5 setSecondaryText:{-[NSBundle localizedStringForKey:value:table:](v13, "localizedStringForKey:value:table:", v14, &stru_100014A90, 0)}];
  }
}

- (void)updateRequestState
{
  objc_sync_enter(self);
  if (self->_configForPreStreamStart && [(NSMutableArray *)self->_activeRequests count])
  {
    [(CMContinuityCaptureSidecarServer *)self->_requestServer setCurrentSessionID:self->_sessionID];
    if (dword_100019EC8)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = [[CMContinuityCaptureRemoteCompositeDevice alloc] initWithTransportServer:self->_requestServer videoPreviewLayer:{-[ContinuityCaptureVideoPreviewView videoPreviewLayer](self->_videoPreviewView, "videoPreviewLayer")}];
    self->_continuityCaptureDevice = v5;
    [(CMContinuityCaptureRemoteCompositeDevice *)v5 addObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey options:3 context:0];
    [(CMContinuityCaptureSidecarServer *)self->_requestServer activate];
    continuityCaptureDevice = self->_continuityCaptureDevice;
    configForPreStreamStart = self->_configForPreStreamStart;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006FD4;
    v8[3] = &unk_1000146F8;
    v8[4] = self;
    [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice startStream:configForPreStreamStart option:0 completion:v8];
  }

  else if (dword_100019EC8)
  {
    v10 = 0;
    v9 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_exit(self);
}

- (void)requestDidStart:(id)start
{
  if (dword_100019EC8)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_enter(self);
  activeRequests = self->_activeRequests;
  if (!activeRequests)
  {
    activeRequests = objc_alloc_init(NSMutableArray);
    self->_activeRequests = activeRequests;
  }

  if ([(NSMutableArray *)activeRequests count:v7])
  {
    [(NSMutableArray *)self->_activeRequests removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_activeRequests addObject:start];
  objc_sync_exit(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000763C;
  block[3] = &unk_100014630;
  block[4] = self;
  block[5] = start;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)requestDidFinish:(id)finish
{
  if (dword_100019EC8)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_enter(self);
  if ([(NSMutableArray *)self->_activeRequests count])
  {
    objc_sync_exit(self);
    v6 = ([finish isCancelled] & 1) == 0 && (objc_msgSend(objc_msgSend(objc_msgSend(finish, "error"), "domain"), "isEqualToString:", @"SidecarErrorDomain") && (objc_msgSend(objc_msgSend(finish, "error"), "code") == -205 || objc_msgSend(objc_msgSend(finish, "error"), "code") == -204) || objc_msgSend(objc_msgSend(objc_msgSend(finish, "error", v7, v8), "domain"), "isEqualToString:", @"RPErrorDomain") && objc_msgSend(objc_msgSend(finish, "error"), "code") == -6753);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000079A0;
    block[3] = &unk_1000146A8;
    block[4] = self;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"%@ ContinuityCapture error : Invalid active requests", self];
    objc_sync_exit(self);
  }
}

- (void)receivedItems:(id)items
{
  v59 = 0;
  v3 = &selRef__defaultButtonTextFont;
  if (dword_100019EC8)
  {
    v58 = 0;
    v57 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = [items countByEnumeratingWithState:&v53 objects:v52 count:{16, v39, v41}];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    v8 = kCMContinuityCaptureSidecarItemTypeMacName;
    v44 = kCMContinuityCaptureSidecarItemTypeSessionGID;
    v45 = kCMContinuityCaptureSidecarItemTypeStreamConfiguration;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v53 + 1) + 8 * i);
        objectValue = [v10 objectValue];
        if ([objc_msgSend(v10 "type")])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            self->_macName = objectValue;
            if (!dword_100019EC8)
            {
              continue;
            }

            v58 = 0;
            v57 = OS_LOG_TYPE_DEFAULT;
            v12 = v3[472];
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v14 = v58;
            if (os_log_type_enabled(v13, v57))
            {
              v15 = v14;
            }

            else
            {
              v15 = v14 & 0xFFFFFFFE;
            }

            if (v15)
            {
              macName = self->_macName;
              v48 = 136315394;
              v49 = "[ContinuityCaptureViewController receivedItems:]";
              v50 = 2112;
              v51 = macName;
              LODWORD(v42) = 22;
              v40 = &v48;
              _os_log_send_and_compose_impl();
            }

            v38 = v3[472];
            goto LABEL_47;
          }
        }

        if ([objc_msgSend(v10 "type")])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = objc_opt_class();
            objc_sync_enter(v17);

            v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:objectValue error:&v59];
            self->_configForPreStreamStart = v18;
            if (v18)
            {
              v19 = v18;
              if (dword_100019EC8)
              {
                v58 = 0;
                v57 = OS_LOG_TYPE_DEFAULT;
                v20 = v3[472];
                v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v22 = v58;
                if (os_log_type_enabled(v21, v57))
                {
                  v23 = v22;
                }

                else
                {
                  v23 = v22 & 0xFFFFFFFE;
                }

                if (v23)
                {
                  configForPreStreamStart = self->_configForPreStreamStart;
                  v48 = 136315394;
                  v49 = "[ContinuityCaptureViewController receivedItems:]";
                  v50 = 2112;
                  v51 = configForPreStreamStart;
                  LODWORD(v42) = 22;
                  v40 = &v48;
                  _os_log_send_and_compose_impl();
                }

                goto LABEL_48;
              }
            }

            else
            {
              v58 = 0;
              v57 = OS_LOG_TYPE_DEFAULT;
              v34 = v3[472];
              v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v36 = v58;
              if (os_log_type_enabled(v35, v57))
              {
                v37 = v36;
              }

              else
              {
                v37 = v36 & 0xFFFFFFFE;
              }

              if (v37)
              {
                v48 = 136315394;
                v49 = "[ContinuityCaptureViewController receivedItems:]";
                v50 = 2112;
                v51 = v59;
                LODWORD(v42) = 22;
                v40 = &v48;
                _os_log_send_and_compose_impl();
              }

LABEL_48:
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v3 = &selRef__defaultButtonTextFont;
            }

            objc_sync_exit(v17);
            continue;
          }
        }

        if (![objc_msgSend(v10 "type")])
        {
          v58 = 0;
          v57 = OS_LOG_TYPE_DEFAULT;
          v29 = v3[472];
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v58;
          if (os_log_type_enabled(v30, v57))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            type = [v10 type];
            v48 = 136315394;
            v49 = "[ContinuityCaptureViewController receivedItems:]";
            v50 = 2112;
            v51 = type;
            LODWORD(v42) = 22;
            v40 = &v48;
            _os_log_send_and_compose_impl();
          }

          v3 = &selRef__defaultButtonTextFont;
LABEL_47:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          continue;
        }

        if (dword_100019EC8)
        {
          v58 = 0;
          v57 = OS_LOG_TYPE_DEFAULT;
          v25 = v3[472];
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v58;
          if (os_log_type_enabled(v26, v57))
          {
            v28 = v27;
          }

          else
          {
            v28 = v27 & 0xFFFFFFFE;
          }

          if (v28)
          {
            v48 = 136315394;
            v49 = "[ContinuityCaptureViewController receivedItems:]";
            v50 = 2112;
            v51 = objectValue;
            LODWORD(v42) = 22;
            v40 = &v48;
            _os_log_send_and_compose_impl();
          }

          v3 = &selRef__defaultButtonTextFont;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_sessionID = [objectValue unsignedLongLongValue];
        }
      }

      v6 = [items countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008274;
  block[3] = &unk_100014720;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sidecarServiceActive
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(ContinuityCaptureViewController *)self setBackgroundStyle:4, v4, v5];
}

- (void)_setConnectionInterruptTimer
{
  if (!self->_connectionInterruptTimer)
  {
    if (dword_100019EC8)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 5;
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    self->_connectionInterruptTimer = v4;
    dispatch_source_set_timer(v4, 0, 0x77359400uLL, 0);
    connectionInterruptTimer = self->_connectionInterruptTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100008598;
    handler[3] = &unk_100014748;
    handler[4] = self;
    handler[5] = v7;
    dispatch_source_set_event_handler(connectionInterruptTimer, handler);
    dispatch_resume(self->_connectionInterruptTimer);
    _Block_object_dispose(v7, 8);
  }
}

- (void)_terminate
{
  if (self->_pendingDisconnectDialogue)
  {
    if (dword_100019EC8)
    {
      v18 = 0;
      v17 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    self->_isTerminating = 1;
    if (dword_100019EC8)
    {
      v18 = 0;
      v17 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    dispatch_assert_queue_V2(&_dispatch_main_q);
    FigCaptureSessionRemoteSetWombatEnabled();
    FigCaptureSessionRemoteSetWombatInUse();
    [(CMContinuityCaptureSidecarServer *)self->_requestServer cancel];
    connectionInterruptTimer = self->_connectionInterruptTimer;
    if (connectionInterruptTimer)
    {
      dispatch_source_cancel(connectionInterruptTimer);

      self->_connectionInterruptTimer = 0;
    }

    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus releaseCurrentIdleSleepAssertion:v9];
    [+[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance](ContinuityCaptureShieldUIBackgroundActivityManager updateState:"updateState:", 16];
    if (dword_100019EC8)
    {
      v18 = 0;
      v17 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = v18;
      if (os_log_type_enabled(v6, v17))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v13 = 136315394;
        v14 = "[ContinuityCaptureViewController _terminate]";
        v15 = 2048;
        selfCopy = self;
        LODWORD(v12) = 22;
        v10 = &v13;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(ContinuityCaptureViewController *)self completeRequest:1, v10, v12];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008BB4;
  block[3] = &unk_100014770;
  block[4] = self;
  block[5] = path;
  block[6] = object;
  block[7] = change;
  block[8] = context;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v58 = 0;
    v57 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([path isEqualToString:{CMContinuityCaptureRemoteCompositeStateKVOKey, v38, v41}])
  {
    v12 = [objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "integerValue"}];
    if (dword_100019EC8)
    {
      v58 = 0;
      v57 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v58;
      if (os_log_type_enabled(v13, v57))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v51 = 136315650;
        v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2048;
        selfCopy5 = self;
        v55 = 1024;
        LODWORD(v56) = v12;
        LODWORD(v42) = 28;
        v39 = &v51;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100009488;
    v50[3] = &unk_100014720;
    v50[4] = self;
    [+[ContinuityCaptureShieldUIBackgroundActivityManager updateState:v39], "updateState:withUserInteractionHandler:", v12, v50];
    if (v12)
    {
      self->_uiState = 2;
      FigCaptureSessionRemoteSetWombatInUse();
      FigCaptureSessionRemoteSetWombatEnabled();
    }

    else
    {
      if ((v12 & 8) == 0)
      {
        if ((v12 & 0x10) != 0)
        {
          [(ContinuityCaptureViewController *)self _terminate];
        }

        else
        {
          self->_uiState = 1;
          [(ContinuityCaptureViewController *)self _updateUI];
          FigCaptureSessionRemoteSetWombatInUse();
          FigCaptureSessionRemoteSetWombatEnabled();
        }

LABEL_30:
        v20 = v12 & 6;
        if (v20 == 2)
        {
          self->_connectionType = 1;
          [(ContinuityCaptureViewController *)self _updateUI];
        }

        else
        {
          self->_connectionType = 0;
          [(ContinuityCaptureViewController *)self _updateUI];
          if (!v20)
          {
            return;
          }
        }

        layoutMonitor = self->_layoutMonitor;
        if (!layoutMonitor || ![(FBSDisplayLayoutMonitor *)layoutMonitor currentLayout])
        {
          goto LABEL_70;
        }

        if (dword_100019EC8)
        {
          v58 = 0;
          v57 = OS_LOG_TYPE_DEFAULT;
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v23 = v58;
          if (os_log_type_enabled(v22, v57))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
            v51 = 136315650;
            v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
            v53 = 2048;
            selfCopy5 = self;
            v55 = 2114;
            v56 = currentLayout;
            LODWORD(v43) = 32;
            v40 = &v51;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        currentLayout2 = [-[FBSDisplayLayoutMonitor currentLayout](self->_layoutMonitor currentLayout];
        v27 = [currentLayout2 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v47;
LABEL_45:
          v30 = 0;
          while (1)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(currentLayout2);
            }

            if ([objc_msgSend(*(*(&v46 + 1) + 8 * v30) "bundleIdentifier")])
            {
              break;
            }

            if (v28 == ++v30)
            {
              v28 = [currentLayout2 countByEnumeratingWithState:&v46 objects:v45 count:16];
              if (v28)
              {
                goto LABEL_45;
              }

              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          if (!self->_pendingStreamStartAfterResumeEvent && !self->_firstSidecarLayoutReceived)
          {
            if (dword_100019EC8)
            {
              v58 = 0;
              v57 = OS_LOG_TYPE_DEFAULT;
              v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v36 = v58;
              if (os_log_type_enabled(v35, v57))
              {
                v37 = v36;
              }

              else
              {
                v37 = v36 & 0xFFFFFFFE;
              }

              if (!v37)
              {
                goto LABEL_69;
              }

              v51 = 136315394;
              v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
              v53 = 2048;
              selfCopy5 = self;
              goto LABEL_59;
            }

LABEL_70:
            self->_pendingStreamStartAfterResumeEvent = 0;
            return;
          }
        }

        if (dword_100019EC8)
        {
          v58 = 0;
          v57 = OS_LOG_TYPE_DEFAULT;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v32 = v58;
          if (os_log_type_enabled(v31, v57))
          {
            v33 = v32;
          }

          else
          {
            v33 = v32 & 0xFFFFFFFE;
          }

          if (!v33)
          {
            goto LABEL_69;
          }

          pendingStreamStartAfterResumeEvent = self->_pendingStreamStartAfterResumeEvent;
          v51 = 136315650;
          v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
          v53 = 2048;
          selfCopy5 = self;
          v55 = 1024;
          LODWORD(v56) = pendingStreamStartAfterResumeEvent;
LABEL_59:
          _os_log_send_and_compose_impl();
LABEL_69:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_70;
        }

        goto LABEL_70;
      }

      self->_uiState = 0;
    }

    [(ContinuityCaptureViewController *)self _updateUI];
    goto LABEL_30;
  }

  if ([path isEqualToString:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey])
  {
    if (![objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "BOOLValue"}])
    {
      return;
    }

    if (dword_100019EC8)
    {
      v58 = 0;
      v57 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v58;
      if (os_log_type_enabled(v16, v57))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v51 = 136315394;
        v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2048;
        selfCopy5 = self;
        LODWORD(v42) = 22;
        v39 = &v51;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = 56;
  }

  else
  {
    if (![path isEqualToString:CMContinuityCaptureCallStateKVOKey])
    {
      v44.receiver = self;
      v44.super_class = ContinuityCaptureViewController;
      [(ContinuityCaptureViewController *)&v44 observeValueForKeyPath:path ofObject:object change:change context:context];
      return;
    }

    if ([objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "integerValue"}] != 2)
    {
      return;
    }

    v19 = 154;
  }

  self->SidecarServiceViewController_opaque[v19] = 1;
  [(ContinuityCaptureViewController *)self _resolveUserPauseState:v39];
}

- (void)_handleLayout:(id)layout ignoringStandby:(BOOL)standby
{
  standbyCopy = standby;
  if (dword_100019EC8)
  {
    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  sidecarLayoutValue = self->_sidecarLayoutValue;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!layout)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v78;
    if (os_log_type_enabled(v27, v77))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (!v29)
    {
      goto LABEL_84;
    }

    goto LABEL_70;
  }

  if (![layout displayBacklightLevel])
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = v78;
    if (os_log_type_enabled(v30, v77))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (!v32)
    {
      goto LABEL_84;
    }

    goto LABEL_70;
  }

  v70 = FBSDisplayLayoutElementSiriIdentifier;
  v8 = [NSArray arrayWithObjects:&v70 count:1];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [layout elements];
  v9 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v54 = sidecarLayoutValue;
    layoutCopy = layout;
    selfCopy = self;
    v57 = 0;
    level = -1;
    v11 = *v67;
    v12 = SBSDisplayLayoutElementStandByIdentifier;
    v58 = FBSDisplayLayoutElementLockScreenIdentifier;
    v56 = SBSDisplayLayoutElementHomeScreenIdentifier;
    level2 = -1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v67 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v66 + 1) + 8 * i);
        if (-[NSArray containsObject:](v8, "containsObject:", [v14 identifier]))
        {
          if (dword_100019EC8)
          {
            v78 = 0;
            v77 = OS_LOG_TYPE_DEFAULT;
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v78;
            if (os_log_type_enabled(v15, v77))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              identifier = [v14 identifier];
              v71 = 136315650;
              v72 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
              v73 = 2048;
              selfCopy4 = selfCopy;
              v75 = 2112;
              v76 = identifier;
              LODWORD(v53) = 32;
              v52 = &v71;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if ([objc_msgSend(v14 "identifier")])
          {
            v19 = !standbyCopy;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            if ([v14 level] > level)
            {
              level = [v14 level];
            }

            if ([objc_msgSend(v14 "bundleIdentifier")])
            {
              level2 = [v14 level];
            }

            else if ([objc_msgSend(v14 "identifier")])
            {
              HIDWORD(v57) = 1;
            }

            else if ([objc_msgSend(v14 "identifier")])
            {
              LOBYTE(v57) = ([objc_msgSend(layoutCopy "elements")] == 1) | v57;
            }
          }

          else
          {
            if (dword_100019EC8)
            {
              v78 = 0;
              v77 = OS_LOG_TYPE_DEFAULT;
              v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v21 = v78;
              if (os_log_type_enabled(v20, v77))
              {
                v22 = v21;
              }

              else
              {
                v22 = v21 & 0xFFFFFFFE;
              }

              if (v22)
              {
                identifier2 = [v14 identifier];
                v71 = 136315650;
                v72 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
                v73 = 2048;
                selfCopy4 = selfCopy;
                v75 = 2112;
                v76 = identifier2;
                LODWORD(v53) = 32;
                v52 = &v71;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v24 = dispatch_time(0, 2000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000A2FC;
            block[3] = &unk_100014630;
            block[4] = selfCopy;
            block[5] = v14;
            dispatch_after(v24, &_dispatch_main_q, block);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
    }

    while (v10);
    v25 = 1;
    v26 = level2;
    self = selfCopy;
    if (level2 != -1)
    {
      selfCopy->_firstSidecarLayoutReceived = 1;
      v25 = 0;
    }

    sidecarLayoutValue = v54;
    v33 = HIDWORD(v57);
  }

  else
  {
    v33 = 0;
    LOBYTE(v57) = 0;
    v26 = -1;
    v25 = 1;
    level = -1;
  }

  if (!self->_firstSidecarLayoutReceived)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = v78;
    if (os_log_type_enabled(v37, v77))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFE;
    }

    if (!v39)
    {
      goto LABEL_84;
    }

    goto LABEL_70;
  }

  if ((v25 & v33) == 1)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v78;
    if (os_log_type_enabled(v34, v77))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (!v36)
    {
      goto LABEL_84;
    }

    goto LABEL_70;
  }

  if (!self->_ignoreLayoutUpdatesAfterDeviceUnlock)
  {
    goto LABEL_88;
  }

  if ((v57 & 1) == 0)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v44 = v78;
    if (os_log_type_enabled(v43, v77))
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 & 0xFFFFFFFE;
    }

    if (!v45)
    {
      goto LABEL_84;
    }

LABEL_70:
    v71 = 136315394;
    v72 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
    v73 = 2048;
    selfCopy4 = self;
    _os_log_send_and_compose_impl();
LABEL_84:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  self->_ignoreLayoutUpdatesAfterDeviceUnlock = 0;
  if (dword_100019EC8)
  {
    v78 = 0;
    v77 = OS_LOG_TYPE_DEFAULT;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = v78;
    if (os_log_type_enabled(v40, v77))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      v71 = 136315394;
      v72 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v73 = 2048;
      selfCopy4 = self;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_88:
    v47 = dword_100019EC8;
    v46 = v26 >= level;
    self->_sidecarLayoutValue = v46;
    if (v47)
    {
      v78 = 0;
      v77 = OS_LOG_TYPE_DEFAULT;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = v78;
      if (os_log_type_enabled(v48, v77))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        v51 = self->_sidecarLayoutValue;
        v71 = 136315650;
        v72 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
        v73 = 2048;
        selfCopy4 = self;
        v75 = 1024;
        LODWORD(v76) = v51;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v46 = self->_sidecarLayoutValue;
    }

    goto LABEL_95;
  }

  v46 = v26 >= level;
  self->_sidecarLayoutValue = v46;
LABEL_95:
  if (sidecarLayoutValue != v46)
  {
    [(ContinuityCaptureViewController *)self _resolveUserPauseState];
  }
}

- (void)_resolveUserPauseState
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v17 = 0;
    v16 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  continuityCaptureDevice = self->_continuityCaptureDevice;
  if (continuityCaptureDevice)
  {
    if (self->_inactive)
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserPause entity:0 data:0];
LABEL_25:
      self->_sideButtonPressed = 0;
      self->_incomingCallDeclined = 0;
      return;
    }

    if (self->_sideButtonPressed)
    {
LABEL_13:
      if (!self->_incomingCall && self->_firstSidecarLayoutReceived)
      {
        [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserResume entity:0 data:0];
        self->_pendingStreamStartAfterResumeEvent = 1;
      }

      goto LABEL_25;
    }

    pauseButtonPressed = self->_pauseButtonPressed;
    if (self->_incomingCallDeclined)
    {
      if (!self->_pauseButtonPressed)
      {
        goto LABEL_13;
      }
    }

    else if (!self->_pauseButtonPressed && self->_sidecarLayoutValue)
    {
      v9 = &kCMContinuityCaptureEventUserResume;
LABEL_24:
      [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:*v9 entity:0 data:0, v10, v11];
      goto LABEL_25;
    }

    v9 = &kCMContinuityCaptureEventUserPause;
    goto LABEL_24;
  }

  if (dword_100019EC8)
  {
    v17 = 0;
    v16 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v17;
    if (os_log_type_enabled(v5, v16))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v12 = 136315394;
      v13 = "[ContinuityCaptureViewController _resolveUserPauseState]";
      v14 = 2048;
      selfCopy = self;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state
{
  if (self->_deviceIsLocked != state)
  {
    if (dword_100019EC8)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_deviceIsLocked = state;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A9BC;
    block[3] = &unk_100014720;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_disconnectSession
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  self->_pendingDisconnectDialogue = 0;
  self->_userDisconnect = 1;
  [(CMContinuityCaptureRemoteCompositeDevice *)self->_continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserDisconnect entity:0 data:0];
  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD10;
  block[3] = &unk_100014720;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

@end