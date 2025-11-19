@interface LaunchViewController
- (LaunchViewControllerDelegate)delegate;
- (void)applyLayout:(id)a3;
- (void)dealloc;
- (void)detachVideoController;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)splashScreenLayoutDidChange:(id)a3;
- (void)startPlayingVideos;
- (void)stopPlayingVideos;
- (void)strongPopupPresentationNotification:(id)a3;
- (void)tappedCancelButton:(id)a3;
- (void)tappedContinueButton:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
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
  v4 = [(LaunchViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UIScrollView alloc];
  v6 = [(LaunchViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v9 = [(LaunchViewController *)self view];
  [v9 bounds];
  v10 = [v5 initWithFrame:{0.0, 0.0, v8}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setAutoresizingMask:18];
  v12 = [(LaunchViewController *)self view];
  [v12 addSubview:self->_scrollView];

  v13 = objc_alloc_init(AVPlayerViewController);
  videoController = self->_videoController;
  self->_videoController = v13;

  v15 = +[UIColor clearColor];
  v16 = [(AVPlayerViewController *)self->_videoController view];
  [v16 setBackgroundColor:v15];

  v17 = [(AVPlayerViewController *)self->_videoController view];
  [v17 setUserInteractionEnabled:0];

  [(AVPlayerViewController *)self->_videoController setShowsPlaybackControls:0];
  [(AVPlayerViewController *)self->_videoController setUpdatesNowPlayingInfoCenter:0];
  v18 = [(AVPlayerViewController *)self->_videoController player];
  [v18 setAllowsExternalPlayback:0];

  v19 = self->_scrollView;
  v20 = [(AVPlayerViewController *)self->_videoController view];
  [(UIScrollView *)v19 addSubview:v20];

  v21 = objc_alloc_init(AVPlayerViewController);
  bottomVideoController = self->_bottomVideoController;
  self->_bottomVideoController = v21;

  v23 = +[UIColor clearColor];
  v24 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [v24 setBackgroundColor:v23];

  v25 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [v25 setUserInteractionEnabled:0];

  [(AVPlayerViewController *)self->_bottomVideoController setShowsPlaybackControls:0];
  [(AVPlayerViewController *)self->_bottomVideoController setUpdatesNowPlayingInfoCenter:0];
  v26 = [(AVPlayerViewController *)self->_bottomVideoController player];
  [v26 setAllowsExternalPlayback:0];

  v27 = self->_scrollView;
  v28 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [(UIScrollView *)v27 addSubview:v28];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"status"])
  {
    v9 = v8;
    if ([v9 status] == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v9 error];
        v11 = 138412290;
        v12 = v10;
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
    v3 = [(LaunchViewController *)self view];
    [v3 bounds];
    v6 = [AVTSplashScreenLayout appropriateLabelEdgePaddingStyleForViewSize:v4, v5];

    v7 = [AVTSplashScreenLayout alloc];
    v8 = [(LaunchViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v13 = [(LaunchViewController *)self view];
    [v13 safeAreaInsets];
    v18 = [v7 initWithContainerSize:1 edgeInsets:v6 wantsSecondaryVideo:v10 labelEdgePaddingStyle:{v12, v14, v15, v16, v17}];

    v19 = [(LaunchViewController *)self currentLayout];
    LOBYTE(v8) = [v18 isEqual:v19];

    if ((v8 & 1) == 0)
    {
      [(LaunchViewController *)self setCurrentLayout:v18];
      v20 = [(LaunchViewController *)self currentLayout];
      [v20 setDelegate:self];

      [(LaunchViewController *)self applyLayout:v18];
    }
  }
}

- (void)applyLayout:(id)a3
{
  v35 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"sJFLaunchTitle" value:&stru_100035080 table:@"JFStrings"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"sJFLaunchBody" value:&stru_100035080 table:@"JFStrings"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"sJFLaunchContinueButton" value:&stru_100035080 table:@"JFStrings"];
  [v35 calculateLayoutWithTitleString:v5 subTitleString:v7 buttonTitle:v9];

  v10 = +[AVTSplashScreenLayout titleFont];
  [(UILabel *)self->_titleLabel setFont:v10];

  [v35 titleFrame];
  [(UILabel *)self->_titleLabel setFrame:?];
  v11 = +[AVTSplashScreenLayout subTitleFont];
  [(UILabel *)self->_bodyLabel setFont:v11];

  [v35 subTitleFrame];
  [(UILabel *)self->_bodyLabel setFrame:?];
  v12 = +[AVTSplashScreenLayout buttonFont];
  p_continueButton = &self->_continueButton;
  v14 = [(UIButton *)self->_continueButton titleLabel];
  [v14 setFont:v12];

  v15 = +[AVTSplashScreenLayout buttonFont];
  v16 = [(UIButton *)self->_cancelButton titleLabel];
  [v16 setFont:v15];

  LODWORD(v15) = AVTDeviceIsGreenTea();
  [v35 buttonFrame];
  if (v15)
  {
    p_continueButton = &self->_buttonsStack;
  }

  [*p_continueButton setFrame:?];
  [v35 primaryVideoFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(AVPlayerViewController *)self->_videoController view];
  [v25 setFrame:{v18, v20, v22, v24}];

  [v35 secondaryVideoFrame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(AVPlayerViewController *)self->_bottomVideoController view];
  [v34 setFrame:{v27, v29, v31, v33}];

  [v35 unconstrainedContentSize];
  [(UIScrollView *)self->_scrollView setContentSize:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LaunchViewController;
  [(LaunchViewController *)&v5 viewDidAppear:a3];
  [(LaunchViewController *)self startPlayingVideos];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"strongPopupPresentationNotification:" name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LaunchViewController;
  [(LaunchViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];
}

- (void)strongPopupPresentationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"BaseMessagesViewControllerStrongPopupPresentedKey"];
  v6 = [v5 BOOLValue];

  videoPlayer = self->_videoPlayer;
  if (v6)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LaunchViewController;
  [(LaunchViewController *)&v4 viewDidDisappear:a3];
  [(LaunchViewController *)self stopPlayingVideos];
}

- (void)tappedContinueButton:(id)a3
{
  v4 = [(LaunchViewController *)self delegate];
  [v4 launchViewControllerDidConfirm:self];
}

- (void)tappedCancelButton:(id)a3
{
  v4 = [(LaunchViewController *)self delegate];
  [v4 launchViewControllerDidCancel:self];
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

- (void)splashScreenLayoutDidChange:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] splashScreenLayoutDidChange", v5, 2u);
  }

  [(LaunchViewController *)self applyLayout:v4];
}

- (LaunchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end