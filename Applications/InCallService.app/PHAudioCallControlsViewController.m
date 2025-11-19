@interface PHAudioCallControlsViewController
- (BOOL)controlTypeIsEnabled:(unint64_t)a3;
- (BOOL)controlTypeIsSelected:(unint64_t)a3;
- (BOOL)hasActiveAndIncomingCallPresent;
- (BOOL)isEnabled;
- (BOOL)multipleCallsArePresent;
- (BOOL)usesCompactMulticallUI;
- (NSArray)buttonsForAmbientTransition;
- (PHAudioCallControlArrangement)currentArrangement;
- (PHAudioCallControlsViewController)initWithCallDisplayStyleManager:(id)a3;
- (PHAudioCallControlsViewControllerDelegate)delegate;
- (PHScreenSharingButtonViewModel)getScreenSharingButtonViewModel;
- (TUCall)activeCall;
- (id)audioRouteMenu;
- (id)currentArrangementWithSenderIdentityClient:(id)a3;
- (id)endCallButton;
- (id)getScaledIconForSymbolType:(int64_t)a3 withImage:(id)a4;
- (id)imageForControlType:(unint64_t)a3;
- (id)prioritizedCall;
- (id)resizeImage:(id)a3 maxDimension:(double)a4;
- (id)titleForControlType:(unint64_t)a3;
- (unint64_t)controlTypeAtRow:(unint64_t)a3 column:(unint64_t)a4;
- (unint64_t)numberOfColumnsInControlsView:(id)a3;
- (unint64_t)numberOfRowsInControlsView:(id)a3;
- (void)callIsOnHoldChangedNotification:(id)a3;
- (void)callModelChangedNotification:(id)a3;
- (void)callStatusChangedNotification:(id)a3;
- (void)conferenceParticipantCallsChangedNotification:(id)a3;
- (void)controlTypeLongPressed:(unint64_t)a3;
- (void)controlTypeShortPressed:(unint64_t)a3;
- (void)controlTypeTapped:(unint64_t)a3 forView:(id)a4;
- (void)dealloc;
- (void)faceTimeIDStatusChangedNotification:(id)a3;
- (void)fetchAudioRoutesImageWithCompletion:(id)a3;
- (void)handleMutedTalkerBannerTap;
- (void)handleTUCallIsSharePlayCapableChangedNotification:(id)a3;
- (void)handleTUCallIsSharingScreenChangedNotification:(id)a3;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3;
- (void)handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)loadView;
- (void)openMessagesForCall:(id)a3;
- (void)routesChangedForRouteController:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setPrioritizedCall:(id)a3;
- (void)setUpdatesPaused:(BOOL)a3;
- (void)updateControls;
- (void)uplinkStateChangedNotification:(id)a3;
@end

@implementation PHAudioCallControlsViewController

- (void)updateControls
{
  if ([(PHAudioCallControlsViewController *)self updatesPaused])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ updates are paused, skipping update.", buf, 0xCu);
    }
  }

  else
  {
    v5 = [(PHAudioCallControlsViewController *)self controlsView];
    [v5 updateControls];
  }
}

- (PHAudioCallControlArrangement)currentArrangement
{
  v3 = objc_alloc_init(TUSenderIdentityClient);
  v4 = [(PHAudioCallControlsViewController *)self currentArrangementWithSenderIdentityClient:v3];

  return v4;
}

- (TUCall)activeCall
{
  if ([(PHAudioCallControlsViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallControlsViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(PHAudioCallControlsViewController *)self prioritizedCall];
  }

  else
  {
    v5 = [(PHAudioCallControlsViewController *)self callCenter];
    v4 = [v5 frontmostCall];
  }

  return v4;
}

- (BOOL)usesCompactMulticallUI
{
  v2 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] != 3;

  return v3;
}

- (id)prioritizedCall
{
  if ([(PHAudioCallControlsViewController *)self usesCompactMulticallUI])
  {
    v3 = self->_prioritizedCall;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PHAudioCallControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)multipleCallsArePresent
{
  v2 = [(PHAudioCallControlsViewController *)self callContainer];
  v3 = [v2 currentCallGroups];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) status] - 1 < 4)
        {
          ++v6;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
    LOBYTE(v5) = v6 > 1;
  }

  return v5;
}

- (BOOL)isEnabled
{
  v2 = [(PHAudioCallControlsViewController *)self controlsView];
  v3 = [v2 buttonsEnabled];

  return v3;
}

