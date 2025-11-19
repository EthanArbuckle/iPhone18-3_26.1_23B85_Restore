@interface QLImageAnalysisManager
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3;
- (BOOL)addInteractionIfNeeded;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3;
- (BOOL)hasActiveTextSelection;
- (BOOL)hasAnalysis;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3;
- (BOOL)isImageSubjectHighlightingEnabled;
- (BOOL)isInteractionActive;
- (BOOL)isTextSelectionEnabled;
- (BOOL)isVisualIntelligenceV2Active;
- (BOOL)isVisualSearchEnabled;
- (BOOL)shouldDisplayInfoButton;
- (BOOL)textExistsAtPoint:(CGPoint)a3;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3;
- (QLImageAnalysisManager)initWithDelegate:(id)a3 presentingView:(id)a4;
- (QLImageAnalysisManagerDelegate)delegate;
- (QLToolbarButton)imageAnalysisToolbarButton;
- (UIView)visualIntelligenceBarContainerView;
- (VKCImageAnalyzer)imageAnalyzer;
- (id)image;
- (id)imageAnalysisQueue;
- (id)infoButtonGlyphName;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (void)_activateInteractionTypes:(unint64_t)a3;
- (void)_handleImageAnalysis:(id)a3 error:(id)a4;
- (void)_setupImageAnalysis;
- (void)_setupNotificationsObservation;
- (void)_startImageAnalysisWithRequest:(id)a3;
- (void)activateVisualSearchInteraction;
- (void)adjustImageInteractionForScrollView:(id)a3;
- (void)cancelAllRequests;
- (void)dealloc;
- (void)enableMarkupMode:(BOOL)a3;
- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5;
- (void)imageAnalysisPopoverDidDisappear;
- (void)imageAnalysisPopoverWillAppear;
- (void)infoButtonTapped;
- (void)startImageAnalysis;
- (void)stopImageAnalysis;
@end

@implementation QLImageAnalysisManager

- (QLImageAnalysisManager)initWithDelegate:(id)a3 presentingView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = QLImageAnalysisManager;
  v8 = [(QLImageAnalysisManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(QLImageAnalysisManager *)v8 setDelegate:v6];
    objc_storeWeak(&v9->_presentingView, v7);
  }

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = _os_feature_enabled_impl();
    v12 = (([MEMORY[0x277D78518] supportedAnalysisTypes] & 0x40) != 0) & v13;
  }

  v9->_isVisualIntelligenceV2Enabled = v12;
  [(QLImageAnalysisManager *)v9 _setupImageAnalysis];
  [(QLImageAnalysisManager *)v9 _setupNotificationsObservation];
  [(QLImageAnalysisManager *)v9 startImageAnalysis];

  return v9;
}

- (void)_setupImageAnalysis
{
  v3 = objc_alloc_init(MEMORY[0x277D78510]);
  [(QLImageAnalysisManager *)self setImageInteraction:v3];

  v4 = [(QLImageAnalysisManager *)self _defaultInteractionTypes];
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  [v5 setActiveInteractionTypes:v4];

  v6 = [(QLImageAnalysisManager *)self imageInteraction];
  [v6 setDelegate:self];

  v7 = [(QLImageAnalysisManager *)self imageInteraction];
  [v7 setAutomaticallyShowVisualSearchResults:1];

  v8 = [(QLImageAnalysisManager *)self delegate];
  v9 = [v8 imageAnalysisView];
  v10 = [(QLImageAnalysisManager *)self imageInteraction];
  [v9 addInteraction:v10];

  [(QLImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
}

- (void)_setupNotificationsObservation
{
  gotLoadHelper_x8__DDDetectionControllerWillPresentActionNotification(v2);
  v11 = **(v4 + 792);
  if (v11)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_dataDetectorDetectionControllerWillPresentAction_ name:v11 object:0];
  }

  Helper_x8__DDDetectionControllerDidDismissActionNotification = gotLoadHelper_x8__DDDetectionControllerDidDismissActionNotification(v5);
  v9 = **(v8 + 784);
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_dataDetectorDetectionControllerDidDismissAction_ name:v9 object:0];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = QLImageAnalysisManager;
  [(QLImageAnalysisManager *)&v4 dealloc];
}

