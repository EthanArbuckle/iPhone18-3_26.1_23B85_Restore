@interface PHAudioCallControlsViewController
- (BOOL)controlTypeIsEnabled:(unint64_t)enabled;
- (BOOL)controlTypeIsSelected:(unint64_t)selected;
- (BOOL)hasActiveAndIncomingCallPresent;
- (BOOL)isEnabled;
- (BOOL)multipleCallsArePresent;
- (BOOL)usesCompactMulticallUI;
- (NSArray)buttonsForAmbientTransition;
- (PHAudioCallControlArrangement)currentArrangement;
- (PHAudioCallControlsViewController)initWithCallDisplayStyleManager:(id)manager;
- (PHAudioCallControlsViewControllerDelegate)delegate;
- (PHScreenSharingButtonViewModel)getScreenSharingButtonViewModel;
- (TUCall)activeCall;
- (id)audioRouteMenu;
- (id)currentArrangementWithSenderIdentityClient:(id)client;
- (id)endCallButton;
- (id)getScaledIconForSymbolType:(int64_t)type withImage:(id)image;
- (id)imageForControlType:(unint64_t)type;
- (id)prioritizedCall;
- (id)resizeImage:(id)image maxDimension:(double)dimension;
- (id)titleForControlType:(unint64_t)type;
- (unint64_t)controlTypeAtRow:(unint64_t)row column:(unint64_t)column;
- (unint64_t)numberOfColumnsInControlsView:(id)view;
- (unint64_t)numberOfRowsInControlsView:(id)view;
- (void)callIsOnHoldChangedNotification:(id)notification;
- (void)callModelChangedNotification:(id)notification;
- (void)callStatusChangedNotification:(id)notification;
- (void)conferenceParticipantCallsChangedNotification:(id)notification;
- (void)controlTypeLongPressed:(unint64_t)pressed;
- (void)controlTypeShortPressed:(unint64_t)pressed;
- (void)controlTypeTapped:(unint64_t)tapped forView:(id)view;
- (void)dealloc;
- (void)faceTimeIDStatusChangedNotification:(id)notification;
- (void)fetchAudioRoutesImageWithCompletion:(id)completion;
- (void)handleMutedTalkerBannerTap;
- (void)handleTUCallIsSharePlayCapableChangedNotification:(id)notification;
- (void)handleTUCallIsSharingScreenChangedNotification:(id)notification;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification;
- (void)handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)loadView;
- (void)openMessagesForCall:(id)call;
- (void)routesChangedForRouteController:(id)controller;
- (void)setEnabled:(BOOL)enabled;
- (void)setPrioritizedCall:(id)call;
- (void)setUpdatesPaused:(BOOL)paused;
- (void)updateControls;
- (void)uplinkStateChangedNotification:(id)notification;
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
    controlsView = [(PHAudioCallControlsViewController *)self controlsView];
    [controlsView updateControls];
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
    prioritizedCall = [(PHAudioCallControlsViewController *)self prioritizedCall];
  }

  else
  {
    callCenter = [(PHAudioCallControlsViewController *)self callCenter];
    prioritizedCall = [callCenter frontmostCall];
  }

  return prioritizedCall;
}

- (BOOL)usesCompactMulticallUI
{
  callDisplayStyleManager = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] != 3;

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
  callContainer = [(PHAudioCallControlsViewController *)self callContainer];
  currentCallGroups = [callContainer currentCallGroups];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = currentCallGroups;
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
  controlsView = [(PHAudioCallControlsViewController *)self controlsView];
  buttonsEnabled = [controlsView buttonsEnabled];

  return buttonsEnabled;
}

- (PHAudioCallControlsViewController)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = PHAudioCallControlsViewController;
  v6 = [(PHAudioCallControlsViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    v7->_contactStoreAuthorized = +[CNContactStore phoneKit_isAuthorized];
    v8 = +[CNKFeatures sharedInstance];
    features = v7->_features;
    v7->_features = v8;

    v7->_updatesPaused = 0;
    v7->_proximitySensorNotificationToken = 0;
    v10 = +[TUCallCenter sharedInstance];
    [(PHAudioCallControlsViewController *)v7 setCallCenter:v10];

    callCenter = [(PHAudioCallControlsViewController *)v7 callCenter];
    routeController = [callCenter routeController];
    [routeController addDelegate:v7];

    callCenter2 = [(PHAudioCallControlsViewController *)v7 callCenter];
    [(PHAudioCallControlsViewController *)v7 setCallContainer:callCenter2];

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
  callDisplayStyleManager = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  v5 = [(PHAudioCallControlsView *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager];
  controlsView = self->_controlsView;
  self->_controlsView = v5;

  [(PHAudioCallControlsView *)self->_controlsView setDelegate:self];
  v7 = self->_controlsView;

  [(PHAudioCallControlsViewController *)self setView:v7];
}

- (id)endCallButton
{
  controlsView = [(PHAudioCallControlsViewController *)self controlsView];
  v3 = [controlsView buttonForControlType:15];

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
    activeCall = [(PHAudioCallControlsViewController *)self activeCall];

    v8 = sub_100004F84();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (activeCall)
    {
      if (v9)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating new PHScreenSharingButtonViewModel", buf, 2u);
      }

      v10 = [PHScreenSharingButtonViewModel alloc];
      activeCall2 = [(PHAudioCallControlsViewController *)self activeCall];
      callCenter = [(PHAudioCallControlsViewController *)self callCenter];
      v13 = [(PHScreenSharingButtonViewModel *)v10 initWithCall:activeCall2 callCenter:callCenter];
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

- (void)setPrioritizedCall:(id)call
{
  callCopy = call;
  if (([(TUCall *)self->_prioritizedCall isEqualToCall:?]& 1) == 0)
  {
    objc_storeStrong(&self->_prioritizedCall, call);
    [(PHAudioCallControlsViewController *)self updateControls];
  }
}

- (void)callStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)callIsOnHoldChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)conferenceParticipantCallsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)faceTimeIDStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)callModelChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)uplinkStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallIsSharePlayCapableChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (void)handleTUCallIsSharingScreenChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
}

