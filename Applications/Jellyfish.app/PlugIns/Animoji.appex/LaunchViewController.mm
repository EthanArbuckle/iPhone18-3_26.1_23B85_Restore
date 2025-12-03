@interface LaunchViewController
- (LaunchViewControllerDelegate)delegate;
- (void)applyLayout:(id)layout;
- (void)dealloc;
- (void)detachVideoController;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)splashScreenLayoutDidChange:(id)change;
- (void)startPlayingVideos;
- (void)stopPlayingVideos;
- (void)strongPopupPresentationNotification:(id)notification;
- (void)tappedCancelButton:(id)button;
- (void)tappedContinueButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation LaunchViewController

- (void)dealloc
{
  [(LaunchViewController *)self stopPlayingVideos];
  v3.receiver = self;
  v3.super_class = LaunchViewController;
  [(LaunchViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = LaunchViewController;
  [(LaunchViewController *)&v53 viewDidLoad];
  v3 = +[AVTUIColorRepository modalBackgroundColor];
  view = [(LaunchViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UIScrollView alloc];
  view2 = [(LaunchViewController *)self view];
  [view2 bounds];
  v8 = v7;
  view3 = [(LaunchViewController *)self view];
  [view3 bounds];
  v10 = [v5 initWithFrame:{0.0, 0.0, v8}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setAutoresizingMask:18];
  view4 = [(LaunchViewController *)self view];
  [view4 addSubview:self->_scrollView];

  v13 = objc_alloc_init(AVPlayerViewController);
  videoController = self->_videoController;
  self->_videoController = v13;

  v15 = +[UIColor clearColor];
  view5 = [(AVPlayerViewController *)self->_videoController view];
  [view5 setBackgroundColor:v15];

  view6 = [(AVPlayerViewController *)self->_videoController view];
  [view6 setUserInteractionEnabled:0];

  [(AVPlayerViewController *)self->_videoController setShowsPlaybackControls:0];
  [(AVPlayerViewController *)self->_videoController setUpdatesNowPlayingInfoCenter:0];
  player = [(AVPlayerViewController *)self->_videoController player];
  [player setAllowsExternalPlayback:0];

  v19 = self->_scrollView;
  view7 = [(AVPlayerViewController *)self->_videoController view];
  [(UIScrollView *)v19 addSubview:view7];

  v21 = objc_alloc_init(AVPlayerViewController);
  bottomVideoController = self->_bottomVideoController;
  self->_bottomVideoController = v21;

  v23 = +[UIColor clearColor];
  view8 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [view8 setBackgroundColor:v23];

  view9 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [view9 setUserInteractionEnabled:0];

  [(AVPlayerViewController *)self->_bottomVideoController setShowsPlaybackControls:0];
  [(AVPlayerViewController *)self->_bottomVideoController setUpdatesNowPlayingInfoCenter:0];
  player2 = [(AVPlayerViewController *)self->_bottomVideoController player];
  [player2 setAllowsExternalPlayback:0];

  v27 = self->_scrollView;
  view10 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [(UIScrollView *)v27 addSubview:view10];

  v29 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v29;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"sJFLaunchTitle" value:&stru_100035080 table:@"JFStrings"];
  [(UILabel *)self->_titleLabel setText:v32];

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  v33 = objc_alloc_init(UILabel);
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v33;

  [(UILabel *)self->_bodyLabel setTextAlignment:1];
  [(UILabel *)self->_bodyLabel setNumberOfLines:0];
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"sJFLaunchBody" value:&stru_100035080 table:@"JFStrings"];
  [(UILabel *)self->_bodyLabel setText:v36];

  [(UILabel *)self->_bodyLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_bodyLabel setMinimumScaleFactor:0.8];
  [(UIScrollView *)self->_scrollView addSubview:self->_bodyLabel];
  v37 = +[AVTSplashScreenLayout blueButton];
  p_continueButton = &self->_continueButton;
  continueButton = self->_continueButton;
  self->_continueButton = v37;

  v40 = self->_continueButton;
  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"sJFLaunchContinueButton" value:&stru_100035080 table:@"JFStrings"];
  [(UIButton *)v40 setTitle:v42 forState:0];

  [(UIButton *)self->_continueButton addTarget:self action:"tappedContinueButton:" forControlEvents:0x2000];
  if (AVTDeviceIsGreenTea())
  {
    v43 = +[AVTSplashScreenLayout cancelButton];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v43;

    v45 = self->_cancelButton;
    v46 = AVTAvatarUIBundle();
    v47 = [v46 localizedStringForKey:@"CANCEL" value:&stru_100035080 table:@"Localized"];
    [(UIButton *)v45 setTitle:v47 forState:0];

    [(UIButton *)self->_cancelButton addTarget:self action:"tappedCancelButton:" forControlEvents:64];
    v48 = [UIStackView alloc];
    v49 = *p_continueButton;
    v54[0] = self->_cancelButton;
    v54[1] = v49;
    v50 = [NSArray arrayWithObjects:v54 count:2];
    v51 = [v48 initWithArrangedSubviews:v50];
    p_continueButton = &self->_buttonsStack;
    buttonsStack = self->_buttonsStack;
    self->_buttonsStack = v51;

    [(UIStackView *)self->_buttonsStack setAlignment:3];
    [(UIStackView *)self->_buttonsStack setDistribution:1];
    [(UIStackView *)self->_buttonsStack setSpacing:10.0];
  }

  [(UIScrollView *)self->_scrollView addSubview:*p_continueButton];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"status"])
  {
    v9 = objectCopy;
    if ([v9 status] == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        error = [v9 error];
        v11 = 138412290;
        v12 = error;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] mediaserverd failed with error %@; restarting videos", &v11, 0xCu);
      }

      [(LaunchViewController *)self stopPlayingVideos];
      [(LaunchViewController *)self startPlayingVideos];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = LaunchViewController;
  [(LaunchViewController *)&v21 viewWillLayoutSubviews];
  if (![(LaunchViewController *)self freezeLayout])
  {
    view = [(LaunchViewController *)self view];
    [view bounds];
    v6 = [AVTSplashScreenLayout appropriateLabelEdgePaddingStyleForViewSize:v4, v5];

    v7 = [AVTSplashScreenLayout alloc];
    view2 = [(LaunchViewController *)self view];
    [view2 bounds];
    v10 = v9;
    v12 = v11;
    view3 = [(LaunchViewController *)self view];
    [view3 safeAreaInsets];
    v18 = [v7 initWithContainerSize:1 edgeInsets:v6 wantsSecondaryVideo:v10 labelEdgePaddingStyle:{v12, v14, v15, v16, v17}];

    currentLayout = [(LaunchViewController *)self currentLayout];
    LOBYTE(view2) = [v18 isEqual:currentLayout];

    if ((view2 & 1) == 0)
    {
      [(LaunchViewController *)self setCurrentLayout:v18];
      currentLayout2 = [(LaunchViewController *)self currentLayout];
      [currentLayout2 setDelegate:self];

      [(LaunchViewController *)self applyLayout:v18];
    }
  }
}