- (id)image
{
  v2 = [(QLImageAnalysisManager *)self delegate];
  v3 = [v2 imageForAnalysis];

  return v3;
}

- (VKCImageAnalyzer)imageAnalyzer
{
  imageAnalyzer = self->_imageAnalyzer;
  if (!imageAnalyzer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D78518]);
    [(QLImageAnalysisManager *)self setImageAnalyzer:v4];

    v5 = [(QLImageAnalysisManager *)self imageAnalysisQueue];
    v6 = [(QLImageAnalysisManager *)self imageAnalyzer];
    [v6 setCallbackQueue:v5];

    imageAnalyzer = self->_imageAnalyzer;
  }

  return imageAnalyzer;
}

- (void)_activateInteractionTypes:(unint64_t)a3
{
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  [v5 setActiveInteractionTypes:a3];

  [(QLImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];

  [(QLImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
}

- (id)imageAnalysisQueue
{
  if (imageAnalysisQueue_once != -1)
  {
    [QLImageAnalysisManager imageAnalysisQueue];
  }

  v3 = imageAnalysisQueue_imageAnalysisQueue;

  return v3;
}

void __44__QLImageAnalysisManager_imageAnalysisQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.quicklook.image-analysis", attr);
  v2 = imageAnalysisQueue_imageAnalysisQueue;
  imageAnalysisQueue_imageAnalysisQueue = v1;
}

- (void)startImageAnalysis
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(QLImageAnalysisManager *)self image];
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (v3)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "Creating image analysis request for image: %@ #ImageAnalysis", &v17, 0xCu);
    }

    v6 = [(QLImageAnalysisManager *)self delegate];
    v7 = [v6 shouldDetectMachineReadableCode];

    if (v7)
    {
      v8 = -65;
    }

    else
    {
      v8 = -77;
    }

    if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled])
    {
      v8 |= 0x40uLL;
    }

    v9 = [objc_alloc(MEMORY[0x277D78520]) initWithImage:v3 requestType:v8];
    v10 = [(QLImageAnalysisManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(QLImageAnalysisManager *)self delegate];
      v13 = [v12 clientPreviewOptions];

      v14 = [v13 objectForKeyedSubscript:@"imageURL"];
      [v9 setImageURL:v14];

      v15 = [v13 objectForKeyedSubscript:@"pageURL"];
      [v9 setPageURL:v15];
    }

    [(QLImageAnalysisManager *)self _startImageAnalysisWithRequest:v9];
  }

  else
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Could not create image analysis request because image is nil #ImageAnalysis", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startImageAnalysisWithRequest:(id)a3
{
  v4 = a3;
  [(QLImageAnalysisManager *)self cancelAllRequests];
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  [v5 setAnalysis:0];

  objc_initWeak(&location, self);
  v6 = [(QLImageAnalysisManager *)self imageAnalysisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke;
  block[3] = &unk_278B578F0;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  dispatch_async(v6, block);

  [(QLImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Processing image analysis request: %@ #ImageAnalysis", buf, 0xCu);
    }

    v6 = [WeakRetained imageAnalyzer];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_170;
    v9[3] = &unk_278B58728;
    objc_copyWeak(&v10, (a1 + 40));
    [WeakRetained setImageAnalysisRequestId:{objc_msgSend(v6, "processRequest:progressHandler:completionHandler:", v7, 0, v9)}];

    objc_destroyWeak(&v10);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == -2 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"com.apple.VisionKit.ImageAnalyzer"), v8, v9))
    {
      v10 = MEMORY[0x277D43EF8];
      v11 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v7;
        v12 = "Image analysis cancelled: %@ #ImageAnalysis";
        v13 = v11;
        v14 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&dword_23A714000, v13, v14, v12, buf, 0xCu);
      }
    }

    else
    {
      v15 = MEMORY[0x277D43EF8];
      v16 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v16 = *v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v7;
        v12 = "Image analysis failed with error %@ #ImageAnalysis";
        v13 = v16;
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImageAnalysisRequestId:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_174;
  block[3] = &unk_278B56CE8;
  objc_copyWeak(&v24, (a1 + 32));
  v22 = v5;
  v23 = v7;
  v18 = v7;
  v19 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v24);
  v20 = *MEMORY[0x277D85DE8];
}