- (unint64_t)numberOfRowsInControlsView:(id)view
{
  currentArrangement = [(PHAudioCallControlsViewController *)self currentArrangement];
  rows = [currentArrangement rows];

  return rows;
}

- (unint64_t)numberOfColumnsInControlsView:(id)view
{
  currentArrangement = [(PHAudioCallControlsViewController *)self currentArrangement];
  columns = [currentArrangement columns];

  return columns;
}

- (unint64_t)controlTypeAtRow:(unint64_t)row column:(unint64_t)column
{
  currentArrangement = [(PHAudioCallControlsViewController *)self currentArrangement];
  v7 = [currentArrangement controlTypeAtRow:row column:column];

  return v7;
}

- (void)fetchAudioRoutesImageWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[TUCallCenter sharedInstance];
  routeController = [v4 routeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001450C8;
  v7[3] = &unk_100358950;
  v8 = completionCopy;
  v6 = completionCopy;
  [routeController fetchAudioControlsGlyphWithCompletion:v7];
}

- (id)imageForControlType:(unint64_t)type
{
  v4 = 0;
  v5 = 0;
  switch(type)
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
      activeCall = [(PHAudioCallControlsViewController *)self activeCall];
      faceTimeIDStatus = [activeCall faceTimeIDStatus];

      v5 = 0;
      if (faceTimeIDStatus == 2)
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
      delegate = [(PHAudioCallControlsViewController *)self delegate];
      v10 = [delegate frontmostCallProviderIconForAudioCallControlsViewController:self];
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
      callDisplayStyleManager = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
      usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

      if (usesLargeFormatUI)
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
          callDisplayStyleManager2 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
          callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

          v17 = [PHAudioCallIcon alloc];
          if (callDisplayStyle == 3)
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

- (id)getScaledIconForSymbolType:(int64_t)type withImage:(id)image
{
  imageCopy = image;
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
  if (imageCopy)
  {
    v14 = [(PHAudioCallControlsViewController *)self resizeImage:imageCopy maxDimension:v13 * 0.54];
    v15 = [PHAudioCallIcon alloc];
  }

  else
  {
    v16 = [PHAudioCallIcon alloc];
    v14 = [UIImage tpHierarchicalImageForSymbolType:type pointSize:1 scale:v13 * 0.43];
    v15 = v16;
  }

  v17 = [(PHAudioCallIcon *)v15 initWithIconView:0 IconImage:v14];

  return v17;
}

- (id)resizeImage:(id)image maxDimension:(double)dimension
{
  imageCopy = image;
  [imageCopy size];
  v8 = v6 / v7;
  if (v8 <= 1.0)
  {
    dimensionCopy = v8 * dimension;
  }

  else
  {
    dimensionCopy = dimension;
    dimension = dimension / v8;
  }

  v13.width = dimensionCopy;
  v13.height = dimension;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  [imageCopy drawInRect:{0.0, 0.0, dimensionCopy, dimension}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)titleForControlType:(unint64_t)type
{
  switch(type)
  {
    case 0uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"MUTE";
      goto LABEL_24;
    case 1uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"KEYPAD";
      goto LABEL_24;
    case 2uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"SPEAKER";
      goto LABEL_24;
    case 3uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"ROUTE";
      goto LABEL_24;
    case 4uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"ADD";
      goto LABEL_24;
    case 5uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"FACETIME";
      goto LABEL_24;
    case 6uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"CONTACTS";
      goto LABEL_24;
    case 7uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"MESSAGES";
      goto LABEL_24;
    case 8uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"HOLD";
      goto LABEL_24;
    case 9uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"SWAP";
      goto LABEL_24;
    case 0xAuLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"MERGE_CALLS";
      goto LABEL_24;
    case 0xBuLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"TTY";
      goto LABEL_24;
    case 0xCuLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"VIDEO";
      goto LABEL_24;
    case 0xDuLL:
      activeCall = [(PHAudioCallControlsViewController *)self activeCall];
      provider = [activeCall provider];
      localizedName = [provider localizedName];

      goto LABEL_25;
    case 0xEuLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"RTT";
      goto LABEL_24;
    case 0xFuLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"END";
      goto LABEL_24;
    case 0x10uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"EMERGENCY_TEXT";
      goto LABEL_24;
    case 0x11uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"LIVE_VIDEO";
      goto LABEL_24;
    case 0x12uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"SHARE_MEDIA";
      goto LABEL_24;
    case 0x13uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"SHARE_CARD";
      goto LABEL_24;
    case 0x14uLL:
      v3 = +[NSBundle mainBundle];
      activeCall = v3;
      v5 = @"MORE_MENU";
LABEL_24:
      localizedName = [v3 localizedStringForKey:v5 value:&stru_100361FD0 table:@"InCallService"];
LABEL_25:

      break;
    default:
      localizedName = 0;
      break;
  }

  return localizedName;
}

- (void)controlTypeTapped:(unint64_t)tapped forView:(id)view
{
  viewCopy = view;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 134217984;
    tappedCopy = tapped;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Control type tapped (%lu)", &v56, 0xCu);
  }

  switch(tapped)
  {
    case 0uLL:
      activeCall = [(PHAudioCallControlsViewController *)self activeCall];
      [activeCall setUplinkMuted:[activeCall isUplinkMuted]^ 1];
      controlsView = [(PHAudioCallControlsViewController *)self controlsView];
      [controlsView setSelectedState:-[NSObject isUplinkMuted](activeCall forControlType:{"isUplinkMuted"), 0}];

      delegate = [(PHAudioCallControlsViewController *)self delegate];
      [delegate audioCallControlsViewControllerDidToggleMuteButton:[activeCall isUplinkMuted]];
      goto LABEL_52;
    case 1uLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedKeypadPresentation:self];
      goto LABEL_53;
    case 2uLL:
      v9 = +[TUCallCenter sharedInstance];
      routeController = [v9 routeController];
      pickedRoute = [routeController pickedRoute];
      isSpeaker = [pickedRoute isSpeaker];

      v13 = +[TUCallCenter sharedInstance];
      routeController2 = [v13 routeController];
      v15 = routeController2;
      if (isSpeaker)
      {
        activeCall = [routeController2 routeForSpeakerDisable];

        if (activeCall)
        {
          v16 = +[TUCallCenter sharedInstance];
          routeController3 = [v16 routeController];
          [routeController3 pickRoute:activeCall];

          controlsView2 = [(PHAudioCallControlsViewController *)self controlsView];
          delegate = controlsView2;
          v20 = 0;
LABEL_35:
          [controlsView2 setSelectedState:v20 forControlType:2];
          goto LABEL_52;
        }

        delegate = sub_100004F84();
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v56) = 0;
          v55 = "[WARN] Could not find available route to pick for speaker disable";
LABEL_51:
          _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, v55, &v56, 2u);
        }
      }

      else
      {
        activeCall = [routeController2 routeForSpeakerEnable];

        if (activeCall)
        {
          v42 = +[TUCallCenter sharedInstance];
          routeController4 = [v42 routeController];
          [routeController4 pickRoute:activeCall];

          controlsView2 = [(PHAudioCallControlsViewController *)self controlsView];
          delegate = controlsView2;
          v20 = 1;
          goto LABEL_35;
        }

        delegate = sub_100004F84();
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
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
      routeController5 = [v21 routeController];
      areAuxiliaryRoutesAvailable = [routeController5 areAuxiliaryRoutesAvailable];

      if (!areAuxiliaryRoutesAvailable)
      {
        goto LABEL_54;
      }

      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedAudioRoutesPresentation:self];
      goto LABEL_53;
    case 4uLL:
      view = [(PHAudioCallControlsViewController *)self view];
      if ([view _currentUserInterfaceIdiom] == 1)
      {

LABEL_37:
        activeCall = [(PHAudioCallControlsViewController *)self delegate];
        [activeCall audioCallControlsViewControllerRequestedContactsPresentation:self forView:viewCopy];
        goto LABEL_53;
      }

      v44 = +[APApplication isPhoneAppLocked];

      if (v44)
      {
        goto LABEL_37;
      }

      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedAddCallPresentation:self forView:viewCopy];
