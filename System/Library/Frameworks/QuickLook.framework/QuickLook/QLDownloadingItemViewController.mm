@interface QLDownloadingItemViewController
- (BOOL)shouldAutoDownloadInNetworkState:(unint64_t)a3 downloadSize:(id)a4 forceIfPossible:(BOOL)a5;
- (QLDownloadingItemViewControllerDelegate)downloadingDelegate;
- (void)_presentConnectivityAlert;
- (void)_startDownloadOperation;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)setShowsLoadingPreviewSpinner:(BOOL)a3;
- (void)startDownload:(BOOL)a3;
- (void)startDownloadIfNeeded;
- (void)viewDidLoad;
@end

@implementation QLDownloadingItemViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = QLDownloadingItemViewController;
  [(QLDetailItemViewController *)&v25 viewDidLoad];
  self->_didDisappear = 1;
  v3 = MEMORY[0x277D755B8];
  v4 = QLFrameworkBundle();
  v5 = [v3 imageNamed:@"Cloudload" inBundle:v4 compatibleWithTraitCollection:0];
  cloudImage = self->_cloudImage;
  self->_cloudImage = v5;

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  downloadImageView = self->_downloadImageView;
  self->_downloadImageView = v7;

  [(UIImageView *)self->_downloadImageView setImage:self->_cloudImage];
  [(QLItem *)self->_previewItem canBePreviewed];
  v9 = QLLocalizedString();
  v10 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:v9 actionButtonView:self->_downloadImageView informationVisible:1];
  readyForDownloadState = self->_readyForDownloadState;
  self->_readyForDownloadState = v10;

  v12 = [[QLRoundProgressView alloc] initWithFrame:0.0, 0.0, 32.0, 32.0];
  progressView = self->_progressView;
  self->_progressView = v12;

  v14 = QLLocalizedStringWithDefaultValue();
  v15 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:v14 actionButtonView:self->_progressView informationVisible:1];
  cancelableDownloadingState = self->_cancelableDownloadingState;
  self->_cancelableDownloadingState = v15;

  v17 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:self->_progressView informationVisible:1];
  nonCancelableDownloadingState = self->_nonCancelableDownloadingState;
  self->_nonCancelableDownloadingState = v17;

  v19 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:0 informationVisible:0];
  completedDownloadState = self->_completedDownloadState;
  self->_completedDownloadState = v19;

  v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:9];
  v22 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setColor:v22];

  [v21 startAnimating];
  v23 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:v21 informationVisible:0];
  previewLoadingState = self->_previewLoadingState;
  self->_previewLoadingState = v23;

  [(QLDetailItemViewController *)self setState:self->_readyForDownloadState animated:0];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__QLDownloadingItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v13[3] = &unk_278B58DB8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v12.receiver = self;
  v12.super_class = QLDownloadingItemViewController;
  v10 = v9;
  v11 = v8;
  [(QLDetailItemViewController *)&v12 loadPreviewControllerWithContents:v11 context:a4 completionHandler:v13];
}

uint64_t __95__QLDownloadingItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1280), *(a1 + 40));
  [*(a1 + 32) _updateFileSizeWithProgress:0 animated:0.0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)shouldAutoDownloadInNetworkState:(unint64_t)a3 downloadSize:(id)a4 forceIfPossible:(BOOL)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3 > 2)
  {
    if (a5)
    {
      v13 = 1;
    }

    else
    {
      v14 = [v7 integerValue];
      v15 = v14;
      if (a3 == 3)
      {
        v16 = 6291456;
      }

      else
      {
        v16 = 102400;
      }

      v13 = v14 < v16;
      v17 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v23 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v17 = *v23;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (v15 >= v16)
        {
          v18 = @"NO";
        }

        else
        {
          v18 = @"YES";
        }

        v19 = v17;
        v20 = NSStringFromQLNetworkState();
        v24 = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_INFO, "Should auto-download: '%@', state is %@ #Downloading", &v24, 0x16u);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = NSStringFromQLNetworkState();
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "Avoid auto-download, since state is %@ #Downloading", &v24, 0xCu);
    }

    v13 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)setShowsLoadingPreviewSpinner:(BOOL)a3
{
  if (self->_showsLoadingPreviewSpinner != a3)
  {
    self->_showsLoadingPreviewSpinner = a3;
    v3 = &OBJC_IVAR___QLDownloadingItemViewController__completedDownloadState;
    if (a3)
    {
      v3 = &OBJC_IVAR___QLDownloadingItemViewController__previewLoadingState;
    }

    [(QLDetailItemViewController *)self setState:*(&self->super.super.super.super.super.isa + *v3) animated:1];
  }
}

