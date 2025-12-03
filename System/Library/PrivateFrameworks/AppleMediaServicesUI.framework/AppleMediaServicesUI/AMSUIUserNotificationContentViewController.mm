@interface AMSUIUserNotificationContentViewController
- (AMSUIUserNotificationContentDelegate)delegate;
- (AMSUIUserNotificationContentViewController)initWithNotification:(id)notification delegate:(id)delegate;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)expectedContentSize;
- (void)_setupAccessibility;
- (void)dealloc;
- (void)loadView;
- (void)mediaPause;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewTapped:(id)tapped;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIUserNotificationContentViewController

- (AMSUIUserNotificationContentViewController)initWithNotification:(id)notification delegate:(id)delegate
{
  v78 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  delegateCopy = delegate;
  v70.receiver = self;
  v70.super_class = AMSUIUserNotificationContentViewController;
  v9 = [(AMSUIUserNotificationContentViewController *)&v70 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_userNotification, notification);
    v11 = MEMORY[0x1E698C7E0];
    bagKeySet = [MEMORY[0x1E698CA00] bagKeySet];
    bagSubProfile = [MEMORY[0x1E698CA00] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    [v11 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v15 = MEMORY[0x1E698C7D8];
    bagSubProfile2 = [MEMORY[0x1E698CA00] bagSubProfile];
    bagSubProfileVersion2 = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    v18 = [v15 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

    v19 = [MEMORY[0x1E698CA00] internalInstanceUsingBag:v18];
    metrics = v10->_metrics;
    v10->_metrics = v19;

    artworkUrl = [notificationCopy artworkUrl];

    if (artworkUrl)
    {
      v22 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      imageView = v10->_imageView;
      v10->_imageView = v23;

      v25 = dispatch_get_global_queue(2, 0);
      v64 = MEMORY[0x1E69E9820];
      v65 = 3221225472;
      v66 = __76__AMSUIUserNotificationContentViewController_initWithNotification_delegate___block_invoke;
      v67 = &unk_1E7F243C0;
      v68 = notificationCopy;
      v69 = v10;
      dispatch_async(v25, &v64);
    }

    videoUrl = [notificationCopy videoUrl];

    if (videoUrl)
    {
      v71 = 0;
      v72 = &v71;
      v73 = 0x2050000000;
      v27 = getAVPlayerItemClass_softClass;
      v74 = getAVPlayerItemClass_softClass;
      if (!getAVPlayerItemClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerItemClass_block_invoke;
        v76 = &unk_1E7F241B0;
        v77 = &v71;
        __getAVPlayerItemClass_block_invoke(buf);
        v27 = v72[3];
      }

      v28 = v27;
      _Block_object_dispose(&v71, 8);
      videoUrl2 = [notificationCopy videoUrl];
      v30 = [v27 playerItemWithURL:videoUrl2];

      v71 = 0;
      v72 = &v71;
      v73 = 0x2050000000;
      v31 = getAVPlayerViewControllerClass_softClass;
      v74 = getAVPlayerViewControllerClass_softClass;
      if (!getAVPlayerViewControllerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerViewControllerClass_block_invoke;
        v76 = &unk_1E7F241B0;
        v77 = &v71;
        __getAVPlayerViewControllerClass_block_invoke(buf);
        v31 = v72[3];
      }

      v32 = v31;
      _Block_object_dispose(&v71, 8);
      v33 = objc_alloc_init(v31);
      videoPlayerController = v10->_videoPlayerController;
      v10->_videoPlayerController = v33;

      v71 = 0;
      v72 = &v71;
      v73 = 0x2050000000;
      v35 = getAVPlayerClass_softClass;
      v74 = getAVPlayerClass_softClass;
      if (!getAVPlayerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerClass_block_invoke;
        v76 = &unk_1E7F241B0;
        v77 = &v71;
        __getAVPlayerClass_block_invoke(buf);
        v35 = v72[3];
      }

      v36 = v35;
      _Block_object_dispose(&v71, 8);
      v37 = [v35 playerWithPlayerItem:v30];
      [(AVPlayerViewController *)v10->_videoPlayerController setPlayer:v37];

      player = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player addObserver:v10 forKeyPath:@"status" options:1 context:0];

      player2 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player2 addObserver:v10 forKeyPath:@"timeControlStatus" options:1 context:0];

      player3 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player3 replaceCurrentItemWithPlayerItem:v30];

      [(AVPlayerViewController *)v10->_videoPlayerController setUpdatesNowPlayingInfoCenter:0];
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = v43;
        logKey = [notificationCopy logKey];
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = logKey;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Loading rich notification video", buf, 0x16u);
      }
    }

    v46 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v46;

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setNumberOfLines:0];
    [(UILabel *)v10->_titleLabel setTextAlignment:4];
    [(UILabel *)v10->_titleLabel setLineBreakMode:0];
    v48 = *MEMORY[0x1E69DDD40];
    v49 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v10->_titleLabel setFont:v49];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:clearColor];

    title = [notificationCopy title];
    [(UILabel *)v10->_titleLabel setText:title];

    v52 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v10->_subtitleLabel;
    v10->_subtitleLabel = v52;

    [(UILabel *)v10->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v10->_subtitleLabel setTextAlignment:4];
    [(UILabel *)v10->_subtitleLabel setLineBreakMode:0];
    v54 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v48];
    [(UILabel *)v10->_subtitleLabel setFont:v54];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_subtitleLabel setBackgroundColor:clearColor2];

    subtitle = [notificationCopy subtitle];
    [(UILabel *)v10->_subtitleLabel setText:subtitle];

    v57 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v10->_textLabel;
    v10->_textLabel = v57;

    [(UILabel *)v10->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_textLabel setNumberOfLines:0];
    [(UILabel *)v10->_textLabel setTextAlignment:4];
    [(UILabel *)v10->_textLabel setLineBreakMode:0];
    v59 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v10->_textLabel setFont:v59];

    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_textLabel setBackgroundColor:clearColor3];

    informativeText = [notificationCopy informativeText];
    [(UILabel *)v10->_textLabel setText:informativeText];
  }

  v62 = *MEMORY[0x1E69E9840];
  return v10;
}