void __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleImageAnalysis:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_handleImageAnalysis:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(QLImageAnalysisManager *)self imageInteraction];
  v9 = v8;
  if (!v6 || v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  [v8 setAnalysis:v10];

  [(QLImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
  [(QLImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  if (self->_shouldEnterVisualSearchAfterNextAnalysis)
  {
    self->_shouldEnterVisualSearchAfterNextAnalysis = 0;
    [(QLImageAnalysisManager *)self activateVisualSearchInteraction];
  }

  else if (self->_shouldHighlightTextAndDDAfterNextAnalysis)
  {
    self->_shouldHighlightTextAndDDAfterNextAnalysis = 0;
    v11 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__QLImageAnalysisManager__handleImageAnalysis_error___block_invoke;
    block[3] = &unk_278B57190;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else if (self->_shouldUpliftSubjectAfterNextAnalysis)
  {
    self->_shouldUpliftSubjectAfterNextAnalysis = 0;
    v12 = [(QLImageAnalysisManager *)self imageInteraction];
    [v12 setSubjectHighlightActive:1];
  }
}

void __53__QLImageAnalysisManager__handleImageAnalysis_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageInteraction];
  [v1 setHighlightSelectableItems:1];
}

- (void)stopImageAnalysis
{
  [(QLImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  [(QLImageAnalysisManager *)self cancelAllRequests];
  v5 = [(QLImageAnalysisManager *)self delegate];
  v3 = [v5 imageAnalysisView];
  v4 = [(QLImageAnalysisManager *)self imageInteraction];
  [v3 removeInteraction:v4];
}

- (void)cancelAllRequests
{
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Cancel all image analysis requests #ImageAnalysis", v6, 2u);
  }

  v5 = [(QLImageAnalysisManager *)self imageAnalyzer];
  [v5 cancelAllRequests];
}

- (QLToolbarButton)imageAnalysisToolbarButton
{
  v3 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLVisualSearchButton"];
  imageAnalysisToolbarButton = self->_imageAnalysisToolbarButton;
  self->_imageAnalysisToolbarButton = v3;

  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setPlacement:v5];
  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setAccessibilityIdentifier:@"QLOverlayImageAnalysisButtonAccessibilityIdentifier"];
  v6 = [(QLImageAnalysisManager *)self infoButtonGlyphName];
  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setSymbolImageName:v6];

  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setUseInternalSymbolImage:1];
  v7 = self->_imageAnalysisToolbarButton;

  return v7;
}

