@interface WAGEltonPhoneBuddyFlowFirstViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (WAGEltonPhoneBuddyFlowFirstViewController)init;
- (id)_phoneBuddyFlowPanelLog;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)path;
- (void)_handlepplicationDidBecomeActiveNotification;
- (void)_prepareUIForVideoReadyToPlay;
- (void)_setupViews;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WAGEltonPhoneBuddyFlowFirstViewController

- (WAGEltonPhoneBuddyFlowFirstViewController)init
{
  v9.receiver = self;
  v9.super_class = WAGEltonPhoneBuddyFlowFirstViewController;
  v2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)&v9 initWithTitle:&stru_C438 detailText:0 icon:0 contentLayout:1];
  v3 = v2;
  if (v2)
  {
    _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)v2 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = "[WAGEltonPhoneBuddyFlowFirstViewController init]";
      _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
    }

    [(WAGEltonPhoneBuddyFlowFirstViewController *)v3 setStyle:2];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"_handlepplicationDidBecomeActiveNotification" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WAGEltonPhoneBuddyFlowFirstViewController;
  [(WAGEltonPhoneBuddyFlowFirstViewController *)&v6 viewDidLoad];
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[WAGEltonPhoneBuddyFlowFirstViewController viewDidLoad]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  [(WAGEltonPhoneBuddyFlowFirstViewController *)self _setupViews];
}

- (void)dealloc
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController dealloc]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel --  %@ %s", buf, 0x16u);
  }

  [(WAGEltonPhoneBuddyFlowFirstViewController *)self _avQueuePlayerTryToRemoveObserverForKeyPath:@"status"];
  [(WAGEltonPhoneBuddyFlowFirstViewController *)self _avQueuePlayerTryToRemoveObserverForKeyPath:@"timeControlStatus"];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];

  v7.receiver = self;
  v7.super_class = WAGEltonPhoneBuddyFlowFirstViewController;
  [(WAGEltonPhoneBuddyFlowFirstViewController *)&v7 dealloc];
}

- (void)_setupViews
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v35 = v5;
    v36 = 2080;
    v37 = "[WAGEltonPhoneBuddyFlowFirstViewController _setupViews]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  v6 = +[UIColor blackColor];
  view = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [view setBackgroundColor:v6];

  v8 = objc_alloc_init(UIView);
  containerContentView = self->_containerContentView;
  self->_containerContentView = v8;

  contentView = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [contentView addSubview:self->_containerContentView];

  v11 = +[UIColor blackColor];
  contentView2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [contentView2 setBackgroundColor:v11];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 pathForResource:@"elton_instruction" ofType:@"m4v"];

  _phoneBuddyFlowPanelLog2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- file path is %@", buf, 0xCu);
  }

  if (v14)
  {
    v16 = [NSURL fileURLWithPath:v14];
    v17 = [AVPlayerItem playerItemWithURL:v16];
    v33 = v17;
    v18 = [NSArray arrayWithObjects:&v33 count:1];
    v19 = [AVQueuePlayer queuePlayerWithItems:v18];
    avQueuePlayer = self->_avQueuePlayer;
    self->_avQueuePlayer = v19;

    v21 = [AVPlayerLooper playerLooperWithPlayer:self->_avQueuePlayer templateItem:v17];
    playerLooper = self->_playerLooper;
    self->_playerLooper = v21;

    [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"status" options:0 context:0];
    v23 = [AVPlayerLayer playerLayerWithPlayer:self->_avQueuePlayer];
    playerLayer = self->_playerLayer;
    self->_playerLayer = v23;

    [(AVPlayerLayer *)self->_playerLayer setVideoGravity:AVLayerVideoGravityResizeAspect];
    layer = [(UIView *)self->_containerContentView layer];
    [layer addSublayer:self->_playerLayer];

    _phoneBuddyFlowPanelLog3 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(_phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_avQueuePlayer;
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- will add player%@", buf, 0xCu);
    }
  }

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [UIImage imageNamed:@"elton_first_frame_fpo" inBundle:v28 withConfiguration:0];

  _phoneBuddyFlowPanelLog4 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- did load statc image.", buf, 2u);
  }

  v31 = [[UIImageView alloc] initWithImage:v29];
  playerPlaceholderImageView = self->_playerPlaceholderImageView;
  self->_playerPlaceholderImageView = v31;

  [(UIImageView *)self->_playerPlaceholderImageView setContentMode:1];
  [(UIView *)self->_containerContentView addSubview:self->_playerPlaceholderImageView];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = WAGEltonPhoneBuddyFlowFirstViewController;
  [(WAGEltonPhoneBuddyFlowFirstViewController *)&v22 viewDidLayoutSubviews];
  image = [(UIImageView *)self->_playerPlaceholderImageView image];
  [image size];
  v5 = v4;
  v7 = v6;

  if (v7 <= 0.0 || v5 <= 0.0)
  {
    v9 = 1.38;
  }

  else
  {
    v9 = v5 / v7;
  }

  contentView = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [contentView frame];
  v12 = v11;
  v14 = v13;

  view = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [view bounds];
  v17 = v16;
  view2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [view2 bounds];
  v20 = v19 / v9;

  v21 = v12 + (v14 - v20) * 0.5;
  [(AVPlayerLayer *)self->_playerLayer setFrame:0.0, v21, v17, v20];
  [(UIImageView *)self->_playerPlaceholderImageView setFrame:0.0, v21, v17, v20];
  [(UIView *)self->_containerContentView setFrame:0.0, v21, v17, v20];
}

