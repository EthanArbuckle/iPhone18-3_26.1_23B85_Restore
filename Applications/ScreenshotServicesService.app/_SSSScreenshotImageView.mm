@interface _SSSScreenshotImageView
+ (id)_createDirectoryForSysdiagnoseIfNecessary;
+ (void)_saveImageForSysdiagnose:(id)sysdiagnose;
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (CGSize)intrinsicContentSize;
- (SSSScreenshotImageViewDelegate)delegate;
- (UIActivity)visionKitFeedbackActivity;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (VKCImageAnalysisInteraction)imageInteraction;
- (_SSSScreenshotImageView)initWithFrame:(CGRect)frame;
- (_SSSScreenshotPaperKitImageView)paperKitImageView;
- (id)_paperKitImageViewOverlayViewController:(id)controller;
- (void)_paperKitImageDidChangeInView:(id)view changeCounter:(unint64_t)counter;
- (void)_paperKitImageView:(id)view didFinishUpdatingImage:(id)image;
- (void)_paperKitImageView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView;
- (void)_paperKitImageView:(id)view willBeginUpdatingImage:(id)image;
- (void)_updateInteractionModeFromAnalysisButtonPress;
- (void)_updateUI;
- (void)analyzeCurrentImageIfNecessary;
- (void)clearImageAnalysisTextSelection;
- (void)cropControllerDidUpdateScrollView:(id)view;
- (void)cropControllerDidZoomInScrollView:(id)view;
- (void)deselectAllAnnotations;
- (void)endedEditing;
- (void)enterEditing;
- (void)generateSnapshotImageIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)imageAnalysisInteraction:(id)interaction highlightSelectedItemsValueDidChange:(BOOL)change;
- (void)imageAnalysisInteraction:(id)interaction isDraggingVisualIntelligenceSheetDidChange:(BOOL)change;
- (void)isVisualIntelligenceSheetPresentedDidChangeForImageAnalysisInteraction:(id)interaction;
- (void)layoutSubviews;
- (void)reanalyzeImage;
- (void)setAnnotationsEnabled:(BOOL)enabled;
- (void)setBounds:(CGRect)bounds;
- (void)setCachedViewsHidden:(BOOL)hidden;
- (void)setFrame:(CGRect)frame;
- (void)setInhibitImageAnalysis:(BOOL)analysis;
- (void)setInteractionMode:(unint64_t)mode;
- (void)setRulerHostView:(id)view;
- (void)setScreenshot:(id)screenshot;
- (void)setState:(unint64_t)state;
- (void)setVellumOpacity:(double)opacity;
- (void)updateCachedImageViewLocation;
- (void)updateInteractionHighlightStatusIfNecessary;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary;
- (void)willMoveToWindow:(id)window;
@end

@implementation _SSSScreenshotImageView

