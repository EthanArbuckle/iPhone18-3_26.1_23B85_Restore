@interface QLImageAnalysisManager
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point;
- (BOOL)addInteractionIfNeeded;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point;
- (BOOL)hasActiveTextSelection;
- (BOOL)hasAnalysis;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point;
- (BOOL)isImageSubjectHighlightingEnabled;
- (BOOL)isInteractionActive;
- (BOOL)isTextSelectionEnabled;
- (BOOL)isVisualIntelligenceV2Active;
- (BOOL)isVisualSearchEnabled;
- (BOOL)shouldDisplayInfoButton;
- (BOOL)textExistsAtPoint:(CGPoint)point;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)point;
- (QLImageAnalysisManager)initWithDelegate:(id)delegate presentingView:(id)view;
- (QLImageAnalysisManagerDelegate)delegate;
- (QLToolbarButton)imageAnalysisToolbarButton;
- (UIView)visualIntelligenceBarContainerView;
- (VKCImageAnalyzer)imageAnalyzer;
- (id)image;
- (id)imageAnalysisQueue;
- (id)infoButtonGlyphName;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction;
- (void)_activateInteractionTypes:(unint64_t)types;
- (void)_handleImageAnalysis:(id)analysis error:(id)error;
- (void)_setupImageAnalysis;
- (void)_setupNotificationsObservation;
- (void)_startImageAnalysisWithRequest:(id)request;
- (void)activateVisualSearchInteraction;
- (void)adjustImageInteractionForScrollView:(id)view;
- (void)cancelAllRequests;
- (void)dealloc;
- (void)enableMarkupMode:(BOOL)mode;
- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion;
- (void)imageAnalysisPopoverDidDisappear;
- (void)imageAnalysisPopoverWillAppear;
- (void)infoButtonTapped;
- (void)startImageAnalysis;
- (void)stopImageAnalysis;
@end

@implementation QLImageAnalysisManager

- (QLImageAnalysisManager)initWithDelegate:(id)delegate presentingView:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = QLImageAnalysisManager;
  v8 = [(QLImageAnalysisManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(QLImageAnalysisManager *)v8 setDelegate:delegateCopy];
    objc_storeWeak(&v9->_presentingView, viewCopy);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
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

  _defaultInteractionTypes = [(QLImageAnalysisManager *)self _defaultInteractionTypes];
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  [imageInteraction setActiveInteractionTypes:_defaultInteractionTypes];

  imageInteraction2 = [(QLImageAnalysisManager *)self imageInteraction];
  [imageInteraction2 setDelegate:self];

  imageInteraction3 = [(QLImageAnalysisManager *)self imageInteraction];
  [imageInteraction3 setAutomaticallyShowVisualSearchResults:1];

  delegate = [(QLImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];
  imageInteraction4 = [(QLImageAnalysisManager *)self imageInteraction];
  [imageAnalysisView addInteraction:imageInteraction4];

  [(QLImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
}

- (void)_setupNotificationsObservation
{
  gotLoadHelper_x8__DDDetectionControllerWillPresentActionNotification(v2);
  v11 = **(v4 + 792);
  if (v11)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_dataDetectorDetectionControllerWillPresentAction_ name:v11 object:0];
  }

  Helper_x8__DDDetectionControllerDidDismissActionNotification = gotLoadHelper_x8__DDDetectionControllerDidDismissActionNotification(v5);
  v9 = **(v8 + 784);
  if (v9)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_dataDetectorDetectionControllerDidDismissAction_ name:v9 object:0];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = QLImageAnalysisManager;
  [(QLImageAnalysisManager *)&v4 dealloc];
}

- (id)image
{
  delegate = [(QLImageAnalysisManager *)self delegate];
  imageForAnalysis = [delegate imageForAnalysis];

  return imageForAnalysis;
}

- (VKCImageAnalyzer)imageAnalyzer
{
  imageAnalyzer = self->_imageAnalyzer;
  if (!imageAnalyzer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D78518]);
    [(QLImageAnalysisManager *)self setImageAnalyzer:v4];

    imageAnalysisQueue = [(QLImageAnalysisManager *)self imageAnalysisQueue];
    imageAnalyzer = [(QLImageAnalysisManager *)self imageAnalyzer];
    [imageAnalyzer setCallbackQueue:imageAnalysisQueue];

    imageAnalyzer = self->_imageAnalyzer;
  }

  return imageAnalyzer;
}