- (PHAudioCallControlsViewController)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PHAudioCallControlsViewController;
  v6 = [(PHAudioCallControlsViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
    v7->_contactStoreAuthorized = +[CNContactStore phoneKit_isAuthorized];
    v8 = +[CNKFeatures sharedInstance];
    features = v7->_features;
    v7->_features = v8;

    v7->_updatesPaused = 0;
    v7->_proximitySensorNotificationToken = 0;
    v10 = +[TUCallCenter sharedInstance];
    [(PHAudioCallControlsViewController *)v7 setCallCenter:v10];

    v11 = [(PHAudioCallControlsViewController *)v7 callCenter];
    v12 = [v11 routeController];
    [v12 addDelegate:v7];

    v13 = [(PHAudioCallControlsViewController *)v7 callCenter];
    [(PHAudioCallControlsViewController *)v7 setCallContainer:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"callStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v14 addObserver:v7 selector:"callStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v14 addObserver:v7 selector:"callIsOnHoldChangedNotification:" name:TUCallIsOnHoldChangedNotification object:0];
    [v14 addObserver:v7 selector:"conferenceParticipantCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
    [v14 addObserver:v7 selector:"callModelChangedNotification:" name:TUCallModelChangedNotification object:0];
    [v14 addObserver:v7 selector:"faceTimeIDStatusChangedNotification:" name:TUCallFaceTimeIDStatusChangedNotification object:0];
    [v14 addObserver:v7 selector:"uplinkStateChangedNotification:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v14 addObserver:v7 selector:"handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
    [v14 addObserver:v7 selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
    [v14 addObserver:v7 selector:"handleTUCallIsSharingScreenChangedNotification:" name:TUCallIsSharingScreenChangedNotification object:0];
    [v14 addObserver:v7 selector:"handleTUCallIsSharePlayCapableChangedNotification:" name:TUCallIsSharePlayCapableChangedNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHAudioCallControlsViewController;
  [(PHAudioCallControlsViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [PHAudioCallControlsView alloc];
  v4 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v5 = [(PHAudioCallControlsView *)v3 initWithCallDisplayStyleManager:v4];
  controlsView = self->_controlsView;
  self->_controlsView = v5;

  [(PHAudioCallControlsView *)self->_controlsView setDelegate:self];
  v7 = self->_controlsView;

  [(PHAudioCallControlsViewController *)self setView:v7];
}

- (id)endCallButton
{
  v2 = [(PHAudioCallControlsViewController *)self controlsView];
  v3 = [v2 buttonForControlType:15];

  return v3;
}

- (PHScreenSharingButtonViewModel)getScreenSharingButtonViewModel
{
  screenSharingButtonViewModel = self->_screenSharingButtonViewModel;
  if (screenSharingButtonViewModel && (-[PHScreenSharingButtonViewModel callUUID](screenSharingButtonViewModel, "callUUID"), v4 = objc_claimAutoreleasedReturnValue(), -[PHAudioCallControlsViewController activeCall](self, "activeCall"), v5 = objc_claimAutoreleasedReturnValue(), [v5 callUUID], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v4 == v6))
  {
    v17 = self->_screenSharingButtonViewModel;
  }

  else
  {
    v7 = [(PHAudioCallControlsViewController *)self activeCall];

    v8 = sub_100004F84();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating new PHScreenSharingButtonViewModel", buf, 2u);
      }

      v10 = [PHScreenSharingButtonViewModel alloc];
      v11 = [(PHAudioCallControlsViewController *)self activeCall];
      v12 = [(PHAudioCallControlsViewController *)self callCenter];
      v13 = [(PHScreenSharingButtonViewModel *)v10 initWithCall:v11 callCenter:v12];
      v14 = self->_screenSharingButtonViewModel;
      self->_screenSharingButtonViewModel = v13;

      objc_initWeak(buf, self);
      v15 = self->_screenSharingButtonViewModel;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10014445C;
      v19[3] = &unk_10035A1C8;
      objc_copyWeak(&v20, buf);
      v16 = [(PHScreenSharingButtonViewModel *)v15 listenWith:v19];
      [(PHAudioCallControlsViewController *)self setScreenSharingButtonViewModelObserver:v16];

      v17 = self->_screenSharingButtonViewModel;
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v9)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not creating new PHScreenSharingButtonViewModel because fontmostCall is nil", buf, 2u);
      }

      v17 = 0;
    }
  }

  return v17;
}

- (void)setPrioritizedCall:(id)a3
{
  v5 = a3;
  if (([(TUCall *)self->_prioritizedCall isEqualToCall:?]& 1) == 0)
  {
    objc_storeStrong(&self->_prioritizedCall, a3);
    [(PHAudioCallControlsViewController *)self updateControls];
  }
}

- (void)callStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)callIsOnHoldChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)conferenceParticipantCallsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)faceTimeIDStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)callModelChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)uplinkStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallIsSharePlayCapableChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallIsSharingScreenChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (unint64_t)numberOfRowsInControlsView:(id)a3
{
  v3 = [(PHAudioCallControlsViewController *)self currentArrangement];
  v4 = [v3 rows];

  return v4;
}

- (unint64_t)numberOfColumnsInControlsView:(id)a3
{
  v3 = [(PHAudioCallControlsViewController *)self currentArrangement];
  v4 = [v3 columns];

  return v4;
}

- (unint64_t)controlTypeAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v6 = [(PHAudioCallControlsViewController *)self currentArrangement];
  v7 = [v6 controlTypeAtRow:a3 column:a4];

  return v7;
}

- (void)fetchAudioRoutesImageWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 routeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001450C8;
  v7[3] = &unk_100358950;
  v8 = v3;
  v6 = v3;
  [v5 fetchAudioControlsGlyphWithCompletion:v7];
}

