@interface AMPUserNotificationContentViewController
- (AMPUserNotificationContentDelegate)delegate;
- (AMPUserNotificationContentViewController)initWithNotification:(id)a3 delegate:(id)a4;
- (CGSize)expectedContentSize;
- (void)imageViewTapped:(id)a3;
- (void)loadView;
- (void)mediaPause;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMPUserNotificationContentViewController

- (AMPUserNotificationContentViewController)initWithNotification:(id)a3 delegate:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v64.receiver = self;
  v64.super_class = AMPUserNotificationContentViewController;
  v9 = [(AMPUserNotificationContentViewController *)&v64 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_userNotification, a3);
    v11 = MEMORY[0x277CEE408];
    v12 = [MEMORY[0x277CEE598] bagKeySet];
    v13 = [MEMORY[0x277CEE598] bagSubProfile];
    v14 = [MEMORY[0x277CEE598] bagSubProfileVersion];
    [v11 registerBagKeySet:v12 forProfile:v13 profileVersion:v14];

    v15 = MEMORY[0x277CEE3F8];
    v16 = [MEMORY[0x277CEE598] bagSubProfile];
    v17 = [MEMORY[0x277CEE598] bagSubProfileVersion];
    v18 = [v15 bagForProfile:v16 profileVersion:v17];

    v19 = [objc_alloc(MEMORY[0x277CEE598]) initWithContainerID:@"com.apple.AppleMediaServices" bag:v18];
    metrics = v10->_metrics;
    v10->_metrics = v19;

    v21 = [v7 artworkUrl];

    if (v21)
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
      v62 = v7;
      v63 = v10;
      dispatch_async(v25, &v58);
    }

    v26 = [v7 videoUrl];

    if (v26)
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
      v29 = [v7 videoUrl];
      v30 = [v27 playerItemWithURL:v29];

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

      v38 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v38 addObserver:v10 forKeyPath:@"status" options:1 context:0];

      v39 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v39 addObserver:v10 forKeyPath:@"timeControlStatus" options:1 context:0];

      v40 = [(AVPlayerViewController *)v10->_videoPlayerController player];
      [v40 replaceCurrentItemWithPlayerItem:v30];

      [(AVPlayerViewController *)v10->_videoPlayerController setUpdatesNowPlayingInfoCenter:0];
      v41 = [MEMORY[0x277CEE508] sharedConfig];
      if (!v41)
      {
        v41 = [MEMORY[0x277CEE508] sharedConfig];
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
        _os_log_impl(&dword_23C90D000, v42, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Loading rich notification video", buf, 0x16u);
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

    v49 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:v49];

    v50 = [v7 title];
    [(UILabel *)v10->_titleLabel setText:v50];

    v51 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v10->_textLabel;
    v10->_textLabel = v51;

    [(UILabel *)v10->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_textLabel setNumberOfLines:0];
    [(UILabel *)v10->_textLabel setTextAlignment:4];
    [(UILabel *)v10->_textLabel setLineBreakMode:0];
    v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_textLabel setFont:v53];

    v54 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_textLabel setBackgroundColor:v54];

    v55 = [v7 informativeText];
    [(UILabel *)v10->_textLabel setText:v55];
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(AMPUserNotificationContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AMPUserNotificationContentViewController *)self view];
  v6 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [v5 addSubview:v6];

  v7 = [(AMPUserNotificationContentViewController *)self view];
  v8 = [(AMPUserNotificationContentViewController *)self textLabel];
  [v7 addSubview:v8];

  v9 = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (v9)
  {
    v10 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [(AMPUserNotificationContentViewController *)self addChildViewController:v10];

    v11 = [(AMPUserNotificationContentViewController *)self view];
    v12 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    v13 = [v12 view];
    [v11 addSubview:v13];

    v14 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [v14 didMoveToParentViewController:self];

    v15 = [(AMPUserNotificationContentViewController *)self imageView];

    if (!v15)
    {
      return;
    }

    v16 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    v17 = [v16 contentOverlayView];
    v18 = [(AMPUserNotificationContentViewController *)self imageView];
    [v17 addSubview:v18];
  }

  else
  {
    v19 = [(AMPUserNotificationContentViewController *)self imageView];

    if (!v19)
    {
      return;
    }

    v20 = [(AMPUserNotificationContentViewController *)self view];
    v21 = [(AMPUserNotificationContentViewController *)self imageView];
    [v20 addSubview:v21];

    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_imageViewTapped_];
    v22 = [(AMPUserNotificationContentViewController *)self imageView];
    [v22 addGestureRecognizer:v16];

    v17 = [(AMPUserNotificationContentViewController *)self imageView];
    [v17 setUserInteractionEnabled:1];
  }
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = AMPUserNotificationContentViewController;
  [(AMPUserNotificationContentViewController *)&v7 setPreferredContentSize:?];
  v6 = [(AMPUserNotificationContentViewController *)self delegate];
  [v6 viewController:self didUpdatePreferredContentSize:{width, height}];
}

