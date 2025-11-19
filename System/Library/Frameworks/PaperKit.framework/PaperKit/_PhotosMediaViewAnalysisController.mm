@interface _PhotosMediaViewAnalysisController
- (BOOL)analysisInteractionHidden;
- (BOOL)hasResultsForAnalysisTypes:(unint64_t)a3;
- (NSString)filledInfoButtonGlyphName;
- (NSString)infoButtonGlyphName;
- (PPKPhotosMediaViewImageAnalysisInteractionContextDelegate)delegate;
- (_PhotosMediaViewAnalysisController)initWithAssetView:(id)a3 interactionHostView:(id)a4 analysisOrientation:(int64_t)a5;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (id)visualSearchResultItem;
- (unint64_t)_analysisRequestTypes;
- (void)_cancelActiveRequest;
- (void)_enumerateObservers:(id)a3;
- (void)_handleAnalysisResult:(id)a3 error:(id)a4;
- (void)_handleImageResult:(CGImage *)a3;
- (void)_performAnalysis;
- (void)_performAutomaticallyInvokedInteractionIfNeeded;
- (void)_removeAnalysisResult;
- (void)dealloc;
- (void)didActivateVisualIntelligenceButton;
- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3;
- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)a3;
- (void)setActionInfoViewHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setActiveInteractionTypes:(unint64_t)a3;
- (void)setAnalysis:(id)a3;
- (void)setAnalysisOrientation:(int64_t)a3;
- (void)setAutomaticallyInvokedInteraction:(unint64_t)a3;
- (void)setInteractionHostView:(id)a3;
- (void)toggleInteractionTypes:(unint64_t)a3;
@end

@implementation _PhotosMediaViewAnalysisController

- (_PhotosMediaViewAnalysisController)initWithAssetView:(id)a3 interactionHostView:(id)a4 analysisOrientation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
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

    objc_storeWeak(&v10->_assetView, v8);
    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v15;

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
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    v22 = [v21 userInterfaceIdiom];

    v23 = 0;
    if (!v22)
    {
      v23 = _os_feature_enabled_impl();
    }

    v10->_isVisualIntelligenceV2Enabled = v23;
    [(VKCImageAnalysisInteraction *)v10->_interaction setActiveInteractionTypes:9];
    if (v9)
    {
      v24 = v9;
    }

    else
    {
      v24 = v8;
    }

    [v24 addInteraction:v10->_interaction];
    v10->_analysisOrientation = a5;
    [(_PhotosMediaViewAnalysisController *)v10 _performAnalysis];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(VKCImageAnalysisInteraction *)self->_interaction view];
  [v3 removeInteraction:self->_interaction];

  v4.receiver = self;
  v4.super_class = _PhotosMediaViewAnalysisController;
  [(_PhotosMediaViewAnalysisController *)&v4 dealloc];
}

- (void)setInteractionHostView:(id)a3
{
  if (a3)
  {
    interaction = self->_interaction;

    [a3 addInteraction:interaction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_assetView);
    [WeakRetained addInteraction:self->_interaction];
  }
}

- (void)setAnalysisOrientation:(int64_t)a3
{
  if (self->_analysisOrientation != a3)
  {
    self->_analysisOrientation = a3;
    [(VKCImageAnalysisInteraction *)self->_interaction setHighlightSelectableItems:0];
    [(_PhotosMediaViewAnalysisController *)self _cancelActiveRequest];
    [(_PhotosMediaViewAnalysisController *)self _removeAnalysisResult];

    [(_PhotosMediaViewAnalysisController *)self _performAnalysis];
  }
}

- (BOOL)hasResultsForAnalysisTypes:(unint64_t)a3
{
  v4 = [(_PhotosMediaViewAnalysisController *)self analysis];
  LOBYTE(a3) = [v4 hasResultsForAnalysisTypes:a3];

  return a3;
}

- (void)setActionInfoViewHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(_PhotosMediaViewAnalysisController *)self isVisualIntelligenceV2Enabled]| a3;
  interaction = self->_interaction;

  [(VKCImageAnalysisInteraction *)interaction setActionInfoViewHidden:v6 animated:v4];
}

- (id)visualSearchResultItem
{
  if ([(_PhotosMediaViewAnalysisController *)self isVisualIntelligenceV2Enabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VKCImageAnalysisInteraction *)self->_interaction visualIntelligenceResultItem];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = [(VKCImageAnalysisInteraction *)self->_interaction visualSearchResultItems];
    v3 = [v4 firstObject];
  }

  return v3;
}

- (NSString)infoButtonGlyphName
{
  v2 = [(_PhotosMediaViewAnalysisController *)self visualSearchResultItem];
  v3 = [v2 infoButtonGlyphName];

  return v3;
}

