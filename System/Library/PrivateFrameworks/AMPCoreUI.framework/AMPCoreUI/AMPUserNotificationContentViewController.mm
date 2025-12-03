@interface AMPUserNotificationContentViewController
- (AMPUserNotificationContentDelegate)delegate;
- (AMPUserNotificationContentViewController)initWithNotification:(id)notification delegate:(id)delegate;
- (CGSize)expectedContentSize;
- (void)imageViewTapped:(id)tapped;
- (void)loadView;
- (void)mediaPause;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewWillLayoutSubviews;
@end

@implementation AMPUserNotificationContentViewController

- (AMPUserNotificationContentViewController)initWithNotification:(id)notification delegate:(id)delegate
{
  v72 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  delegateCopy = delegate;
  v64.receiver = self;
  v64.super_class = AMPUserNotificationContentViewController;
  v9 = [(AMPUserNotificationContentViewController *)&v64 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_userNotification, notification);
    v11 = MEMORY[0x277CEE408];
    bagKeySet = [MEMORY[0x277CEE598] bagKeySet];
    bagSubProfile = [MEMORY[0x277CEE598] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x277CEE598] bagSubProfileVersion];
    [v11 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v15 = MEMORY[0x277CEE3F8];
    bagSubProfile2 = [MEMORY[0x277CEE598] bagSubProfile];
    bagSubProfileVersion2 = [MEMORY[0x277CEE598] bagSubProfileVersion];
    v18 = [v15 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

    v19 = [objc_alloc(MEMORY[0x277CEE598]) initWithContainerID:@"com.apple.AppleMediaServices" bag:v18];
    metrics = v10->_metrics;
    v10->_metrics = v19;

    artworkUrl = [notificationCopy artworkUrl];

    if (artworkUrl)
    {
      v22 = objc_alloc(MEMORY[0x277D755E8]);
      v23 = [v22 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      imageView = v10->_imageView;
      v10->_imageView = v23;

      v25 = dispatch_get_global_queue(2, 0);
      v58 = MEMORY[0x277D85DD0];
      v59 = 3221225472;
      v60 = __74__AMPUserNotificationContentViewController_initWithNotification_delegate___block_invoke;
      v61 = &unk_278BC2018;
      v62 = notificationCopy;
      v63 = v10;
      dispatch_async(v25, &v58);
    }

    videoUrl = [notificationCopy videoUrl];

    if (videoUrl)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v27 = getAVPlayerItemClass_softClass;
      v68 = getAVPlayerItemClass_softClass;
      if (!getAVPlayerItemClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerItemClass_block_invoke;
        v70 = &unk_278BC1F78;
        v71 = &v65;
        __getAVPlayerItemClass_block_invoke(buf);
        v27 = v66[3];
      }

      v28 = v27;
      _Block_object_dispose(&v65, 8);
      videoUrl2 = [notificationCopy videoUrl];
      v30 = [v27 playerItemWithURL:videoUrl2];

      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v31 = getAVPlayerViewControllerClass_softClass;
      v68 = getAVPlayerViewControllerClass_softClass;
      if (!getAVPlayerViewControllerClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerViewControllerClass_block_invoke;
        v70 = &unk_278BC1F78;
        v71 = &v65;
        __getAVPlayerViewControllerClass_block_invoke(buf);
        v31 = v66[3];
      }

      v32 = v31;
      _Block_object_dispose(&v65, 8);
      v33 = objc_alloc_init(v31);
      videoPlayerController = v10->_videoPlayerController;
      v10->_videoPlayerController = v33;

      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v35 = getAVPlayerClass_softClass;
      v68 = getAVPlayerClass_softClass;
      if (!getAVPlayerClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAVPlayerClass_block_invoke;
        v70 = &unk_278BC1F78;
        v71 = &v65;
        __getAVPlayerClass_block_invoke(buf);
        v35 = v66[3];
      }

      v36 = v35;
      _Block_object_dispose(&v65, 8);
      v37 = [v35 playerWithPlayerItem:v30];
      [(AVPlayerViewController *)v10->_videoPlayerController setPlayer:v37];

      player = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player addObserver:v10 forKeyPath:@"status" options:1 context:0];

      player2 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player2 addObserver:v10 forKeyPath:@"timeControlStatus" options:1 context:0];

      player3 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [player3 replaceCurrentItemWithPlayerItem:v30];

      [(AVPlayerViewController *)v10->_videoPlayerController setUpdatesNowPlayingInfoCenter:0];
      mEMORY[0x277CEE508] = [MEMORY[0x277CEE508] sharedConfig];
      if (!mEMORY[0x277CEE508])
      {
        mEMORY[0x277CEE508] = [MEMORY[0x277CEE508] sharedConfig];
      }

      oSLogObject = [mEMORY[0x277CEE508] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = v43;
        logKey = [notificationCopy logKey];
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = logKey;
        _os_log_impl(&dword_23C90D000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Loading rich notification video", buf, 0x16u);
      }
    }

    v46 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v46;

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setNumberOfLines:0];
    [(UILabel *)v10->_titleLabel setTextAlignment:4];
    [(UILabel *)v10->_titleLabel setLineBreakMode:0];
    v48 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v10->_titleLabel setFont:v48];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:clearColor];

    title = [notificationCopy title];
    [(UILabel *)v10->_titleLabel setText:title];

    v51 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v10->_textLabel;
    v10->_textLabel = v51;

    [(UILabel *)v10->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_textLabel setNumberOfLines:0];
    [(UILabel *)v10->_textLabel setTextAlignment:4];
    [(UILabel *)v10->_textLabel setLineBreakMode:0];
    v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_textLabel setFont:v53];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_textLabel setBackgroundColor:clearColor2];

    informativeText = [notificationCopy informativeText];
    [(UILabel *)v10->_textLabel setText:informativeText];
  }

  v56 = *MEMORY[0x277D85DE8];
  return v10;
}