- (id)imageForControlType:(unint64_t)a3
{
  v4 = 0;
  v5 = 0;
  switch(a3)
  {
    case 0uLL:
      v5 = 0;
      v4 = 22;
      goto LABEL_25;
    case 1uLL:
      v5 = 0;
      v4 = 19;
      goto LABEL_25;
    case 2uLL:
      v5 = +[TURoute speakerAudioRouteGlyph];
      goto LABEL_20;
    case 4uLL:
      v6 = +[PHInCallUtilities sharedInstance];
      if ([v6 isIPadIdiom])
      {
        v4 = 17;
      }

      else
      {
        v4 = 18;
      }

      v5 = 0;
      goto LABEL_25;
    case 5uLL:
      v7 = [(PHAudioCallControlsViewController *)self activeCall];
      v8 = [v7 faceTimeIDStatus];

      v5 = 0;
      if (v8 == 2)
      {
        v4 = 5;
      }

      else
      {
        v4 = 7;
      }

      goto LABEL_25;
    case 6uLL:
      v5 = 0;
      v4 = 13;
      goto LABEL_25;
    case 7uLL:
      v5 = 0;
      v4 = 14;
      goto LABEL_25;
    case 8uLL:
      v5 = 0;
      v4 = 26;
      goto LABEL_25;
    case 9uLL:
      v5 = 0;
      v4 = 21;
      goto LABEL_25;
    case 0xAuLL:
      v5 = 0;
      v4 = 20;
      goto LABEL_25;
    case 0xBuLL:
    case 0xEuLL:
      v5 = 0;
      v4 = 29;
      goto LABEL_25;
    case 0xCuLL:
    case 0x11uLL:
      v5 = 0;
      v4 = 5;
      goto LABEL_25;
    case 0xDuLL:
      v9 = [(PHAudioCallControlsViewController *)self delegate];
      v10 = [v9 frontmostCallProviderIconForAudioCallControlsViewController:self];
      v5 = [v10 imageWithRenderingMode:2];

LABEL_20:
      v4 = 0;
      goto LABEL_25;
    case 0xFuLL:
      v5 = 0;
      v4 = 2;
      goto LABEL_25;
    case 0x10uLL:
      v20 = [PHAudioCallIcon alloc];
      v5 = +[PHGlassCutoutCirclesOverlayViewController makeTextSOSButtonCircleView];
      v21 = [UIImage imageNamed:@"text_sos_icon"];
      v18 = [(PHAudioCallIcon *)v20 initWithIconView:v5 IconImage:v21];

      goto LABEL_35;
    case 0x12uLL:
      v5 = 0;
      v4 = 90;
      goto LABEL_25;
    case 0x13uLL:
      v5 = 0;
      v4 = 91;
      goto LABEL_25;
    case 0x14uLL:
      v5 = 0;
      v4 = 93;
      goto LABEL_25;
    default:
LABEL_25:
      v11 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
      v12 = [v11 usesLargeFormatUI];

      if (v12)
      {
        v13 = [(PHAudioCallControlsViewController *)self getScaledIconForSymbolType:v4 withImage:v5];
      }

      else
      {
        if (v5)
        {
          v14 = [PHAudioCallIcon alloc];
        }

        else
        {
          v15 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
          v16 = [v15 callDisplayStyle];

          v17 = [PHAudioCallIcon alloc];
          if (v16 == 3)
          {
            [UIImage tpHierarchicalImageForSymbolType:v4 pointSize:2 scale:32.0];
          }

          else
          {
            [UIImage tpHierarchicalImageForSymbolType:v4 pointSize:32.0];
          }
          v5 = ;
          v14 = v17;
        }

        v13 = [(PHAudioCallIcon *)v14 initWithIconView:0 IconImage:v5];
      }

      v18 = v13;
LABEL_35:

      return v18;
  }
}

- (id)getScaledIconForSymbolType:(int64_t)a3 withImage:(id)a4
{
  v6 = a4;
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v9 >= v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 * 0.065;
  if (v6)
  {
    v14 = [(PHAudioCallControlsViewController *)self resizeImage:v6 maxDimension:v13 * 0.54];
    v15 = [PHAudioCallIcon alloc];
  }

  else
  {
    v16 = [PHAudioCallIcon alloc];
    v14 = [UIImage tpHierarchicalImageForSymbolType:a3 pointSize:1 scale:v13 * 0.43];
    v15 = v16;
  }

  v17 = [(PHAudioCallIcon *)v15 initWithIconView:0 IconImage:v14];

  return v17;
}

- (id)resizeImage:(id)a3 maxDimension:(double)a4
{
  v5 = a3;
  [v5 size];
  v8 = v6 / v7;
  if (v8 <= 1.0)
  {
    v9 = v8 * a4;
  }

  else
  {
    v9 = a4;
    a4 = a4 / v8;
  }

  v13.width = v9;
  v13.height = a4;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  [v5 drawInRect:{0.0, 0.0, v9, a4}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)titleForControlType:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"MUTE";
      goto LABEL_24;
    case 1uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"KEYPAD";
      goto LABEL_24;
    case 2uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"SPEAKER";
      goto LABEL_24;
    case 3uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"ROUTE";
      goto LABEL_24;
    case 4uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"ADD";
      goto LABEL_24;
    case 5uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"FACETIME";
      goto LABEL_24;
    case 6uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"CONTACTS";
      goto LABEL_24;
    case 7uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"MESSAGES";
      goto LABEL_24;
    case 8uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"HOLD";
      goto LABEL_24;
    case 9uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"SWAP";
      goto LABEL_24;
    case 0xAuLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"MERGE_CALLS";
      goto LABEL_24;
    case 0xBuLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"TTY";
      goto LABEL_24;
    case 0xCuLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"VIDEO";
      goto LABEL_24;
    case 0xDuLL:
      v4 = [(PHAudioCallControlsViewController *)self activeCall];
      v7 = [v4 provider];
      v6 = [v7 localizedName];

      goto LABEL_25;
    case 0xEuLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"RTT";
      goto LABEL_24;
    case 0xFuLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"END";
      goto LABEL_24;
    case 0x10uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"EMERGENCY_TEXT";
      goto LABEL_24;
    case 0x11uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"LIVE_VIDEO";
      goto LABEL_24;
    case 0x12uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"SHARE_MEDIA";
      goto LABEL_24;
    case 0x13uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"SHARE_CARD";
      goto LABEL_24;
    case 0x14uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"MORE_MENU";
LABEL_24:
      v6 = [v3 localizedStringForKey:v5 value:&stru_100361FD0 table:@"InCallService"];
LABEL_25:

      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

- (void)controlTypeTapped:(unint64_t)a3 forView:(id)a4
{
  v6 = a4;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 134217984;
    v57 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Control type tapped (%lu)", &v56, 0xCu);
  }

  switch(a3)
  {
    case 0uLL:
      v8 = [(PHAudioCallControlsViewController *)self activeCall];
      [v8 setUplinkMuted:[v8 isUplinkMuted]^ 1];
      v24 = [(PHAudioCallControlsViewController *)self controlsView];
      [v24 setSelectedState:-[NSObject isUplinkMuted](v8 forControlType:{"isUplinkMuted"), 0}];

      v19 = [(PHAudioCallControlsViewController *)self delegate];
      [v19 audioCallControlsViewControllerDidToggleMuteButton:[v8 isUplinkMuted]];
      goto LABEL_52;
    case 1uLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedKeypadPresentation:self];
      goto LABEL_53;
    case 2uLL:
      v9 = +[TUCallCenter sharedInstance];
      v10 = [v9 routeController];
      v11 = [v10 pickedRoute];
      v12 = [v11 isSpeaker];

      v13 = +[TUCallCenter sharedInstance];
      v14 = [v13 routeController];
      v15 = v14;
      if (v12)
      {
        v8 = [v14 routeForSpeakerDisable];

        if (v8)
        {
          v16 = +[TUCallCenter sharedInstance];
          v17 = [v16 routeController];
          [v17 pickRoute:v8];

          v18 = [(PHAudioCallControlsViewController *)self controlsView];
          v19 = v18;
          v20 = 0;
LABEL_35:
          [v18 setSelectedState:v20 forControlType:2];
          goto LABEL_52;
        }

        v19 = sub_100004F84();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v56) = 0;
          v55 = "[WARN] Could not find available route to pick for speaker disable";
LABEL_51:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v55, &v56, 2u);
        }
      }

      else
      {
        v8 = [v14 routeForSpeakerEnable];

        if (v8)
        {
          v42 = +[TUCallCenter sharedInstance];
          v43 = [v42 routeController];
          [v43 pickRoute:v8];

          v18 = [(PHAudioCallControlsViewController *)self controlsView];
          v19 = v18;
          v20 = 1;
          goto LABEL_35;
        }

        v19 = sub_100004F84();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v56) = 0;
          v55 = "[WARN] Could not find available route to pick for speaker enable";
          goto LABEL_51;
        }
      }