- (void)_activateInteractionTypes:(unint64_t)types
{
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  [imageInteraction setActiveInteractionTypes:types];

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
  image = [(QLImageAnalysisManager *)self image];
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (image)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = image;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "Creating image analysis request for image: %@ #ImageAnalysis", &v17, 0xCu);
    }

    delegate = [(QLImageAnalysisManager *)self delegate];
    shouldDetectMachineReadableCode = [delegate shouldDetectMachineReadableCode];

    if (shouldDetectMachineReadableCode)
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

    v9 = [objc_alloc(MEMORY[0x277D78520]) initWithImage:image requestType:v8];
    delegate2 = [(QLImageAnalysisManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(QLImageAnalysisManager *)self delegate];
      clientPreviewOptions = [delegate3 clientPreviewOptions];

      v14 = [clientPreviewOptions objectForKeyedSubscript:@"imageURL"];
      [v9 setImageURL:v14];

      v15 = [clientPreviewOptions objectForKeyedSubscript:@"pageURL"];
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

- (void)_startImageAnalysisWithRequest:(id)request
{
  requestCopy = request;
  [(QLImageAnalysisManager *)self cancelAllRequests];
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  [imageInteraction setAnalysis:0];

  objc_initWeak(&location, self);
  imageAnalysisQueue = [(QLImageAnalysisManager *)self imageAnalysisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__QLImageAnalysisManager__startImageAnalysisWithRequest___block_invoke;
  block[3] = &unk_278B578F0;
  objc_copyWeak(&v10, &location);
  v7 = requestCopy;
  v9 = v7;
  dispatch_async(imageAnalysisQueue, block);

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

- (void)_handleImageAnalysis:(id)analysis error:(id)error
{
  analysisCopy = analysis;
  errorCopy = error;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v9 = imageInteraction;
  if (!analysisCopy || errorCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = analysisCopy;
  }

  [imageInteraction setAnalysis:v10];

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
    imageInteraction2 = [(QLImageAnalysisManager *)self imageInteraction];
    [imageInteraction2 setSubjectHighlightActive:1];
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
  delegate = [(QLImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  [imageAnalysisView removeInteraction:imageInteraction];
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

  imageAnalyzer = [(QLImageAnalysisManager *)self imageAnalyzer];
  [imageAnalyzer cancelAllRequests];
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
  infoButtonGlyphName = [(QLImageAnalysisManager *)self infoButtonGlyphName];
  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setSymbolImageName:infoButtonGlyphName];

  [(QLToolbarButton *)self->_imageAnalysisToolbarButton setUseInternalSymbolImage:1];
  v7 = self->_imageAnalysisToolbarButton;

  return v7;
}

- (BOOL)hasAnalysis
{
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  analysis = [imageInteraction analysis];
  v4 = analysis != 0;

  return v4;
}

- (BOOL)addInteractionIfNeeded
{
  delegate = [(QLImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    if (imageInteraction && ([imageAnalysisView interactions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", imageInteraction), v6, (v7 & 1) == 0))
    {
      [imageAnalysisView addInteraction:imageInteraction];
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

- (void)enableMarkupMode:(BOOL)mode
{
  modeCopy = mode;
  delegate = [(QLImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    v7 = imageInteraction;
    if (modeCopy || !imageInteraction)
    {
      if (modeCopy)
      {
        interactions = [imageAnalysisView interactions];
        v9 = [interactions containsObject:v7];

        if (v9)
        {
          if (([v7 activeInteractionTypes] & 4) != 0)
          {
            [(QLImageAnalysisManager *)self _activateInteractionTypes:[(QLImageAnalysisManager *)self _defaultInteractionTypes]];
          }

          [(QLImageAnalysisManager *)self cancelAllRequests];
          [v7 setAnalysis:0];
          [imageAnalysisView removeInteraction:v7];
        }
      }
    }

    else
    {
      [imageAnalysisView addInteraction:imageInteraction];
    }
  }
}

- (BOOL)isInteractionActive
{
  delegate = [(QLImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    if (imageInteraction)
    {
      interactions = [imageAnalysisView interactions];
      v7 = [interactions containsObject:imageInteraction];
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
    LOBYTE(isInteractionActive) = 1;
  }

  else
  {
    isInteractionActive = [(QLImageAnalysisManager *)self isInteractionActive];
    if (isInteractionActive)
    {

      LOBYTE(isInteractionActive) = [(QLImageAnalysisManager *)self hasResultsForVisualSearch];
    }
  }

  return isInteractionActive;
}

- (BOOL)hasResultsForVisualSearch
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled]&& ([(QLImageAnalysisManager *)self imageInteraction], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    isVisualIntelligenceSheetVisible = [imageInteraction isVisualIntelligenceSheetVisible];
  }

  else
  {
    imageInteraction2 = [(QLImageAnalysisManager *)self imageInteraction];
    imageInteraction = [imageInteraction2 analysis];

    if (!imageInteraction)
    {
      v8 = 0;
      goto LABEL_8;
    }

    isVisualIntelligenceSheetVisible = [imageInteraction hasResultsForAnalysisTypes:16];
  }

  v8 = isVisualIntelligenceSheetVisible;
LABEL_8:

  return v8;
}

- (BOOL)isVisualSearchEnabled
{
  isVisualIntelligenceV2Enabled = [(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled];
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  activeInteractionTypes = [imageInteraction activeInteractionTypes];

  v6 = 4;
  if (isVisualIntelligenceV2Enabled)
  {
    v6 = 16;
  }

  return (activeInteractionTypes & v6) != 0;
}

- (id)infoButtonGlyphName
{
  isVisualIntelligenceV2Enabled = [(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled];
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v5 = imageInteraction;
  if (!isVisualIntelligenceV2Enabled)
  {
    visualSearchResultItems = [imageInteraction visualSearchResultItems];
    v11 = [visualSearchResultItems count];

    if (!v11)
    {
      infoButtonGlyphName2 = @"info.circle.and.sparkles";
      filledInfoButtonGlyphName2 = @"info.circle.and.sparkles.fill";
LABEL_16:
      if ([(QLImageAnalysisManager *)self isVisualSearchEnabled])
      {
        v18 = filledInfoButtonGlyphName2;
      }

      else
      {
        v18 = infoButtonGlyphName2;
      }

      infoButtonGlyphName3 = v18;
      goto LABEL_20;
    }

    imageInteraction2 = [(QLImageAnalysisManager *)self imageInteraction];
    visualSearchResultItems2 = [imageInteraction2 visualSearchResultItems];
    firstObject = [visualSearchResultItems2 firstObject];

    if (firstObject)
    {
      infoButtonGlyphName = [firstObject infoButtonGlyphName];

      if (infoButtonGlyphName)
      {
        infoButtonGlyphName2 = [firstObject infoButtonGlyphName];
      }

      else
      {
        infoButtonGlyphName2 = @"info.circle.and.sparkles";
      }

      filledInfoButtonGlyphName = [firstObject filledInfoButtonGlyphName];

      if (filledInfoButtonGlyphName)
      {
        filledInfoButtonGlyphName2 = [firstObject filledInfoButtonGlyphName];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      infoButtonGlyphName2 = @"info.circle.and.sparkles";
    }

    filledInfoButtonGlyphName2 = @"info.circle.and.sparkles.fill";
    goto LABEL_15;
  }

  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_21;
  }

  infoButtonGlyphName2 = [(QLImageAnalysisManager *)self imageInteraction];
  filledInfoButtonGlyphName2 = [(__CFString *)infoButtonGlyphName2 visualIntelligenceResultItem];
  infoButtonGlyphName3 = [(__CFString *)filledInfoButtonGlyphName2 infoButtonGlyphName];
LABEL_20:
  v16 = infoButtonGlyphName3;

LABEL_21:

  return v16;
}

- (BOOL)isTextSelectionEnabled
{
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = imageInteraction;
  if (imageInteraction && ([imageInteraction activeInteractionTypes] & 1) != 0)
  {
    highlightSelectableItems = [v3 highlightSelectableItems];
  }

  else
  {
    highlightSelectableItems = 0;
  }

  return highlightSelectableItems;
}

- (BOOL)isImageSubjectHighlightingEnabled
{
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = imageInteraction;
  if (imageInteraction)
  {
    v4 = ([imageInteraction activeInteractionTypes] >> 3) & 1;
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
    _defaultInteractionTypes = [(QLImageAnalysisManager *)self _defaultInteractionTypes];

    [(QLImageAnalysisManager *)self _activateInteractionTypes:_defaultInteractionTypes];
  }
}

- (void)activateVisualSearchInteraction
{
  if ([(QLImageAnalysisManager *)self isVisualIntelligenceV2Enabled])
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    if (objc_opt_respondsToSelector())
    {
      if ([imageInteraction isVisualIntelligenceSheetVisible])
      {
        imageInteraction2 = [(QLImageAnalysisManager *)self imageInteraction];
        [imageInteraction2 dismissVisualIntelligenceSheetIfNecessary];

        _defaultInteractionTypes = [(QLImageAnalysisManager *)self _defaultInteractionTypes];
        imageInteraction3 = [(QLImageAnalysisManager *)self imageInteraction];
        [imageInteraction3 setActiveInteractionTypes:_defaultInteractionTypes];
      }

      else
      {
        [imageInteraction setActiveInteractionTypes:16];
        [imageInteraction presentVisualIntelligenceSheet];
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
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v3 = ([imageInteraction activeInteractionTypes] >> 4) & 1;

  return v3;
}

- (UIView)visualIntelligenceBarContainerView
{
  if (self->_isVisualIntelligenceV2Enabled && ([(QLImageAnalysisManager *)self imageInteraction], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
    omnibarContainerView = [imageInteraction omnibarContainerView];
  }

  else
  {
    omnibarContainerView = 0;
  }

  return omnibarContainerView;
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction dataDetectorExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)textExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction textExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction imageSubjectExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction visualSearchExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction actionInfoItemExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)hasActiveTextSelection
{
  imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
  hasActiveTextSelection = [imageInteraction hasActiveTextSelection];

  return hasActiveTextSelection;
}

- (void)adjustImageInteractionForScrollView:(id)view
{
  viewCopy = view;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    delegate = [(QLImageAnalysisManager *)self delegate];
    imageAnalysisView = [delegate imageAnalysisView];

    if (viewCopy && imageAnalysisView)
    {
      [viewCopy bounds];
      [viewCopy convertRect:imageAnalysisView toView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [imageAnalysisView bounds];
      v15 = v7 / v14;
      [imageAnalysisView bounds];
      v17 = v9 / v16;
      [imageAnalysisView bounds];
      v19 = v11 / v18;
      [imageAnalysisView bounds];
      v21 = v13 / v20;
      imageInteraction = [(QLImageAnalysisManager *)self imageInteraction];
      [imageInteraction scrollViewDidZoomToUnitRect:{v15, v17, v19, v21}];
    }
  }
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  v8 = [interactionCopy textExistsAtPoint:{x, y}];
  v9 = [interactionCopy imageSubjectExistsAtPoint:{x, y}];
  v10 = [interactionCopy dataDetectorExistsAtPoint:{x, y}];
  v11 = [interactionCopy visualSearchExistsAtPoint:{x, y}];
  hasActiveTextSelection = 1;
  if ((v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0)
  {
    hasActiveTextSelection = [interactionCopy hasActiveTextSelection];
  }

  return hasActiveTextSelection;
}

- (void)imageAnalysisPopoverWillAppear
{
  self->_isImageAnalysisPopoverPresented = 1;
  delegate = [(QLImageAnalysisManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(QLImageAnalysisManager *)self delegate];
    [delegate2 imageAnalysisInteractionWillPresentVisualSearchController];
  }
}

- (void)imageAnalysisPopoverDidDisappear
{
  self->_isImageAnalysisPopoverPresented = 0;
  delegate = [(QLImageAnalysisManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(QLImageAnalysisManager *)self delegate];
    [delegate2 imageAnalysisInteractionDidDismissVisualSearchController];
  }
}

- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion
{
  competionCopy = competion;
  v7 = NSStringFromSelector(action);
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"_define:", @"_translate:", @"_share:", @"_addShortcut:", 0}];
  if ([v8 containsObject:v7])
  {
    [(QLImageAnalysisManager *)self imageAnalysisPopoverWillAppear];
  }

  competionCopy[2]();
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(QLImageAnalysisManager *)self delegate];
  v6 = [delegate presentingViewControllerForImageAnalysisInteraction:interactionCopy];

  return v6;
}

- (QLImageAnalysisManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end