LABEL_53:

LABEL_54:
      return;
    case 5uLL:
      callContainer = [(PHAudioCallControlsViewController *)self callContainer];
      v27 = [callContainer callWithStatus:1];
      v28 = v27;
      if (v27)
      {
        activeCall = v27;
      }

      else
      {
        callContainer2 = [(PHAudioCallControlsViewController *)self callContainer];
        activeCall = [callContainer2 callWithStatus:2];
      }

      v46 = +[TUCallCenter sharedInstance];
      [v46 requestVideoUpgradeForCall:activeCall originatingUIType:27];

      [activeCall setIsSendingVideo:1];
      v47 = +[TUCallCenter sharedInstance];
      routeController6 = [v47 routeController];
      pickedRoute2 = [routeController6 pickedRoute];
      isReceiver = [pickedRoute2 isReceiver];

      if (!isReceiver)
      {
        goto LABEL_53;
      }

      delegate = +[TUCallCenter sharedInstance];
      routeController7 = [delegate routeController];
      v52 = +[TUCallCenter sharedInstance];
      routeController8 = [v52 routeController];
      speakerRoute = [routeController8 speakerRoute];
      [routeController7 pickRoute:speakerRoute];

      goto LABEL_52;
    case 6uLL:
      goto LABEL_37;
    case 7uLL:
      activeCall = [(PHAudioCallControlsViewController *)self activeCall];
      [(PHAudioCallControlsViewController *)self openMessagesForCall:activeCall];
      goto LABEL_53;
    case 8uLL:
      callContainer3 = [(PHAudioCallControlsViewController *)self callContainer];
      currentCalls = [callContainer3 currentCalls];
      activeCall = [currentCalls firstObject];

      LOBYTE(currentCalls) = [activeCall isOnHold];
      callCenter = [(PHAudioCallControlsViewController *)self callCenter];
      v37 = callCenter;
      if (currentCalls)
      {
        [callCenter unholdCall:activeCall];
      }

      else
      {
        [callCenter holdCall:activeCall];
      }

      [(PHAudioCallControlsViewController *)self updateControls];
      goto LABEL_53;
    case 9uLL:
      activeCall = [(PHAudioCallControlsViewController *)self callCenter];
      [activeCall swapCalls];
      goto LABEL_53;
    case 0xAuLL:
      callContainer4 = [(PHAudioCallControlsViewController *)self callContainer];
      activeCall = [callContainer4 callWithStatus:2];

      callContainer5 = [(PHAudioCallControlsViewController *)self callContainer];
      v31 = [callContainer5 callWithStatus:1];

      v32 = sub_100004F84();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138412546;
        tappedCopy = activeCall;
        v58 = 2112;
        v59 = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "PHAudioCallControlTypeMerge tapped. Grouping held call %@ with active call %@", &v56, 0x16u);
      }

      callCenter2 = [(PHAudioCallControlsViewController *)self callCenter];
      [callCenter2 groupCall:activeCall withOtherCall:v31];

      goto LABEL_53;
    case 0xBuLL:
    case 0xEuLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerDidTapRTTButton];
      goto LABEL_53;
    case 0xCuLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedVideoPresentation:self];
      goto LABEL_53;
    case 0xDuLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedPunchOutPresentation:self];
      goto LABEL_53;
    case 0xFuLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerDidTapEndButton:self];
      goto LABEL_53;
    case 0x10uLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedInvokeAlert];
      goto LABEL_53;
    case 0x11uLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerDidTapVideoStreamingButton];
      goto LABEL_53;
    case 0x12uLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedShareMedia];
      goto LABEL_53;
    case 0x13uLL:
      getScreenSharingButtonViewModel = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

      if (getScreenSharingButtonViewModel)
      {
        getScreenSharingButtonViewModel2 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
        currentState = [getScreenSharingButtonViewModel2 currentState];

        getScreenSharingButtonViewModel3 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
        activeCall = getScreenSharingButtonViewModel3;
        if (currentState == 2)
        {
          [getScreenSharingButtonViewModel3 userDidRequestScreenSharingToEnd];
        }

        else
        {
          [getScreenSharingButtonViewModel3 userIsPresentingShareSheet];

          activeCall = [(PHAudioCallControlsViewController *)self delegate];
          [activeCall audioCallControlsViewControllerRequestedShareCardFromSourceView:viewCopy];
        }
      }

      else
      {
        activeCall = sub_100004F84();
        if (os_log_type_enabled(activeCall, OS_LOG_TYPE_ERROR))
        {
          sub_100257284(activeCall);
        }
      }

      goto LABEL_53;
    case 0x14uLL:
      activeCall = [(PHAudioCallControlsViewController *)self delegate];
      [activeCall audioCallControlsViewControllerRequestedMoreMenuFromSourceView:viewCopy];
      goto LABEL_53;
    default:
      goto LABEL_54;
  }
}

