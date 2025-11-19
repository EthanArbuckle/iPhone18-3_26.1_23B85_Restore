@interface WAGEltonPhoneBuddyFlowFirstViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (WAGEltonPhoneBuddyFlowFirstViewController)init;
- (id)_phoneBuddyFlowPanelLog;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)a3;
- (void)_handlepplicationDidBecomeActiveNotification;
- (void)_prepareUIForVideoReadyToPlay;
- (void)_setupViews;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)suggestedButtonPressed:(id)a3;
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
    v4 = [(WAGEltonPhoneBuddyFlowFirstViewController *)v2 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = "[WAGEltonPhoneBuddyFlowFirstViewController init]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
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
  v3 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[WAGEltonPhoneBuddyFlowFirstViewController viewDidLoad]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  [(WAGEltonPhoneBuddyFlowFirstViewController *)self _setupViews];
}

- (void)dealloc
{
  v3 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController dealloc]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel --  %@ %s", buf, 0x16u);
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
  v3 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v35 = v5;
    v36 = 2080;
    v37 = "[WAGEltonPhoneBuddyFlowFirstViewController _setupViews]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  v6 = +[UIColor blackColor];
  v7 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = objc_alloc_init(UIView);
  containerContentView = self->_containerContentView;
  self->_containerContentView = v8;

  v10 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [v10 addSubview:self->_containerContentView];

  v11 = +[UIColor blackColor];
  v12 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [v12 setBackgroundColor:v11];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 pathForResource:@"elton_instruction" ofType:@"m4v"];

  v15 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- file path is %@", buf, 0xCu);
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
    v25 = [(UIView *)self->_containerContentView layer];
    [v25 addSublayer:self->_playerLayer];

    v26 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_avQueuePlayer;
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- will add player%@", buf, 0xCu);
    }
  }

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [UIImage imageNamed:@"elton_first_frame_fpo" inBundle:v28 withConfiguration:0];

  v30 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- did load statc image.", buf, 2u);
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
  v3 = [(UIImageView *)self->_playerPlaceholderImageView image];
  [v3 size];
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

  v10 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self contentView];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [v15 bounds];
  v17 = v16;
  v18 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self view];
  [v18 bounds];
  v20 = v19 / v9;

  v21 = v12 + (v14 - v20) * 0.5;
  [(AVPlayerLayer *)self->_playerLayer setFrame:0.0, v21, v17, v20];
  [(UIImageView *)self->_playerPlaceholderImageView setFrame:0.0, v21, v17, v20];
  [(UIView *)self->_containerContentView setFrame:0.0, v21, v17, v20];
}

- (id)titleString
{
  v2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController titleString]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TITLE" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (id)detailString
{
  v2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController detailString]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DETAIL" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController suggestedButtonTitle]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BUTTON_TITLE" value:&stru_C438 table:@"Localizable"];

  return v6;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "[WAGEltonPhoneBuddyFlowFirstViewController suggestedButtonPressed:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v7 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self miniFlowDelegate];
  [v7 miniFlowStepComplete:self];
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412546;
    v16 = v12;
    v17 = 2080;
    v18 = "[WAGEltonPhoneBuddyFlowFirstViewController observeValueForKeyPath:ofObject:change:context:]";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  if ([v9 isEqual:self->_avQueuePlayer] && objc_msgSend(v8, "isEqualToString:", @"status") && -[AVQueuePlayer status](self->_avQueuePlayer, "status") == &dword_0 + 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3A70;
    block[3] = &unk_C2F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if ([v9 isEqual:self->_avQueuePlayer] && objc_msgSend(v8, "isEqualToString:", @"timeControlStatus") && -[AVQueuePlayer timeControlStatus](self->_avQueuePlayer, "timeControlStatus") == &dword_0 + 2)
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
  v3 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[WAGEltonPhoneBuddyFlowFirstViewController _prepareUIForVideoReadyToPlay]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v7, 0x16u);
  }

  v6 = [(UIImageView *)self->_playerPlaceholderImageView superview];

  if (v6)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer play];
    [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"timeControlStatus" options:0 context:0];
  }
}

- (void)_handlepplicationDidBecomeActiveNotification
{
  v2 = [(AVPlayerLayer *)self->_playerLayer player];
  [v2 play];
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

- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(WAGEltonPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    avQueuePlayer = self->_avQueuePlayer;
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = avQueuePlayer;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- will attempt to remove observer for keyPath: %@, _avQueuePlayer is:%@", &v8, 0x16u);
  }

  if (v4)
  {
    v7 = self->_avQueuePlayer;
    if (v7)
    {
      [(AVQueuePlayer *)v7 removeObserver:self forKeyPath:v4];
    }
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end