- (void)applyLayout:(id)layout
{
  layoutCopy = layout;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"sJFLaunchTitle" value:&stru_100035080 table:@"JFStrings"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"sJFLaunchBody" value:&stru_100035080 table:@"JFStrings"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"sJFLaunchContinueButton" value:&stru_100035080 table:@"JFStrings"];
  [layoutCopy calculateLayoutWithTitleString:v5 subTitleString:v7 buttonTitle:v9];

  v10 = +[AVTSplashScreenLayout titleFont];
  [(UILabel *)self->_titleLabel setFont:v10];

  [layoutCopy titleFrame];
  [(UILabel *)self->_titleLabel setFrame:?];
  v11 = +[AVTSplashScreenLayout subTitleFont];
  [(UILabel *)self->_bodyLabel setFont:v11];

  [layoutCopy subTitleFrame];
  [(UILabel *)self->_bodyLabel setFrame:?];
  v12 = +[AVTSplashScreenLayout buttonFont];
  p_continueButton = &self->_continueButton;
  titleLabel = [(UIButton *)self->_continueButton titleLabel];
  [titleLabel setFont:v12];

  v15 = +[AVTSplashScreenLayout buttonFont];
  titleLabel2 = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel2 setFont:v15];

  LODWORD(v15) = AVTDeviceIsGreenTea();
  [layoutCopy buttonFrame];
  if (v15)
  {
    p_continueButton = &self->_buttonsStack;
  }

  [*p_continueButton setFrame:?];
  [layoutCopy primaryVideoFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  view = [(AVPlayerViewController *)self->_videoController view];
  [view setFrame:{v18, v20, v22, v24}];

  [layoutCopy secondaryVideoFrame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  view2 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [view2 setFrame:{v27, v29, v31, v33}];

  [layoutCopy unconstrainedContentSize];
  [(UIScrollView *)self->_scrollView setContentSize:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = LaunchViewController;
  [(LaunchViewController *)&v5 viewDidAppear:appear];
  [(LaunchViewController *)self startPlayingVideos];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"strongPopupPresentationNotification:" name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LaunchViewController;
  [(LaunchViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];
}

- (void)strongPopupPresentationNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"BaseMessagesViewControllerStrongPopupPresentedKey"];
  bOOLValue = [v5 BOOLValue];

  videoPlayer = self->_videoPlayer;
  if (bOOLValue)
  {
    [(AVPlayer *)videoPlayer pause];
    bottomVideoPlayer = self->_bottomVideoPlayer;

    [(AVQueuePlayer *)bottomVideoPlayer pause];
  }

  else
  {
    [(AVPlayer *)videoPlayer play];
    v9 = self->_bottomVideoPlayer;

    [(AVQueuePlayer *)v9 play];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LaunchViewController;
  [(LaunchViewController *)&v4 viewDidDisappear:disappear];
  [(LaunchViewController *)self stopPlayingVideos];
}

- (void)tappedContinueButton:(id)button
{
  delegate = [(LaunchViewController *)self delegate];
  [delegate launchViewControllerDidConfirm:self];
}

- (void)tappedCancelButton:(id)button
{
  delegate = [(LaunchViewController *)self delegate];
  [delegate launchViewControllerDidCancel:self];
}

- (void)detachVideoController
{
  [(AVPlayer *)self->_videoPlayer removeObserver:self forKeyPath:@"status"];
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = 0;

  videoController = self->_videoController;
  self->_videoController = 0;
}

- (void)startPlayingVideos
{
  if (![(LaunchViewController *)self isPlayingVideo])
  {
    v3 = AVTAvatarEditorSplashVideo();
    v4 = [[AVQueuePlayer alloc] initWithPlayerItem:v3];
    videoPlayer = self->_videoPlayer;
    self->_videoPlayer = v4;
    v6 = v4;

    [(AVPlayer *)self->_videoPlayer setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVPlayer *)self->_videoPlayer setAllowsExternalPlayback:0];
    [(AVPlayer *)self->_videoPlayer addObserver:self forKeyPath:@"status" options:1 context:0];
    [(AVPlayerViewController *)self->_videoController setPlayer:self->_videoPlayer];
    [(AVPlayer *)self->_videoPlayer play];
    v7 = [AVPlayerItem alloc];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 URLForResource:@"splash_animoji_HEVC" withExtension:@"mov"];
    v10 = [v7 initWithURL:v9];

    CMTimeMakeWithSeconds(&v14.start, 13.5334, 60);
    start = kCMTimeZero;
    CMTimeRangeFromTimeToTime(&v16, &start, &v14.start);
    v14 = v16;
    [v10 setLoopTimeRange:&v14];
    v11 = [[AVQueuePlayer alloc] initWithPlayerItem:v10];
    bottomVideoPlayer = self->_bottomVideoPlayer;
    self->_bottomVideoPlayer = v11;
    v13 = v11;

    [(AVQueuePlayer *)self->_bottomVideoPlayer setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)self->_bottomVideoPlayer setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)self->_bottomVideoPlayer addObserver:self forKeyPath:@"status" options:1 context:0];
    [(AVPlayerViewController *)self->_bottomVideoController setPlayer:self->_bottomVideoPlayer];
    [(AVQueuePlayer *)self->_bottomVideoPlayer play];

    [(LaunchViewController *)self setIsPlayingVideo:1];
  }
}

- (void)stopPlayingVideos
{
  if ([(LaunchViewController *)self isPlayingVideo])
  {
    [(AVPlayer *)self->_videoPlayer removeObserver:self forKeyPath:@"status"];
    [(AVPlayer *)self->_videoPlayer pause];
    [(AVPlayerViewController *)self->_videoController setPlayer:0];
    videoPlayer = self->_videoPlayer;
    self->_videoPlayer = 0;

    [(AVQueuePlayer *)self->_bottomVideoPlayer removeObserver:self forKeyPath:@"status"];
    [(AVQueuePlayer *)self->_bottomVideoPlayer pause];
    [(AVPlayerViewController *)self->_bottomVideoController setPlayer:0];
    bottomVideoPlayer = self->_bottomVideoPlayer;
    self->_bottomVideoPlayer = 0;

    [(LaunchViewController *)self setIsPlayingVideo:0];
  }
}

- (void)splashScreenLayoutDidChange:(id)change
{
  changeCopy = change;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] splashScreenLayoutDidChange", v5, 2u);
  }

  [(LaunchViewController *)self applyLayout:changeCopy];
}

- (LaunchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end