- (_SSSScreenshotImageView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = _SSSScreenshotImageView;
  v3 = [(_SSSScreenshotAnnotationView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (_os_feature_enabled_impl())
  {
    v4 = objc_alloc_init(_SSSScreenshotPaperKitImageView);
    [(_SSSScreenshotPaperKitImageView *)v4 setDelegate:v3];
  }

  else
  {
    v4 = objc_alloc_init(_SSSScreenshotFullsizeStaticImageView);
  }

  imageView = v3->_imageView;
  v3->_imageView = v4;

  v3->_inhibitImageAnalysis = 1;
  [(_SSSScreenshotImageView *)v3 addSubview:v3->_imageView];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = objc_alloc_init(UIView);
    [(_SSSScreenshotAnnotationView *)v3 setVellumView:v6];

    vellumView = [(_SSSScreenshotAnnotationView *)v3 vellumView];
    v8 = +[UIColor whiteColor];
    [vellumView setBackgroundColor:v8];

    vellumView2 = [(_SSSScreenshotAnnotationView *)v3 vellumView];
    [(_SSSScreenshotImageView *)v3 addSubview:vellumView2];
  }

  [(_SSSScreenshotAnnotationView *)v3 setScreenshotEditsSnapshotted:1];
  v10 = objc_alloc_init(_SSSScreenshotFullsizeStaticImageView);
  cachedOutputImageView = v3->_cachedOutputImageView;
  v3->_cachedOutputImageView = v10;

  v12 = _os_feature_enabled_impl();
  v13 = v3->_cachedOutputImageView;
  if (v12)
  {
    [(_SSSScreenshotImageView *)v3 insertSubview:v13 belowSubview:v3->_imageView];
  }

  else
  {
    [(_SSSScreenshotImageView *)v3 addSubview:v13];
  }

  if (+[VKCImageAnalyzer supportedAnalysisTypes])
  {
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v15 = dispatch_queue_create("com.apple.screenshotServicesService.VKAnalysisHelper", v14);
    analysisHelperQueue = v3->_analysisHelperQueue;
    v3->_analysisHelperQueue = v15;
  }

  return v3;
}

- (VKCImageAnalysisInteraction)imageInteraction
{
  if (!self->_imageInteraction && +[VKCImageAnalyzer supportedAnalysisTypes])
  {
    v3 = objc_alloc_init(VKCImageAnalysisInteraction);
    imageInteraction = self->_imageInteraction;
    self->_imageInteraction = v3;

    [(VKCImageAnalysisInteraction *)self->_imageInteraction setAnalysisButtonRequiresVisibleContentGating:0];
    [(VKCImageAnalysisInteraction *)self->_imageInteraction setDelegate:self];
    [(VKCImageAnalysisInteraction *)self->_imageInteraction setWantsAutomaticContentsRectCalculation:0];
    [(VKCImageAnalysisInteraction *)self->_imageInteraction setAutomaticallyShowVisualSearchResults:1];
    if (_SSQuickActionsEnabled())
    {
      [(VKCImageAnalysisInteraction *)self->_imageInteraction setActionInfoViewHidden:0];
      [(VKCImageAnalysisInteraction *)self->_imageInteraction setWantsTranslucentActionInfoButtons:1];
      [(VKCImageAnalysisInteraction *)self->_imageInteraction setActionInfoLiveTextButtonDisabled:1];
    }

    [(_SSSScreenshotImageView *)self addInteraction:self->_imageInteraction];
  }

  v5 = self->_imageInteraction;

  return v5;
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotImageView *)&v7 willMoveToWindow:?];
  if (!window)
  {
    imageInteraction = self->_imageInteraction;
    if (imageInteraction)
    {
      [(VKCImageAnalysisInteraction *)imageInteraction setDelegate:0];
      [(_SSSScreenshotImageView *)self removeInteraction:self->_imageInteraction];
      v6 = self->_imageInteraction;
      self->_imageInteraction = 0;
    }
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(_SSSScreenshotImageView *)self _updateUI];
  }
}

- (void)_updateUI
{
  if (![(_SSSScreenshotImageView *)self isBeingRemoved])
  {
    state = self->_state;
    v4 = state != 0;
    [(_SSSScreenshotCropableView *)self->_imageView setHidden:state == 0];
    [(_SSSScreenshotCropableView *)self->_cachedOutputImageView setHidden:v4];
    if (self->_state == 1)
    {

      [(_SSSScreenshotAnnotationView *)self setOverlayControllerActive:1];
    }
  }
}

- (void)setAnnotationsEnabled:(BOOL)enabled
{
  if (self->_annotationsEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_annotationsEnabled = enabled;
    paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
    [paperKitImageView setAnnotationsEnabled:enabledCopy];
  }
}

