@interface _PhotosMediaViewAnalysisController
- (BOOL)analysisInteractionHidden;
- (BOOL)hasResultsForAnalysisTypes:(unint64_t)types;
- (NSString)filledInfoButtonGlyphName;
- (NSString)infoButtonGlyphName;
- (PPKPhotosMediaViewImageAnalysisInteractionContextDelegate)delegate;
- (_PhotosMediaViewAnalysisController)initWithAssetView:(id)view interactionHostView:(id)hostView analysisOrientation:(int64_t)orientation;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction;
- (id)visualSearchResultItem;
- (unint64_t)_analysisRequestTypes;
- (void)_cancelActiveRequest;
- (void)_enumerateObservers:(id)observers;
- (void)_handleAnalysisResult:(id)result error:(id)error;
- (void)_handleImageResult:(CGImage *)result;
- (void)_performAnalysis;
- (void)_performAutomaticallyInvokedInteractionIfNeeded;
- (void)_removeAnalysisResult;
- (void)dealloc;
- (void)didActivateVisualIntelligenceButton;
- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis;
- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)controller;
- (void)setActionInfoViewHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setActiveInteractionTypes:(unint64_t)types;
- (void)setAnalysis:(id)analysis;
- (void)setAnalysisOrientation:(int64_t)orientation;
- (void)setAutomaticallyInvokedInteraction:(unint64_t)interaction;
- (void)setInteractionHostView:(id)view;
- (void)toggleInteractionTypes:(unint64_t)types;
@end

@implementation _PhotosMediaViewAnalysisController

- (_PhotosMediaViewAnalysisController)initWithAssetView:(id)view interactionHostView:(id)hostView analysisOrientation:(int64_t)orientation
{
  viewCopy = view;
  hostViewCopy = hostView;
  v26.receiver = self;
  v26.super_class = _PhotosMediaViewAnalysisController;
  v10 = [(_PhotosMediaViewAnalysisController *)&v26 init];
  if (v10)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v11 = getVKCImageAnalyzerClass_softClass;
    v35 = getVKCImageAnalyzerClass_softClass;
    if (!getVKCImageAnalyzerClass_softClass)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getVKCImageAnalyzerClass_block_invoke;
      v30 = &unk_1E845C110;
      v31 = &v32;
      __getVKCImageAnalyzerClass_block_invoke(&v27);
      v11 = v33[3];
    }

    v12 = v11;
    _Block_object_dispose(&v32, 8);
    v13 = objc_alloc_init(v11);
    analyzer = v10->_analyzer;
    v10->_analyzer = v13;

    objc_storeWeak(&v10->_assetView, viewCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v17 = getVKCImageAnalysisInteractionClass_softClass;
    v35 = getVKCImageAnalysisInteractionClass_softClass;
    if (!getVKCImageAnalysisInteractionClass_softClass)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getVKCImageAnalysisInteractionClass_block_invoke;
      v30 = &unk_1E845C110;
      v31 = &v32;
      __getVKCImageAnalysisInteractionClass_block_invoke(&v27);
      v17 = v33[3];
    }

    v18 = v17;
    _Block_object_dispose(&v32, 8);
    v19 = objc_alloc_init(v17);
    interaction = v10->_interaction;
    v10->_interaction = v19;

    [(VKCImageAnalysisInteraction *)v10->_interaction setDelegate:v10];
    [(VKCImageAnalysisInteraction *)v10->_interaction setWantsAutomaticContentsRectCalculation:0];
    [(VKCImageAnalysisInteraction *)v10->_interaction setActionInfoViewHidden:0];
    [(VKCImageAnalysisInteraction *)v10->_interaction setAutomaticallyShowVisualSearchResults:1];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v23 = 0;
    if (!userInterfaceIdiom)
    {
      v23 = _os_feature_enabled_impl();
    }

    v10->_isVisualIntelligenceV2Enabled = v23;
    [(VKCImageAnalysisInteraction *)v10->_interaction setActiveInteractionTypes:9];
    if (hostViewCopy)
    {
      v24 = hostViewCopy;
    }

    else
    {
      v24 = viewCopy;
    }

    [v24 addInteraction:v10->_interaction];
    v10->_analysisOrientation = orientation;
    [(_PhotosMediaViewAnalysisController *)v10 _performAnalysis];
  }

  return v10;
}

- (void)dealloc
{
  view = [(VKCImageAnalysisInteraction *)self->_interaction view];
  [view removeInteraction:self->_interaction];

  v4.receiver = self;
  v4.super_class = _PhotosMediaViewAnalysisController;
  [(_PhotosMediaViewAnalysisController *)&v4 dealloc];
}

- (void)setInteractionHostView:(id)view
{
  if (view)
  {
    interaction = self->_interaction;

    [view addInteraction:interaction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_assetView);
    [WeakRetained addInteraction:self->_interaction];
  }
}

