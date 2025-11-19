@interface ASCMiniProductPageMediaViewController
+ (id)log;
- (ASCMiniProductPageMediaViewController)initWithScreenshots:(id)a3 selectedIndex:(unint64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)artworkForDisplay;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)adjustEdgeInsets;
- (void)performFollowUpWork:(id)a3;
- (void)performScreenshotsFetch;
- (void)screenshotArtwork:(id)a3 didFailFetchWithError:(id)a4 atIndex:(unint64_t)a5;
- (void)screenshotArtwork:(id)a3 didFetchImage:(id)a4 atIndex:(int64_t)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation ASCMiniProductPageMediaViewController

+ (id)log
{
  if (log_onceToken_6 != -1)
  {
    +[ASCMiniProductPageMediaViewController log];
  }

  v3 = log_log_6;

  return v3;
}

uint64_t __44__ASCMiniProductPageMediaViewController_log__block_invoke()
{
  log_log_6 = os_log_create("com.apple.AppStoreComponents", "ASCMiniProductPageMediaViewController");

  return MEMORY[0x2821F96F8]();
}

- (ASCMiniProductPageMediaViewController)initWithScreenshots:(id)a3 selectedIndex:(unint64_t)a4
{
  v7 = a3;
  v8 = objc_alloc_init(ASCMiniProductPageMediaFlowLayout);
  +[ASCMediaCollectionViewCell minimumLineSpacing];
  [(UICollectionViewFlowLayout *)v8 setMinimumLineSpacing:?];
  v9 = [(ASCMiniProductPageMediaViewController *)self initWithCollectionViewLayout:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_screenshots, a3);
    v11 = +[ASCPresenterContext sharedContext];
    context = v10->_context;
    v10->_context = v11;

    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = [(ASCScreenshots *)v10->_screenshots artwork];
    v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];
    loadedImages = v10->_loadedImages;
    v10->_loadedImages = v15;

    v17 = objc_alloc_init(ASCPendingPromises);
    pendingArtworkPromises = v10->_pendingArtworkPromises;
    v10->_pendingArtworkPromises = v17;

    v10->_selectedIndex = a4;
    [(ASCMiniProductPageMediaViewController *)v10 setInstallsStandardGestureForInteractiveMovement:0];
    v19 = [MEMORY[0x277D75348] systemBackgroundColor];
    v20 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v20 setBackgroundColor:v19];

    v21 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v21 setAllowsSelection:0];

    v22 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v22 setAlwaysBounceHorizontal:1];

    v23 = *MEMORY[0x277D76EB8];
    v24 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v24 setDecelerationRate:v23];

    v25 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v25 setShowsHorizontalScrollIndicator:0];

    v26 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v26 setRemembersLastFocusedIndexPath:1];

    v27 = [(ASCMiniProductPageMediaViewController *)v10 collectionView];
    [v27 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ASCMiniProductPageMediaViewCellIdentifier"];

    objc_initWeak(&location, v10);
    v28 = MEMORY[0x277D750C8];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __75__ASCMiniProductPageMediaViewController_initWithScreenshots_selectedIndex___block_invoke;
    v39 = &unk_2781CC820;
    objc_copyWeak(&v40, &location);
    v29 = [v28 actionWithHandler:&v36];
    v30 = objc_alloc(MEMORY[0x277D751E0]);
    v31 = [v30 initWithBarButtonSystemItem:24 primaryAction:{v29, v36, v37, v38, v39}];
    v32 = [(ASCMiniProductPageMediaViewController *)v10 navigationItem];
    [v32 setRightBarButtonItem:v31];

    v34 = ASCLocalizedString(@"MINI_PRODUCT_PAGE_SCREENSHOT_SHEET_TITLE", v33);
    [(ASCMiniProductPageMediaViewController *)v10 setTitle:v34];

    [(ASCMiniProductPageMediaViewController *)v10 adjustEdgeInsets];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __75__ASCMiniProductPageMediaViewController_initWithScreenshots_selectedIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ASCMiniProductPageMediaViewController;
  [(ASCMiniProductPageMediaViewController *)&v11 viewIsAppearing:a3];
  [(ASCMiniProductPageMediaViewController *)self performScreenshotsFetch];
  if (([(ASCMiniProductPageMediaViewController *)self selectedIndex]& 0x8000000000000000) == 0)
  {
    v4 = [(ASCMiniProductPageMediaViewController *)self selectedIndex];
    v5 = [(ASCMiniProductPageMediaViewController *)self screenshots];
    v6 = [v5 artwork];
    v7 = [v6 count];

    if (v4 < v7)
    {
      v8 = [(ASCMiniProductPageMediaViewController *)self view];
      [v8 layoutIfNeeded];

      v9 = [MEMORY[0x277CCAA70] indexPathForItem:-[ASCMiniProductPageMediaViewController selectedIndex](self inSection:{"selectedIndex"), 0}];
      v10 = [(ASCMiniProductPageMediaViewController *)self collectionView];
      [v10 scrollToItemAtIndexPath:v9 atScrollPosition:16 animated:0];
    }
  }
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 12.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)adjustEdgeInsets
{
  v3 = [(ASCMiniProductPageMediaViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(ASCMiniProductPageMediaViewController *)self view];
  v7 = v5;
  v6 = 8.0;
  if (v4 == 1)
  {
    v6 = 36.0;
  }

  [v5 setLayoutMargins:{8.0, v6, 8.0, v6}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ASCMiniProductPageMediaViewController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"ASCMiniProductPageMediaViewCellIdentifier" forIndexPath:v5];

  v8 = [(ASCMiniProductPageMediaViewController *)self screenshots];
  v9 = [v8 artwork];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

  v11 = [(ASCMiniProductPageMediaViewController *)self loadedImages];
  v12 = [v11 objectForKeyedSubscript:v5];

  v13 = [ASCScreenshotDisplayConfiguration alloc];
  v14 = [(ASCMiniProductPageMediaViewController *)self screenshots];
  v15 = [v14 mediaPlatform];
  v16 = [v15 deviceCornerRadiusFactor];
  v17 = [(ASCScreenshotDisplayConfiguration *)v13 initWithDeviceCornerRadiusFactor:v16];

  [v7 applyArtwork:v10 image:v12 screenshotDisplayConfiguration:v17];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(ASCMiniProductPageMediaViewController *)self screenshots:a3];
  v5 = [v4 artwork];
  v6 = [v5 count];

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [v6 item];
  v8 = [(ASCMiniProductPageMediaViewController *)self artworkForDisplay];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    v27 = +[ASCMiniProductPageMediaViewController log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v30 = 138543362;
      v31 = self;
      _os_log_impl(&dword_21571A000, v27, OS_LOG_TYPE_INFO, "%{public}@: Ignoring out of bounds screenshot artwork", &v30, 0xCu);
    }

    v26 = *MEMORY[0x277CBF3A8];
    v23 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v10 = [(ASCMiniProductPageMediaViewController *)self artworkForDisplay];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

    v12 = [(ASCMiniProductPageMediaViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v17 = [(ASCMiniProductPageMediaViewController *)self view];
    [v17 layoutMargins];
    v20 = v14 - (v18 + v19);
    v23 = v16 - (v21 + v22);

    v24 = [(ASCMiniProductPageMediaViewController *)self traitCollection];
    [ASCMediaCollectionViewCell sizeForArtwork:v11 thatFits:v24 usingTraitCollection:v20, v23];
    v26 = v25;
  }

  v28 = v26;
  v29 = v23;
  result.height = v29;
  result.width = v28;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ASCMiniProductPageMediaViewController *)self screenshots];
  v11 = [v10 artwork];
  v12 = [v11 count] - 1;

  v13 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a5];
  [(ASCMiniProductPageMediaViewController *)self collectionView:v9 layout:v8 sizeForItemAtIndexPath:v13];
  v15 = v14;

  v16 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:a5];
  [(ASCMiniProductPageMediaViewController *)self collectionView:v9 layout:v8 sizeForItemAtIndexPath:v16];
  v18 = v17;

  [v9 bounds];
  v20 = (v19 - v15) * 0.5;
  [v9 bounds];
  v22 = v21;

  v23 = (v22 - v18) * 0.5;
  v24 = 0.0;
  v25 = 0.0;
  v26 = v20;
  result.right = v23;
  result.bottom = v25;
  result.left = v26;
  result.top = v24;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 bounds];
  v8 = v6 + v7 * 0.5;
  [v4 bounds];
  v10 = v9;

  v11 = [(ASCMiniProductPageMediaViewController *)self collectionView];
  v13 = [v11 indexPathForItemAtPoint:{v8, v10 * 0.5}];

  v12 = v13;
  if (v13)
  {
    -[ASCMiniProductPageMediaViewController setSelectedIndex:](self, "setSelectedIndex:", [v13 item]);
    v12 = v13;
  }
}

