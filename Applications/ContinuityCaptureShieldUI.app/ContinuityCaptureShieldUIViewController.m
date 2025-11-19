@interface ContinuityCaptureShieldUIViewController
+ (BOOL)_isPad;
- (BOOL)_shouldShowHowToReconnectDialog;
- (void)_disconnectFaceTimeIfNecessary;
- (void)_pullConversation:(id)a3 deviceHandle:(id)a4 completion:(id)a5;
- (void)_showDedicatedDisconnectDialog;
- (void)_showHowToReconnectDialog;
- (void)_updateUIForClientInformation;
- (void)_updateUIForConnectionType;
- (void)_updateUIForPlacementStep;
- (void)_updateUIForUIState;
- (void)contentViewDidSelectDisconnectButton:(id)a3;
- (void)contentViewDidSelectFaceTimeButton:(id)a3 completion:(id)a4;
- (void)contentViewDidSelectFavoritesButton:(id)a3;
- (void)contentViewDidSelectPauseButton:(id)a3;
- (void)contentViewDidSelectSkipButton:(id)a3;
- (void)disconnectSession;
- (void)loadView;
- (void)tearDownShield;
- (void)updateUI;
- (void)viewDidLoad;
@end

@implementation ContinuityCaptureShieldUIViewController

- (void)loadView
{
  v3 = objc_alloc_init(ContinuityCaptureShieldUIContentView);
  [(ContinuityCaptureShieldUIContentView *)v3 setDelegate:self];
  [(ContinuityCaptureShieldUIViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ContinuityCaptureShieldUIViewController viewDidLoad]";
    v12 = 2048;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = ContinuityCaptureShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v9 viewDidLoad];
  v4 = +[UIColor clearColor];
  v5 = [(ContinuityCaptureShieldUIViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(ContinuityCaptureShieldUIViewController *)self view];
  [v6 setOverrideUserInterfaceStyle:2];

  v7 = [(ContinuityCaptureShieldUIViewController *)self view];
  [v7 _setOverrideUserInterfaceRenderingMode:2];

  v8 = [(ContinuityCaptureShieldUIViewController *)self view];
  [v8 _setOverrideVibrancyTrait:2];
}

- (BOOL)_shouldShowHowToReconnectDialog
{
  v2 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v3 = [v2 activeConfiguration];

  if (v3)
  {
    v4 = [v3 clientDeviceModel] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_showHowToReconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3 = +[ContinuityCaptureShieldUIViewController _isPad];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"ALERT_DISCONNECTED_TITLE_IPAD";
  }

  else
  {
    v6 = @"ALERT_DISCONNECTED_TITLE_IPHONE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100018968 table:0];
  v8 = [NSString stringWithFormat:v7];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v3)
  {
    v11 = @"ALERT_DISCONNECTED_MESSAGE_IPAD";
  }

  else
  {
    v11 = @"ALERT_DISCONNECTED_MESSAGE_IPHONE";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_100018968 table:0];
  v13 = [UIAlertController alertControllerWithTitle:v8 message:v12 preferredStyle:1];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" value:&stru_100018968 table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000041C0;
  v22[3] = &unk_1000185F8;
  objc_copyWeak(&v23, &location);
  v22[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v22];
  [v13 addAction:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" value:&stru_100018968 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004270;
  v20[3] = &unk_1000185F8;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:v20];
  [v13 addAction:v19];

  [(ContinuityCaptureShieldUIViewController *)self presentViewController:v13 animated:1 completion:0];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (void)_showDedicatedDisconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ALERT_DISCONNECTED_DEDICATED_TITLE" value:&stru_100018968 table:0];
  v5 = [NSString stringWithFormat:v4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"ALERT_DISCONNECTED_DEDICATED_MESSAGE" value:&stru_100018968 table:0];
  v8 = [NSString stringWithFormat:v7];
  v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" value:&stru_100018968 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004638;
  v18[3] = &unk_1000185F8;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:2 handler:v18];
  [v9 addAction:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" value:&stru_100018968 table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000046E8;
  v16[3] = &unk_1000185F8;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v16];
  [v9 addAction:v15];

  [(ContinuityCaptureShieldUIViewController *)self presentViewController:v9 animated:1 completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_updateUIForConnectionType
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v16 = [v3 activeConfiguration];

  v4 = v16;
  if (v16)
  {
    v5 = [v16 clientDeviceModel];
    v6 = [(ContinuityCaptureShieldUIViewController *)self view];
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
        v11 = [v10 connectionType];

        if (!v11)
        {
          v9 = @"appletv.fill";
          goto LABEL_17;
        }

        if (v11 == 1)
        {
          v12 = @"appletv_mic";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_20;
          }

          v12 = @"appletv_camera";
        }

        v13 = [UIImage imageNamed:v12];
        goto LABEL_18;
      }
    }

    else
    {
      v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v8 = [v7 connectionType];

      if (!v8)
      {
        v9 = @"video.slash.fill";
        goto LABEL_17;
      }

      if (v8 == 1)
      {
        v9 = @"mic.circle.fill";
        goto LABEL_17;
      }

      if (v8 == 2)
      {
        v9 = @"video.circle.fill";
LABEL_17:
        v13 = [UIImage systemImageNamed:v9];
LABEL_18:
        v14 = v13;
        if (v13)
        {
          v15 = [v13 imageWithRenderingMode:2];

          [v6 setImage:v15];
        }
      }
    }