- (void)controlTypeShortPressed:(unint64_t)pressed
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    pressedCopy = pressed;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Control type short pressed (%lu)", &v5, 0xCu);
  }
}

- (void)controlTypeLongPressed:(unint64_t)pressed
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    *v19 = pressed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Control type long pressed (%lu)", &v18, 0xCu);
  }

  if (pressed == 1)
  {
    delegate = [(PHAudioCallControlsViewController *)self delegate];
    [delegate audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:self];
    goto LABEL_14;
  }

  if (pressed)
  {
    return;
  }

  callContainer = [(PHAudioCallControlsViewController *)self callContainer];
  delegate = [callContainer callWithStatus:1];

  callContainer2 = [(PHAudioCallControlsViewController *)self callContainer];
  currentCallGroups = [callContainer2 currentCallGroups];
  if ([currentCallGroups count] != 1 || !delegate)
  {

    goto LABEL_11;
  }

  model = [delegate model];
  supportsHolding = [model supportsHolding];

  if (!supportsHolding)
  {
LABEL_11:
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      callContainer3 = [(PHAudioCallControlsViewController *)self callContainer];
      currentCallGroups2 = [callContainer3 currentCallGroups];
      v15 = [currentCallGroups2 count] != 1;
      model2 = [delegate model];
      supportsHolding2 = [model2 supportsHolding];
      v18 = 67109632;
      *v19 = v15;
      *&v19[4] = 1024;
      *&v19[6] = delegate == 0;
      v20 = 1024;
      v21 = supportsHolding2 ^ 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not holding: current call count isn't 1 (%d), active call doesn't exist (%d), or active call doesn't support holding (%d)", &v18, 0x14u);
    }

    goto LABEL_14;
  }

  [(PHAudioCallControlsViewController *)self controlTypeTapped:8 forView:0];
LABEL_14:
}

- (id)audioRouteMenu
{
  delegate = [(PHAudioCallControlsViewController *)self delegate];
  audioRouteMenu = [delegate audioRouteMenu];

  return audioRouteMenu;
}