- (NSString)filledInfoButtonGlyphName
{
  v2 = [(_PhotosMediaViewAnalysisController *)self visualSearchResultItem];
  v3 = [v2 filledInfoButtonGlyphName];

  return v3;
}

- (BOOL)analysisInteractionHidden
{
  v2 = [(VKCImageAnalysisInteraction *)self->_interaction view];
  v3 = v2 == 0;

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

- (void)setActiveInteractionTypes:(unint64_t)a3
{
  v5 = [(VKCImageAnalysisInteraction *)self->_interaction activeInteractionTypes];
  [(VKCImageAnalysisInteraction *)self->_interaction setActiveInteractionTypes:a3];
  if (v5 != a3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64___PhotosMediaViewAnalysisController_setActiveInteractionTypes___block_invoke;
    v6[3] = &unk_1E845C410;
    v6[4] = self;
    [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v6];
  }
}

- (void)toggleInteractionTypes:(unint64_t)a3
{
  v4 = [(_PhotosMediaViewAnalysisController *)self activeInteractionTypes]^ a3;

  [(_PhotosMediaViewAnalysisController *)self setActiveInteractionTypes:v4];
}

- (void)setAutomaticallyInvokedInteraction:(unint64_t)a3
{
  if (self->_automaticallyInvokedInteraction != a3)
  {
    self->_automaticallyInvokedInteraction = a3;
    [(_PhotosMediaViewAnalysisController *)self _performAutomaticallyInvokedInteractionIfNeeded];
  }
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = [(_PhotosMediaViewAnalysisController *)self delegate];
  v5 = [v4 presentingViewControllerForContext:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __116___PhotosMediaViewAnalysisController_imageAnalysisInteraction_didTapVisualSearchIndicatorWithNormalizedBoundingBox___block_invoke;
  v4[3] = &unk_1E845C410;
  v4[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v4];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95___PhotosMediaViewAnalysisController_imageAnalysisInteractionDidDismissVisualSearchController___block_invoke;
  v3[3] = &unk_1E845C410;
  v3[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v3];
}

- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5
{
  v6 = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97___PhotosMediaViewAnalysisController_imageAnalysisInteraction_prepareForCalloutAction_competion___block_invoke;
  v7[3] = &unk_1E845C410;
  v7[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v7];
  if (v6)
  {
    v6[2](v6);
  }
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89___PhotosMediaViewAnalysisController_imageAnalysisInteractionDidCompleteSubjectAnalysis___block_invoke;
  v3[3] = &unk_1E845C410;
  v3[4] = self;
  [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v3];
}

- (void)_enumerateObservers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
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
  v4 = [WeakRetained mediaProvider];
  v5 = objc_loadWeakRetained(&self->_assetView);
  v6 = [v5 asset];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54___PhotosMediaViewAnalysisController__performAnalysis__block_invoke;
  v7[3] = &unk_1E845C438;
  objc_copyWeak(&v8, &location);
  [v4 requestCGImageForAsset:v6 targetSize:0 contentMode:0 options:v7 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_handleImageResult:(CGImage *)a3
{
  objc_initWeak(&location, self);
  v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a3 imageOrientation:{-[_PhotosMediaViewAnalysisController analysisOrientation](self, "analysisOrientation")}];
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

- (void)setAnalysis:(id)a3
{
  v5 = a3;
  if (self->_analysis != v5)
  {
    objc_storeStrong(&self->_analysis, a3);
    [(VKCImageAnalysisInteraction *)self->_interaction setAnalysis:v5];
    [(VKCImageAnalysisInteraction *)self->_interaction set_photosImageForRemoveBackground:self->_image];
    [(VKCImageAnalysisInteraction *)self->_interaction beginImageSubjectAnalysisIfNecessary];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50___PhotosMediaViewAnalysisController_setAnalysis___block_invoke;
    v6[3] = &unk_1E845C410;
    v6[4] = self;
    [(_PhotosMediaViewAnalysisController *)self _enumerateObservers:v6];
    if (v5)
    {
      [(_PhotosMediaViewAnalysisController *)self _performAutomaticallyInvokedInteractionIfNeeded];
    }
  }
}

- (void)_handleAnalysisResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 analysisRequestID] == self->_activeRequestID)
  {
    self->_activeRequestID = 0;
    [(_PhotosMediaViewAnalysisController *)self setAnalysis:v7];
    objc_storeStrong(&self->_error, a4);
  }
}

- (void)_performAutomaticallyInvokedInteractionIfNeeded
{
  v3 = [(_PhotosMediaViewAnalysisController *)self automaticallyInvokedInteraction];
  switch(v3)
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