- (void)setInteractionMode:(unint64_t)mode
{
  v5 = 0;
  if (mode != 1 && self->_interactionMode == 1)
  {
    if (self->_hasOutstandingEdits)
    {
      self->_hasOutstandingEdits = 0;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  self->_interactionMode = mode;
  _ss_vi2Enabled = [(_SSSScreenshotImageView *)self _ss_vi2Enabled];
  v7 = _ss_vi2Enabled;
  interactionMode = self->_interactionMode;
  if (interactionMode <= 1)
  {
    if (interactionMode)
    {
      v13 = interactionMode == 1;
    }

    else
    {
      v13 = 0;
    }

    if (interactionMode)
    {
      v14 = interactionMode != 1;
    }

    else
    {
      v14 = 1;
    }

    if (interactionMode)
    {
      v15 = interactionMode == 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0;
    if (interactionMode)
    {
      v17 = 0;
    }

    else
    {
      v17 = _ss_vi2Enabled;
    }
  }

  else
  {
    v9 = 9;
    if (_ss_vi2Enabled)
    {
      v9 = 16;
    }

    v10 = 4;
    v11 = 11;
    v12 = interactionMode != 4;
    if (interactionMode != 4)
    {
      v11 = 0;
    }

    if (interactionMode == 3)
    {
      v12 = 1;
    }

    else
    {
      v10 = v11;
    }

    v13 = 0;
    v14 = interactionMode != 2 && v12;
    v15 = interactionMode != 2 && interactionMode == 3;
    if (interactionMode == 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v10;
    }

    v17 = 0;
  }

  if (!_SSRemoveBackgroundEnabled())
  {
    v16 &= ~8uLL;
  }

  if (v5)
  {
    [(_SSSScreenshotImageView *)self reanalyzeImage];
  }

  v18 = v7 | v14;
  v19 = v7 ^ 1;
  if (mode == 4)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  [imageInteraction setActiveInteractionTypes:v16];
  [imageInteraction setHighlightSelectableItems:v20];
  [imageInteraction setForceAnalysisBarButtonItemEnabled:v15 & v19];
  if (v17)
  {
    [imageInteraction dismissVisualIntelligenceSheetIfNecessary];
  }

  if ((v18 & 1) == 0)
  {
    [imageInteraction resetSelection];
  }

  annotationOverlayView = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
  [annotationOverlayView setUserInteractionEnabled:v13];

  overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
  annotationKitController = [overlayController annotationKitController];
  [annotationKitController setAllEditingDisabled:v13 ^ 1];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotImageView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_SSSScreenshotImageView *)self layoutIfNeeded];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotImageView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_SSSScreenshotImageView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  [(_SSSScreenshotImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SSSScreenshotCropableView *)self->_imageView setFrame:?];
  cachedOutputImageView = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  [cachedOutputImageView setFrame:{v4, v6, v8, v10}];

  annotationOverlayView = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
  [annotationOverlayView setFrame:{v4, v6, v8, v10}];

  vellumView = [(_SSSScreenshotAnnotationView *)self vellumView];
  [vellumView setFrame:{v4, v6, v8, v10}];

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  modelModificationInfo = [screenshot modelModificationInfo];
  v16 = modelModificationInfo;
  if (modelModificationInfo)
  {
    [modelModificationInfo cropInfo];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  sub_10005385C(&v29, *&v32, *(&v32 + 1));
  imageView = self->_imageView;
  v26 = v29;
  v27 = v30;
  v28 = v31;
  [(_SSSScreenshotCropableView *)imageView setCropInfo:&v26];
  cachedOutputImageView2 = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  v26 = v32;
  v27 = v33;
  v28 = v34;
  [cachedOutputImageView2 setCropInfo:&v26];

  v19 = v8 / *&v29;
  v20 = v10 / *(&v29 + 1);
  [(_SSSScreenshotCropableView *)self->_imageView setSizeMultiplier:v19, v20];
  cachedOutputImageView3 = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  [cachedOutputImageView3 setSizeMultiplier:{v19, v20}];

  vellumView2 = [(_SSSScreenshotAnnotationView *)self vellumView];
  [(_SSSScreenshotAnnotationView *)self vellumOpacity];
  [vellumView2 setAlpha:?];

  [(_SSSScreenshotCropableView *)self->_imageView setUseTrilinearMinificationFilter:[(_SSSScreenshotImageView *)self useTrilinearMinificationFilter]];
  cachedOutputImageView4 = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  [cachedOutputImageView4 setUseTrilinearMinificationFilter:{-[_SSSScreenshotImageView useTrilinearMinificationFilter](self, "useTrilinearMinificationFilter")}];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    cachedOutputImageView5 = [(_SSSScreenshotImageView *)self cachedOutputImageView];
    [(_SSSScreenshotImageView *)self bringSubviewToFront:cachedOutputImageView5];
  }

  overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
  [overlayController setViewState:{0, 0}];
}

- (CGSize)intrinsicContentSize
{
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  environmentDescription = [screenshot environmentDescription];
  [environmentDescription imagePointSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_SSSScreenshotPaperKitImageView)paperKitImageView
{
  if (_os_feature_enabled_impl())
  {
    v3 = self->_imageView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVellumOpacity:(double)opacity
{
  v6.receiver = self;
  v6.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotAnnotationView *)&v6 setVellumOpacity:?];
  paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
  [paperKitImageView setVellumOpacity:opacity];
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  if (_os_feature_enabled_impl())
  {
    drawingGestureRecognizer = [(_SSSScreenshotCropableView *)self->_imageView drawingGestureRecognizer];
  }

  else
  {
    drawingGestureRecognizer = 0;
  }

  return drawingGestureRecognizer;
}

- (void)setScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];

  if (screenshot != screenshotCopy)
  {
    v13.receiver = self;
    v13.super_class = _SSSScreenshotImageView;
    [(_SSSScreenshotAnnotationView *)&v13 setScreenshot:screenshotCopy];
    if (_os_feature_enabled_impl())
    {
      [screenshotCopy setImageGenerator:self->_imageView];
    }

    objc_initWeak(&location, self);
    imageProvider = [screenshotCopy imageProvider];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100010DC8;
    v10 = &unk_1000BA230;
    objc_copyWeak(&v11, &location);
    [imageProvider requestUneditedImageForUI:&v7];

    [(_SSSScreenshotImageView *)self setNeedsLayout:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)updateCachedImageViewLocation
{
  v3 = _os_feature_enabled_impl();
  cachedOutputImageView = self->_cachedOutputImageView;
  if (v3)
  {
    imageView = self->_imageView;

    [(_SSSScreenshotImageView *)self insertSubview:cachedOutputImageView belowSubview:imageView];
  }

  else
  {

    [(_SSSScreenshotImageView *)self bringSubviewToFront:cachedOutputImageView];
  }
}

- (void)setInhibitImageAnalysis:(BOOL)analysis
{
  if (self->_inhibitImageAnalysis != analysis)
  {
    self->_inhibitImageAnalysis = analysis;
    [(_SSSScreenshotImageView *)self analyzeCurrentImageIfNecessary];
  }
}

- (void)reanalyzeImage
{
  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  [imageInteraction setAnalysis:0];

  [(_SSSScreenshotImageView *)self analyzeCurrentImageIfNecessary];
}

- (void)analyzeCurrentImageIfNecessary
{
  if (![(_SSSScreenshotImageView *)self inhibitImageAnalysis])
  {
    imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
    analysis = [imageInteraction analysis];
    if (analysis)
    {
    }

    else
    {
      v4 = +[VKCImageAnalyzer supportedAnalysisTypes];

      if (v4)
      {
        screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
        v6 = [screenshot hasEverBeenEditedForMode:0];
        environmentDescription = [screenshot environmentDescription];
        earlyVIAnalysis = [environmentDescription earlyVIAnalysis];

        if (!earlyVIAnalysis)
        {
          goto LABEL_16;
        }

        v9 = os_log_create("com.apple.screenshotservices", "ShareSheet");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Environment VI Analysis found", buf, 2u);
        }

        v10 = os_log_create("com.apple.screenshotservices", "ShareSheet");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removing environment VI Analysis from the environment object", buf, 2u);
        }

        environmentDescription2 = [screenshot environmentDescription];
        [environmentDescription2 setEarlyVIAnalysis:0];

        if ((v6 & 1) == 0 && [screenshot isInitialScreenshot])
        {
          v12 = earlyVIAnalysis;
        }

        else
        {
LABEL_16:
          v12 = 0;
        }

        objc_initWeak(buf, self);
        objc_initWeak(&location, screenshot);
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10001167C;
        v41[3] = &unk_1000BA258;
        objc_copyWeak(&v42, buf);
        objc_copyWeak(&v43, &location);
        v44 = v12 != 0;
        v13 = objc_retainBlock(v41);
        if (v12)
        {
          v14 = os_log_create("com.apple.screenshotservices", "ShareSheet");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using environment early VI analysis.", v40, 2u);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100011898;
          block[3] = &unk_1000BA280;
          v39 = v13;
          v38 = v12;
          dispatch_async(&_dispatch_main_q, block);

          v15 = v39;
        }

        else
        {
          v16 = _SSSignpostLog();
          if (os_signpost_enabled(v16))
          {
            *v40 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyzeScreenshot", "", v40, 2u);
          }

          v17 = os_log_create("com.apple.screenshotservices", "Performance");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BEGIN AnalyzeScreenshot", v40, 2u);
          }

          imageAnalyzer = [(_SSSScreenshotImageView *)self imageAnalyzer];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1000118B0;
          v33[3] = &unk_1000BA2A8;
          v33[4] = self;
          objc_copyWeak(&v36, buf);
          v15 = imageAnalyzer;
          v34 = v15;
          v35 = v13;
          v19 = objc_retainBlock(v33);
          screenshot2 = [(_SSSScreenshotAnnotationView *)self screenshot];
          v21 = [screenshot2 hasEverBeenEditedForMode:0];

          if (v21)
          {
            screenshot3 = [(_SSSScreenshotAnnotationView *)self screenshot];
            imageProvider = [screenshot3 imageProvider];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100011A6C;
            v28[3] = &unk_1000BA2D0;
            v29 = v19;
            [imageProvider requestOutputImageForSaving:v28];

            v24 = v29;
          }

          else
          {
            image = [(_SSSScreenshotCropableView *)self->_imageView image];
            analysisHelperQueue = [(_SSSScreenshotImageView *)self analysisHelperQueue];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_100011A58;
            v30[3] = &unk_1000BA280;
            v31 = image;
            v32 = v19;
            v24 = image;
            dispatch_async(analysisHelperQueue, v30);
          }

          objc_destroyWeak(&v36);
        }

        objc_destroyWeak(&v43);
        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  modelModificationInfo = [screenshot modelModificationInfo];
  v5 = modelModificationInfo;
  if (modelModificationInfo)
  {
    [modelModificationInfo cropInfo];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v6 = sub_1000538C8(v17);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)isVisualIntelligenceSheetPresentedDidChangeForImageAnalysisInteraction:(id)interaction
{
  delegate = [(_SSSScreenshotImageView *)self delegate];
  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  [delegate imageView:self viCardIsPresentedDidChange:{objc_msgSend(imageInteraction, "isVisualIntelligenceSheetVisible")}];
}

- (void)imageAnalysisInteraction:(id)interaction isDraggingVisualIntelligenceSheetDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(_SSSScreenshotImageView *)self delegate];
  [delegate imageView:self isDraggingVISheetDidChange:changeCopy];
}

- (UIActivity)visionKitFeedbackActivity
{
  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  feedbackActivity = [imageInteraction feedbackActivity];

  return feedbackActivity;
}

- (void)setRulerHostView:(id)view
{
  viewCopy = view;
  if (_os_feature_enabled_impl())
  {
    paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
    [paperKitImageView setRulerHostView:viewCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SSSScreenshotImageView;
    [(_SSSScreenshotAnnotationView *)&v6 setRulerHostView:viewCopy];
  }
}

- (void)clearImageAnalysisTextSelection
{
  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  [imageInteraction resetSelection];
}

- (void)_updateInteractionModeFromAnalysisButtonPress
{
  if ([(_SSSScreenshotImageView *)self interactionMode]== 2)
  {
    v3 = 4;
  }

  else if ([(_SSSScreenshotImageView *)self interactionMode]== 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  delegate = [(_SSSScreenshotImageView *)self delegate];
  [delegate imageView:self requestsUpdateToInteractionMode:v3];
}

- (void)imageAnalysisInteraction:(id)interaction highlightSelectedItemsValueDidChange:(BOOL)change
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011E34;
  v4[3] = &unk_1000BA2F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)updateInteractionHighlightStatusIfNecessary
{
  imageInteraction = [(_SSSScreenshotImageView *)self imageInteraction];
  highlightSelectableItems = [imageInteraction highlightSelectableItems];
  interactionMode = [(_SSSScreenshotImageView *)self interactionMode];
  if (interactionMode == 4 || interactionMode == 2)
  {
    v5 = highlightSelectableItems ? 4 : 2;
    if (interactionMode != v5)
    {
      delegate = [(_SSSScreenshotImageView *)self delegate];
      [delegate imageView:self requestsUpdateToInteractionMode:v5];
    }
  }
}

- (void)cropControllerDidZoomInScrollView:(id)view
{
  viewCopy = view;
  if (_os_feature_enabled_impl())
  {
    paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
    [paperKitImageView cropControllerDidZoomInScrollView:viewCopy];
  }
}

- (void)cropControllerDidUpdateScrollView:(id)view
{
  viewCopy = view;
  if (_os_feature_enabled_impl())
  {
    paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
    [paperKitImageView cropControllerDidUpdateScrollView:viewCopy];
  }
}

- (void)deselectAllAnnotations
{
  if (_os_feature_enabled_impl())
  {
    paperKitImageView = [(_SSSScreenshotImageView *)self paperKitImageView];
    [paperKitImageView deselectAllAnnotations];
  }
}

- (void)enterEditing
{
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotCropableView *)self->_imageView setEditable:1];
    [(_SSSScreenshotCropableView *)self->_imageView updatePaletteVisibilityIfNecessary:1];
  }

  else
  {
    annotationOverlayView = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
    overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
    overlayView = [overlayController overlayView];

    if (annotationOverlayView != overlayView)
    {
      annotationOverlayView2 = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
      [annotationOverlayView2 removeFromSuperview];

      overlayController2 = [(_SSSScreenshotAnnotationView *)self overlayController];
      overlayView2 = [overlayController2 overlayView];
      [(_SSSScreenshotAnnotationView *)self setAnnotationOverlayView:overlayView2];

      annotationOverlayView3 = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
      [(_SSSScreenshotImageView *)self addSubview:annotationOverlayView3];
    }
  }

  v10.receiver = self;
  v10.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotAnnotationView *)&v10 enterEditing];
}