- (void)setAnalysisOrientation:(int64_t)orientation
{
  if (self->_analysisOrientation != orientation)
  {
    self->_analysisOrientation = orientation;
    [(VKCImageAnalysisInteraction *)self->_interaction setHighlightSelectableItems:0];
    [(_PhotosMediaViewAnalysisController *)self _cancelActiveRequest];
    [(_PhotosMediaViewAnalysisController *)self _removeAnalysisResult];

    [(_PhotosMediaViewAnalysisController *)self _performAnalysis];
  }
}

- (BOOL)hasResultsForAnalysisTypes:(unint64_t)types
{
  analysis = [(_PhotosMediaViewAnalysisController *)self analysis];
  LOBYTE(types) = [analysis hasResultsForAnalysisTypes:types];

  return types;
}

- (void)setActionInfoViewHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(_PhotosMediaViewAnalysisController *)self isVisualIntelligenceV2Enabled]| hidden;
  interaction = self->_interaction;

  [(VKCImageAnalysisInteraction *)interaction setActionInfoViewHidden:v6 animated:animatedCopy];
}

- (id)visualSearchResultItem
{
  if ([(_PhotosMediaViewAnalysisController *)self isVisualIntelligenceV2Enabled])
  {
    if (objc_opt_respondsToSelector())
    {
      visualIntelligenceResultItem = [(VKCImageAnalysisInteraction *)self->_interaction visualIntelligenceResultItem];
    }

    else
    {
      visualIntelligenceResultItem = 0;
    }
  }

  else
  {
    visualSearchResultItems = [(VKCImageAnalysisInteraction *)self->_interaction visualSearchResultItems];
    visualIntelligenceResultItem = [visualSearchResultItems firstObject];
  }

  return visualIntelligenceResultItem;
}

- (NSString)infoButtonGlyphName
{
  visualSearchResultItem = [(_PhotosMediaViewAnalysisController *)self visualSearchResultItem];
  infoButtonGlyphName = [visualSearchResultItem infoButtonGlyphName];

  return infoButtonGlyphName;
}

- (NSString)filledInfoButtonGlyphName
{
  visualSearchResultItem = [(_PhotosMediaViewAnalysisController *)self visualSearchResultItem];
  filledInfoButtonGlyphName = [visualSearchResultItem filledInfoButtonGlyphName];

  return filledInfoButtonGlyphName;
}

- (BOOL)analysisInteractionHidden
{
  view = [(VKCImageAnalysisInteraction *)self->_interaction view];
  v3 = view == 0;

  return v3;
}

- (void)didActivateVisualIntelligenceButton
{
  v2 = self->_interaction;
  if (objc_opt_respondsToSelector())
  {
    if (([(VKCImageAnalysisInteraction *)v2 activeInteractionTypes]& 0x10) != 0)
    {
      [(VKCImageAnalysisInteraction *)v2 dismissVisualIntelligenceSheetIfNecessary];
      [(VKCImageAnalysisInteraction *)v2 setActiveInteractionTypes:9];
    }

    else
    {
      [(VKCImageAnalysisInteraction *)v2 setActiveInteractionTypes:16];
      [(VKCImageAnalysisInteraction *)v2 presentVisualIntelligenceSheet];
    }
  }
}

- (void)setActiveInteractionTypes:(unint64_t)types
{
  activeInteractionTypes = [(VKCImageAnalysisInteraction *)self->_interaction activeInteractionTypes];
  [(VKCImageAnalysisInteraction *)self->_interaction setActiveInteractionTypes:types];
  if (activeInteractionTypes != types)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64___PhotosMediaViewAnalysisController_setActiveInteractionTypes___block_invoke;
    v6[3] = &unk_1E845C410;
    v6[4] = self;
    [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v6];
  }
}

- (void)toggleInteractionTypes:(unint64_t)types
{
  v4 = [(_PhotosMediaViewAnalysisController *)self activeInteractionTypes]^ types;

  [(_PhotosMediaViewAnalysisController *)self setActiveInteractionTypes:v4];
}