LABEL_20:

    v4 = v16;
  }
}

- (void)_updateUIForClientInformation
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v41 = [v3 activeConfiguration];

  v4 = v41;
  if (v41)
  {
    v5 = [(ContinuityCaptureShieldUIViewController *)self view];
    v6 = [v41 clientName];
    v7 = +[ContinuityCaptureShieldUIViewController _isPad];
    v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v9 = [v8 uiState];

    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = [v10 isInFaceTime];

    v12 = [v41 clientDeviceModel];
    if (v12 >= 2)
    {
      if (v12 != 2)
      {
        v20 = 0;
LABEL_52:

        v4 = v41;
        goto LABEL_53;
      }

      if (!v6 || v9)
      {
        if (!v6 || !v9)
        {
          v34 = +[NSBundle mainBundle];
          v35 = v34;
          if (v6 || v9)
          {
            v36 = @"LABEL_CONNECTED_TO_TV";
          }

          else
          {
            v36 = @"LABEL_CONNECTING_TO_TV";
          }

          v20 = [v34 localizedStringForKey:v36 value:&stru_100018968 table:0];

          v32 = +[NSBundle mainBundle];
          v25 = v32;
          if (v11)
          {
            v37 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_IPHONE";
            v38 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_IPAD";
          }

          else
          {
            v37 = @"SUBTITLE_DESCRIPTION_TV_IPHONE";
            v38 = @"SUBTITLE_DESCRIPTION_TV_IPAD";
          }

          if (v7)
          {
            v33 = v38;
          }

          else
          {
            v33 = v37;
          }

          goto LABEL_47;
        }

        v16 = +[NSBundle mainBundle];
        v17 = v16;
        v18 = @"LABEL_CONNECTED_TO_TV_WITH_NAME";
      }

      else
      {
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        v18 = @"LABEL_CONNECTING_TO_TV_WITH_NAME";
      }

      v23 = [v16 localizedStringForKey:v18 value:&stru_100018968 table:0];
      v20 = [NSString stringWithFormat:v23, v6];

      v24 = +[NSBundle mainBundle];
      v25 = v24;
      if (v11)
      {
        v26 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_WITH_NAME_IPHONE";
        v27 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_WITH_NAME_IPAD";
      }

      else
      {
        v26 = @"SUBTITLE_DESCRIPTION_TV_WITH_NAME_IPHONE";
        v27 = @"SUBTITLE_DESCRIPTION_TV_WITH_NAME_IPAD";
      }

      if (v7)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      v29 = [v24 localizedStringForKey:v28 value:&stru_100018968 table:0];
      v40 = v6;
      goto LABEL_48;
    }

    if (!v6 || v9)
    {
      if (!v6 || !v9)
      {
        v21 = +[NSBundle mainBundle];
        v14 = v21;
        if (v6 || v9)
        {
          v22 = @"LABEL_CONNECTED_TO_MAC";
        }

        else
        {
          v22 = @"LABEL_CONNECTING_TO_MAC";
        }

        v20 = [v21 localizedStringForKey:v22 value:&stru_100018968 table:0];
        goto LABEL_30;
      }

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"LABEL_CONNECTED_TO_MAC_WITH_NAME";
    }

    else
    {
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"LABEL_CONNECTING_TO_MAC_WITH_NAME";
    }

    v19 = [v13 localizedStringForKey:v15 value:&stru_100018968 table:0];
    v20 = [NSString stringWithFormat:v19, v6];

LABEL_30:
    v30 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v31 = [v30 connectionType];

    v32 = +[NSBundle mainBundle];
    v25 = v32;
    if (v31 == 1)
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_MICROPHONE_MAC";
    }

    else if (v31 == 2)
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_CAMERA_MAC";
    }

    else if (v7)
    {
      v33 = @"LABEL_DISCONNECT_IPAD_DESCRIPTION_NONE_MAC";
    }

    else
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_NONE_MAC";
    }