- (BOOL)controlTypeIsEnabled:(unint64_t)enabled
{
  if (![(PHAudioCallControlsViewController *)self isEnabled])
  {
    LOBYTE(getScreenSharingButtonViewModel) = 0;
    return getScreenSharingButtonViewModel;
  }

  callContainer = [(PHAudioCallControlsViewController *)self callContainer];
  v6 = [callContainer callWithStatus:2];

  callContainer2 = [(PHAudioCallControlsViewController *)self callContainer];
  v8 = [callContainer2 callWithStatus:1];

  callContainer3 = [(PHAudioCallControlsViewController *)self callContainer];
  v10 = [callContainer3 callWithStatus:3];

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
  switch(enabled)
  {
    case 0uLL:
      LOBYTE(getScreenSharingButtonViewModel) = (v12 | v10) != 0;
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

      model = [v13 model];
      if ([model supportsDTMF])
      {
        LOBYTE(getScreenSharingButtonViewModel) = 1;
        goto LABEL_68;
      }

      model2 = [v10 model];
      LOBYTE(getScreenSharingButtonViewModel) = [model2 supportsDTMF];
      goto LABEL_38;
    case 2uLL:
    case 3uLL:
      v17 = +[TUCallCenter sharedInstance];
      routeController = [v17 routeController];
      routes = [routeController routes];
      if ([routes count] > 1)
      {
        v23 = 0;
      }

      else
      {
        v20 = +[TUCallCenter sharedInstance];
        routeController2 = [v20 routeController];
        pickedRoute = [routeController2 pickedRoute];
        isSpeaker = [pickedRoute isSpeaker];

        v23 = isSpeaker ^ 1;
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

      LOBYTE(getScreenSharingButtonViewModel) = 0;
      if (v10 | v37 && (v23 & 1) == 0)
      {
        LODWORD(getScreenSharingButtonViewModel) = [v37 isTTY] ^ 1;
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
      callCenter = [(PHAudioCallControlsViewController *)self callCenter];
      if (![callCenter isAddCallAllowed])
      {
        LOBYTE(getScreenSharingButtonViewModel) = 0;
        goto LABEL_98;
      }

      v35 = +[PHInCallUtilities sharedInstance];
      if ([v35 isSetupAssistantRunning])
      {
        goto LABEL_44;
      }

      isConversation = [v33 isConversation];
      if (!isConversation)
      {
        goto LABEL_92;
      }

      if (![v33 isConversation])
      {
LABEL_44:
        LOBYTE(getScreenSharingButtonViewModel) = 0;
        goto LABEL_97;
      }

      remoteParticipantHandles = [v33 remoteParticipantHandles];
      if ([remoteParticipantHandles count] == 1)
      {
LABEL_92:
        v41 = +[PHInCallUtilities sharedInstance];
        LODWORD(getScreenSharingButtonViewModel) = [v41 isInLostMode] ^ 1;

        if (!isConversation)
        {
          goto LABEL_97;
        }
      }

      else
      {
        LOBYTE(getScreenSharingButtonViewModel) = 0;
      }

LABEL_97:
LABEL_98:

      goto LABEL_99;
    case 5uLL:
    case 0xCuLL:
      provider = [v12 provider];
      if ([provider supportsAudioAndVideo])
      {
        model = [v13 provider];
      }

      else
      {
        callCenter2 = [(PHAudioCallControlsViewController *)self callCenter];
        providerManager = [callCenter2 providerManager];
        model = [providerManager faceTimeProvider];
      }

      if ([model isFaceTimeProvider])
      {
        v27 = +[PHInCallUtilities sharedInstance];
        faceTimeVideoIsAvailable = [v27 faceTimeVideoIsAvailable];
      }

      else
      {
        faceTimeVideoIsAvailable = [model supportsAudioAndVideo];
      }

      if (!v13)
      {
        goto LABEL_48;
      }

      model2 = [v13 handle];
      value = [model2 value];
      if (![value length] || (objc_msgSend(v13, "isConferenced") & 1) != 0 || (objc_msgSend(v13, "isVoicemail") & 1) != 0 || (objc_msgSend(v13, "isEmergency") & 1) != 0 || objc_msgSend(v13, "status") != 1 || ((objc_msgSend(v13, "faceTimeIDStatus") != 1) & faceTimeVideoIsAvailable) != 1)
      {
        LOBYTE(getScreenSharingButtonViewModel) = 0;
      }

      else
      {
        v31 = +[PHInCallUtilities sharedInstance];
        LODWORD(getScreenSharingButtonViewModel) = [v31 isSetupAssistantRunning] ^ 1;
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
        LOBYTE(getScreenSharingButtonViewModel) = 0;
        goto LABEL_99;
      }

      model = +[PHInCallUtilities sharedInstance];
      if ([model isSetupAssistantRunning])
      {
LABEL_48:
        LOBYTE(getScreenSharingButtonViewModel) = 0;
      }

      else
      {
        model2 = +[PHInCallUtilities sharedInstance];
        LODWORD(getScreenSharingButtonViewModel) = [model2 isInLostMode] ^ 1;
LABEL_38:
      }

LABEL_68:

LABEL_99:
      return getScreenSharingButtonViewModel;
    case 7uLL:
      if (!v12)
      {
        v12 = v10;
      }

      isConversation2 = [v12 isConversation];
      goto LABEL_74;
    case 8uLL:
      if (!v10)
      {
        goto LABEL_66;
      }

      goto LABEL_87;
    case 9uLL:
      LOBYTE(getScreenSharingButtonViewModel) = 0;
      if (v10 || !v6)
      {
        goto LABEL_99;
      }

      v12 = v8;
LABEL_66:
      model = [v12 model];
      supportsHolding = [model supportsHolding];
LABEL_67:
      LOBYTE(getScreenSharingButtonViewModel) = supportsHolding;
      goto LABEL_68;
    case 0xAuLL:
      LOBYTE(getScreenSharingButtonViewModel) = 0;
      if (v10 || !v12 || !v6)
      {
        goto LABEL_99;
      }

      model = [(PHAudioCallControlsViewController *)self callCenter];
      if (![model canGroupCall:v13 withCall:v6] || (objc_msgSend(v13, "isRTT") & 1) != 0 || (objc_msgSend(v13, "isTTY") & 1) != 0 || (objc_msgSend(v6, "isRTT") & 1) != 0)
      {
        goto LABEL_48;
      }

      LODWORD(getScreenSharingButtonViewModel) = [v6 isTTY] ^ 1;
      goto LABEL_68;
    case 0xBuLL:
      if (!v12)
      {
        goto LABEL_87;
      }

      isConversation2 = [v12 isTTY];
      goto LABEL_74;
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
      LOBYTE(getScreenSharingButtonViewModel) = 1;
      goto LABEL_99;
    case 0xEuLL:
      if (!v12)
      {
        goto LABEL_87;
      }

      isConversation2 = [v12 isRTT];
LABEL_74:
      LOBYTE(getScreenSharingButtonViewModel) = isConversation2;
      goto LABEL_99;
    case 0x13uLL:
      getScreenSharingButtonViewModel = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

      if (!getScreenSharingButtonViewModel)
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

      model = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
      LOBYTE(getScreenSharingButtonViewModel) = [model currentState] != 1;
      goto LABEL_68;
    case 0x14uLL:
      model = [(PHAudioCallControlsViewController *)self features];
      supportsHolding = [model isMoreMenuEnabled];
      goto LABEL_67;
    default:
      goto LABEL_87;
  }
}

- (BOOL)controlTypeIsSelected:(unint64_t)selected
{
  activeCall = [(PHAudioCallControlsViewController *)self activeCall];
  v6 = activeCall;
  LOBYTE(getScreenSharingButtonViewModel) = 0;
  if (selected > 7)
  {
    switch(selected)
    {
      case 0x13uLL:
        getScreenSharingButtonViewModel = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];

        if (getScreenSharingButtonViewModel)
        {
          getScreenSharingButtonViewModel2 = [(PHAudioCallControlsViewController *)self getScreenSharingButtonViewModel];
          LOBYTE(getScreenSharingButtonViewModel) = [getScreenSharingButtonViewModel2 currentState] == 2;
          goto LABEL_17;
        }

        break;
      case 0x11uLL:
        getScreenSharingButtonViewModel2 = [(PHAudioCallControlsViewController *)self delegate];
        videoStreamingIsGoingOn = [getScreenSharingButtonViewModel2 videoStreamingIsGoingOn];
        goto LABEL_16;
      case 8uLL:
        isOnHold = [activeCall isOnHold];
LABEL_11:
        LOBYTE(getScreenSharingButtonViewModel) = isOnHold;
        break;
    }
  }

  else
  {
    if (selected - 2 < 2)
    {
      v8 = +[TUCallCenter sharedInstance];
      routeController = [v8 routeController];
      getScreenSharingButtonViewModel2 = [routeController pickedRoute];

      if ([getScreenSharingButtonViewModel2 isAuxiliary])
      {
        LOBYTE(getScreenSharingButtonViewModel) = 1;
LABEL_17:

        goto LABEL_18;
      }

      videoStreamingIsGoingOn = [getScreenSharingButtonViewModel2 isSpeaker];
LABEL_16:
      LOBYTE(getScreenSharingButtonViewModel) = videoStreamingIsGoingOn;
      goto LABEL_17;
    }

    if (!selected)
    {
      isOnHold = [activeCall isUplinkMuted];
      goto LABEL_11;
    }
  }

LABEL_18:

  return getScreenSharingButtonViewModel;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  controlsView = [(PHAudioCallControlsViewController *)self controlsView];
  [controlsView setButtonsEnabled:enabledCopy];
}

- (void)setUpdatesPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = pausedCopy;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ setUpdatesPaused=%d", &v8, 0x12u);
  }

  self->_updatesPaused = pausedCopy;
  if (!pausedCopy)
  {
    controlsView = [(PHAudioCallControlsViewController *)self controlsView];
    [controlsView updateControls];
  }
}

