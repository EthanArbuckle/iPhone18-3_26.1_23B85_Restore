@interface AMSUIUserNotificationContentViewController
- (AMSUIUserNotificationContentDelegate)delegate;
- (AMSUIUserNotificationContentViewController)initWithNotification:(id)a3 delegate:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)expectedContentSize;
- (void)_setupAccessibility;
- (void)dealloc;
- (void)loadView;
- (void)mediaPause;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewTapped:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIUserNotificationContentViewController

- (AMSUIUserNotificationContentViewController)initWithNotification:(id)a3 delegate:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v70.receiver = self;
  v70.super_class = AMSUIUserNotificationContentViewController;
  v9 = [(AMSUIUserNotificationContentViewController *)&v70 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_userNotification, a3);
    v11 = MEMORY[0x1E698C7E0];
    v12 = [MEMORY[0x1E698CA00] bagKeySet];
    v13 = [MEMORY[0x1E698CA00] bagSubProfile];
    v14 = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    [v11 registerBagKeySet:v12 forProfile:v13 profileVersion:v14];

    v15 = MEMORY[0x1E698C7D8];
    v16 = [MEMORY[0x1E698CA00] bagSubProfile];
    v17 = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    v18 = [v15 bagForProfile:v16 profileVersion:v17];

    v19 = [MEMORY[0x1E698CA00] internalInstanceUsingBag:v18];
    metrics = v10->_metrics;
    v10->_metrics = v19;

    v21 = [v7 artworkUrl];

    if (v21)
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
      v68 = v7;
      v69 = v10;
      dispatch_async(v25, &v64);
    }

    v26 = [v7 videoUrl];

    if (v26)
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
      v29 = [v7 videoUrl];
      v30 = [v27 playerItemWithURL:v29];

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

      v38 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v38 addObserver:v10 forKeyPath:@"status" options:1 context:0];

      v39 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v39 addObserver:v10 forKeyPath:@"timeControlStatus" options:1 context:0];

      v40 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v40 replaceCurrentItemWithPlayerItem:v30];

      [(AVPlayerViewController *)v10->_videoPlayerController setUpdatesNowPlayingInfoCenter:0];
      v41 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v41)
      {
        v41 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = v43;
        v45 = [v7 logKey];
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_impl(&dword_1BB036000, v42, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Loading rich notification video", buf, 0x16u);
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

    v50 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:v50];

    v51 = [v7 title];
    [(UILabel *)v10->_titleLabel setText:v51];

    v52 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v10->_subtitleLabel;
    v10->_subtitleLabel = v52;

    [(UILabel *)v10->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v10->_subtitleLabel setTextAlignment:4];
    [(UILabel *)v10->_subtitleLabel setLineBreakMode:0];
    v54 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v48];
    [(UILabel *)v10->_subtitleLabel setFont:v54];

    v55 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_subtitleLabel setBackgroundColor:v55];

    v56 = [v7 subtitle];
    [(UILabel *)v10->_subtitleLabel setText:v56];

    v57 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v10->_textLabel;
    v10->_textLabel = v57;

    [(UILabel *)v10->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_textLabel setNumberOfLines:0];
    [(UILabel *)v10->_textLabel setTextAlignment:4];
    [(UILabel *)v10->_textLabel setLineBreakMode:0];
    v59 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v10->_textLabel setFont:v59];

    v60 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10->_textLabel setBackgroundColor:v60];

    v61 = [v7 informativeText];
    [(UILabel *)v10->_textLabel setText:v61];
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
  v3 = [(AVPlayerViewController *)self->_videoPlayerController player];
  [v3 removeObserver:self forKeyPath:@"status"];

  v4 = [(AVPlayerViewController *)self->_videoPlayerController player];
  [v4 removeObserver:self forKeyPath:@"timeControlStatus"];

  v5.receiver = self;
  v5.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v5 dealloc];
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v25 loadView];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(AMSUIUserNotificationContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AMSUIUserNotificationContentViewController *)self view];
  v6 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v5 addSubview:v6];

  v7 = [(AMSUIUserNotificationContentViewController *)self view];
  v8 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v7 addSubview:v8];

  v9 = [(AMSUIUserNotificationContentViewController *)self view];
  v10 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [v9 addSubview:v10];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_viewTapped_];
  [v11 setDelegate:self];
  v12 = [(AMSUIUserNotificationContentViewController *)self view];
  [v12 addGestureRecognizer:v11];

  v13 = [(AMSUIUserNotificationContentViewController *)self view];
  [v13 setUserInteractionEnabled:1];

  v14 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (v14)
  {
    v15 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [(AMSUIUserNotificationContentViewController *)self addChildViewController:v15];

    v16 = [(AMSUIUserNotificationContentViewController *)self view];
    v17 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    v18 = [v17 view];
    [v16 addSubview:v18];

    v19 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [v19 didMoveToParentViewController:self];

    v20 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (v20)
    {
      v21 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      v22 = [v21 contentOverlayView];
      v23 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [v22 addSubview:v23];

LABEL_6:
    }
  }

  else
  {
    v24 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (v24)
    {
      v21 = [(AMSUIUserNotificationContentViewController *)self view];
      v22 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [v21 addSubview:v22];
      goto LABEL_6;
    }
  }

  [(AMSUIUserNotificationContentViewController *)self _setupAccessibility];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v7 setPreferredContentSize:?];
  v6 = [(AMSUIUserNotificationContentViewController *)self delegate];
  [v6 viewController:self didUpdatePreferredContentSize:{width, height}];
}