LABEL_47:
    v29 = [v32 localizedStringForKey:v33 value:&stru_100018968 table:0];
LABEL_48:
    v39 = [NSString stringWithFormat:v29, v40];

    if (v20)
    {
      [v5 setPrimaryText:v20];
    }

    if (v39)
    {
      [v5 setSecondaryText:v39];
    }

    goto LABEL_52;
  }

LABEL_53:
}

- (void)_updateUIForUIState
{
  v9 = [(ContinuityCaptureShieldUIViewController *)self view];
  v2 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v3 = [v2 isInFaceTime];

  [v9 setInFaceTimeSession:v3];
  v4 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v5 = [v4 isDedicatedSession];

  [v9 setIsDedicatedSession:v5];
  [v9 setInPlacementStep:0];
  v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v7 = [v6 uiState];

  if (v7 == 4)
  {
    v7 = 0;
LABEL_6:
    [v9 setPauseButtonState:v7];
    v8 = v9;
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    goto LABEL_6;
  }

  v8 = v9;
  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_updateUIForPlacementStep
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 activeConfiguration];

  if (v4)
  {
    v5 = [(ContinuityCaptureShieldUIViewController *)self view];
    v6 = [v4 clientDeviceModel];
    v7 = [v4 clientName];
    v8 = +[ContinuityCaptureShieldUIViewController _isPad];
    v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v10 = [v9 uiState];

    if (v10 == 5)
    {
      if (v6 == 2)
      {
        [v5 setInPlacementStep:1];
        v11 = +[NSBundle mainBundle];
        v12 = v11;
        if (v8)
        {
          v13 = @"LABEL_PLACE_DEVICE_TO_CONTINUE_IPAD";
        }

        else
        {
          v13 = @"LABEL_PLACE_DEVICE_TO_CONTINUE_IPHONE";
        }

        v14 = [v11 localizedStringForKey:v13 value:&stru_100018968 table:0];
        v15 = [NSString stringWithFormat:v14];

        v16 = +[NSBundle mainBundle];
        v17 = v16;
        if (v7)
        {
          if (v8)
          {
            v18 = @"SUBTITLE_DESCRIPTION_PLACEMENT_WITH_NAME_IPAD";
          }

          else
          {
            v18 = @"SUBTITLE_DESCRIPTION_PLACEMENT_WITH_NAME_IPHONE";
          }

          v19 = [v16 localizedStringForKey:v18 value:&stru_100018968 table:0];
          [NSString stringWithFormat:v19, v7];
        }

        else
        {
          if (v8)
          {
            v20 = @"SUBTITLE_DESCRIPTION_PLACEMENT_IPAD";
          }

          else
          {
            v20 = @"SUBTITLE_DESCRIPTION_PLACEMENT_IPHONE";
          }

          v19 = [v16 localizedStringForKey:v20 value:&stru_100018968 table:0];
          [NSString stringWithFormat:v19, v23];
        }
        v21 = ;

        [v5 setPrimaryText:v15];
        [v5 setSecondaryText:v21];
        v22 = [UIImage systemImageNamed:@"tv.and.mediabox.fill"];
        [v5 setImage:v22];
      }

      else
      {
        v15 = sub_100006DC0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10000AA14();
        }
      }
    }
  }
}

