@interface ASCLockupMediaPresenter
+ (id)log;
- (ASCLockupMediaPresenter)initWithView:(id)a3 lockupPresenter:(id)a4;
- (ASCLockupMediaPresenter)initWithView:(id)a3 lockupPresenter:(id)a4 context:(id)a5;
- (ASCLockupMediaPresenterBackgroundView)backgroundView;
- (ASCLockupMediaPresenterObserver)observer;
- (id)artworkForLockup:(id)a3;
- (id)videoViewForLockup:(id)a3;
- (void)dealloc;
- (void)lockupPresenterDidChange:(id)a3;
- (void)performFollowUpWork:(id)a3;
- (void)performScreenshotsFetch;
- (void)screenshotArtwork:(id)a3 didFailFetchWithError:(id)a4 atIndex:(unint64_t)a5;
- (void)screenshotArtwork:(id)a3 didFetchImage:(id)a4 atIndex:(int64_t)a5;
- (void)setLockup:(id)a3;
- (void)videoView:(id)a3 videoStateDidChange:(int64_t)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation ASCLockupMediaPresenter

+ (id)log
{
  if (log_onceToken_2 != -1)
  {
    +[ASCLockupMediaPresenter log];
  }

  v3 = log_log_2;

  return v3;
}

uint64_t __30__ASCLockupMediaPresenter_log__block_invoke()
{
  log_log_2 = os_log_create("com.apple.AppStoreComponents", "ASCLockupMediaPresenter");

  return MEMORY[0x2821F96F8]();
}

- (ASCLockupMediaPresenter)initWithView:(id)a3 lockupPresenter:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = ASCLockupMediaPresenter;
  v12 = [(ASCLockupMediaPresenter *)&v20 init];
  if (v12)
  {
    v13 = objc_alloc_init(ASCPendingPromises);
    pendingArtworkPromises = v12->_pendingArtworkPromises;
    v12->_pendingArtworkPromises = v13;

    objc_storeStrong(&v12->_view, a3);
    objc_storeStrong(&v12->_context, a5);
    v15 = [v10 lockup];
    v16 = [v15 copy];
    lockup = v12->_lockup;
    v12->_lockup = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v12 selector:sel_lockupPresenterDidChange_ name:0x2827A3618 object:v10];
  }

  return v12;
}

- (ASCLockupMediaPresenter)initWithView:(id)a3 lockupPresenter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ASCPresenterContext sharedContext];
  v9 = [(ASCLockupMediaPresenter *)self initWithView:v7 lockupPresenter:v6 context:v8];

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCLockupMediaPresenter;
  [(ASCLockupMediaPresenter *)&v4 dealloc];
}

- (void)lockupPresenterDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 lockup];
  [(ASCLockupMediaPresenter *)self setLockup:v4];
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  lockup = self->_lockup;
  v19 = v4;
  if (v4 && lockup)
  {
    v6 = [(ASCLockup *)lockup isEqual:v4];
    v4 = v19;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else if (lockup == v4)
  {
    goto LABEL_11;
  }

  v7 = [(ASCLockup *)v4 copy];
  v8 = self->_lockup;
  self->_lockup = v7;

  v9 = [(ASCLockupMediaPresenter *)self pendingArtworkPromises];
  v10 = [v9 hasPromises];

  if (v10)
  {
    v11 = [(ASCLockupMediaPresenter *)self pendingArtworkPromises];
    [v11 cancelAll];

    v12 = [(ASCLockupMediaPresenter *)self observer];
    [v12 lockupMediaPresenterDidCancelScreenshotsFetchRequest];
  }

  v13 = [(ASCLockupMediaPresenter *)self view];
  if (v19)
  {
    v14 = [(ASCLockup *)v19 screenshots];
    v15 = [(ASCLockup *)v19 trailers];
    [v13 setScreenshots:v14 andTrailers:v15];

    v16 = [(ASCLockupMediaPresenter *)self view];
    v17 = [(ASCLockupMediaPresenter *)self videoViewForLockup:v19];
    [v16 setVideoView:v17];

    [(ASCLockupMediaPresenter *)self performScreenshotsFetch];
  }

  else
  {
    [v13 setVideoView:0];

    v18 = [(ASCLockupMediaPresenter *)self view];
    [v18 setScreenshots:0 andTrailers:0];
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (id)videoViewForLockup:(id)a3
{
  v4 = a3;
  v5 = [v4 trailers];
  if (v5 && (v6 = v5, [v4 trailers], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "videos"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v6, v9))
  {
    v10 = [v4 trailers];
    v11 = [v10 videos];
    v12 = [v11 firstObject];

    v13 = [ASCScreenshotDisplayConfiguration alloc];
    v14 = [v4 trailers];
    v15 = [v14 mediaPlatform];
    v16 = [v15 deviceCornerRadiusFactor];
    v17 = [(ASCScreenshotDisplayConfiguration *)v13 initWithDeviceCornerRadiusFactor:v16];

    v18 = [ASCVideoView alloc];
    v19 = [v12 videoURL];
    v20 = [(ASCVideoView *)v18 initWithFrame:v19 videoURL:v17 screenshotDisplayConfiguration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

    [(ASCVideoView *)v20 setDelegate:self];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)viewDidLayoutSubviews
{
  v3 = [(ASCLockupMediaPresenter *)self pendingArtworkPromises];
  v4 = [v3 hasPromises];

  if (v4)
  {
    v5 = [(ASCLockupMediaPresenter *)self pendingArtworkPromises];
    [v5 cancelAll];

    v6 = [(ASCLockupMediaPresenter *)self observer];
    [v6 lockupMediaPresenterDidCancelScreenshotsFetchRequest];
  }

  [(ASCLockupMediaPresenter *)self performScreenshotsFetch];
}

- (id)artworkForLockup:(id)a3
{
  v4 = [a3 screenshots];
  v5 = [(ASCLockupMediaPresenter *)self lockup];
  v6 = [v5 trailers];
  v7 = [__ASCLayoutProxy artworkFrom:v4 and:v6];

  return v7;
}

- (void)performScreenshotsFetch
{
  v3 = [(ASCLockupMediaPresenter *)self observer];
  [v3 lockupMediaPresenterDidBeginScreenshotsFetchRequest];

  v4 = [(ASCLockupMediaPresenter *)self lockup];
  v5 = [(ASCLockupMediaPresenter *)self artworkForLockup:v4];

  v6 = [(ASCLockupMediaPresenter *)self view];
  [v6 preferredScreenshotSize];
  v8 = v7;
  v10 = v9;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke;
  v11[3] = &unk_2781CC2C0;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v10;
  [v5 enumerateObjectsUsingBlock:v11];
}

void __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) context];
  v7 = [v6 artworkFetcher];
  v8 = [v7 imageForContentsOfArtwork:v5 withSize:{*(a1 + 40), *(a1 + 48)}];

  v9 = [*(a1 + 32) pendingArtworkPromises];
  [v9 addPromise:v8];

  objc_initWeak(&location, *(a1 + 32));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke_2;
  v15[3] = &unk_2781CC270;
  objc_copyWeak(v17, &location);
  v10 = v5;
  v16 = v10;
  v17[1] = a3;
  [v8 addSuccessBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke_3;
  v12[3] = &unk_2781CC298;
  objc_copyWeak(v14, &location);
  v11 = v10;
  v13 = v11;
  v14[1] = a3;
  [v8 addErrorBlock:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained screenshotArtwork:*(a1 + 32) didFetchImage:v3 atIndex:*(a1 + 48)];
}

void __50__ASCLockupMediaPresenter_performScreenshotsFetch__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained screenshotArtwork:*(a1 + 32) didFailFetchWithError:v3 atIndex:*(a1 + 48)];
}