- (id)artworkForDisplay
{
  v2 = [(ASCMiniProductPageMediaViewController *)self screenshots];
  v3 = [__ASCLayoutProxy artworkFrom:v2 and:0];

  return v3;
}

- (void)performScreenshotsFetch
{
  v3 = [(ASCMiniProductPageMediaViewController *)self artworkForDisplay];
  v4 = [(ASCMiniProductPageMediaViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke;
  v6[3] = &unk_2781CC870;
  v6[4] = self;
  v6[5] = v5;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) collectionView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (([v5 isPortrait] & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if (!v11)
    {
      v8 = v10;
    }

    v10 = v12;
  }

  v13 = [*(a1 + 32) context];
  v14 = [v13 artworkFetcher];
  v15 = [v14 imageForContentsOfArtwork:v5 withSize:{v8, v10}];

  v16 = [*(a1 + 32) pendingArtworkPromises];
  [v16 addPromise:v15];

  objc_initWeak(&location, *(a1 + 32));
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke_2;
  v23[3] = &unk_2781CC848;
  v17 = v5;
  v18 = *(a1 + 40);
  v24 = v17;
  v25[1] = v18;
  objc_copyWeak(v25, &location);
  v25[2] = a3;
  [v15 addSuccessBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke_3;
  v20[3] = &unk_2781CC298;
  objc_copyWeak(v22, &location);
  v19 = v17;
  v21 = v19;
  v22[1] = a3;
  [v15 addErrorBlock:v20];

  objc_destroyWeak(v22);
  objc_destroyWeak(v25);

  objc_destroyWeak(&location);
}

void __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) isPortrait] & 1) == 0 && !*(a1 + 48))
  {
    v3 = objc_alloc(MEMORY[0x277D755B8]);
    v4 = v8;
    v5 = [v8 CGImage];
    [v8 scale];
    v6 = [v3 initWithCGImage:v5 scale:2 orientation:?];

    v8 = v6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained screenshotArtwork:*(a1 + 32) didFetchImage:v8 atIndex:*(a1 + 56)];
}