- (void)updateUI
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 activeConfiguration];

  if (v4)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v5 = sub_100006DC0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v7 = [v6 uiState];
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = [v8 connectionType];
      v10 = [v4 clientName];
      v14 = 136316674;
      v15 = "[ContinuityCaptureShieldUIViewController updateUI]";
      v16 = 2112;
      v17 = self;
      v18 = 2080;
      v19 = "[ContinuityCaptureShieldUIViewController updateUI]";
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 1024;
      v27 = [v4 compositeState];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:  %@ %s uiState %d connectionType %d clientName %@ compositeState %x", &v14, 0x3Cu);
    }

    if (![(ContinuityCaptureShieldUIBaseViewController *)self isTerminated])
    {
      v11 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v12 = [v11 uiState];

      if (v12 == 5)
      {
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForPlacementStep];
      }

      else
      {
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForConnectionType];
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForClientInformation];
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForUIState];
      }

      v13 = +[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance];
      [v13 updateState:{objc_msgSend(v4, "compositeState")}];
    }
  }
}

- (void)_pullConversation:(id)a3 deviceHandle:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000055B4;
  v24[3] = &unk_100018648;
  v11 = v8;
  v25 = v11;
  v12 = v9;
  v26 = v12;
  objc_copyWeak(&v28, &location);
  v13 = v10;
  v27 = v13;
  v14 = objc_retainBlock(v24);
  if ([(ContinuityCaptureShieldUIBaseViewController *)self isOnLockScreen])
  {
    v15 = sub_100006DC0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[ContinuityCaptureShieldUIViewController _pullConversation:deviceHandle:completion:]";
      v22 = 2112;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: %@ pull conversation back to phone selected on lock screen. Removing shield from lock screen then pulling conversation", buf, 0x16u);
    }

    v16 = objc_opt_new();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005738;
    v18[3] = &unk_100018670;
    v19 = v14;
    [v16 lockDeviceAnimated:0 withCompletion:v18];
    [v16 invalidate];
  }

  else
  {
    v17 = sub_100006DC0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[ContinuityCaptureShieldUIViewController _pullConversation:deviceHandle:completion:]";
      v22 = 2112;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: %@ pull conversation back to phone", buf, 0x16u);
    }

    (v14[2])(v14);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)tearDownShield
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (*(&self->super._observingKVO + 1))
  {
    v3 = sub_100006DC0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v6 = "[ContinuityCaptureShieldUIViewController tearDownShield]";
      v7 = 2112;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ skip shield teardown since we have pending user dialogue for disconnect", buf, 0x16u);
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ContinuityCaptureShieldUIViewController;
    [(ContinuityCaptureShieldUIBaseViewController *)&v4 tearDownShield];
  }
}

- (void)contentViewDidSelectPauseButton:(id)a3
{
  v6 = [(ContinuityCaptureShieldUIViewController *)self view];
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 uiState];

  if (v4 == 1)
  {
    [v6 setPauseButtonState:2];
    v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v5 pauseSessionForEvent:0];
  }

  else
  {
    [v6 setPauseButtonState:1];
    v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v5 resumeStreamingForEvent:0];
  }
}