LABEL_52:

      goto LABEL_53;
    case 3uLL:
      v21 = +[TUCallCenter sharedInstance];
      v22 = [v21 routeController];
      v23 = [v22 areAuxiliaryRoutesAvailable];

      if (!v23)
      {
        goto LABEL_54;
      }

      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedAudioRoutesPresentation:self];
      goto LABEL_53;
    case 4uLL:
      v25 = [(PHAudioCallControlsViewController *)self view];
      if ([v25 _currentUserInterfaceIdiom] == 1)
      {

LABEL_37:
        v8 = [(PHAudioCallControlsViewController *)self delegate];
        [v8 audioCallControlsViewControllerRequestedContactsPresentation:self forView:v6];
        goto LABEL_53;
      }

      v44 = +[APApplication isPhoneAppLocked];

      if (v44)
      {
        goto LABEL_37;
      }

      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedAddCallPresentation:self forView:v6];
LABEL_53:

LABEL_54:
      return;
    case 5uLL:
      v26 = [(PHAudioCallControlsViewController *)self callContainer];
      v27 = [v26 callWithStatus:1];
      v28 = v27;
      if (v27)
      {
        v8 = v27;
      }

      else
      {
        v45 = [(PHAudioCallControlsViewController *)self callContainer];
        v8 = [v45 callWithStatus:2];
      }

      v46 = +[TUCallCenter sharedInstance];
      [v46 requestVideoUpgradeForCall:v8 originatingUIType:27];

      [v8 setIsSendingVideo:1];
      v47 = +[TUCallCenter sharedInstance];
      v48 = [v47 routeController];
      v49 = [v48 pickedRoute];
      v50 = [v49 isReceiver];

      if (!v50)
      {
        goto LABEL_53;
      }

      v19 = +[TUCallCenter sharedInstance];
      v51 = [v19 routeController];
      v52 = +[TUCallCenter sharedInstance];
      v53 = [v52 routeController];
      v54 = [v53 speakerRoute];
      [v51 pickRoute:v54];

      goto LABEL_52;
    case 6uLL:
      goto LABEL_37;
    case 7uLL:
      v8 = [(PHAudioCallControlsViewController *)self activeCall];
      [(PHAudioCallControlsViewController *)self openMessagesForCall:v8];
      goto LABEL_53;
    case 8uLL:
      v34 = [(PHAudioCallControlsViewController *)self callContainer];
      v35 = [v34 currentCalls];
      v8 = [v35 firstObject];

      LOBYTE(v35) = [v8 isOnHold];
      v36 = [(PHAudioCallControlsViewController *)self callCenter];
      v37 = v36;
      if (v35)
      {
        [v36 unholdCall:v8];
      }

      else
      {
        [v36 holdCall:v8];
      }

      [(PHAudioCallControlsViewController *)self updateControls];
      goto LABEL_53;
    case 9uLL:
      v8 = [(PHAudioCallControlsViewController *)self callCenter];
      [v8 swapCalls];
      goto LABEL_53;
    case 0xAuLL:
      v29 = [(PHAudioCallControlsViewController *)self callContainer];
      v8 = [v29 callWithStatus:2];

      v30 = [(PHAudioCallControlsViewController *)self callContainer];
      v31 = [v30 callWithStatus:1];

      v32 = sub_100004F84();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138412546;
        v57 = v8;
        v58 = 2112;
        v59 = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "PHAudioCallControlTypeMerge tapped. Grouping held call %@ with active call %@", &v56, 0x16u);
      }

      v33 = [(PHAudioCallControlsViewController *)self callCenter];
      [v33 groupCall:v8 withOtherCall:v31];

      goto LABEL_53;
    case 0xBuLL:
    case 0xEuLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerDidTapRTTButton];
      goto LABEL_53;
    case 0xCuLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedVideoPresentation:self];
      goto LABEL_53;
    case 0xDuLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedPunchOutPresentation:self];
      goto LABEL_53;
    case 0xFuLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerDidTapEndButton:self];
      goto LABEL_53;
    case 0x10uLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedInvokeAlert];
      goto LABEL_53;
    case 0x11uLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerDidTapVideoStreamingButton];
      goto LABEL_53;
    case 0x12uLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedShareMedia];
      goto LABEL_53;
    case 0x13uLL:
      v38 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

      if (v38)
      {
        v39 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
        v40 = [v39 currentState];

        v41 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
        v8 = v41;
        if (v40 == 2)
        {
          [v41 userDidRequestScreenSharingToEnd];
        }

        else
        {
          [v41 userIsPresentingShareSheet];

          v8 = [(PHAudioCallControlsViewController *)self delegate];
          [v8 audioCallControlsViewControllerRequestedShareCardFromSourceView:v6];
        }
      }

      else
      {
        v8 = sub_100004F84();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100257284(v8);
        }
      }

      goto LABEL_53;
    case 0x14uLL:
      v8 = [(PHAudioCallControlsViewController *)self delegate];
      [v8 audioCallControlsViewControllerRequestedMoreMenuFromSourceView:v6];
      goto LABEL_53;
    default:
      goto LABEL_54;
  }
}