void __74__AMPUserNotificationContentViewController_initWithNotification_delegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkUrl];
  v3 = [v2 startAccessingSecurityScopedResource];

  v4 = MEMORY[0x277CBEA90];
  v5 = [*(a1 + 32) artworkUrl];
  v6 = [v4 dataWithContentsOfURL:v5];

  if (v3)
  {
    v7 = [*(a1 + 32) artworkUrl];
    [v7 stopAccessingSecurityScopedResource];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__AMPUserNotificationContentViewController_initWithNotification_delegate___block_invoke_2;
  block[3] = &unk_278BC1FF0;
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__AMPUserNotificationContentViewController_initWithNotification_delegate___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D755B8];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
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
    v6 = [MEMORY[0x277CEE508] sharedConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277CEE508] sharedConfig];
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
      _os_log_impl(&dword_23C90D000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to find artwork at url", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = AMPUserNotificationContentViewController;
  [(AMPUserNotificationContentViewController *)&v23 loadView];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AMPUserNotificationContentViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(AMPUserNotificationContentViewController *)self view];
  titleLabel = [(AMPUserNotificationContentViewController *)self titleLabel];
  [view2 addSubview:titleLabel];

  view3 = [(AMPUserNotificationContentViewController *)self view];
  textLabel = [(AMPUserNotificationContentViewController *)self textLabel];
  [view3 addSubview:textLabel];

  videoPlayerController = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [(AMPUserNotificationContentViewController *)self addChildViewController:videoPlayerController2];

    view4 = [(AMPUserNotificationContentViewController *)self view];
    videoPlayerController3 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    view5 = [videoPlayerController3 view];
    [view4 addSubview:view5];

    videoPlayerController4 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController4 didMoveToParentViewController:self];

    imageView = [(AMPUserNotificationContentViewController *)self imageView];

    if (!imageView)
    {
      return;
    }

    videoPlayerController5 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    contentOverlayView = [videoPlayerController5 contentOverlayView];
    imageView2 = [(AMPUserNotificationContentViewController *)self imageView];
    [contentOverlayView addSubview:imageView2];
  }

  else
  {
    imageView3 = [(AMPUserNotificationContentViewController *)self imageView];

    if (!imageView3)
    {
      return;
    }

    view6 = [(AMPUserNotificationContentViewController *)self view];
    imageView4 = [(AMPUserNotificationContentViewController *)self imageView];
    [view6 addSubview:imageView4];

    videoPlayerController5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_imageViewTapped_];
    imageView5 = [(AMPUserNotificationContentViewController *)self imageView];
    [imageView5 addGestureRecognizer:videoPlayerController5];

    contentOverlayView = [(AMPUserNotificationContentViewController *)self imageView];
    [contentOverlayView setUserInteractionEnabled:1];
  }
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = AMPUserNotificationContentViewController;
  [(AMPUserNotificationContentViewController *)&v7 setPreferredContentSize:?];
  delegate = [(AMPUserNotificationContentViewController *)self delegate];
  [delegate viewController:self didUpdatePreferredContentSize:{width, height}];
}