- (void)endedEditing
{
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotCropableView *)self->_imageView setEditable:0];
  }

  v3.receiver = self;
  v3.super_class = _SSSScreenshotImageView;
  [(_SSSScreenshotAnnotationView *)&v3 endedEditing];
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (_os_feature_enabled_impl())
  {
    imageView = self->_imageView;

    [(_SSSScreenshotCropableView *)imageView updatePaletteVisibilityIfNecessary:necessaryCopy];
  }
}

- (void)generateSnapshotImageIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  if (necessaryCopy && (-[_SSSScreenshotAnnotationView screenshot](self, "screenshot"), v7 = objc_claimAutoreleasedReturnValue(), [v7 imageProvider], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    objc_initWeak(&location, self);
    screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
    imageProvider = [screenshot imageProvider];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000123E0;
    v11[3] = &unk_1000BA348;
    objc_copyWeak(&v13, &location);
    v12 = completionCopy;
    [imageProvider requestOutputImageForUI:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setCachedViewsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    cachedOutputImageView = self->_cachedOutputImageView;

    [(_SSSScreenshotCropableView *)cachedOutputImageView setHidden:hiddenCopy];
  }
}

+ (id)_createDirectoryForSysdiagnoseIfNecessary
{
  v2 = +[NSFileManager defaultManager];
  v7 = 0;
  v3 = [v2 createDirectoryAtPath:@"/private/var/db/sysdiagnose/com.apple.ScreenshotServicesService/" withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100073F14(v4, v5);
    }
  }

  return v4;
}