void __76__AMSUIUserNotificationContentViewController_initWithNotification_delegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkUrl];
  v3 = [v2 startAccessingSecurityScopedResource];

  v4 = MEMORY[0x1E695DEF0];
  v5 = [*(a1 + 32) artworkUrl];
  v6 = [v4 dataWithContentsOfURL:v5];

  if (v3)
  {
    v7 = [*(a1 + 32) artworkUrl];
    [v7 stopAccessingSecurityScopedResource];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AMSUIUserNotificationContentViewController_initWithNotification_delegate___block_invoke_2;
  block[3] = &unk_1E7F24590;
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__AMSUIUserNotificationContentViewController_initWithNotification_delegate___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAB8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) traitCollection];
  [v4 displayScale];
  v5 = [v2 imageWithData:v3 scale:?];

  if (v5)
  {
    [*(*(a1 + 40) + 1032) setImage:v5];
    [*(*(a1 + 40) + 1032) setClipsToBounds:1];
    [*(*(a1 + 40) + 1032) setContentMode:2];
    [*(a1 + 40) expectedContentSize];
    [*(a1 + 40) setPreferredContentSize:?];
  }

  else
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = *(a1 + 48);
      v11 = v9;
      v12 = [v10 logKey];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to find artwork at url", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  player = [(AVPlayerViewController *)self->_videoPlayerController player];
  [player removeObserver:self forKeyPath:@"status"];

  player2 = [(AVPlayerViewController *)self->_videoPlayerController player];
  [player2 removeObserver:self forKeyPath:@"timeControlStatus"];

  v5.receiver = self;
  v5.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v5 dealloc];
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v25 loadView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(AMSUIUserNotificationContentViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(AMSUIUserNotificationContentViewController *)self view];
  titleLabel = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [view2 addSubview:titleLabel];

  view3 = [(AMSUIUserNotificationContentViewController *)self view];
  subtitleLabel = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [view3 addSubview:subtitleLabel];

  view4 = [(AMSUIUserNotificationContentViewController *)self view];
  textLabel = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [view4 addSubview:textLabel];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_viewTapped_];
  [v11 setDelegate:self];
  view5 = [(AMSUIUserNotificationContentViewController *)self view];
  [view5 addGestureRecognizer:v11];

  view6 = [(AMSUIUserNotificationContentViewController *)self view];
  [view6 setUserInteractionEnabled:1];

  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [(AMSUIUserNotificationContentViewController *)self addChildViewController:videoPlayerController2];

    view7 = [(AMSUIUserNotificationContentViewController *)self view];
    videoPlayerController3 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    view8 = [videoPlayerController3 view];
    [view7 addSubview:view8];

    videoPlayerController4 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController4 didMoveToParentViewController:self];

    imageView = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (imageView)
    {
      videoPlayerController5 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      contentOverlayView = [videoPlayerController5 contentOverlayView];
      imageView2 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [contentOverlayView addSubview:imageView2];

LABEL_6:
    }
  }

  else
  {
    imageView3 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (imageView3)
    {
      videoPlayerController5 = [(AMSUIUserNotificationContentViewController *)self view];
      contentOverlayView = [(AMSUIUserNotificationContentViewController *)self imageView];
      [videoPlayerController5 addSubview:contentOverlayView];
      goto LABEL_6;
    }
  }

  [(AMSUIUserNotificationContentViewController *)self _setupAccessibility];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v7 setPreferredContentSize:?];
  delegate = [(AMSUIUserNotificationContentViewController *)self delegate];
  [delegate viewController:self didUpdatePreferredContentSize:{width, height}];
}