- (CGSize)expectedContentSize
{
  view = [(AMPUserNotificationContentViewController *)self view];
  [view frame];
  v5 = v4;

  titleLabel = [(AMPUserNotificationContentViewController *)self titleLabel];
  [titleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v8 = v7;

  textLabel = [(AMPUserNotificationContentViewController *)self textLabel];
  [textLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v11 = v10;

  imageView = [(AMPUserNotificationContentViewController *)self imageView];
  image = [imageView image];

  v14 = 0.0;
  v15 = 0.0;
  if (image)
  {
    imageView2 = [(AMPUserNotificationContentViewController *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v19 = v18;
    imageView3 = [(AMPUserNotificationContentViewController *)self imageView];
    image3 = [imageView3 image];
    [image3 size];
    v23 = v19 / v22;

    v15 = v5 * v23;
  }

  videoPlayerController = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController2 videoBounds];
    v27 = v26;
    v29 = v28;

    if (v27 <= 0.0)
    {
      v14 = v5 * 9.0 * 0.0625;
      v15 = 0.0;
    }

    else
    {
      v15 = 0.0;
      v14 = v5 * v29 / v27;
    }
  }

  v30 = v11 + v8 + v15 + v14 + 16.0 + 16.0;
  v31 = v5;
  result.height = v30;
  result.width = v31;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v53.receiver = self;
  v53.super_class = AMPUserNotificationContentViewController;
  [(AMPUserNotificationContentViewController *)&v53 viewWillLayoutSubviews];
  view = [(AMPUserNotificationContentViewController *)self view];
  [view frame];
  v5 = v4;

  v6 = v5 + -32.0;
  titleLabel = [(AMPUserNotificationContentViewController *)self titleLabel];
  [titleLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v9 = v8;

  textLabel = [(AMPUserNotificationContentViewController *)self textLabel];
  [textLabel sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v12 = v11;

  videoPlayerController = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (videoPlayerController)
  {
    videoPlayerController2 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [videoPlayerController2 videoBounds];
    v16 = v15;
    v18 = v17;

    if (v16 <= 0.0)
    {
      v19 = v5 * 9.0 * 0.0625;
    }

    else
    {
      v19 = v5 * v18 / v16;
    }

    videoPlayerController3 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    view2 = [videoPlayerController3 view];
    [view2 setFrame:{0.0, 0.0, v5, v19}];

    videoPlayerController4 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    view3 = [videoPlayerController4 view];
    [view3 frame];
    v35 = CGRectGetMaxY(v54) + 16.0;

    imageView = [(AMPUserNotificationContentViewController *)self imageView];

    if (imageView)
    {
      videoPlayerController5 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      view4 = [videoPlayerController5 view];
      [view4 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      imageView2 = [(AMPUserNotificationContentViewController *)self imageView];
      [imageView2 setFrame:{v40, v42, v44, v46}];

LABEL_13:
    }
  }

  else
  {
    imageView3 = [(AMPUserNotificationContentViewController *)self imageView];

    if (imageView3)
    {
      imageView4 = [(AMPUserNotificationContentViewController *)self imageView];
      image = [imageView4 image];
      if (image)
      {
        imageView5 = [(AMPUserNotificationContentViewController *)self imageView];
        image2 = [imageView5 image];
        [image2 size];
        v26 = v25;
        imageView6 = [(AMPUserNotificationContentViewController *)self imageView];
        image3 = [imageView6 image];
        [image3 size];
        v30 = v26 / v29;
      }

      else
      {
        v30 = 0.0;
      }

      imageView7 = [(AMPUserNotificationContentViewController *)self imageView];
      [imageView7 setFrame:{0.0, 0.0, v5, v5 * v30}];

      videoPlayerController5 = [(AMPUserNotificationContentViewController *)self imageView];
      [videoPlayerController5 frame];
      v35 = CGRectGetMaxY(v55) + 16.0;
      goto LABEL_13;
    }

    v35 = 16.0;
  }

  titleLabel2 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [titleLabel2 setFrame:{16.0, v35, v6, v9}];

  titleLabel3 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [titleLabel3 frame];
  MaxY = CGRectGetMaxY(v56);
  textLabel2 = [(AMPUserNotificationContentViewController *)self textLabel];
  [textLabel2 setFrame:{16.0, MaxY, v6, v12}];

  [(AMPUserNotificationContentViewController *)self expectedContentSize];
  [(AMPUserNotificationContentViewController *)self setPreferredContentSize:?];
}

- (void)imageViewTapped:(id)tapped
{
  delegate = [(AMPUserNotificationContentViewController *)self delegate];
  [delegate openNotification];
}

- (void)mediaPause
{
  videoPlayerController = [(AMPUserNotificationContentViewController *)self videoPlayerController];
  player = [videoPlayerController player];
  [player pause];

  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  audioSessionCategory = [(AMPUserNotificationContentViewController *)self audioSessionCategory];
  [sharedInstance setCategory:audioSessionCategory withOptions:-[AMPUserNotificationContentViewController audioSessionCategoryOptions](self error:{"audioSessionCategoryOptions"), 0}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v60 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  videoPlayerController = [(AMPUserNotificationContentViewController *)self videoPlayerController];
  player = [videoPlayerController player];

  if (player == objectCopy)
  {
    if ([pathCopy isEqualToString:@"status"])
    {
      videoPlayerController2 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      player2 = [videoPlayerController2 player];
      status = [player2 status];

      if (status == 1)
      {
        videoPlayerController3 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        player3 = [videoPlayerController3 player];
        [player3 setMuted:0];

        videoPlayerController4 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        [videoPlayerController4 setAllowsEnteringFullScreen:0];

        sharedInstance = [getAVAudioSessionClass() sharedInstance];
        category = [sharedInstance category];
        [(AMPUserNotificationContentViewController *)self setAudioSessionCategory:category];

        sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
        -[AMPUserNotificationContentViewController setAudioSessionCategoryOptions:](self, "setAudioSessionCategoryOptions:", [sharedInstance2 categoryOptions]);

        videoPlayerController5 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        player4 = [videoPlayerController5 player];
        [player4 setAllowsExternalPlayback:0];

        [(AMPUserNotificationContentViewController *)self expectedContentSize];
        [(AMPUserNotificationContentViewController *)self setPreferredContentSize:?];
        mEMORY[0x277CEE508] = [MEMORY[0x277CEE508] sharedConfig];
        if (!mEMORY[0x277CEE508])
        {
          mEMORY[0x277CEE508] = [MEMORY[0x277CEE508] sharedConfig];
        }

        oSLogObject = [mEMORY[0x277CEE508] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = v27;
          userNotification = [(AMPUserNotificationContentViewController *)self userNotification];
          logKey = [userNotification logKey];
          *buf = 138543618;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = logKey;
          _os_log_impl(&dword_23C90D000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Ready to play rich notification video", buf, 0x16u);
        }
      }

      videoPlayerController6 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      player5 = [videoPlayerController6 player];
      v33 = [player5 status] == 2;

      if (v33)
      {
        mEMORY[0x277CEE508]2 = [MEMORY[0x277CEE508] sharedConfig];
        if (!mEMORY[0x277CEE508]2)
        {
          mEMORY[0x277CEE508]2 = [MEMORY[0x277CEE508] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x277CEE508]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = v36;
          userNotification2 = [(AMPUserNotificationContentViewController *)self userNotification];
          logKey2 = [userNotification2 logKey];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = logKey2;
          _os_log_impl(&dword_23C90D000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load video at url", buf, 0x16u);
        }
      }
    }

    if ([pathCopy isEqualToString:@"timeControlStatus"])
    {
      videoPlayerController7 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      player6 = [videoPlayerController7 player];
      v42 = [player6 timeControlStatus] == 2;

      if (v42)
      {
        imageView = [(AMPUserNotificationContentViewController *)self imageView];
        [imageView removeFromSuperview];

        sharedInstance3 = [getAVAudioSessionClass() sharedInstance];
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v45 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
        v56 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
        if (!getAVAudioSessionCategoryPlaybackSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke;
          v58 = &unk_278BC1F78;
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
          [AMPUserNotificationContentViewController observeValueForKeyPath:ofObject:change:context:];
          __break(1u);
        }

        [sharedInstance3 setCategory:*v45 withOptions:1 error:{0, v53}];

        if (![(AMPUserNotificationContentViewController *)self hasPlayedVideo])
        {
          v48 = MEMORY[0x277CEE728];
          userNotification3 = [(AMPUserNotificationContentViewController *)self userNotification];
          v50 = [v48 eventForVideoPlaybackForNotification:userNotification3];

          metrics = [(AMPUserNotificationContentViewController *)self metrics];
          [metrics enqueueEvent:v50];
        }

        [(AMPUserNotificationContentViewController *)self setHasPlayedVideo:1];
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (AMPUserNotificationContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getAVPlayerItemClass_block_invoke_cold_1();
}

@end