- (void)viewWillLayoutSubviews
{
  v64.receiver = self;
  v64.super_class = AMSUIUserNotificationContentViewController;
  [(AMSUIUserNotificationContentViewController *)&v64 viewWillLayoutSubviews];
  v3 = [(AMSUIUserNotificationContentViewController *)self view];
  [v3 frame];
  v5 = v4;

  v6 = v5 + -32.0;
  v7 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v7 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v9 = v8;

  v10 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v10 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v12 = v11;

  v13 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [v13 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v15 = v14;

  v16 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (v16)
  {
    v17 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [v17 videoBounds];
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

    v34 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    v35 = [v34 view];
    [v35 setFrame:{0.0, 0.0, v5, v22}];

    v36 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    v37 = [v36 view];
    [v37 frame];
    v38 = CGRectGetMaxY(v65) + 16.0;

    v39 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (v39)
    {
      v40 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      v41 = [v40 view];
      [v41 bounds];
      v43 = v42;
      v45 = v44;
      v63 = v6;
      v46 = v9;
      v47 = v12;
      v48 = v15;
      v50 = v49;
      v52 = v51;
      v53 = [(AMSUIUserNotificationContentViewController *)self imageView];
      v54 = v50;
      v15 = v48;
      v12 = v47;
      v9 = v46;
      v6 = v63;
      [v53 setFrame:{v43, v45, v54, v52}];

LABEL_13:
    }
  }

  else
  {
    v23 = [(AMSUIUserNotificationContentViewController *)self imageView];

    if (v23)
    {
      v24 = [(AMSUIUserNotificationContentViewController *)self imageView];
      v25 = [v24 image];
      if (v25)
      {
        v26 = [(AMSUIUserNotificationContentViewController *)self imageView];
        v27 = [v26 image];
        [v27 size];
        v29 = v28;
        v30 = [(AMSUIUserNotificationContentViewController *)self imageView];
        v31 = [v30 image];
        [v31 size];
        v33 = v29 / v32;
      }

      else
      {
        v33 = 0.0;
      }

      v55 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [v55 setFrame:{0.0, 0.0, v5, v5 * v33}];

      v40 = [(AMSUIUserNotificationContentViewController *)self imageView];
      [v40 frame];
      v38 = CGRectGetMaxY(v66) + 16.0;
      goto LABEL_13;
    }

    v38 = 16.0;
  }

  v56 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v56 setFrame:{16.0, v38, v6, v9}];

  v57 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v57 frame];
  MaxY = CGRectGetMaxY(v67);
  v59 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v59 setFrame:{16.0, MaxY, v6, v12}];

  v60 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v60 frame];
  v61 = CGRectGetMaxY(v68);
  v62 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [v62 setFrame:{16.0, v61, v6, v15}];

  [(AMSUIUserNotificationContentViewController *)self expectedContentSize];
  [(AMSUIUserNotificationContentViewController *)self setPreferredContentSize:?];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  v13 = [v12 player];

  if (v13 == v10)
  {
    if ([v9 isEqualToString:@"status"])
    {
      v14 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      v15 = [v14 player];
      v16 = [v15 status];

      if (v16 == 1)
      {
        v17 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        v18 = [v17 player];
        [v18 setMuted:0];

        v19 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        [v19 setAllowsEnteringFullScreen:0];

        v20 = [getAVAudioSessionClass() sharedInstance];
        v21 = [v20 category];
        [(AMSUIUserNotificationContentViewController *)self setAudioSessionCategory:v21];

        v22 = [getAVAudioSessionClass() sharedInstance];
        -[AMSUIUserNotificationContentViewController setAudioSessionCategoryOptions:](self, "setAudioSessionCategoryOptions:", [v22 categoryOptions]);

        v23 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
        v24 = [v23 player];
        [v24 setAllowsExternalPlayback:0];

        [(AMSUIUserNotificationContentViewController *)self expectedContentSize];
        [(AMSUIUserNotificationContentViewController *)self setPreferredContentSize:?];
        v25 = [MEMORY[0x1E698C968] sharedConfig];
        if (!v25)
        {
          v25 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = v27;
          v29 = [(AMSUIUserNotificationContentViewController *)self userNotification];
          v30 = [v29 logKey];
          *buf = 138543618;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = v30;
          _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Ready to play rich notification video", buf, 0x16u);
        }
      }

      v31 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      v32 = [v31 player];
      v33 = [v32 status] == 2;

      if (v33)
      {
        v34 = [MEMORY[0x1E698C968] sharedConfig];
        if (!v34)
        {
          v34 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = v36;
          v38 = [(AMSUIUserNotificationContentViewController *)self userNotification];
          v39 = [v38 logKey];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_1BB036000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load video at url", buf, 0x16u);
        }
      }
    }

    if ([v9 isEqualToString:@"timeControlStatus"])
    {
      v40 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
      v41 = [v40 player];
      v42 = [v41 timeControlStatus] == 2;

      if (v42)
      {
        v43 = [(AMSUIUserNotificationContentViewController *)self imageView];
        [v43 removeFromSuperview];

        v44 = [getAVAudioSessionClass() sharedInstance];
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

        [v44 setCategory:*v45 withOptions:1 error:{0, v53}];

        if (![(AMSUIUserNotificationContentViewController *)self hasPlayedVideo])
        {
          v48 = MEMORY[0x1E698CBE8];
          v49 = [(AMSUIUserNotificationContentViewController *)self userNotification];
          v50 = [v48 eventForVideoPlaybackForNotification:v49];

          v51 = [(AMSUIUserNotificationContentViewController *)self metrics];
          [v51 enqueueEvent:v50];
        }

        [(AMSUIUserNotificationContentViewController *)self setHasPlayedVideo:1];
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (CGSize)expectedContentSize
{
  v3 = [(AMSUIUserNotificationContentViewController *)self view];
  [v3 frame];
  v5 = v4;

  v6 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v6 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v8 = v7;

  v9 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v9 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v11 = v10;

  v12 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [v12 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v14 = v13;

  v15 = [(AMSUIUserNotificationContentViewController *)self imageView];
  v16 = [v15 image];

  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v19 = [(AMSUIUserNotificationContentViewController *)self imageView];
    v20 = [v19 image];
    [v20 size];
    v22 = v21;
    v23 = [(AMSUIUserNotificationContentViewController *)self imageView];
    v24 = [v23 image];
    [v24 size];
    v26 = v22 / v25;

    v18 = v5 * v26;
  }

  v27 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];

  if (v27)
  {
    v28 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
    [v28 videoBounds];
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
  v3 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  v4 = [v3 player];
  [v4 pause];

  v6 = [getAVAudioSessionClass() sharedInstance];
  v5 = [(AMSUIUserNotificationContentViewController *)self audioSessionCategory];
  [v6 setCategory:v5 withOptions:-[AMSUIUserNotificationContentViewController audioSessionCategoryOptions](self error:{"audioSessionCategoryOptions"), 0}];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [a4 view];
  v7 = [v5 view];

  return v6 == v7;
}

- (void)_setupAccessibility
{
  v3 = [(AMSUIUserNotificationContentViewController *)self view];
  [v3 setAccessibilityIdentifier:@"userNotificationContent"];

  v4 = [(AMSUIUserNotificationContentViewController *)self titleLabel];
  [v4 setAccessibilityIdentifier:@"titleLabel"];

  v5 = [(AMSUIUserNotificationContentViewController *)self textLabel];
  [v5 setAccessibilityIdentifier:@"textLabel"];

  v6 = [(AMSUIUserNotificationContentViewController *)self subtitleLabel];
  [v6 setAccessibilityIdentifier:@"subtitleLabel"];

  v7 = [(AMSUIUserNotificationContentViewController *)self imageView];
  [v7 setAccessibilityIdentifier:@"imageView"];

  v9 = [(AMSUIUserNotificationContentViewController *)self videoPlayerController];
  v8 = [v9 view];
  [v8 setAccessibilityIdentifier:@"videoPlayer"];
}

- (void)viewTapped:(id)a3
{
  v3 = [(AMSUIUserNotificationContentViewController *)self delegate];
  [v3 openNotification];
}

- (AMSUIUserNotificationContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end