- (void)controlTypeShortPressed:(unint64_t)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Control type short pressed (%lu)", &v5, 0xCu);
  }
}

- (void)controlTypeLongPressed:(unint64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    *v19 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Control type long pressed (%lu)", &v18, 0xCu);
  }

  if (a3 == 1)
  {
    v7 = [(PHAudioCallControlsViewController *)self delegate];
    [v7 audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:self];
    goto LABEL_14;
  }

  if (a3)
  {
    return;
  }

  v6 = [(PHAudioCallControlsViewController *)self callContainer];
  v7 = [v6 callWithStatus:1];

  v8 = [(PHAudioCallControlsViewController *)self callContainer];
  v9 = [v8 currentCallGroups];
  if ([v9 count] != 1 || !v7)
  {

    goto LABEL_11;
  }

  v10 = [v7 model];
  v11 = [v10 supportsHolding];

  if (!v11)
  {
LABEL_11:
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PHAudioCallControlsViewController *)self callContainer];
      v14 = [v13 currentCallGroups];
      v15 = [v14 count] != 1;
      v16 = [v7 model];
      v17 = [v16 supportsHolding];
      v18 = 67109632;
      *v19 = v15;
      *&v19[4] = 1024;
      *&v19[6] = v7 == 0;
      v20 = 1024;
      v21 = v17 ^ 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not holding: current call count isn't 1 (%d), active call doesn't exist (%d), or active call doesn't support holding (%d)", &v18, 0x14u);
    }

    goto LABEL_14;
  }

  [(PHAudioCallControlsViewController *)self controlTypeTapped:8 forView:0];
LABEL_14:
}

- (id)audioRouteMenu
{
  v2 = [(PHAudioCallControlsViewController *)self delegate];
  v3 = [v2 audioRouteMenu];

  return v3;
}