- (BOOL)hasActiveAndIncomingCallPresent
{
  callContainer = [(PHAudioCallControlsViewController *)self callContainer];
  currentCallGroups = [callContainer currentCallGroups];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = currentCallGroups;
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

      status = [*(*(&v12 + 1) + 8 * i) status];
      if (status == 4)
      {
        v6 = 1;
        if ((v7 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        if (status == 1)
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

- (id)currentArrangementWithSenderIdentityClient:(id)client
{
  clientCopy = client;
  callDisplayStyleManager = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  activeCall = [(PHAudioCallControlsViewController *)self activeCall];
  if (activeCall)
  {
    firstObject = activeCall;
  }

  else
  {
    callContainer = [(PHAudioCallControlsViewController *)self callContainer];
    currentCalls = [callContainer currentCalls];
    firstObject = [currentCalls firstObject];

    if (!firstObject)
    {
      v11 = +[UIApplication sharedApplication];
      delegate = [v11 delegate];
      firstObject = [delegate mostRecentlyDisconnectedAudioCall];
    }
  }

  v13 = +[PHInCallUtilities sharedInstance];
  if ([v13 isIPadIdiom])
  {
  }

  else
  {
    delegate2 = [(PHAudioCallControlsViewController *)self delegate];
    v15 = [firstObject canDisplayAlertUI:{objc_msgSend(delegate2, "audioControlsShouldPresentAlertButton")}];

    if (v15)
    {
      v16 = [PHAudioCallControlArrangement alloc];
      if (callDisplayStyle == 3)
      {
        +[PHAudioCallControlArrangement simplifiedDefaultAlertControlTypes];
      }

      else
      {
        +[PHAudioCallControlArrangement defaultAlertControlTypes];
      }
      features6 = ;
      v30 = [(PHAudioCallControlArrangement *)v16 initWithControlTypes:features6];
LABEL_76:

      goto LABEL_77;
    }
  }

  if (callDisplayStyle == 3)
  {
    v17 = ![(PHAudioCallControlsViewController *)self hasActiveAndIncomingCallPresent];
  }

  else
  {
    features = [(PHAudioCallControlsViewController *)self features];
    if ([features shouldEmbedSwapBanner])
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
    features2 = [(PHAudioCallControlsViewController *)self features];
    isMoreMenuEnabled = [features2 isMoreMenuEnabled];

    if (!isMoreMenuEnabled)
    {
      if (callDisplayStyle == 3)
      {
        v22 = [PHAudioCallControlArrangement alloc];
        v23 = +[PHAudioCallControlArrangement simplifiedDefaultMultipleCallControlTypes];
        goto LABEL_31;
      }

      v31 = +[PHInCallUtilities sharedInstance];
      isIPadIdiom = [v31 isIPadIdiom];

      v22 = [PHAudioCallControlArrangement alloc];
      if (!isIPadIdiom)
      {
        v23 = +[PHAudioCallControlArrangement defaultMultipleCallControlTypes];
        goto LABEL_31;
      }

      callDisplayStyleManager2 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
      usesLargeFormatUI = [callDisplayStyleManager2 usesLargeFormatUI];
      v28 = 1;
LABEL_29:
      v33 = [PHAudioCallControlArrangement controlTypesOnIpadShouldUseLargeUIFormat:usesLargeFormatUI inMultiCall:v28];
      v30 = [(PHAudioCallControlArrangement *)v22 initWithControlTypes:v33];

      goto LABEL_32;
    }
  }

  if (callDisplayStyle != 3)
  {
    v24 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom2 = [v24 isIPadIdiom];

    v22 = [PHAudioCallControlArrangement alloc];
    if (!isIPadIdiom2)
    {
      v23 = +[PHAudioCallControlArrangement defaultControlTypes];
      goto LABEL_31;
    }

    callDisplayStyleManager2 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
    usesLargeFormatUI = [callDisplayStyleManager2 usesLargeFormatUI];
    v28 = 0;
    goto LABEL_29;
  }

  v22 = [PHAudioCallControlArrangement alloc];
  v23 = +[PHAudioCallControlArrangement simplifiedDefaultControlTypes];
LABEL_31:
  callDisplayStyleManager2 = v23;
  v30 = [(PHAudioCallControlArrangement *)v22 initWithControlTypes:v23];
LABEL_32:

  if ([firstObject isRTT])
  {
    v34 = v30;
    v35 = 0;
    v36 = 14;
LABEL_34:
    [(PHAudioCallControlArrangement *)v34 replaceControlsOfType:v35 withControlOfType:v36];
    goto LABEL_49;
  }

  if ([firstObject isTTY])
  {
    localSenderIdentityUUID = [firstObject localSenderIdentityUUID];
    if (!localSenderIdentityUUID)
    {
      v38 = sub_100004F84();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v68 = 138412290;
        v69 = firstObject;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Could not retrieve a sender identity UUID from the call %@; checking if TTY software is available anyway.", &v68, 0xCu);
      }
    }

    if ([clientCopy isTTYSoftwareAvailableForSenderIdentityUUID:localSenderIdentityUUID])
    {
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:0 withControlOfType:11];
    }
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      if ([firstObject isOnHold])
      {
        model = [firstObject model];
        supportsHolding = [model supportsHolding];

        if (supportsHolding)
        {
          v34 = v30;
          v35 = 0;
          v36 = 8;
          goto LABEL_34;
        }
      }
    }

    if ([firstObject isConversation])
    {
      v34 = v30;
      v35 = 6;
      v36 = 7;
      goto LABEL_34;
    }
  }

LABEL_49:
  features3 = [(PHAudioCallControlsViewController *)self features];
  if ([features3 isMoreMenuEnabled])
  {
  }

  else
  {
    features4 = [(PHAudioCallControlsViewController *)self features];
    sharePlayInCallsEnabled = [features4 sharePlayInCallsEnabled];

    if ((sharePlayInCallsEnabled & 1) == 0)
    {
      if ([firstObject isConversation])
      {
        features5 = [(PHAudioCallControlsViewController *)self features];
        requestToScreenShareEnabled = [features5 requestToScreenShareEnabled];

        if (requestToScreenShareEnabled)
        {
          [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:1 withControlOfType:19];
        }
      }
    }
  }

  v46 = +[TUCallCenter sharedInstance];
  routeController = [v46 routeController];
  areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

  if (areAuxiliaryRoutesAvailable)
  {
    [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:2 withControlOfType:3];
  }

  callDisplayStyleManager3 = [(PHAudioCallControlsViewController *)self callDisplayStyleManager];
  callDisplayStyle2 = [callDisplayStyleManager3 callDisplayStyle];

  if (callDisplayStyle2 == 3 && ([(PHAudioCallControlsViewController *)self controlTypeIsEnabled:5]|| ![(PHAudioCallControlsViewController *)self controlTypeIsEnabled:1]))
  {
    [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:1 withControlOfType:5];
  }

  if (firstObject)
  {
    provider = [firstObject provider];
    isSystemProvider = [provider isSystemProvider];

    if ((isSystemProvider & 1) == 0)
    {
      v53 = +[PHInCallUtilities sharedInstance];
      isIPadIdiom3 = [v53 isIPadIdiom];

      v55 = isIPadIdiom3 ? 6 : 4;
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:v55 withControlOfType:13];
      provider2 = [firstObject provider];
      supportsAudioAndVideo = [provider2 supportsAudioAndVideo];

      if (supportsAudioAndVideo)
      {
        [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:5 withControlOfType:12];
      }
    }
  }

  features6 = [(PHAudioCallControlsViewController *)self features];
  isEnhancedEmergencyEnabled = [features6 isEnhancedEmergencyEnabled];
  if (!firstObject || !isEnhancedEmergencyEnabled)
  {
    goto LABEL_76;
  }

  isEmergency = [firstObject isEmergency];

  if (isEmergency)
  {
    delegate3 = [(PHAudioCallControlsViewController *)self delegate];
    shouldEnableVideoStreamingButton = [delegate3 shouldEnableVideoStreamingButton];

    if (shouldEnableVideoStreamingButton)
    {
      [(PHAudioCallControlArrangement *)v30 replaceControlsOfType:5 withControlOfType:17];
    }

    delegate4 = [(PHAudioCallControlsViewController *)self delegate];
    shouldEnableShareMediaButton = [delegate4 shouldEnableShareMediaButton];

    if (shouldEnableShareMediaButton)
    {
      features7 = [(PHAudioCallControlsViewController *)self features];
      isMoreMenuEnabled2 = [features7 isMoreMenuEnabled];

      if (isMoreMenuEnabled2)
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

- (void)openMessagesForCall:(id)call
{
  callCopy = call;
  if ([callCopy isConversation])
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 activeConversationForCall:callCopy];

    if (v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      groupUUID = [v5 groupUUID];

      if (groupUUID)
      {
        v8 = [NSURLQueryItem alloc];
        groupUUID2 = [v5 groupUUID];
        uUIDString = [groupUUID2 UUIDString];
        v11 = [v8 initWithName:@"groupid" value:uUIDString];

        [v6 addObject:v11];
      }

      v12 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      remoteMembers = [v5 remoteMembers];
      v14 = [remoteMembers countByEnumeratingWithState:&v29 objects:v35 count:16];
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
              objc_enumerationMutation(remoteMembers);
            }

            handles = [*(*(&v29 + 1) + 8 * v17) handles];
            anyObject = [handles anyObject];

            value = [anyObject value];

            if (value)
            {
              value2 = [anyObject value];
              [v12 addObject:value2];
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [remoteMembers countByEnumeratingWithState:&v29 objects:v35 count:16];
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
        sub_1002572C8(callCopy, v6);
      }
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = callCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not opening Multiway Messages for call. Call is not a conversation: %@", buf, 0xCu);
    }
  }
}

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    lastPickedRoute = [(PHAudioCallControlsViewController *)self lastPickedRoute];
    v12 = 138412290;
    v13 = lastPickedRoute;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last picked route %@", &v12, 0xCu);
  }

  [(PHAudioCallControlsViewController *)self updateControls];
  pickedRoute = [controllerCopy pickedRoute];

  lastPickedRoute2 = [(PHAudioCallControlsViewController *)self lastPickedRoute];
  v9 = [pickedRoute isEqualToRoute:lastPickedRoute2];

  if ((v9 & 1) == 0)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dismissing route menu since the selected route changed", &v12, 2u);
    }

    controlsView = [(PHAudioCallControlsViewController *)self controlsView];
    [controlsView dismissAudioRoutesMenu];
  }

  [(PHAudioCallControlsViewController *)self setLastPickedRoute:pickedRoute];
}

- (void)handleMutedTalkerBannerTap
{
  activeCall = [(PHAudioCallControlsViewController *)self activeCall];
  [activeCall setUplinkMuted:{objc_msgSend(activeCall, "isUplinkMuted") ^ 1}];
  controlsView = [(PHAudioCallControlsViewController *)self controlsView];
  [controlsView setSelectedState:objc_msgSend(activeCall forControlType:{"isUplinkMuted"), 0}];
}

- (NSArray)buttonsForAmbientTransition
{
  controlsView = [(PHAudioCallControlsViewController *)self controlsView];
  buttonsForAmbientTransition = [controlsView buttonsForAmbientTransition];

  return buttonsForAmbientTransition;
}

@end