void __64__ASCMiniProductPageMediaViewController_performScreenshotsFetch__block_invoke_3(uint64_t a1, void *a2)
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
  v12[2] = __81__ASCMiniProductPageMediaViewController_screenshotArtwork_didFetchImage_atIndex___block_invoke;
  v12[3] = &unk_2781CC2E8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(ASCMiniProductPageMediaViewController *)self performFollowUpWork:v12];
}

void __81__ASCMiniProductPageMediaViewController_screenshotArtwork_didFetchImage_atIndex___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) artworkForDisplay];
  v3 = *(a1 + 56);
  if (v3 < [v2 count])
  {
    v4 = [v2 objectAtIndexedSubscript:*(a1 + 56)];
    v5 = v4;
    v6 = *(a1 + 40);
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v4 == v6)
      {
LABEL_13:
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
        v11 = *(a1 + 48);
        v12 = [*(a1 + 32) loadedImages];
        [v12 setObject:v11 forKeyedSubscript:v8];

        v13 = [*(a1 + 32) collectionView];
        v15 = v8;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
        [v13 reloadItemsAtIndexPaths:v14];

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (([v4 isEqual:?]& 1) != 0)
    {
      goto LABEL_13;
    }

    v8 = +[ASCMiniProductPageMediaViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_21571A000, v8, OS_LOG_TYPE_INFO, "%{public}@: Ignoring screenshot artwork for mismatched lockup", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v5 = +[ASCMiniProductPageMediaViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v17 = v10;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Ignoring out of bounds screenshot artwork", buf, 0xCu);
  }

LABEL_15:
}

- (void)screenshotArtwork:(id)a3 didFailFetchWithError:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__ASCMiniProductPageMediaViewController_screenshotArtwork_didFailFetchWithError_atIndex___block_invoke;
  v9[3] = &unk_2781CC310;
  v10 = v7;
  v11 = a5;
  v9[4] = self;
  v8 = v7;
  [(ASCMiniProductPageMediaViewController *)self performFollowUpWork:v9];
}

void __89__ASCMiniProductPageMediaViewController_screenshotArtwork_didFailFetchWithError_atIndex___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) artworkForDisplay];
  v3 = *(a1 + 48);
  if (v3 < [v2 count])
  {
    v4 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
    v5 = v4;
    v6 = *(a1 + 40);
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v4 == v6)
      {
LABEL_13:
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 48) inSection:0];
        v11 = [*(a1 + 32) loadedImages];
        [v11 setObject:0 forKeyedSubscript:v8];

        v12 = [*(a1 + 32) collectionView];
        v14 = v8;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
        [v12 reloadItemsAtIndexPaths:v13];

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (([v4 isEqual:?]& 1) != 0)
    {
      goto LABEL_13;
    }

    v8 = +[ASCMiniProductPageMediaViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_21571A000, v8, OS_LOG_TYPE_INFO, "%{public}@: Ignoring screenshot artwork for mismatched lockup", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v5 = +[ASCMiniProductPageMediaViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Ignoring out of bounds screenshot artwork", buf, 0xCu);
  }

LABEL_15:
}

@end