- (void)performFollowUpWork:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)screenshotArtwork:(id)a3 didFetchImage:(id)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ASCLockupMediaPresenter_screenshotArtwork_didFetchImage_atIndex___block_invoke;
  v12[3] = &unk_2781CC2E8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(ASCLockupMediaPresenter *)self performFollowUpWork:v12];
}

void __67__ASCLockupMediaPresenter_screenshotArtwork_didFetchImage_atIndex___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 lockup];
  v4 = [v2 artworkForLockup:v3];

  v5 = *(a1 + 56);
  if (v5 >= [v4 count])
  {
    v7 = +[ASCLockupMediaPresenter log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "%{public}@: Ignoring out of bounds screenshot artwork", &v18, 0xCu);
    }
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:*(a1 + 56)];
    v7 = v6;
    v8 = *(a1 + 40);
    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v6 == v8)
      {
LABEL_14:
        v13 = [*(a1 + 32) view];
        [v13 setImage:*(a1 + 48) atIndex:*(a1 + 56)];

        if (!*(a1 + 56))
        {
          v14 = [*(a1 + 32) backgroundView];
          [v14 setImage:*(a1 + 48)];
        }

        v15 = [*(a1 + 32) pendingArtworkPromises];
        v16 = [v15 hasPromises];

        if ((v16 & 1) == 0)
        {
          v17 = [*(a1 + 32) observer];
          [v17 lockupMediaPresenterDidFinishScreenshotsFetchRequest];
        }

        goto LABEL_18;
      }
    }

    else if (([v6 isEqual:?]& 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = +[ASCLockupMediaPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@: Ignoring screenshot artwork for mismatched lockup", &v18, 0xCu);
    }
  }

LABEL_18:
}

- (void)screenshotArtwork:(id)a3 didFailFetchWithError:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__ASCLockupMediaPresenter_screenshotArtwork_didFailFetchWithError_atIndex___block_invoke;
  v9[3] = &unk_2781CC310;
  v10 = v7;
  v11 = a5;
  v9[4] = self;
  v8 = v7;
  [(ASCLockupMediaPresenter *)self performFollowUpWork:v9];
}

void __75__ASCLockupMediaPresenter_screenshotArtwork_didFailFetchWithError_atIndex___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 lockup];
  v4 = [v2 artworkForLockup:v3];

  v5 = *(a1 + 48);
  if (v5 >= [v4 count])
  {
    v7 = +[ASCLockupMediaPresenter log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "%{public}@: Ignoring out of bounds screenshot artwork", &v16, 0xCu);
    }
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:*(a1 + 48)];
    v7 = v6;
    v8 = *(a1 + 40);
    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v6 == v8)
      {
        goto LABEL_14;
      }
    }

    else if (([v6 isEqual:?]& 1) != 0)
    {
LABEL_14:
      v13 = [*(a1 + 32) pendingArtworkPromises];
      v14 = [v13 hasPromises];

      if ((v14 & 1) == 0)
      {
        v15 = [*(a1 + 32) observer];
        [v15 lockupMediaPresenterDidFinishScreenshotsFetchRequest];
      }

      goto LABEL_16;
    }

    v10 = +[ASCLockupMediaPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@: Ignoring screenshot artwork for mismatched lockup", &v16, 0xCu);
    }
  }

LABEL_16:
}

- (void)videoView:(id)a3 videoStateDidChange:(int64_t)a4
{
  v6 = [(ASCLockupMediaPresenter *)self observer];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ASCLockupMediaPresenter *)self observer];
    [v8 lockupMediaPresenterVideoStateDidChange:a4];
  }
}

- (ASCLockupMediaPresenterObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (ASCLockupMediaPresenterBackgroundView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

@end