- (BOOL)hasAnalysis
{
  v2 = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = [v2 analysis];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)addInteractionIfNeeded
{
  v3 = [(QLImageAnalysisManager *)self delegate];
  v4 = [v3 imageAnalysisView];

  if (v4)
  {
    v5 = [(QLImageAnalysisManager *)self imageInteraction];
    if (v5 && ([v4 interactions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, (v7 & 1) == 0))
    {
      [v4 addInteraction:v5];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enableMarkupMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(QLImageAnalysisManager *)self delegate];
  v10 = [v5 imageAnalysisView];

  if (v10)
  {
    v6 = [(QLImageAnalysisManager *)self imageInteraction];
    v7 = v6;
    if (v3 || !v6)
    {
      if (v3)
      {
        v8 = [v10 interactions];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          if (([v7 activeInteractionTypes] & 4) != 0)
          {
            [(QLImageAnalysisManager *)self _activateInteractionTypes:[(QLImageAnalysisManager *)self _defaultInteractionTypes]];
          }

          [(QLImageAnalysisManager *)self cancelAllRequests];
          [v7 setAnalysis:0];
          [v10 removeInteraction:v7];
        }
      }
    }

    else
    {
      [v10 addInteraction:v6];
    }
  }
}

- (BOOL)isInteractionActive
{
  v3 = [(QLImageAnalysisManager *)self delegate];
  v4 = [v3 imageAnalysisView];

  if (v4)
  {
    v5 = [(QLImageAnalysisManager *)self imageInteraction];
    if (v5)
    {
      v6 = [v4 interactions];
      v7 = [v6 containsObject:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldDisplayInfoButton
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(QLImageAnalysisManager *)self isInteractionActive];
    if (v3)
    {

      LOBYTE(v3) = [(QLImageAnalysisManager *)self hasResultsForVisualSearch];
    }
  }

  return v3;
}

- (BOOL)hasResultsForVisualSearch
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled]&& ([(QLImageAnalysisManager *)self imageInteraction], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = [(QLImageAnalysisManager *)self imageInteraction];
    v6 = [v5 isVisualIntelligenceSheetVisible];
  }

  else
  {
    v7 = [(QLImageAnalysisManager *)self imageInteraction];
    v5 = [v7 analysis];

    if (!v5)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [v5 hasResultsForAnalysisTypes:16];
  }

  v8 = v6;
LABEL_8:

  return v8;
}

- (BOOL)isVisualSearchEnabled
{
  v3 = [(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled];
  v4 = [(QLImageAnalysisManager *)self imageInteraction];
  v5 = [v4 activeInteractionTypes];

  v6 = 4;
  if (v3)
  {
    v6 = 16;
  }

  return (v5 & v6) != 0;
}

- (id)infoButtonGlyphName
{
  v3 = [(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled];
  v4 = [(QLImageAnalysisManager *)self imageInteraction];
  v5 = v4;
  if (!v3)
  {
    v10 = [v4 visualSearchResultItems];
    v11 = [v10 count];

    if (!v11)
    {
      v7 = @"info.circle.and.sparkles";
      v8 = @"info.circle.and.sparkles.fill";
LABEL_16:
      if ([(QLImageAnalysisManager *)self isVisualSearchEnabled])
      {
        v18 = v8;
      }

      else
      {
        v18 = v7;
      }

      v9 = v18;
      goto LABEL_20;
    }

    v12 = [(QLImageAnalysisManager *)self imageInteraction];
    v13 = [v12 visualSearchResultItems];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [v14 infoButtonGlyphName];

      if (v15)
      {
        v7 = [v14 infoButtonGlyphName];
      }

      else
      {
        v7 = @"info.circle.and.sparkles";
      }

      v17 = [v14 filledInfoButtonGlyphName];

      if (v17)
      {
        v8 = [v14 filledInfoButtonGlyphName];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v7 = @"info.circle.and.sparkles";
    }

    v8 = @"info.circle.and.sparkles.fill";
    goto LABEL_15;
  }

  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v7 = [(QLImageAnalysisManager *)self imageInteraction];
  v8 = [(__CFString *)v7 visualIntelligenceResultItem];
  v9 = [(__CFString *)v8 infoButtonGlyphName];
LABEL_20:
  v16 = v9;

LABEL_21:

  return v16;
}

- (BOOL)isTextSelectionEnabled
{
  v2 = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = v2;
  if (v2 && ([v2 activeInteractionTypes] & 1) != 0)
  {
    v4 = [v3 highlightSelectableItems];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isImageSubjectHighlightingEnabled
{
  v2 = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = v2;
  if (v2)
  {
    v4 = ([v2 activeInteractionTypes] >> 3) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)infoButtonTapped
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled]|| ![(QLImageAnalysisManager *)self isVisualSearchEnabled])
  {

    [(QLImageAnalysisManager *)self activateVisualSearchInteraction];
  }

  else
  {
    v3 = [(QLImageAnalysisManager *)self _defaultInteractionTypes];

    [(QLImageAnalysisManager *)self _activateInteractionTypes:v3];
  }
}

- (void)activateVisualSearchInteraction
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled])
  {
    v6 = [(QLImageAnalysisManager *)self imageInteraction];
    if (objc_opt_respondsToSelector())
    {
      if ([v6 isVisualIntelligenceSheetVisible])
      {
        v3 = [(QLImageAnalysisManager *)self imageInteraction];
        [v3 dismissVisualIntelligenceSheetIfNecessary];

        v4 = [(QLImageAnalysisManager *)self _defaultInteractionTypes];
        v5 = [(QLImageAnalysisManager *)self imageInteraction];
        [v5 setActiveInteractionTypes:v4];
      }

      else
      {
        [v6 setActiveInteractionTypes:16];
        [v6 presentVisualIntelligenceSheet];
      }
    }
  }

  else
  {

    [(QLImageAnalysisManager *)self _activateInteractionTypes:4];
  }
}