- (void)setAutomaticallyInvokedInteraction:(unint64_t)interaction
{
  if (self->_automaticallyInvokedInteraction != interaction)
  {
    self->_automaticallyInvokedInteraction = interaction;
    [(_PhotosMediaViewAnalysisController *)self _performAutomaticallyInvokedInteractionIfNeeded];
  }
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction
{
  delegate = [(_PhotosMediaViewAnalysisController *)self delegate];
  v5 = [delegate presentingViewControllerForContext:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __116___PhotosMediaViewAnalysisController_imageAnalysisInteraction_didTapVisualSearchIndicatorWithNormalizedBoundingBox___block_invoke;
  v4[3] = &unk_1E845C410;
  v4[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v4];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)controller
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95___PhotosMediaViewAnalysisController_imageAnalysisInteractionDidDismissVisualSearchController___block_invoke;
  v3[3] = &unk_1E845C410;
  v3[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v3];
}

- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion
{
  competionCopy = competion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97___PhotosMediaViewAnalysisController_imageAnalysisInteraction_prepareForCalloutAction_competion___block_invoke;
  v7[3] = &unk_1E845C410;
  v7[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v7];
  if (competionCopy)
  {
    competionCopy[2](competionCopy);
  }
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89___PhotosMediaViewAnalysisController_imageAnalysisInteractionDidCompleteSubjectAnalysis___block_invoke;
  v3[3] = &unk_1E845C410;
  v3[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v3];
}

- (void)_enumerateObservers:(id)observers
{
  v15 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)_analysisRequestTypes
{
  if ([(_PhotosMediaViewAnalysisController *)self isVisualIntelligenceV2Enabled])
  {
    return 117;
  }

  else
  {
    return 53;
  }
}

- (void)_performAnalysis
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_assetView);
  mediaProvider = [WeakRetained mediaProvider];
  v5 = objc_loadWeakRetained(&self->_assetView);
  asset = [v5 asset];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54___PhotosMediaViewAnalysisController__performAnalysis__block_invoke;
  v7[3] = &unk_1E845C438;
  objc_copyWeak(&v8, &location);
  [mediaProvider requestCGImageForAsset:asset targetSize:0 contentMode:0 options:v7 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_handleImageResult:(CGImage *)result
{
  objc_initWeak(&location, self);
  v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:result imageOrientation:{-[_PhotosMediaViewAnalysisController analysisOrientation](self, "analysisOrientation")}];
  image = self->_image;
  self->_image = v5;

  [(_PhotosMediaViewAnalysisController *)self _cancelActiveRequest];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = getVKCImageAnalyzerRequestClass_softClass;
  v18 = getVKCImageAnalyzerRequestClass_softClass;
  if (!getVKCImageAnalyzerRequestClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getVKCImageAnalyzerRequestClass_block_invoke;
    v14[3] = &unk_1E845C110;
    v14[4] = &v15;
    __getVKCImageAnalyzerRequestClass_block_invoke(v14);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [[v7 alloc] initWithImage:self->_image requestType:{-[_PhotosMediaViewAnalysisController _analysisRequestTypes](self, "_analysisRequestTypes")}];
  [v9 set_wantsFormFieldDetection:1];
  analyzer = self->_analyzer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57___PhotosMediaViewAnalysisController__handleImageResult___block_invoke_2;
  v11[3] = &unk_1E845C4A8;
  objc_copyWeak(&v12, &location);
  self->_activeRequestID = [(VKCImageAnalyzer *)analyzer processRequest:v9 progressHandler:&__block_literal_global_2 completionHandler:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)setAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if (self->_analysis != analysisCopy)
  {
    objc_storeStrong(&self->_analysis, analysis);
    [(VKCImageAnalysisInteraction *)self->_interaction setAnalysis:analysisCopy];
    [(VKCImageAnalysisInteraction *)self->_interaction set_photosImageForRemoveBackground:self->_image];
    [(VKCImageAnalysisInteraction *)self->_interaction beginImageSubjectAnalysisIfNecessary];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50___PhotosMediaViewAnalysisController_setAnalysis___block_invoke;
    v6[3] = &unk_1E845C410;
    v6[4] = self;
    [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v6];
    if (analysisCopy)
    {
      [(_PhotosMediaViewAnalysisController *)self _performAutomaticallyInvokedInteractionIfNeeded];
    }
  }
}

- (void)_handleAnalysisResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if ([resultCopy analysisRequestID] == self->_activeRequestID)
  {
    self->_activeRequestID = 0;
    [(_PhotosMediaViewAnalysisController *)self setAnalysis:resultCopy];
    objc_storeStrong(&self->_error, error);
  }
}

- (void)_performAutomaticallyInvokedInteractionIfNeeded
{
  automaticallyInvokedInteraction = [(_PhotosMediaViewAnalysisController *)self automaticallyInvokedInteraction];
  switch(automaticallyInvokedInteraction)
  {
    case 1uLL:
      interaction = self->_interaction;

      [(VKCImageAnalysisInteraction *)interaction setHighlightSelectableItems:1];
      break;
    case 4uLL:

      [(_PhotosMediaViewAnalysisController *)self setActiveInteractionTypes:4];
      break;
    case 8uLL:
      v4 = self->_interaction;

      [(VKCImageAnalysisInteraction *)v4 setSubjectHighlightActive:1];
      break;
  }
}

- (void)_cancelActiveRequest
{
  if (self->_activeRequestID)
  {
    [(VKCImageAnalyzer *)self->_analyzer cancelRequestID:?];
    self->_activeRequestID = 0;
  }
}

- (void)_removeAnalysisResult
{
  image = self->_image;
  self->_image = 0;

  [(_PhotosMediaViewAnalysisController *)self setAnalysis:0];
  error = self->_error;
  self->_error = 0;
}

- (PPKPhotosMediaViewImageAnalysisInteractionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end