- (void)viewWillLayoutSubviews
{
  v64.receiver = self;
  v64.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v64 viewWillLayoutSubviews];
  view = [(AMSUIUserNotificationContentViewController *)self view];
  [view frame];
  v5 = v4;

  v6 = v5 + -32.0;
  titleLabel = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [titleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v9 = v8;

  subtitleLabel = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v12 = v11;

  textLabel = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [textLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v15 = v14;

  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController2 videoBounds];
    v19 = v18;
    v21 = v20;

    if (v19 <= 0.0)
    {
      v22 = v5 * 9.0 * 0.0625;
    }

    else
    {
      v22 = v5 * v21 / v19;
    }

    videoPlayerController3 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    view2 = [videoPlayerController3 view];
    [view2 setFrame:{0.0, 0.0, v5, v22}];

    videoPlayerController4 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    view3 = [videoPlayerController4 view];
    [view3 frame];
    v38 = CGRectGetMaxY(v65) + 16.0;

    imageView = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (imageView)
    {
      videoPlayerController5 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      view4 = [videoPlayerController5 view];
      [view4 bounds];
      v43 = v42;
      v45 = v44;
      v63 = v6;
      v46 = v9;
      v47 = v12;
      v48 = v15;
      v50 = v49;
      v52 = v51;
      imageView2 = [(AMSUIUserNotificationContentViewController *)self imageView];
      v54 = v50;
      v15 = v48;
      v12 = v47;
      v9 = v46;
      v6 = v63;
      [imageView2 setFrame:{v43, v45, v54, v52}];

LABEL_13:
    }
  }

  else
  {
    imageView3 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (imageView3)
    {
      imageView4 = [(AMSUIUserNotificationContentViewController *)self imageView];
      image = [imageView4 image];
      if (image)
      {
        imageView5 = [(AMSUIUserNotificationContentViewController *)self imageView];
        image2 = [imageView5 image];
        [image2 size];
        v29 = v28;
        imageView6 = [(AMSUIUserNotificationContentViewController *)self imageView];
        image3 = [imageView6 image];
        [image3 size];
        v33 = v29 / v32;
      }

      else
      {
        v33 = 0.0;
      }

      imageView7 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [imageView7 setFrame:{0.0, 0.0, v5, v5 * v33}];

      videoPlayerController5 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [videoPlayerController5 frame];
      v38 = CGRectGetMaxY(v66) + 16.0;
      goto LABEL_13;
    }

    v38 = 16.0;
  }

  titleLabel2 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [titleLabel2 setFrame:{16.0, v38, v6, v9}];

  titleLabel3 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [titleLabel3 frame];
  MaxY = CGRectGetMaxY(v67);
  subtitleLabel2 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [subtitleLabel2 setFrame:{16.0, MaxY, v6, v12}];

  subtitleLabel3 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [subtitleLabel3 frame];
  v61 = CGRectGetMaxY(v68);
  textLabel2 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [textLabel2 setFrame:{16.0, v61, v6, v15}];

  [(AMSUIUserNotificationContentViewController *)self expectedContentSize];
  [(AMSUIUserNotificationContentViewController *)self setPreferredContentSize:?];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v60 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  player = [videoPlayerController player];

  if (player == objectCopy)
  {
    if ([pathCopy isEqualToString:@"status"])
    {
      videoPlayerController2 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      player2 = [videoPlayerController2 player];
      status = [player2 status];

      if (status == 1)
      {
        videoPlayerController3 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        player3 = [videoPlayerController3 player];
        [player3 setMuted:0];

        videoPlayerController4 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        [videoPlayerController4 setAllowsEnteringFullScreen:0];

        sharedInstance = [getAVAudioSessionClass() sharedInstance];
        category = [sharedInstance category];
        [(AMSUIUserNotificationContentViewController *)self setAudioSessionCategory:category];

        sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
        -[AMSUIUserNotificationContentViewController setAudioSessionCategoryOptions:](self, "setAudioSessionCategoryOptions:", [sharedInstance2 categoryOptions]);

        videoPlayerController5 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        player4 = [videoPlayerController5 player];
        [player4 setAllowsExternalPlayback:0];

        [(AMSUIUserNotificationContentViewController *)self expectedContentSize];
        [(AMSUIUserNotificationContentViewController *)self setPreferredContentSize:?];
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = v27;
          userNotification = [(AMSUIUserNotificationContentViewController *)self userNotification];
          logKey = [userNotification logKey];
          *buf = 138543618;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = logKey;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Ready to play rich notification video", buf, 0x16u);
        }
      }

      videoPlayerController6 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      player5 = [videoPlayerController6 player];
      v33 = [player5 status] == 2;

      if (v33)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        if (!mEMORY[0x1E698C968]2)
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = v36;
          userNotification2 = [(AMSUIUserNotificationContentViewController *)self userNotification];
          logKey2 = [userNotification2 logKey];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = logKey2;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load video at url", buf, 0x16u);
        }
      }
    }

    if ([pathCopy isEqualToString:@"timeControlStatus"])
    {
      videoPlayerController7 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      player6 = [videoPlayerController7 player];
      v42 = [player6 timeControlStatus] == 2;

      if (v42)
      {
        imageView = [(AMSUIUserNotificationContentViewController *)self imageView];
        [imageView removeFromSuperview];

        sharedInstance3 = [getAVAudioSessionClass() sharedInstance];
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v45 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
        v56 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
        if (!getAVAudioSessionCategoryPlaybackSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke;
          v58 = &unk_1E7F241B0;
          v59 = &v53;
          v46 = AVFoundationLibrary();
          v47 = dlsym(v46, "AVAudioSessionCategoryPlayback");
          *(v59[1] + 24) = v47;
          getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = *(v59[1] + 24);
          v45 = v54[3];
        }

        _Block_object_dispose(&v53, 8);
        if (!v45)
        {
          [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
          __break(1u);
        }

        [sharedInstance3 setCategory:*v45 withOptions:1 error:{0, v53}];

        if (![(AMSUIUserNotificationContentViewController *)self hasPlayedVideo])
        {
          v48 = MEMORY[0x1E698CBE8];
          userNotification3 = [(AMSUIUserNotificationContentViewController *)self userNotification];
          v50 = [v48 eventForVideoPlaybackForNotification:userNotification3];

          metrics = [(AMSUIUserNotificationContentViewController *)self metrics];
          [metrics enqueueEvent:v50];
        }

        [(AMSUIUserNotificationContentViewController *)self setHasPlayedVideo:1];
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (CGSize)expectedContentSize
{
  view = [(AMSUIUserNotificationContentViewController *)self view];
  [view frame];
  v5 = v4;

  titleLabel = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [titleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v8 = v7;

  subtitleLabel = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v11 = v10;

  textLabel = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [textLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v14 = v13;

  imageView = [(AMSUIUserNotificationContentViewController *)self imageView];
  image = [imageView image];

  v17 = 0.0;
  v18 = 0.0;
  if (image)
  {
    imageView2 = [(AMSUIUserNotificationContentViewController *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v22 = v21;
    imageView3 = [(AMSUIUserNotificationContentViewController *)self imageView];
    image3 = [imageView3 image];
    [image3 size];
    v26 = v22 / v25;

    v18 = v5 * v26;
  }

  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController2 videoBounds];
    v30 = v29;
    v32 = v31;

    if (v30 <= 0.0)
    {
      v17 = v5 * 9.0 * 0.0625;
      v18 = 0.0;
    }

    else
    {
      v18 = 0.0;
      v17 = v5 * v32 / v30;
    }
  }

  v33 = v14 + v11 + v8 + v18 + v17 + 16.0 + 16.0;
  v34 = v5;
  result.height = v33;
  result.width = v34;
  return result;
}

- (void)mediaPause
{
  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  player = [videoPlayerController player];
  [player pause];

  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  audioSessionCategory = [(AMSUIUserNotificationContentViewController *)self audioSessionCategory];
  [sharedInstance setCategory:audioSessionCategory withOptions:-[AMSUIUserNotificationContentViewController audioSessionCategoryOptions](self error:{"audioSessionCategoryOptions"), 0}];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  return view == view2;
}

- (void)_setupAccessibility
{
  view = [(AMSUIUserNotificationContentViewController *)self view];
  [view setAccessibilityIdentifier:@"userNotificationContent"];

  titleLabel = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:@"titleLabel"];

  textLabel = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [textLabel setAccessibilityIdentifier:@"textLabel"];

  subtitleLabel = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [subtitleLabel setAccessibilityIdentifier:@"subtitleLabel"];

  imageView = [(AMSUIUserNotificationContentViewController *)self imageView];
  [imageView setAccessibilityIdentifier:@"imageView"];

  videoPlayerController = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  view2 = [videoPlayerController view];
  [view2 setAccessibilityIdentifier:@"videoPlayer"];
}

- (void)viewTapped:(id)tapped
{
  delegate = [(AMSUIUserNotificationContentViewController *)self delegate];
  [delegate openNotification];
}

- (AMSUIUserNotificationContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end