- (BOOL)isVisualIntelligenceV2Active
{
  v2 = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = ([v2 activeInteractionTypes] >> 4) & 1;

  return v3;
}

- (UIView)visualIntelligenceBarContainerView
{
  if (self->_isVisualIntelligenceV2Enabled && ([(QLImageAnalysisManager *)self imageInteraction], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = [(QLImageAnalysisManager *)self imageInteraction];
    v6 = [v5 omnibarContainerView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [v5 dataDetectorExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)textExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [v5 textExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [v5 imageSubjectExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [v5 visualSearchExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [v5 actionInfoItemExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)hasActiveTextSelection
{
  v2 = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = [v2 hasActiveTextSelection];

  return v3;
}

- (void)adjustImageInteractionForScrollView:(id)a3
{
  v23 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [(QLImageAnalysisManager *)self delegate];
    v5 = [v4 imageAnalysisView];

    if (v23 && v5)
    {
      [v23 bounds];
      [v23 convertRect:v5 toView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 bounds];
      v15 = v7 / v14;
      [v5 bounds];
      v17 = v9 / v16;
      [v5 bounds];
      v19 = v11 / v18;
      [v5 bounds];
      v21 = v13 / v20;
      v22 = [(QLImageAnalysisManager *)self imageInteraction];
      [v22 scrollViewDidZoomToUnitRect:{v15, v17, v19, v21}];
    }
  }
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 textExistsAtPoint:{x, y}];
  v9 = [v7 imageSubjectExistsAtPoint:{x, y}];
  v10 = [v7 dataDetectorExistsAtPoint:{x, y}];
  v11 = [v7 visualSearchExistsAtPoint:{x, y}];
  v12 = 1;
  if ((v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = [v7 hasActiveTextSelection];
  }

  return v12;
}

- (void)imageAnalysisPopoverWillAppear
{
  self->_isImageAnalysisPopoverPresented = 1;
  v3 = [(QLImageAnalysisManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(QLImageAnalysisManager *)self delegate];
    [v5 imageAnalysisInteractionWillPresentVisualSearchController];
  }
}

- (void)imageAnalysisPopoverDidDisappear
{
  self->_isImageAnalysisPopoverPresented = 0;
  v3 = [(QLImageAnalysisManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(QLImageAnalysisManager *)self delegate];
    [v5 imageAnalysisInteractionDidDismissVisualSearchController];
  }
}

- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5
{
  v9 = a5;
  v7 = NSStringFromSelector(a4);
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"_define:", @"_translate:", @"_share:", @"_addShortcut:", 0}];
  if ([v8 containsObject:v7])
  {
    [(QLImageAnalysisManager *)self imageAnalysisPopoverWillAppear];
  }

  v9[2]();
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = [(QLImageAnalysisManager *)self delegate];
  v6 = [v5 presentingViewControllerForImageAnalysisInteraction:v4];

  return v6;
}

- (QLImageAnalysisManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end