- (id)titleString
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController titleString]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TITLE" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (id)detailString
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController detailString]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DETAIL" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (id)suggestedButtonTitle
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController suggestedButtonTitle]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BUTTON_TITLE" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (void)suggestedButtonPressed:(id)pressed
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController suggestedButtonPressed:]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  miniFlowDelegate = [(WAGEltonPhoneBuddyFlowFirstViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412546;
    v16 = v12;
    v17 = 2080;
    v18 = "[WAGEltonPhoneBuddyFlowFirstViewController observeValueForKeyPath:ofObject:change:context:]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  if ([objectCopy isEqual:self->_avQueuePlayer] && objc_msgSend(pathCopy, "isEqualToString:", @"status") && -[AVQueuePlayer status](self->_avQueuePlayer, "status") == &dword_0 + 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3A70;
    block[3] = &unk_C2F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if ([objectCopy isEqual:self->_avQueuePlayer] && objc_msgSend(pathCopy, "isEqualToString:", @"timeControlStatus") && -[AVQueuePlayer timeControlStatus](self->_avQueuePlayer, "timeControlStatus") == &dword_0 + 2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3AB4;
    v13[3] = &unk_C2F0;
    v13[4] = self;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

- (void)_prepareUIForVideoReadyToPlay
{
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[WAGEltonPhoneBuddyFlowFirstViewController _prepareUIForVideoReadyToPlay]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v7, 0x16u);
  }

  superview = [(UIImageView *)self->_playerPlaceholderImageView superview];

  if (superview)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer play];
    [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"timeControlStatus" options:0 context:0];
  }
}

- (void)_handlepplicationDidBecomeActiveNotification
{
  player = [(AVPlayerLayer *)self->_playerLayer player];
  [player play];
}

- (id)_phoneBuddyFlowPanelLog
{
  if (qword_10F68 != -1)
  {
    sub_5ED0();
  }

  v3 = qword_10F60;

  return v3;
}

- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)path
{
  pathCopy = path;
  _phoneBuddyFlowPanelLog = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    avQueuePlayer = self->_avQueuePlayer;
    v8 = 138412546;
    v9 = pathCopy;
    v10 = 2112;
    v11 = avQueuePlayer;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- will attempt to remove observer for keyPath: %@, _avQueuePlayer is:%@", &v8, 0x16u);
  }

  if (pathCopy)
  {
    v7 = self->_avQueuePlayer;
    if (v7)
    {
      [(AVQueuePlayer *)v7 removeObserver:self forKeyPath:pathCopy];
    }
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end