- (void)contentViewDidSelectDisconnectButton:(id)a3
{
  [(ContinuityCaptureShieldUIBaseViewController *)self setDisconnectReason:2];
  if ([(ContinuityCaptureShieldUIViewController *)self _shouldShowHowToReconnectDialog])
  {
    *(&self->super._observingKVO + 1) = 1;

    [(ContinuityCaptureShieldUIViewController *)self _showHowToReconnectDialog];
  }

  else
  {
    v4 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v5 = [v4 isDedicatedSession];

    if (v5)
    {
      *(&self->super._observingKVO + 1) = 1;

      [(ContinuityCaptureShieldUIViewController *)self _showDedicatedDisconnectDialog];
    }

    else
    {

      [(ContinuityCaptureShieldUIViewController *)self disconnectSession];
    }
  }
}

- (void)_disconnectFaceTimeIfNecessary
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 isInFaceTime];

  if (v4)
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 conversationManager];
    v7 = [v6 activeConversations];
    v8 = [v7 bs_firstObjectPassingTest:&stru_1000186B0];

    v9 = sub_100006DC0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v8 UUID];
        v15 = 136315650;
        v16 = "[ContinuityCaptureShieldUIViewController _disconnectFaceTimeIfNecessary]";
        v17 = 2112;
        v18 = self;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@ - Disconnect pressed, leaving conversation: %@", &v15, 0x20u);
      }

      v12 = +[TUCallCenter sharedInstance];
      v13 = [v12 conversationManager];
      v14 = [v8 UUID];
      [v13 leaveConversationWithUUID:v14];
    }

    else
    {
      if (v10)
      {
        v15 = 136315394;
        v16 = "[ContinuityCaptureShieldUIViewController _disconnectFaceTimeIfNecessary]";
        v17 = 2112;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@ - Disconnect pressed, but not in active conversation. Disconnecting all calls", &v15, 0x16u);
      }

      v12 = +[TUCallCenter sharedInstance];
      [v12 disconnectAllCalls];
    }
  }
}

- (void)disconnectSession
{
  [(ContinuityCaptureShieldUIViewController *)self _disconnectFaceTimeIfNecessary];
  *(&self->super._observingKVO + 1) = 0;
  v3.receiver = self;
  v3.super_class = ContinuityCaptureShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v3 disconnectSession];
}

- (void)contentViewDidSelectFaceTimeButton:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 conversationManager];
  v10 = [v9 activeConversations];
  v11 = [v10 bs_firstObjectPassingTest:&stru_1000186D0];

  v12 = +[TUCallCenter sharedInstance];
  v13 = [v12 neighborhoodActivityConduit];
  v14 = [v13 activeSplitSessionTV];

  if (v11)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = sub_100006DC0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectFaceTimeButton:completion:]";
      v20 = 2112;
      v21 = self;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: %@ facetime button tapped but deviceHandle=%@ and conversation=%@", &v18, 0x2Au);
    }

    v7[2](v7);
  }

  else
  {
    objc_initWeak(&v18, self);
    v17 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100005E88;
    v26[3] = &unk_1000186F8;
    objc_copyWeak(&v30, &v18);
    v27 = v11;
    v28 = v14;
    v29 = v7;
    [v17 prepareForPullConversation:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v18);
  }
}

- (void)contentViewDidSelectSkipButton:(id)a3
{
  v4 = sub_100006DC0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectSkipButton:]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v6, 0x16u);
  }

  v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
  [v5 skipPlacementStep];
}

- (void)contentViewDidSelectFavoritesButton:(id)a3
{
  v4 = sub_100006DC0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectFavoritesButton:]";
    v14 = 2112;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:  %@", buf, 0x16u);
  }

  v10[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v10[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v11[0] = &__kCFBooleanTrue;
  v11[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [NSURL URLWithString:@"mobilephone-favorites://"];
  v8 = [v6 openSensitiveURL:v7 withOptions:v5];

  if ((v8 & 1) == 0)
  {
    v9 = sub_100006DC0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000AB54();
    }
  }
}

+ (BOOL)_isPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

@end