- (BOOL)controlTypeIsEnabled:(unint64_t)a3
{
  if (![(PHAudioCallControlsViewController *)self isEnabled])
  {
    LOBYTE(v14) = 0;
    return v14;
  }

  v5 = [(PHAudioCallControlsViewController *)self callContainer];
  v6 = [v5 callWithStatus:2];

  v7 = [(PHAudioCallControlsViewController *)self callContainer];
  v8 = [v7 callWithStatus:1];

  v9 = [(PHAudioCallControlsViewController *)self callContainer];
  v10 = [v9 callWithStatus:3];

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;
  v13 = v12;
  switch(a3)
  {
    case 0uLL:
      LOBYTE(v14) = (v12 | v10) != 0;
      goto LABEL_99;
    case 1uLL:
      if (v12)
      {
        if ([v12 isOnHold] && !v10)
        {
          goto LABEL_87;
        }
      }

      else if (!v10)
      {
        goto LABEL_86;
      }

      v16 = [v13 model];
      if ([v16 supportsDTMF])
      {
        LOBYTE(v14) = 1;
        goto LABEL_68;
      }

      v29 = [v10 model];
      LOBYTE(v14) = [v29 supportsDTMF];
      goto LABEL_38;
    case 2uLL:
    case 3uLL:
      v17 = +[TUCallCenter sharedInstance];
      v18 = [v17 routeController];
      v19 = [v18 routes];
      if ([v19 count] > 1)
      {
        v23 = 0;
      }

      else
      {
        v20 = +[TUCallCenter sharedInstance];
        v21 = [v20 routeController];
        v22 = [v21 pickedRoute];
        v44 = [v22 isSpeaker];

        v23 = v44 ^ 1;
      }

      if (v13)
      {
        v36 = v13;
      }

      else
      {
        v36 = v10;
      }

      v37 = v36;

      LOBYTE(v14) = 0;
      if (v10 | v37 && (v23 & 1) == 0)
      {
        LODWORD(v14) = [v37 isTTY] ^ 1;
      }

      v13 = v37;
      goto LABEL_99;
    case 4uLL:
      if (v12)
      {
        v32 = v12;
      }

      else
      {
        v32 = v10;
      }

      v33 = v32;
      v34 = [(PHAudioCallControlsViewController *)self callCenter];
      if (![v34 isAddCallAllowed])
      {
        LOBYTE(v14) = 0;
        goto LABEL_98;
      }

      v35 = +[PHInCallUtilities sharedInstance];
      if ([v35 isSetupAssistantRunning])
      {
        goto LABEL_44;
      }

      v40 = [v33 isConversation];
      if (!v40)
      {
        goto LABEL_92;
      }

      if (![v33 isConversation])
      {
LABEL_44:
        LOBYTE(v14) = 0;
        goto LABEL_97;
      }

      v43 = [v33 remoteParticipantHandles];
      if ([v43 count] == 1)
      {
LABEL_92:
        v41 = +[PHInCallUtilities sharedInstance];
        LODWORD(v14) = [v41 isInLostMode] ^ 1;

        if (!v40)
        {
          goto LABEL_97;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

LABEL_97:
LABEL_98:

      goto LABEL_99;
    case 5uLL:
    case 0xCuLL:
      v15 = [v12 provider];
      if ([v15 supportsAudioAndVideo])
      {
        v16 = [v13 provider];
      }

      else
      {
        v25 = [(PHAudioCallControlsViewController *)self callCenter];
        v26 = [v25 providerManager];
        v16 = [v26 faceTimeProvider];
      }

      if ([v16 isFaceTimeProvider])
      {
        v27 = +[PHInCallUtilities sharedInstance];
        v28 = [v27 faceTimeVideoIsAvailable];
      }

      else
      {
        v28 = [v16 supportsAudioAndVideo];
      }

      if (!v13)
      {
        goto LABEL_48;
      }

      v29 = [v13 handle];
      v30 = [v29 value];
      if (![v30 length] || (objc_msgSend(v13, "isConferenced") & 1) != 0 || (objc_msgSend(v13, "isVoicemail") & 1) != 0 || (objc_msgSend(v13, "isEmergency") & 1) != 0 || objc_msgSend(v13, "status") != 1 || ((objc_msgSend(v13, "faceTimeIDStatus") != 1) & v28) != 1)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v31 = +[PHInCallUtilities sharedInstance];
        LODWORD(v14) = [v31 isSetupAssistantRunning] ^ 1;
      }

      goto LABEL_38;
    case 6uLL:
      if (!(v10 | v12))
      {
LABEL_86:
        v13 = 0;
        goto LABEL_87;
      }

      if (![(PHAudioCallControlsViewController *)self isContactStoreAuthorized])
      {
LABEL_87:
        LOBYTE(v14) = 0;
        goto LABEL_99;
      }

      v16 = +[PHInCallUtilities sharedInstance];
      if ([v16 isSetupAssistantRunning])
      {
LABEL_48:
        LOBYTE(v14) = 0;
      }

      else
      {
        v29 = +[PHInCallUtilities sharedInstance];
        LODWORD(v14) = [v29 isInLostMode] ^ 1;
LABEL_38:
      }

LABEL_68:

LABEL_99:
      return v14;
    case 7uLL:
      if (!v12)
      {
        v12 = v10;
      }

      v24 = [v12 isConversation];
      goto LABEL_74;
    case 8uLL:
      if (!v10)
      {
        goto LABEL_66;
      }

      goto LABEL_87;
    case 9uLL:
      LOBYTE(v14) = 0;
      if (v10 || !v6)
      {
        goto LABEL_99;
      }

      v12 = v8;
LABEL_66:
      v16 = [v12 model];
      v38 = [v16 supportsHolding];
LABEL_67:
      LOBYTE(v14) = v38;
      goto LABEL_68;
    case 0xAuLL:
      LOBYTE(v14) = 0;
      if (v10 || !v12 || !v6)
      {
        goto LABEL_99;
      }

      v16 = [(PHAudioCallControlsViewController *)self callCenter];
      if (![v16 canGroupCall:v13 withCall:v6] || (objc_msgSend(v13, "isRTT") & 1) != 0 || (objc_msgSend(v13, "isTTY") & 1) != 0 || (objc_msgSend(v6, "isRTT") & 1) != 0)
      {
        goto LABEL_48;
      }

      LODWORD(v14) = [v6 isTTY] ^ 1;
      goto LABEL_68;
    case 0xBuLL:
      if (!v12)
      {
        goto LABEL_87;
      }

      v24 = [v12 isTTY];
      goto LABEL_74;
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
      LOBYTE(v14) = 1;
      goto LABEL_99;
    case 0xEuLL:
      if (!v12)
      {
        goto LABEL_87;
      }

      v24 = [v12 isRTT];
LABEL_74:
      LOBYTE(v14) = v24;
      goto LABEL_99;
    case 0x13uLL:
      v14 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

      if (!v14)
      {
        goto LABEL_99;
      }

      if (v13)
      {
        v39 = v13;
      }

      else
      {
        v39 = v10;
      }

      if (([v39 isConversation] & 1) == 0 && !objc_msgSend(v39, "isSharePlayCapable"))
      {
        goto LABEL_87;
      }

      v16 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
      LOBYTE(v14) = [v16 currentState] != 1;
      goto LABEL_68;
    case 0x14uLL:
      v16 = [(PHAudioCallControlsViewController *)self features];
      v38 = [v16 isMoreMenuEnabled];
      goto LABEL_67;
    default:
      goto LABEL_87;
  }
}

- (BOOL)controlTypeIsSelected:(unint64_t)a3
{
  v5 = [(PHAudioCallControlsViewController *)self activeCall];
  v6 = v5;
  LOBYTE(v7) = 0;
  if (a3 > 7)
  {
    switch(a3)
    {
      case 0x13uLL:
        v7 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

        if (v7)
        {
          v10 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
          LOBYTE(v7) = [v10 currentState] == 2;
          goto LABEL_17;
        }

        break;
      case 0x11uLL:
        v10 = [(PHAudioCallControlsViewController *)self delegate];
        v12 = [v10 videoStreamingIsGoingOn];
        goto LABEL_16;
      case 8uLL:
        v11 = [v5 isOnHold];
LABEL_11:
        LOBYTE(v7) = v11;
        break;
    }
  }

  else
  {
    if (a3 - 2 < 2)
    {
      v8 = +[TUCallCenter sharedInstance];
      v9 = [v8 routeController];
      v10 = [v9 pickedRoute];

      if ([v10 isAuxiliary])
      {
        LOBYTE(v7) = 1;
LABEL_17:

        goto LABEL_18;
      }

      v12 = [v10 isSpeaker];
LABEL_16:
      LOBYTE(v7) = v12;
      goto LABEL_17;
    }

    if (!a3)
    {
      v11 = [v5 isUplinkMuted];
      goto LABEL_11;
    }
  }

LABEL_18:

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHAudioCallControlsViewController *)self controlsView];
  [v4 setButtonsEnabled:v3];
}