- (void)startDownload:(BOOL)a3
{
  v5 = [MEMORY[0x277D43F88] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__QLDownloadingItemViewController_startDownload___block_invoke;
  v6[3] = &unk_278B58F50;
  v6[4] = self;
  v7 = a3;
  [v5 networkStateWithCompletionBlock:v6];
}

void __49__QLDownloadingItemViewController_startDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4[160] fetcher];
  v6 = [v5 itemSize];
  LODWORD(a2) = [v4 shouldAutoDownloadInNetworkState:a2 downloadSize:v6 forceIfPossible:*(a1 + 40)];

  if (a2)
  {
    v7 = *(a1 + 32);
    if ((*(v7 + 1200) & 1) == 0 && *(v7 + 1202) == 1)
    {
      v8 = *(a1 + 32);
      QLRunInMainThread();
    }
  }
}

- (void)startDownloadIfNeeded
{
  v3 = [(QLDownloadingItemViewController *)self downloadingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(QLDownloadingItemViewController *)self downloadingDelegate];
    v6 = [v5 downloadingItemViewControllerShouldForceAutodownloadFile:self];
  }

  else
  {
    v6 = 0;
  }

  [(QLDownloadingItemViewController *)self startDownload:v6];
}

- (void)_presentConnectivityAlert
{
  v3 = [(QLItemViewController *)self delegate];
  [v3 previewItemViewControllerWantsToShowNoInternetConnectivityAlert:self];
}

- (void)_startDownloadOperation
{
  v3 = objc_opt_new();
  [(QLItem *)self->_previewItem transformerClass];
  v4 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    [v3 addObject:objc_opt_class()];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 addObject:objc_opt_class()];
  }

  objc_initWeak(&location, self);
  v5 = [(QLItem *)self->_previewItem fetcher];
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke;
  v9[3] = &unk_278B58F78;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_3;
  v7[3] = &unk_278B58FC8;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v5 fetchContentWithAllowedOutputClasses:v3 inQueue:v6 updateBlock:v9 completionBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  QLRunInMainThread();

  objc_destroyWeak(&v5);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) floatValue];
  [WeakRetained _updateFileSizeWithProgress:1 animated:v2];
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = *(a1 + 32);
  objc_copyWeak(&v10, (a1 + 40));
  QLRunInMainThread();
  objc_destroyWeak(&v10);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_4(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) || *(a1 + 40))
  {
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v22 = 138412290;
      v23 = v4;
      _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_ERROR, "Error during downloading operation: %@ #Downloading", &v22, 0xCu);
    }

    v5 = [*(a1 + 40) domain];
    v6 = *MEMORY[0x277CCA050];
    if ([v5 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v7 = [*(a1 + 40) code] == 3072;
    }

    else
    {
      v7 = 0;
    }

    v8 = [*(a1 + 40) userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x277CCA7E8]];

    v10 = [v9 domain];
    if ([v10 isEqualToString:v6])
    {
      v11 = [v9 code];

      if (v7)
      {
LABEL_15:
        [*(a1 + 48) _setDownloading:0 animated:1];
LABEL_17:

        v12 = *MEMORY[0x277D85DE8];
        return;
      }

      if (v11 == 4355)
      {
        [*(a1 + 48) _presentConnectivityAlert];
        goto LABEL_15;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_15;
      }
    }

    [*(a1 + 48) notifyDelegatesDidFailWithError:*(a1 + 40)];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setDownloaded:1];

  v14 = objc_loadWeakRetained((a1 + 56));
  v15 = [v14 downloadingDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained((a1 + 56));
    v18 = [v17 downloadingDelegate];
    v19 = objc_loadWeakRetained((a1 + 56));
    [v18 downloadingItemViewControllerDidFinishLoadingPreviewItem:v19 withContents:*(a1 + 32)];
  }

  v20 = *(a1 + 48);
  v21 = *MEMORY[0x277D85DE8];

  [v20 _setDownloading:0 animated:1];
}

- (QLDownloadingItemViewControllerDelegate)downloadingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadingDelegate);

  return WeakRetained;
}

@end