+ (void)_saveImageForSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  if (MGGetBoolAnswer())
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = dispatch_queue_create("com.apple.ScreenshotServicesService.SysdiagnoseSavingQueue", v5);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012750;
    v7[3] = &unk_1000BA370;
    v9 = objc_opt_class();
    v8 = sysdiagnoseCopy;
    dispatch_async(v6, v7);
  }
}

- (void)_paperKitImageDidChangeInView:(id)view changeCounter:(unint64_t)counter
{
  viewCopy = view;
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  imageDescription = [viewCopy imageDescription];

  viewModificationInfo = [screenshot viewModificationInfo];
  imageDescription2 = [viewModificationInfo imageDescription];

  v10 = imageDescription;
  v11 = imageDescription2;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (v10 && v11)
  {
    v13 = [v10 isEqualToString:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    viewModificationInfo2 = [screenshot viewModificationInfo];
    [viewModificationInfo2 setPaperKitChangeCounter:counter];
    v15 = 2;
    goto LABEL_10;
  }

LABEL_9:
  viewModificationInfo2 = [screenshot viewModificationInfo];
  [viewModificationInfo2 setImageDescription:v10];
  v15 = 4;
LABEL_10:

  [screenshot promoteViewValueToModelValueForKey:v15 forState:0 createUndoCommand:{0, 0}];
  [(_SSSScreenshotImageView *)self setHasOutstandingEdits:1];
}

- (void)_paperKitImageView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  delegate = [(_SSSScreenshotImageView *)self delegate];
  [delegate imageView:self startEditingOpacityInAccessoryView:accessoryViewCopy];
}

- (void)_paperKitImageView:(id)view willBeginUpdatingImage:(id)image
{
  imageCopy = image;
  cachedOutputImageView = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  [cachedOutputImageView setImage:imageCopy];

  cachedOutputImageView2 = [(_SSSScreenshotImageView *)self cachedOutputImageView];
  [cachedOutputImageView2 setHidden:0];
}

- (void)_paperKitImageView:(id)view didFinishUpdatingImage:(id)image
{
  viewCopy = view;
  delegate = [(_SSSScreenshotImageView *)self delegate];
  [delegate imageViewDidLoadImage:self];

  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  [viewCopy imageGeneratorImageMarkedAsBeingEdited:screenshot];
}

- (id)_paperKitImageViewOverlayViewController:(id)controller
{
  delegate = [(_SSSScreenshotImageView *)self delegate];
  v5 = [delegate imageViewOverlayViewController:self];

  return v5;
}

- (SSSScreenshotImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end