- (void)setUpdatesPaused:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ setUpdatesPaused=%d", &v8, 0x12u);
  }

  self->_updatesPaused = v3;
  if (!v3)
  {
    v7 = [(PHAudioCallControlsViewController *)self controlsView];
    [v7 updateControls];
  }
}

- (BOOL)hasActiveAndIncomingCallPresent
{
  v2 = [(PHAudioCallControlsViewController *)self callContainer];
  v3 = [v2 currentCallGroups];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
  v8 = *v13;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v12 + 1) + 8 * i) status];
      if (v10 == 4)
      {
        v6 = 1;
        if ((v7 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        if (v10 == 1)
        {
          v7 = 1;
        }

        if ((v7 & 1) == 0)
        {
          continue;
        }
      }

      if (v6)
      {
        LOBYTE(v5) = 1;
        goto LABEL_17;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v5;
}

- (id)currentArrangementWithSenderIdentityClient:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v6 = [v5 callDisplayStyle];

  v7 = [(PHAudioCallControlsViewController *)self activeCall];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(PHAudioCallControlsViewController *)self callContainer];
    v10 = [v9 currentCalls];
    v8 = [v10 firstObject];

    if (!v8)
    {
      v11 = +[UIApplication sharedApplication];
      v12 = [v11 delegate];
      v8 = [v12 mostRecentlyDisconnectedAudioCall];
    }
  }

  v13 = +[PHInCallUtilities sharedInstance];
  if ([v13 isIPadIdiom])
  {
  }

  else
  {
    v14 = [(PHAudioCallControlsViewController *)self delegate];
    v15 = [v8 canDisplayAlertUI:{objc_msgSend(v14, "audioControlsShouldPresentAlertButton")}];

    if (v15)
    {
      v16 = [PHAudioCallControlArrangement alloc];
      if (v6 == 3)
      {
        +[PHAudioCallControlArrangement simplifiedDefaultAlertControlTypes];
      }

      else
      {
        +[PHAudioCallControlArrangement defaultAlertControlTypes];
      }
      v29 = ;
      v30 = [(PHAudioCallControlArrangement *)v16 initWithControlTypes:v29];
LABEL_76:

      goto LABEL_77;
    }
  }

  if (v6 == 3)
  {
    v17 = ![(PHAudioCallControlsViewController *)self hasActiveAndIncomingCallPresent];
  }

  else
  {
    v18 = [(PHAudioCallControlsViewController *)self features];
    if ([v18 shouldEmbedSwapBanner])
    {
      v17 = ![(PHAudioCallControlsViewController *)self hasActiveAndIncomingCallPresent];
    }

    else
    {
      v17 = 1;
    }
  }

  v19 = [(PHAudioCallControlsViewController *)self multipleCallsArePresent]& v17;
  if (v19 == 1)
  {
    v20 = [(PHAudioCallControlsViewController *)self features];
    v21 = [v20 isMoreMenuEnabled];

    if (!v21)
    {
      if (v6 == 3)
      {
        v22 = [PHAudioCallControlArrangement alloc];
        v23 = +[PHAudioCallControlArrangement simplifiedDefaultMultipleCallControlTypes];
        goto LABEL_31;
      }

      v31 = +[PHInCallUtilities sharedInstance];
      v32 = [v31 isIPadIdiom];

      v22 = [PHAudioCallControlArrangement alloc];
      if (!v32)
      {
        v23 = +[PHAudioCallControlArrangement defaultMultipleCallControlTypes];
        goto LABEL_31;
      }

      v26 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
      v27 = [v26 usesLargeFormatUI];
      v28 = 1;
LABEL_29:
      v33 = [PHAudioCallControlArrangement controlTypesOnIpadShouldUseLargeUIFormat:v27 inMultiCall:v28];
      v30 = [(PHAudioCallControlArrangement *)v22 initWithControlTypes:v33];

      goto LABEL_32;
    }
  }

  if (v6 != 3)
  {
    v24 = +[PHInCallUtilities sharedInstance];
    v25 = [v24 isIPadIdiom];

    v22 = [PHAudioCallControlArrangement alloc];
    if (!v25)
    {
      v23 = +[PHAudioCallControlArrangement defaultControlTypes];
      goto LABEL_31;
    }

    v26 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
    v27 = [v26 usesLargeFormatUI];
    v28 = 0;
    goto LABEL_29;
  }

  v22 = [PHAudioCallControlArrangement alloc];
  v23 = +[PHAudioCallControlArrangement simplifiedDefaultControlTypes];
LABEL_31:
  v26 = v23;
  v30 = [(PHAudioCallControlArrangement *)v22 initWithControlTypes:v23];
LABEL_32:

  if ([v8 isRTT])
  {
    v34 = v30;
    v35 = 0;
    v36 = 14;
LABEL_34:
    [(PHAudioCallControlArrangement *)v34 replaceControlsOfType:v35 withControlOfType:v36];
    goto LABEL_49;
  }

  if ([v8 isTTY])
  {
    v37 = [v8 localSenderIdentityUUID];
    if (!v37)
    {
      v38 = sub_100004F84();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v68 = 138412290;
        v69 = v8;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Could not retrieve a sender identity UUID from the call %@; checking if TTY software is available anyway.", &v68, 0xCu);
      }
    }

    if ([v4 isTTYSoftwareAvailableForSenderIdentityUUID:v37])
    {
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:0 withControlOfType:11];
    }
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      if ([v8 isOnHold])
      {
        v39 = [v8 model];
        v40 = [v39 supportsHolding];

        if (v40)
        {
          v34 = v30;
          v35 = 0;
          v36 = 8;
          goto LABEL_34;
        }
      }
    }

    if ([v8 isConversation])
    {
      v34 = v30;
      v35 = 6;
      v36 = 7;
      goto LABEL_34;
    }
  }