- (CGSize)expectedContentSize
{
  v3 = [(AMPUserNotificationContentViewController *)self view];
  [v3 frame];
  v5 = v4;

  v6 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [v6 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v8 = v7;

  v9 = [(AMPUserNotificationContentViewController *)self textLabel];
  [v9 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v11 = v10;

  v12 = [(AMPUserNotificationContentViewController *)self imageView];
  v13 = [v12 image];

  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v16 = [(AMPUserNotificationContentViewController *)self imageView];
    v17 = [v16 image];
    [v17 size];
    v19 = v18;
    v20 = [(AMPUserNotificationContentViewController *)self imageView];
    v21 = [v20 image];
    [v21 size];
    v23 = v19 / v22;

    v15 = v5 * v23;
  }

  v24 = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (v24)
  {
    v25 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [v25 videoBounds];
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
  v3 = [(AMPUserNotificationContentViewController *)self view];
  [v3 frame];
  v5 = v4;

  v6 = v5 + -32.0;
  v7 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [v7 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v9 = v8;

  v10 = [(AMPUserNotificationContentViewController *)self textLabel];
  [v10 sizeThatFits:{v5 + -32.0, 3.40282347e38}];
  v12 = v11;

  v13 = [(AMPUserNotificationContentViewController *)self videoPlayerController];

  if (v13)
  {
    v14 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    [v14 videoBounds];
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

    v31 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    v32 = [v31 view];
    [v32 setFrame:{0.0, 0.0, v5, v19}];

    v33 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
    v34 = [v33 view];
    [v34 frame];
    v35 = CGRectGetMaxY(v54) + 16.0;

    v36 = [(AMPUserNotificationContentViewController *)self imageView];

    if (v36)
    {
      v37 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      v38 = [v37 view];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [(AMPUserNotificationContentViewController *)self imageView];
      [v47 setFrame:{v40, v42, v44, v46}];

LABEL_13:
    }
  }

  else
  {
    v20 = [(AMPUserNotificationContentViewController *)self imageView];

    if (v20)
    {
      v21 = [(AMPUserNotificationContentViewController *)self imageView];
      v22 = [v21 image];
      if (v22)
      {
        v23 = [(AMPUserNotificationContentViewController *)self imageView];
        v24 = [v23 image];
        [v24 size];
        v26 = v25;
        v27 = [(AMPUserNotificationContentViewController *)self imageView];
        v28 = [v27 image];
        [v28 size];
        v30 = v26 / v29;
      }

      else
      {
        v30 = 0.0;
      }

      v48 = [(AMPUserNotificationContentViewController *)self imageView];
      [v48 setFrame:{0.0, 0.0, v5, v5 * v30}];

      v37 = [(AMPUserNotificationContentViewController *)self imageView];
      [v37 frame];
      v35 = CGRectGetMaxY(v55) + 16.0;
      goto LABEL_13;
    }

    v35 = 16.0;
  }

  v49 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [v49 setFrame:{16.0, v35, v6, v9}];

  v50 = [(AMPUserNotificationContentViewController *)self titleLabel];
  [v50 frame];
  MaxY = CGRectGetMaxY(v56);
  v52 = [(AMPUserNotificationContentViewController *)self textLabel];
  [v52 setFrame:{16.0, MaxY, v6, v12}];

  [(AMPUserNotificationContentViewController *)self expectedContentSize];
  [(AMPUserNotificationContentViewController *)self setPreferredContentSize:?];
}

- (void)imageViewTapped:(id)a3
{
  v3 = [(AMPUserNotificationContentViewController *)self delegate];
  [v3 openNotification];
}

- (void)mediaPause
{
  v3 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
  v4 = [v3 player];
  [v4 pause];

  v6 = [getAVAudioSessionClass() sharedInstance];
  v5 = [(AMPUserNotificationContentViewController *)self audioSessionCategory];
  [v6 setCategory:v5 withOptions:-[AMPUserNotificationContentViewController audioSessionCategoryOptions](self error:{"audioSessionCategoryOptions"), 0}];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
  v13 = [v12 player];

  if (v13 == v10)
  {
    if ([v9 isEqualToString:@"status"])
    {
      v14 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      v15 = [v14 player];
      v16 = [v15 status];

      if (v16 == 1)
      {
        v17 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        v18 = [v17 player];
        [v18 setMuted:0];

        v19 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        [v19 setAllowsEnteringFullScreen:0];

        v20 = [getAVAudioSessionClass() sharedInstance];
        v21 = [v20 category];
        [(AMPUserNotificationContentViewController *)self setAudioSessionCategory:v21];

        v22 = [getAVAudioSessionClass() sharedInstance];
        -[AMPUserNotificationContentViewController setAudioSessionCategoryOptions:](self, "setAudioSessionCategoryOptions:", [v22 categoryOptions]);

        v23 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
        v24 = [v23 player];
        [v24 setAllowsExternalPlayback:0];

        [(AMPUserNotificationContentViewController *)self expectedContentSize];
        [(AMPUserNotificationContentViewController *)self setPreferredContentSize:?];
        v25 = [MEMORY[0x277CEE508] sharedConfig];
        if (!v25)
        {
          v25 = [MEMORY[0x277CEE508] sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = v27;
          v29 = [(AMPUserNotificationContentViewController *)self userNotification];
          v30 = [v29 logKey];
          *buf = 138543618;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = v30;
          _os_log_impl(&dword_23C90D000, v26, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Ready to play rich notification video", buf, 0x16u);
        }
      }

      v31 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      v32 = [v31 player];
      v33 = [v32 status] == 2;

      if (v33)
      {
        v34 = [MEMORY[0x277CEE508] sharedConfig];
        if (!v34)
        {
          v34 = [MEMORY[0x277CEE508] sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = v36;
          v38 = [(AMPUserNotificationContentViewController *)self userNotification];
          v39 = [v38 logKey];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_23C90D000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load video at url", buf, 0x16u);
        }
      }
    }

    if ([v9 isEqualToString:@"timeControlStatus"])
    {
      v40 = [(AMPUserNotificationContentViewController *)self videoPlayerController];
      v41 = [v40 player];
      v42 = [v41 timeControlStatus] == 2;

      if (v42)
      {
        v43 = [(AMPUserNotificationContentViewController *)self imageView];
        [v43 removeFromSuperview];

        v44 = [getAVAudioSessionClass() sharedInstance];
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

        [v44 setCategory:*v45 withOptions:1 error:{0, v53}];

        if (![(AMPUserNotificationContentViewController *)self hasPlayedVideo])
        {
          v48 = MEMORY[0x277CEE728];
          v49 = [(AMPUserNotificationContentViewController *)self userNotification];
          v50 = [v48 eventForVideoPlaybackForNotification:v49];

          v51 = [(AMPUserNotificationContentViewController *)self metrics];
          [v51 enqueueEvent:v50];
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