LABEL_49:
  v41 = [(PHAudioCallControlsViewController *)self features];
  if ([v41 isMoreMenuEnabled])
  {
  }

  else
  {
    v42 = [(PHAudioCallControlsViewController *)self features];
    v43 = [v42 sharePlayInCallsEnabled];

    if ((v43 & 1) == 0)
    {
      if ([v8 isConversation])
      {
        v44 = [(PHAudioCallControlsViewController *)self features];
        v45 = [v44 requestToScreenShareEnabled];

        if (v45)
        {
          [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:1 withControlOfType:19];
        }
      }
    }
  }

  v46 = +[TUCallCenter sharedInstance];
  v47 = [v46 routeController];
  v48 = [v47 areAuxiliaryRoutesAvailable];

  if (v48)
  {
    [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:2 withControlOfType:3];
  }

  v49 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v50 = [v49 callDisplayStyle];

  if (v50 == 3 && ([(PHAudioCallControlsViewController *)self controlTypeIsEnabled:5]|| ![(PHAudioCallControlsViewController *)self controlTypeIsEnabled:1]))
  {
    [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:1 withControlOfType:5];
  }

  if (v8)
  {
    v51 = [v8 provider];
    v52 = [v51 isSystemProvider];

    if ((v52 & 1) == 0)
    {
      v53 = +[PHInCallUtilities sharedInstance];
      v54 = [v53 isIPadIdiom];

      v55 = v54 ? 6 : 4;
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:v55 withControlOfType:13];
      v56 = [v8 provider];
      v57 = [v56 supportsAudioAndVideo];

      if (v57)
      {
        [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:5 withControlOfType:12];
      }
    }
  }

  v29 = [(PHAudioCallControlsViewController *)self features];
  v58 = [v29 isEnhancedEmergencyEnabled];
  if (!v8 || !v58)
  {
    goto LABEL_76;
  }

  v59 = [v8 isEmergency];

  if (v59)
  {
    v60 = [(PHAudioCallControlsViewController *)self delegate];
    v61 = [v60 shouldEnableVideoStreamingButton];

    if (v61)
    {
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:5 withControlOfType:17];
    }

    v62 = [(PHAudioCallControlsViewController *)self delegate];
    v63 = [v62 shouldEnableShareMediaButton];

    if (v63)
    {
      v64 = [(PHAudioCallControlsViewController *)self features];
      v65 = [v64 isMoreMenuEnabled];

      if (v65)
      {
        v66 = 20;
      }

      else
      {
        v66 = 4;
      }

      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:v66 withControlOfType:18];
    }
  }

LABEL_77:

  return v30;
}

- (void)openMessagesForCall:(id)a3
{
  v3 = a3;
  if ([v3 isConversation])
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 activeConversationForCall:v3];

    if (v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = [v5 groupUUID];

      if (v7)
      {
        v8 = [NSURLQueryItem alloc];
        v9 = [v5 groupUUID];
        v10 = [v9 UUIDString];
        v11 = [v8 initWithName:@"groupid" value:v10];

        [v6 addObject:v11];
      }

      v12 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = [v5 remoteMembers];
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          v17 = 0;
          do
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v29 + 1) + 8 * v17) handles];
            v19 = [v18 anyObject];

            v20 = [v19 value];

            if (v20)
            {
              v21 = [v19 value];
              [v12 addObject:v21];
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v15);
      }

      if ([v12 count])
      {
        v22 = [NSURLQueryItem alloc];
        v23 = [v12 componentsJoinedByString:{@", "}];
        v24 = [v22 initWithName:@"addresses" value:v23];

        [v6 addObject:v24];
      }

      v25 = objc_alloc_init(NSURLComponents);
      [v25 setScheme:@"sms"];
      [v25 setPath:@"open"];
      [v25 setQueryItems:v6];
      v26 = sub_100004F84();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v25 URL];
        *buf = 138412290;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Opening Multiway Messages URL: %@ ...", buf, 0xCu);
      }

      v28 = [v25 URL];
      TUUnlockAndOpenURL();
    }

    else
    {
      v6 = sub_100004F84();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1002572C8(v3, v6);
      }
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not opening Multiway Messages for call. Call is not a conversation: %@", buf, 0xCu);
    }
  }
}

- (void)routesChangedForRouteController:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHAudioCallControlsViewController *)self lastPickedRoute];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last picked route %@", &v12, 0xCu);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
  v7 = [v4 pickedRoute];

  v8 = [(PHAudioCallControlsViewController *)self lastPickedRoute];
  v9 = [v7 isEqualToRoute:v8];

  if ((v9 & 1) == 0)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dismissing route menu since the selected route changed", &v12, 2u);
    }

    v11 = [(PHAudioCallControlsViewController *)self controlsView];
    [v11 dismissAudioRoutesMenu];
  }

  [(PHAudioCallControlsViewController *)self setLastPickedRoute:v7];
}

- (void)handleMutedTalkerBannerTap
{
  v4 = [(PHAudioCallControlsViewController *)self activeCall];
  [v4 setUplinkMuted:{objc_msgSend(v4, "isUplinkMuted") ^ 1}];
  v3 = [(PHAudioCallControlsViewController *)self controlsView];
  [v3 setSelectedState:objc_msgSend(v4 forControlType:{"isUplinkMuted"), 0}];
}

- (NSArray)buttonsForAmbientTransition
{
  v2 = [(PHAudioCallControlsViewController *)self controlsView];
  v3 = [v2 buttonsForAmbientTransition];

  return v3;
}

@end