@interface SSSScreenshotView
+ (CGAffineTransform)_transformToConvertFromRect:(SEL)rect toRect:(CGRect)toRect;
+ (CGRect)_scaledAndCenteredRect:(CGRect)rect withinRect:(CGRect)withinRect;
+ (void)_zoomToRectWithinContentInsetBounds:(CGRect)bounds scrollView:(id)view animated:(BOOL)animated;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_viewState;
- (AKController)akController;
- (BOOL)_layoutPDFViewVerticalContentInsetToMatchImageView;
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)isCropped;
- (BOOL)isShowingVICard;
- (BOOL)isVICardFullScreen;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)screenshotEditsSnapshotted;
- (BOOL)shouldFlash;
- (CGRect)cropOverlayViewRectInWindow;
- (CGRect)extent;
- (CGRect)rectToCenterAboveKeyboard;
- (NSString)vsGlyph;
- (NSString)vsGlyphFilled;
- (SSSScreenshotView)initWithFrame:(CGRect)frame;
- (SSSScreenshotViewDelegate)delegate;
- (UIActivity)visionKitFeedbackActivity;
- (UIView)contentSnapshot;
- (UIView)viewContainingScreenshotContents;
- (UIViewController)viewControllerForOverlayPresentations;
- (VKCImageAnalysis)currentImageAnalysis;
- (id)_actionInfoViewIfExists;
- (id)_currentOverlayController;
- (id)_findTextViewFirstResponderUnderView:(id)view;
- (id)_imageAnalysisAaBarButtonItemIfExists;
- (id)_imageAnalysisAaButtonIfExists;
- (id)_omnibarContainerViewIfExists;
- (id)_visualSearchCornerViewIfExists;
- (id)currentCropController;
- (id)currentView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)modelModificationInfo;
- (id)screenshotRepresentationAKControllerForPDF;
- (id)undoManager;
- (id)viewModificationInfo;
- (int64_t)_numberOfDrawingStrokesInScreenshot;
- (int64_t)currentPDFPage;
- (int64_t)screenshotPDFPageIndex:(id)index;
- (void)_commitCropControllerInflightEdits;
- (void)_goToPDFPage:(unint64_t)page rect:(CGRect)rect force:(BOOL)force;
- (void)_handleTap;
- (void)_layoutPDFViewToMatchImageViewIfNeeded;
- (void)_layoutUpdateCropControllers;
- (void)_logEditsInScreenshotForAnalytics;
- (void)_prepareGesturesForOverlayController:(id)controller;
- (void)_stopFlash;
- (void)_updateGestures;
- (void)adjustPDFPositioningToMatchImageIfNecessary;
- (void)cancelCrop;
- (void)cleanUpAfterGestureScreenshotBasedAnimation;
- (void)commitInflightEdits;
- (void)cropController:(id)controller changedToCropRect:(CGRect)rect;
- (void)cropControllerCropRectDidChange:(id)change;
- (void)dealloc;
- (void)deselectAllAnnotations;
- (void)dismissVISheetIfNecessary;
- (void)doneCrop;
- (void)enterCrop;
- (void)finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:(BOOL)screenshot;
- (void)flash;
- (void)imageView:(id)view isDraggingVISheetDidChange:(BOOL)change;
- (void)imageView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode;
- (void)imageView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView;
- (void)imageView:(id)view viCardIsPresentedDidChange:(BOOL)change;
- (void)imageViewDidLoadImage:(id)image;
- (void)imageViewDidUpdateInteraction:(id)interaction withAnalysis:(id)analysis;
- (void)layoutSubviews;
- (void)pageChanged:(id)changed;
- (void)pdfView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView;
- (void)prepareForFullscreenExperience;
- (void)prepareForGestureScreenshotBasedAnimation;
- (void)promoteViewValueToModelValueForKey:(unint64_t)key;
- (void)redo;
- (void)requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:(id)recognizer;
- (void)requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:(id)recognizers;
- (void)resetCrop;
- (void)revert;
- (void)safeAreaInsetsDidChange;
- (void)screenshot:(id)screenshot didHaveChangeOnPage:(unint64_t)page;
- (void)screenshotDeletePDFPage:(int64_t)page;
- (void)screenshotDidHaveUndoStackChanged:(id)changed;
- (void)screenshotDidReceivePDFData;
- (void)screenshotDidRevert:(id)revert;
- (void)screenshotInsertPDFPage:(id)page pageIndex:(int64_t)index;
- (void)setAnnotationsEnabled:(BOOL)enabled;
- (void)setBorderStyle:(int64_t)style;
- (void)setCropHandlesFadedOut:(BOOL)out;
- (void)setEditMode:(int64_t)mode;
- (void)setExtent:(CGRect)extent;
- (void)setGesturesEnabled:(BOOL)enabled;
- (void)setInteractionMode:(unint64_t)mode;
- (void)setIsBeingRemoved:(BOOL)removed;
- (void)setNeedsLayout;
- (void)setRulerHostingView:(id)view;
- (void)setScreenshot:(id)screenshot;
- (void)setScreenshotEditsSnapshotted:(BOOL)snapshotted inTransition:(BOOL)transition currentScreenshot:(BOOL)screenshot;
- (void)setState:(unint64_t)state;
- (void)setUseTrilinearMinificationFilter:(BOOL)filter;
- (void)setUsesOriginalImageAspectRatio:(BOOL)ratio;
- (void)undo;
- (void)updateForFrame:(CGRect)frame;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary;
@end

@implementation SSSScreenshotView

- (SSSScreenshotView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = SSSScreenshotView;
  v3 = [(SSSScreenshotView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v3 setClipsToBounds:0];
  v4 = objc_alloc_init(SSSScreenshotBorderView);
  v5 = *(v3 + 42);
  *(v3 + 42) = v4;

  [v3 addSubview:*(v3 + 42)];
  v6 = objc_alloc_init(_SSSScreenshotImageView);
  v7 = *(v3 + 18);
  *(v3 + 18) = v6;

  [*(v3 + 18) setDelegate:v3];
  [*(v3 + 18) setAccessibilityIdentifier:@"Screenshots-Image-View"];
  v8 = objc_alloc_init(_SSSScreenshotPDFView);
  v9 = *(v3 + 34);
  *(v3 + 34) = v8;

  [*(v3 + 34) setAccessibilityIdentifier:@"Screenshots-PDF-View"];
  [*(v3 + 34) setDelegate:v3];
  overlayController = [*(v3 + 18) overlayController];
  [overlayController setDelegate:v3];

  overlayController2 = [*(v3 + 34) overlayController];
  [overlayController2 setDelegate:v3];

  v12 = objc_alloc_init(SSSCropController);
  v13 = *(v3 + 10);
  *(v3 + 10) = v12;

  [*(v3 + 10) setNumberOfTouchesRequiredForPanningCrop:2];
  [*(v3 + 10) setDelegate:v3];
  cropView = [*(v3 + 10) cropView];
  [cropView setHidden:*(v3 + 154) != 0];

  cropView2 = [*(v3 + 10) cropView];
  [v3 addSubview:cropView2];

  v16 = objc_alloc_init(SSSCropController);
  v17 = *(v3 + 26);
  *(v3 + 26) = v16;

  [*(v3 + 26) setNumberOfTouchesRequiredForPanningCrop:2];
  [*(v3 + 26) setDelegate:v3];
  [*(v3 + 26) setEditMode:1];
  cropView3 = [*(v3 + 26) cropView];
  [cropView3 setHidden:*(v3 + 154) == 0];

  cropView4 = [*(v3 + 26) cropView];
  [v3 addSubview:cropView4];

  v20 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_handleTap"];
  v21 = *(v3 + 58);
  *(v3 + 58) = v20;

  [v3 addGestureRecognizer:*(v3 + 58)];
  size = CGRectNull.size;
  *(v3 + 66) = CGRectNull.origin;
  *(v3 + 82) = size;
  return v3;
}

- (void)dealloc
{
  undoManager = [(SSSScreenshotView *)self undoManager];
  [undoManager removeAllActions];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  overlayController = [*(&self->_imageCropController + 2) overlayController];
  [overlayController logDidEndEditingWithOverlay];

  overlayController2 = [*(&self->_pdfCropController + 2) overlayController];
  [overlayController2 logDidEndEditingWithOverlay];

  v7.receiver = self;
  v7.super_class = SSSScreenshotView;
  [(SSSScreenshotView *)&v7 dealloc];
}

- (void)setBorderStyle:(int64_t)style
{
  if ([(SSSScreenshotView *)self borderStyle]!= style)
  {
    v5 = *(&self->_screenshotPDFView + 2);

    [v5 setBorderStyle:style];
  }
}

- (void)setUseTrilinearMinificationFilter:(BOOL)filter
{
  if (BYTE5(self->_lastScreenshotImageViewFrameInScreen.size.height) != filter)
  {
    BYTE5(self->_lastScreenshotImageViewFrameInScreen.size.height) = filter;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)setScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  [*(&self->_flashView + 2) setRepresentation:0];
  objc_storeStrong((&self->_flashView + 2), screenshot);
  [*(&self->_flashView + 2) setRepresentation:self];
  [*(&self->_imageCropController + 2) setScreenshot:screenshotCopy];
  [*(&self->_pdfCropController + 2) setScreenshot:screenshotCopy];
  [(SSSScreenshotView *)self setNeedsLayout];
  screenshot = [(SSSScreenshotView *)self screenshot];
  environmentDescription = [screenshot environmentDescription];

  if ([environmentDescription presentationMode] == 3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000525C;
    v8[3] = &unk_1000BA068;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
  }

  else
  {
    [(SSSScreenshotView *)self layoutIfNeeded];
  }

  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setViewToCrop:*(&self->_imageCropController + 2)];
  [*(&self->_screenshotImageView + 2) setViewToCrop:*(&self->_pdfCropController + 2)];
  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)setInteractionMode:(unint64_t)mode
{
  if (*(&self->_state + 2) != mode)
  {
    *(&self->_state + 2) = mode;
    [*(&self->_imageCropController + 2) setInteractionMode:?];

    [(SSSScreenshotView *)self _layoutUpdateCropControllers];
  }
}

- (id)undoManager
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  v4 = [screenshot undoManagerForEditMode:{-[SSSScreenshotView _viewState](self, "_viewState")}];

  return v4;
}

- (void)screenshotDidHaveUndoStackChanged:(id)changed
{
  [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotViewUndoStackChanged:self];

  currentView = [(SSSScreenshotView *)self currentView];
  [currentView updateUndoState];

  modelModificationInfo = [(SSSScreenshotView *)self modelModificationInfo];
  v7 = modelModificationInfo;
  if (modelModificationInfo)
  {
    [modelModificationInfo cropInfo];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v8 = sub_1000538C8(v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  currentCropController = [(SSSScreenshotView *)self currentCropController];
  [currentCropController cropRect];
  v16 = SSRectEqualToRect();

  if (v16)
  {
    [(SSSScreenshotView *)self setNeedsLayout];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000054E8;
    v17[3] = &unk_1000BA090;
    v17[4] = self;
    *&v17[5] = v8;
    v17[6] = v10;
    v17[7] = v12;
    v17[8] = v14;
    [UIView animateWithDuration:4 delay:v17 options:0 animations:0.25 completion:0.0];
  }

  if ([(SSSScreenshotView *)self shouldReanalyzeImageForCurrentInteractionMode])
  {
    [*(&self->_imageCropController + 2) reanalyzeImage];
  }
}

- (void)screenshotDidRevert:(id)revert
{
  [(SSSScreenshotView *)self screenshotDidHaveUndoStackChanged:revert];
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotViewUndoStackChanged:self];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)screenshot:(id)screenshot didHaveChangeOnPage:(unint64_t)page
{
  [(SSSScreenshotView *)self _goToPDFPage:page rect:0 force:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotViewUndoStackChanged:self];
}

- (void)_goToPDFPage:(unint64_t)page rect:(CGRect)rect force:(BOOL)force
{
  forceCopy = force;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
  document = [_pdfView document];
  if ([document pageCount])
  {
    v13 = fmin(fmax(page, 0.0), ([document pageCount] - 1));
    currentPage = [_pdfView currentPage];
    v15 = [document indexForPage:currentPage];

    v16 = [document pageAtIndex:v13];
    [_pdfView layoutDocumentView];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    if (CGRectIsEmpty(v50))
    {
      if (!forceCopy || v13 && [document pageCount] - 1 != v13)
      {
        if (v15 != v13)
        {
          [_pdfView goToPage:v16];
          [*(&self->_pdfCropController + 2) updateViewState];
        }

        goto LABEL_9;
      }

      [v16 boundsForBox:1];
      [_pdfView convertRect:v16 fromPage:?];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      documentView = [_pdfView documentView];
      [_pdfView convertRect:documentView toView:{v18, v20, v22, v24}];
      v27 = v26;
      v29 = v28;

      documentScrollView = [_pdfView documentScrollView];
      [documentScrollView contentInset];
      v32 = v31;
      [_pdfView pageBreakMargins];
      v34 = v29 - (v32 + v33);

      documentScrollView2 = [_pdfView documentScrollView];
      [documentScrollView2 contentSize];
      v37 = v36;
      [documentScrollView2 bounds];
      [documentScrollView2 setContentOffset:1 animated:{v27, fmin(v34, v37 - v38)}];
      [*(&self->_pdfCropController + 2) updateViewState];
    }

    else
    {
      [_pdfView convertRect:v16 fromPage:{x, y, width, height}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = objc_opt_class();
      documentScrollView2 = [_pdfView documentScrollView];
      [v47 _zoomToRectWithinContentInsetBounds:documentScrollView2 scrollView:0 animated:{v40, v42, v44, v46}];
    }

LABEL_9:
  }
}

- (void)setUsesOriginalImageAspectRatio:(BOOL)ratio
{
  if (BYTE6(self->_lastScreenshotImageViewFrameInScreen.size.height) != ratio)
  {
    BYTE6(self->_lastScreenshotImageViewFrameInScreen.size.height) = ratio;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)setIsBeingRemoved:(BOOL)removed
{
  if (self->_hasEnteredFullPageCropBefore != removed)
  {
    self->_hasEnteredFullPageCropBefore = removed;
    [*(&self->_imageCropController + 2) setIsBeingRemoved:?];
  }
}

- (void)setNeedsLayout
{
  v5.receiver = self;
  v5.super_class = SSSScreenshotView;
  [(SSSScreenshotView *)&v5 setNeedsLayout];
  cropView = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
  [cropView setNeedsLayout];

  cropView2 = [*(&self->_screenshotImageView + 2) cropView];
  [cropView2 setNeedsLayout];
}

- (void)screenshotDidReceivePDFData
{
  window = [(SSSScreenshotView *)self window];
  firstResponder = [window firstResponder];

  [*(&self->_pdfCropController + 2) setupPDFData];
  if ([(SSSScreenshotView *)self editMode]== 1)
  {
    currentView = [(SSSScreenshotView *)self currentView];
    [currentView setOverlayControllerActive:1];
  }

  if (([firstResponder isFirstResponder] & 1) == 0)
  {
    [firstResponder becomeFirstResponder];
  }

  [(SSSScreenshotView *)self adjustPDFPositioningToMatchImageIfNecessary];
}

- (id)screenshotRepresentationAKControllerForPDF
{
  _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
  document = [_pdfView document];
  akController = [document akController];

  return akController;
}

- (int64_t)screenshotPDFPageIndex:(id)index
{
  indexCopy = index;
  _internalPDFView = [(SSSScreenshotView *)self _internalPDFView];
  document = [_internalPDFView document];
  v7 = [document indexForPage:indexCopy];

  return v7;
}

- (void)screenshotDeletePDFPage:(int64_t)page
{
  _internalPDFView = [(SSSScreenshotView *)self _internalPDFView];
  document = [_internalPDFView document];
  [document removePageAtIndex:page];
}

- (void)screenshotInsertPDFPage:(id)page pageIndex:(int64_t)index
{
  pageCopy = page;
  _internalPDFView = [(SSSScreenshotView *)self _internalPDFView];
  document = [_internalPDFView document];
  [document insertPage:pageCopy atIndex:index];
}

- (void)_layoutUpdateCropControllers
{
  if ([(SSSScreenshotView *)self gesturesEnabled]&& ![(SSSScreenshotView *)self cropHandlesFadedOut])
  {
    v3 = ![(SSSScreenshotView *)self isVICardPresented];
  }

  else
  {
    v3 = 0;
  }

  if ([(SSSScreenshotView *)self interactionMode]== 3)
  {
    v4 = 0;
    if (!v3)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = [(SSSScreenshotView *)self interactionMode]!= 4;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v5 = [(SSSScreenshotView *)self editMode]== 2;
LABEL_10:
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setCropEnabled:v3 & v4];
  [*(&self->_screenshotImageView + 2) setCropEnabled:v5];
  v6 = *(&self->_delegate + 2);
  cropView = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
  v8 = cropView;
  v9 = v6 == 0;
  v10 = v6 == 0;
  v11 = !v9;
  if (v9)
  {
    v12 = 10;
  }

  else
  {
    v12 = 26;
  }

  [cropView setHidden:v11];

  cropView2 = [*(&self->_screenshotImageView + 2) cropView];
  [cropView2 setHidden:v10];

  cropView3 = [*(&self->super.super.super.super.isa + v12) cropView];
  [(SSSScreenshotView *)self bounds];
  [cropView3 sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];

  v15 = *(&self->super._ss_vi2EnabledCacheIsValid + 1);
  screenshot = [(SSSScreenshotView *)self screenshot];
  snapUnitRects = [screenshot snapUnitRects];
  [v15 setSnapRects:snapUnitRects];

  v18 = *(&self->_screenshotImageView + 2);
  screenshot2 = [(SSSScreenshotView *)self screenshot];
  snapUnitRects2 = [screenshot2 snapUnitRects];
  [v18 setSnapRects:snapUnitRects2];

  if ([(SSSScreenshotView *)self state]== 1)
  {
    akController = [(SSSScreenshotView *)self akController];
    if ([akController onlyDrawWithApplePencil])
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setNumberOfTouchesRequiredForPanningCrop:v22];
    v23 = *(&self->_screenshotImageView + 2);

    [v23 setNumberOfTouchesRequiredForPanningCrop:v22];
  }
}

- (void)layoutSubviews
{
  screenshot = [(SSSScreenshotView *)self screenshot];

  if (!screenshot)
  {
    return;
  }

  [(SSSScreenshotView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  traitCollection = [(SSSScreenshotView *)self traitCollection];
  sub_10000F490(traitCollection, &v55);

  v13 = +[UIColor systemBlueColor];
  [(SSSScreenshotView *)self setInteractionTintColor:v13];

  [(SSSScreenshotView *)self _layoutUpdateCropControllers];
  if (BYTE2(self->_borderView) != 1)
  {
    [*(&self->_imageCropController + 2) setFrame:{v5, v7, v9, v11}];
    [*(&self->_pdfCropController + 2) setFrame:{v5, v7, v9, v11}];
  }

  [*(&self->_imageCropController + 2) setUseTrilinearMinificationFilter:{-[SSSScreenshotView useTrilinearMinificationFilter](self, "useTrilinearMinificationFilter")}];
  v14 = *(&self->_imageCropController + 2);
  viewModificationInfo = [(SSSScreenshotView *)self viewModificationInfo];
  [viewModificationInfo vellumOpacity];
  [v14 setVellumOpacity:?];

  v16 = *(&self->_pdfCropController + 2);
  viewModificationInfo2 = [(SSSScreenshotView *)self viewModificationInfo];
  [viewModificationInfo2 vellumOpacity];
  [v16 setVellumOpacity:?];

  v18 = 0.0;
  if ([(SSSScreenshotView *)self state])
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *(&v56 + 1);
  }

  [(SSSScreenshotView *)self geometryMultiplier];
  v21 = v19 * v20;
  if (BYTE2(self->_borderView))
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v19 * v20;
  }

  if (BYTE2(self->_borderView))
  {
    v23 = v21;
  }

  else
  {
    v23 = 0.0;
  }

  [*(&self->_imageCropController + 2) setCornerRadius:v22];
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setCornerRadius:v23];
  [*(&self->_screenshotImageView + 2) setCornerRadius:v23];
  [*(&self->_screenshotPDFView + 2) setFrame:{v5, v7, v9, v11}];
  if ([(SSSScreenshotView *)self state]== 1)
  {
    modelModificationInfo = [(SSSScreenshotView *)self modelModificationInfo];
    v25 = modelModificationInfo;
    if (modelModificationInfo)
    {
      [modelModificationInfo cropInfo];
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
    }

    v27 = sub_1000538C8(&v52);
    v18 = v29;
    v26 = v30;
    v28 = v31;
  }

  else
  {
    v26 = 1.0;
    v27 = 0.0;
    v28 = 1.0;
  }

  [*(&self->_screenshotPDFView + 2) setUnitRectForContent:{v27, v18, v26, v28, v52, v53, v54}];
  [(SSSScreenshotView *)self _updateGestures];
  UIRectInset();
  [*&self->_isShowingVICard setFrame:?];
  if ([(SSSScreenshotView *)self state])
  {
    if (_SSScreenshotsRedesign2025Enabled())
    {
      goto LABEL_24;
    }

    v32 = *&self->_isShowingVICard;
    v33 = 0.0;
  }

  else
  {
    v34 = *&self->_isShowingVICard;
    v35 = *&v56;
    [(SSSScreenshotView *)self geometryMultiplier];
    v33 = v35 * v36;
    v32 = v34;
  }

  [v32 _setCornerRadius:v33];
LABEL_24:
  if (!*(&self->_delegate + 2))
  {
    if ((BYTE3(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
    {
      [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropRect];
      v59.origin.x = 0.0;
      v59.origin.y = 0.0;
      v59.size.width = 1.0;
      v59.size.height = 1.0;
      BYTE3(self->_lastScreenshotImageViewFrameInScreen.size.height) = !CGRectEqualToRect(v58, v59);
    }

    v37 = (&self->_tapGesture + 2);
    if (CGRectIsEmpty(*(&self->_tapGesture + 2)) || (BYTE3(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
    {
      window = [(SSSScreenshotView *)self window];
      [*(&self->_imageCropController + 2) bounds];
      [window convertRect:*(&self->_imageCropController + 2) fromView:?];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      window2 = [(SSSScreenshotView *)self window];
      [window2 convertRect:0 toWindow:{v40, v42, v44, v46}];
      *v37 = v48;
      v37[1] = v49;
      v37[2] = v50;
      v37[3] = v51;
    }
  }
}

- (void)_updateGestures
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  gestureRecognizers = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) gestureRecognizers];
  v4 = [gestureRecognizers countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        [*(*(&v21 + 1) + 8 * v7) setAllowedTouchTypes:&off_1000BE780];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [gestureRecognizers countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  gestureRecognizers2 = [*(&self->_screenshotImageView + 2) gestureRecognizers];
  v9 = [gestureRecognizers2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(gestureRecognizers2);
        }

        [*(*(&v17 + 1) + 8 * v12) setAllowedTouchTypes:&off_1000BE780];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [gestureRecognizers2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  [*(&self->_hasFinishedPreparingForFullscreenExperience + 1) setEnabled:{-[SSSScreenshotView gesturesEnabled](self, "gesturesEnabled")}];
  if ([(SSSScreenshotView *)self annotationsEnabled])
  {
    v13 = [(SSSScreenshotView *)self editMode]== 1;
  }

  else
  {
    v13 = 0;
  }

  overlayController = [*(&self->_pdfCropController + 2) overlayController];
  [overlayController setGesturesEnabled:v13];

  v15 = [(SSSScreenshotView *)self annotationsEnabled]&& ![(SSSScreenshotView *)self editMode]&& [(SSSScreenshotView *)self interactionMode]== 1;
  overlayController2 = [*(&self->_imageCropController + 2) overlayController];
  [overlayController2 setGesturesEnabled:v15];
}

- (void)updateForFrame:(CGRect)frame
{
  if ((BYTE3(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
  {
    [(SSSScreenshotView *)self bounds:frame.origin.x];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [*(&self->_imageCropController + 2) setFrame:?];
    v13 = *(&self->_pdfCropController + 2);

    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (BOOL)_layoutPDFViewVerticalContentInsetToMatchImageView
{
  v3 = (&self->_tapGesture + 2);
  *&v38.origin.x = *(&self->_tapGesture + 2);
  v38.origin.y = *(&self->_lastScreenshotImageViewFrameInScreen.origin.x + 2);
  v38.size.width = *(&self->_lastScreenshotImageViewFrameInScreen.origin.y + 2);
  v38.size.height = *(&self->_lastScreenshotImageViewFrameInScreen.size.width + 2);
  IsEmpty = CGRectIsEmpty(v38);
  if (!IsEmpty)
  {
    _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
    documentScrollView = [_pdfView documentScrollView];

    window = [(SSSScreenshotView *)self window];
    [window convertRect:0 fromWindow:{*v3, v3[1], v3[2], v3[3]}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    window2 = [(SSSScreenshotView *)self window];
    [window2 convertRect:documentScrollView toView:{v9, v11, v13, v15}];
    v18 = v17;
    rect = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(SSSScreenshotView *)self bounds];
    [(SSSScreenshotView *)self convertRect:documentScrollView toView:?];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v24;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = v26;
    v40.origin.y = v28;
    v40.size.width = v30;
    v40.size.height = v32;
    v34 = MinY - CGRectGetMinY(v40);
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    MaxY = CGRectGetMaxY(v41);
    v42.origin.x = rect;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    [documentScrollView setContentInset:{v34, 0.0, MaxY - CGRectGetMaxY(v42), 0.0}];
  }

  return !IsEmpty;
}

- (void)_layoutPDFViewToMatchImageViewIfNeeded
{
  if ((BYTE2(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
  {
    screenshot = [(SSSScreenshotView *)self screenshot];
    pdfData = [screenshot pdfData];

    if (pdfData)
    {
      if ([(SSSScreenshotView *)self _layoutPDFViewVerticalContentInsetToMatchImageView])
      {
        screenshot2 = [(SSSScreenshotView *)self screenshot];
        visiblePDFPageWhenScreenshotted = [screenshot2 visiblePDFPageWhenScreenshotted];

        screenshot3 = [(SSSScreenshotView *)self screenshot];
        [screenshot3 visiblePDFRectWhenScreenshotted];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v32.origin.x = CGRectZero.origin.x;
        v32.origin.y = CGRectZero.origin.y;
        v32.size.width = CGRectZero.size.width;
        v32.size.height = CGRectZero.size.height;
        v31.origin.x = v9;
        v31.origin.y = v11;
        v31.size.width = v13;
        v31.size.height = v15;
        if (CGRectEqualToRect(v31, v32))
        {
          _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
          [_pdfView layoutDocumentView];
          document = [_pdfView document];
          v18 = [document pageAtIndex:visiblePDFPageWhenScreenshotted];

          [v18 boundsForBox:0];
          [_pdfView convertRect:v18 fromPage:?];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v27 = objc_opt_class();
          documentScrollView = [_pdfView documentScrollView];
          [v27 _zoomToRectWithinContentInsetBounds:documentScrollView scrollView:0 animated:{v20, v22, v24, v26}];
        }

        else
        {
          [(SSSScreenshotView *)self _goToPDFPage:visiblePDFPageWhenScreenshotted rect:0 force:v9, v11, v13, v15];
        }

        v29 = +[NSNotificationCenter defaultCenter];
        _internalPDFView = [(SSSScreenshotView *)self _internalPDFView];
        [v29 addObserver:self selector:"pageChanged:" name:PDFViewPageChangedNotification object:_internalPDFView];

        BYTE2(self->_lastScreenshotImageViewFrameInScreen.size.height) = 1;
      }
    }
  }
}

- (void)setRulerHostingView:(id)view
{
  v4 = *(&self->_pdfCropController + 2);
  viewCopy = view;
  [v4 setRulerHostView:viewCopy];
  [*(&self->_imageCropController + 2) setRulerHostView:viewCopy];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SSSScreenshotView;
  [(SSSScreenshotView *)&v3 safeAreaInsetsDidChange];
  [(SSSScreenshotView *)self setNeedsLayout];
}

- (CGRect)extent
{
  [*(&self->_screenshotPDFView + 2) extent];
  v3 = *(&self->_screenshotPDFView + 2);

  [(SSSScreenshotView *)self convertRect:v3 fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGAffineTransform)_transformToConvertFromRect:(SEL)rect toRect:(CGRect)toRect
{
  height = toRect.size.height;
  rect = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v8 = toRect.size.height;
  v9 = toRect.size.width;
  v10 = toRect.origin.y;
  v11 = toRect.origin.x;
  v13 = CGRectGetWidth(a5);
  v24.origin.x = v11;
  v24.origin.y = v10;
  v24.size.width = v9;
  v24.size.height = v8;
  v20 = v13 / CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = rect;
  v14 = CGRectGetHeight(v25);
  v26.origin.x = v11;
  v26.origin.y = v10;
  v26.size.width = v9;
  v26.size.height = height;
  v21 = v14 / CGRectGetHeight(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = rect;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v11;
  v28.origin.y = v10;
  v28.size.width = v9;
  v28.size.height = height;
  v19 = MinX - v20 * CGRectGetMinX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = rect;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = v11;
  v30.origin.y = v10;
  v30.size.width = v9;
  v30.size.height = height;
  v18 = CGRectGetMinY(v30);
  retstr->a = v20;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = v21;
  retstr->tx = v19;
  retstr->ty = MinY - v21 * v18;
  return result;
}

+ (CGRect)_scaledAndCenteredRect:(CGRect)rect withinRect:(CGRect)withinRect
{
  height = withinRect.size.height;
  width = withinRect.size.width;
  y = withinRect.origin.y;
  x = withinRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v18 = rect.origin.y;
  v11 = rect.origin.x;
  v19 = CGRectGetWidth(withinRect);
  v22.origin.x = v11;
  v22.origin.y = v10;
  v22.size.width = v9;
  v22.size.height = v8;
  v20 = v19 / CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v12 = CGRectGetHeight(v23);
  v24.origin.x = v11;
  v24.origin.y = v18;
  v24.size.width = v9;
  v24.size.height = v8;
  v13 = fmin(v20, v12 / CGRectGetHeight(v24));
  CGAffineTransformMakeScale(&v21, v13, v13);
  v25.origin.x = v11;
  v25.origin.y = v18;
  v25.size.width = v9;
  v25.size.height = v8;
  CGRectApplyAffineTransform(v25, &v21);
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (void)_zoomToRectWithinContentInsetBounds:(CGRect)bounds scrollView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  [viewCopy frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [viewCopy contentInset];
  [self _scaledAndCenteredRect:x withinRect:{y, width, height, v13 + v20, v15 + v21, v17 - (v20 + v22), v19 - (v21 + v23)}];
  memset(&v24[1], 0, sizeof(CGAffineTransform));
  [self _transformToConvertFromRect:? toRect:?];
  [viewCopy frame];
  v24[0] = v24[1];
  v26 = CGRectApplyAffineTransform(v25, v24);
  [viewCopy zoomToRect:animatedCopy animated:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
}

- (void)setState:(unint64_t)state
{
  if (*(&self->_screenshot + 2) != state)
  {
    *(&self->_screenshot + 2) = state;
    [(SSSScreenshotView *)self _stopFlash];
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setState:state];
    [*(&self->_imageCropController + 2) setState:state];

    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)cropController:(id)controller changedToCropRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  modelModificationInfo = [(SSSScreenshotView *)self modelModificationInfo];
  v6 = modelModificationInfo;
  if (modelModificationInfo)
  {
    [modelModificationInfo cropInfo];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  v7.f64[0] = x;
  v7.f64[1] = y;
  v8.f64[0] = width;
  v8.f64[1] = height;
  v23 = vmulq_f64(v7, v22);
  v24 = vmulq_f64(v8, v22);
  screenshot = [(SSSScreenshotView *)self screenshot];
  environmentDescription = [screenshot environmentDescription];
  [environmentDescription imageScale];

  SSRoundRectToScale();
  v23.f64[0] = v11;
  v23.f64[1] = v12;
  v24.f64[0] = v13;
  v24.f64[1] = v14;
  viewModificationInfo = [(SSSScreenshotView *)self viewModificationInfo];
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [viewModificationInfo setCropInfo:v21];

  [(SSSScreenshotView *)self promoteViewValueToModelValueForKey:0];
  v16 = +[SSStatisticsManager sharedStatisticsManager];
  [v16 fullscreenExperienceHadCropEvent];
}

- (void)cropControllerCropRectDidChange:(id)change
{
  v4 = os_log_create("com.apple.screenshotservices", "Editing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    modelModificationInfo = [(SSSScreenshotView *)self modelModificationInfo];
    v6 = modelModificationInfo;
    if (modelModificationInfo)
    {
      [modelModificationInfo cropInfo];
      v8 = v14;
      v7 = v13;
      v10 = v16;
      v9 = v15;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    v11 = NSStringFromCGRect(*&v7);
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User did crop to %@", buf, 0xCu);
  }

  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotViewCropDidChange:self];

  if ([(SSSScreenshotView *)self shouldReanalyzeImageForCurrentInteractionMode])
  {
    [*(&self->_imageCropController + 2) reanalyzeImage];
  }
}

- (void)commitInflightEdits
{
  [(SSSScreenshotView *)self _commitCropControllerInflightEdits];
  akController = [(SSSScreenshotView *)self akController];
  [akController commitEditing];
}

- (void)_commitCropControllerInflightEdits
{
  v3 = *(&self->_delegate + 2);
  if (!v3)
  {
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) commitInflightEdits];
    v3 = *(&self->_delegate + 2);
  }

  if (v3 == 2)
  {
    [*(&self->_screenshotImageView + 2) commitInflightEdits];

    [(SSSScreenshotView *)self doneCrop];
  }
}

- (void)_handleTap
{
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotViewTapped:self];
}

- (void)prepareForFullscreenExperience
{
  if ((BYTE2(self->_borderView) & 1) == 0)
  {
    BYTE2(self->_borderView) = 1;
    v4 = *(&self->_pdfCropController + 2);
    screenshot = [(SSSScreenshotView *)self screenshot];
    [v4 setScreenshot:screenshot];

    v6 = *(&self->_imageCropController + 2);
    screenshot2 = [(SSSScreenshotView *)self screenshot];
    [v6 setScreenshot:screenshot2];

    if ([*(&self->_pdfCropController + 2) didFailToWritePDFToURL])
    {
      [(SSSScreenshotView *)self setDidFailToWritePDFToURL:1];
      delegate = [(SSSScreenshotView *)self delegate];
      [delegate screenshotViewDidFailToWritePDFToURL:self];
    }

    overlayController = [*(&self->_pdfCropController + 2) overlayController];
    [(SSSScreenshotView *)self _prepareGesturesForOverlayController:overlayController];

    overlayController2 = [*(&self->_imageCropController + 2) overlayController];
    [(SSSScreenshotView *)self _prepareGesturesForOverlayController:overlayController2];

    [(SSSScreenshotView *)self setNeedsLayout];
    v11 = *(&self->super._ss_vi2EnabledCacheIsValid + 1);

    [v11 prepareForFullscreenExperience:1];
  }
}

- (void)finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:(BOOL)screenshot
{
  if ((BYTE3(self->_borderView) & 1) == 0)
  {
    screenshotCopy = screenshot;
    BYTE3(self->_borderView) = 1;
    [*(&self->_pdfCropController + 2) setOverlayControllerActive:0];
    [*(&self->_imageCropController + 2) setOverlayControllerActive:1];
    if (screenshotCopy)
    {
      delegate = [(SSSScreenshotView *)self delegate];
      [delegate screenshotView:self requestsUpdateToInteractionMode:{-[SSSScreenshotView interactionMode](self, "interactionMode")}];
    }
  }
}

- (void)deselectAllAnnotations
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    currentView = [(SSSScreenshotView *)self currentView];
    [currentView deselectAllAnnotations];
  }

  akController = [(SSSScreenshotView *)self akController];
  modelController = [akController modelController];
  [modelController deselectAllAnnotations];
}

- (void)imageViewDidUpdateInteraction:(id)interaction withAnalysis:(id)analysis
{
  analysisCopy = analysis;
  interactionCopy = interaction;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self didUpdateInteraction:interactionCopy withAnalysis:analysisCopy];
}

- (void)imageView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode
{
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self requestsUpdateToInteractionMode:mode];
}

- (void)imageViewDidLoadImage:(id)image
{
  [*(&self->_imageCropController + 2) setInhibitImageAnalysis:0];
  drawingGestureRecognizer = [*(&self->_imageCropController + 2) drawingGestureRecognizer];
  if (drawingGestureRecognizer)
  {
    v6 = drawingGestureRecognizer;
    delegate = [(SSSScreenshotView *)self delegate];
    [delegate screenshotView:self hasHighPriorityGesture:v6];

    drawingGestureRecognizer = v6;
  }
}

- (void)imageView:(id)view viCardIsPresentedDidChange:(BOOL)change
{
  if (change)
  {
    delegate = [(SSSScreenshotView *)self delegate];
    [delegate screenshotViewDidInvokeVICard:self];
  }

  v7 = dispatch_time(0, 50000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007740;
  v8[3] = &unk_1000BA0B8;
  v8[4] = self;
  changeCopy = change;
  dispatch_after(v7, &_dispatch_main_q, v8);
}

- (void)imageView:(id)view isDraggingVISheetDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self isDraggingVISheetDidChange:changeCopy];
}

- (void)imageView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self startEditingOpacityInAccessoryView:accessoryViewCopy];
}

- (void)pdfView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self startEditingOpacityInAccessoryView:accessoryViewCopy];
}

- (void)setCropHandlesFadedOut:(BOOL)out
{
  if (self->_hasCroppedImageView != out)
  {
    self->_hasCroppedImageView = out;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)flash
{
  [(SSSScreenshotView *)self _stopFlash];
  screenshot = [(SSSScreenshotView *)self screenshot];
  environmentDescription = [screenshot environmentDescription];

  if ([environmentDescription presentationMode] == 3)
  {
    externalFlashLayerRenderID = [environmentDescription externalFlashLayerRenderID];
    externalFlashLayerContextID = [environmentDescription externalFlashLayerContextID];
    if (externalFlashLayerRenderID)
    {
      v7 = externalFlashLayerContextID;
      if (externalFlashLayerContextID)
      {
        v8 = objc_alloc_init(SSSPortalView);
        v9 = *&self->_isShowingVICard;
        *&self->_isShowingVICard = v8;

        [*&self->_isShowingVICard setSourceLayerRenderId:externalFlashLayerRenderID];
        [*&self->_isShowingVICard setSourceContextId:v7];
        [*&self->_isShowingVICard setHidesSourceView:1];
        [*&self->_isShowingVICard setMatchesAlpha:1];
        [*&self->_isShowingVICard setMatchesPosition:1];
        [*&self->_isShowingVICard setMatchesTransform:1];
        [(SSSScreenshotView *)self addSubview:*&self->_isShowingVICard];
        [(SSSScreenshotView *)self setNeedsLayout];
        [(SSSScreenshotView *)self layoutIfNeeded];
        [SSFlashView expectedAnimationDurationForStyle:2];
        v11 = v10;
        v12 = dispatch_time(0, (fmax(v10 + -0.75, 0.0) * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100007C9C;
        block[3] = &unk_1000BA068;
        block[4] = self;
        dispatch_after(v12, &_dispatch_main_q, block);
        v13 = dispatch_time(0, (v11 * 1000000000.0));
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100007CB4;
        v24[3] = &unk_1000BA068;
        v24[4] = self;
        dispatch_after(v13, &_dispatch_main_q, v24);
      }
    }
  }

  else
  {
    screenshot2 = [(SSSScreenshotView *)self screenshot];
    environmentDescription2 = [screenshot2 environmentDescription];
    serviceOptions = [environmentDescription2 serviceOptions];
    flashStyle = [serviceOptions flashStyle];

    if (_SSScreenshotsRedesign2025Enabled())
    {
      v18 = 2;
    }

    else
    {
      v18 = flashStyle != 0;
    }

    v19 = [SSFlashView flashViewForStyle:v18];
    v20 = *&self->_isShowingVICard;
    *&self->_isShowingVICard = v19;

    if (_SSScreenshotsRedesign2025Enabled() && (_SSPIPExperienceEnabled() & 1) == 0)
    {
      traitCollection = [(SSSScreenshotView *)self traitCollection];
      [traitCollection displayCornerRadius];
      [*&self->_isShowingVICard _setContinuousCornerRadius:?];

      [*&self->_isShowingVICard setClipsToBounds:1];
    }

    [(SSSScreenshotView *)self addSubview:*&self->_isShowingVICard];
    [(SSSScreenshotView *)self setNeedsLayout];
    [(SSSScreenshotView *)self layoutIfNeeded];
    v22 = *&self->_isShowingVICard;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007CBC;
    v23[3] = &unk_1000BA068;
    v23[4] = self;
    [v22 flashWithCompletion:v23];
  }
}

- (BOOL)shouldFlash
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  environmentDescription = [screenshot environmentDescription];

  if ([environmentDescription presentationMode] == 3)
  {
    if (![environmentDescription externalFlashLayerRenderID] || !objc_msgSend(environmentDescription, "externalFlashLayerContextID"))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([environmentDescription presentationMode] == 1)
  {
LABEL_6:
    v4 = 1;
    goto LABEL_10;
  }

  if (!_SSScreenshotsRedesign2025Enabled())
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v4 = [environmentDescription presentationMode] == 2;
LABEL_10:

  return v4;
}

- (void)_stopFlash
{
  [*&self->_isShowingVICard removeFromSuperview];
  v3 = *&self->_isShowingVICard;
  *&self->_isShowingVICard = 0;

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)setScreenshotEditsSnapshotted:(BOOL)snapshotted inTransition:(BOOL)transition currentScreenshot:(BOOL)screenshot
{
  screenshotCopy = screenshot;
  transitionCopy = transition;
  snapshottedCopy = snapshotted;
  if (![(SSSScreenshotView *)self screenshotEditsSnapshotted]&& snapshottedCopy && ![(SSSScreenshotView *)self isBeingRemoved])
  {
    [(SSSScreenshotView *)self _logEditsInScreenshotForAnalytics];
    v9 = +[SSSScreenshotManager sharedScreenshotManager];
    screenshot = [(SSSScreenshotView *)self screenshot];
    [v9 saveEditsToScreenshotIfNecessary:screenshot inTransition:transitionCopy];
  }

  screenshotEditsSnapshotted = [*(&self->_imageCropController + 2) screenshotEditsSnapshotted];
  if ((!transitionCopy || screenshotCopy) && screenshotEditsSnapshotted != snapshottedCopy)
  {
    [*(&self->_imageCropController + 2) setScreenshotEditsSnapshotted:snapshottedCopy];
    screenshot2 = [(SSSScreenshotView *)self screenshot];
    pdfData = [screenshot2 pdfData];

    if (pdfData)
    {
      v14 = *(&self->_pdfCropController + 2);

      [v14 setScreenshotEditsSnapshotted:snapshottedCopy];
    }
  }
}

- (void)_logEditsInScreenshotForAnalytics
{
  _numberOfDrawingStrokesInScreenshot = [(SSSScreenshotView *)self _numberOfDrawingStrokesInScreenshot];
  screenshot = [(SSSScreenshotView *)self screenshot];
  if ([screenshot hasEverBeenEditedForMode:0] && objc_msgSend(*(&self->_imageCropController + 2), "didDrawPenStroke"))
  {

    if (!_numberOfDrawingStrokesInScreenshot)
    {
      v5 = +[SSStatisticsManager sharedStatisticsManager];
      [v5 didAccidentallyDraw];

      v6 = os_log_create("com.apple.screenshotservices", "Editing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving Edits to screenshot: User did make drawing mark and undid or erased all changes", &v16, 2u);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  screenshot2 = [(SSSScreenshotView *)self screenshot];
  if ([screenshot2 hasEverBeenEditedForMode:0])
  {
    didDrawPenStroke = [*(&self->_imageCropController + 2) didDrawPenStroke];

    if (!didDrawPenStroke)
    {
      goto LABEL_13;
    }

    v9 = +[SSStatisticsManager sharedStatisticsManager];
    [v9 drewStrokes:_numberOfDrawingStrokesInScreenshot];

    screenshot2 = os_log_create("com.apple.screenshotservices", "Editing");
    if (os_log_type_enabled(screenshot2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = _numberOfDrawingStrokesInScreenshot;
      _os_log_impl(&_mh_execute_header, screenshot2, OS_LOG_TYPE_DEFAULT, "Saving Edits to screenshot: User drew %lu strokes", &v16, 0xCu);
    }
  }

LABEL_13:
  screenshot3 = [(SSSScreenshotView *)self screenshot];
  modelModificationInfo = [screenshot3 modelModificationInfo];
  annotations = [modelModificationInfo annotations];
  v13 = [annotations count];

  v14 = +[SSStatisticsManager sharedStatisticsManager];
  [v14 logTotalAnnotations:v13];

  v15 = os_log_create("com.apple.screenshotservices", "Editing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving Edits to screenshot: User added %lu annotations", &v16, 0xCu);
  }
}

- (int64_t)_numberOfDrawingStrokesInScreenshot
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  modelModificationInfo = [screenshot modelModificationInfo];
  annotations = [modelModificationInfo annotations];
  v4 = [annotations count];

  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    modelModificationInfo2 = [screenshot modelModificationInfo];
    annotations2 = [modelModificationInfo2 annotations];

    v7 = [annotations2 countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v7)
    {
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(annotations2);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v22 = 0;
          v23 = &v22;
          v24 = 0x2050000000;
          v11 = qword_1000D49E0;
          v25 = qword_1000D49E0;
          if (!qword_1000D49E0)
          {
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100009F30;
            v21[3] = &unk_1000B9FA8;
            v21[4] = &v22;
            sub_100009F30(v21);
            v11 = v23[3];
          }

          v12 = v11;
          _Block_object_dispose(&v22, 8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            drawing = [v10 drawing];
            strokes = [drawing strokes];
            v7 = [strokes count];

            goto LABEL_14;
          }
        }

        v7 = [annotations2 countByEnumeratingWithState:&v17 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)screenshotEditsSnapshotted
{
  currentView = [(SSSScreenshotView *)self currentView];
  screenshotEditsSnapshotted = [currentView screenshotEditsSnapshotted];

  return screenshotEditsSnapshotted;
}

- (AKController)akController
{
  _currentOverlayController = [(SSSScreenshotView *)self _currentOverlayController];
  annotationKitController = [_currentOverlayController annotationKitController];

  return annotationKitController;
}

- (id)_findTextViewFirstResponderUnderView:(id)view
{
  if ([(SSSScreenshotView *)self _isAncestorOfFirstResponder])
  {
    firstResponder = [(SSSScreenshotView *)self firstResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = firstResponder;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)rectToCenterAboveKeyboard
{
  _currentOverlayController = [(SSSScreenshotView *)self _currentOverlayController];
  [_currentOverlayController rectToCenterAboveKeyboard];
  x = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v30.origin.x = x;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  v33.origin.x = CGRectNull.origin.x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (!CGRectEqualToRect(v30, v33))
  {
    currentView = [(SSSScreenshotView *)self currentView];
    [(SSSScreenshotView *)self convertRect:currentView fromView:x, v7, v9, v11];
    x = v16;
    v7 = v17;
    v9 = v18;
    v11 = v19;
  }

  v31.origin.x = x;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  if (CGRectIsNull(v31) && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
  {
    v20 = [(SSSScreenshotView *)self _findTextViewFirstResponderUnderView:self];
    v21 = v20;
    if (v20)
    {
      [v20 bounds];
      [(SSSScreenshotView *)self convertRect:v21 fromView:?];
      x = v22;
      v7 = v23;
      v9 = v24;
      v11 = v25;
    }
  }

  if (([(SSSScreenshotView *)self _isAncestorOfFirstResponder]& 1) == 0)
  {
    v11 = height;
    v9 = width;
    v7 = y;
    x = CGRectNull.origin.x;
  }

  v26 = x;
  v27 = v7;
  v28 = v9;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_prepareGesturesForOverlayController:(id)controller
{
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  gestureRecognizers = [controllerCopy gestureRecognizers];
  v6 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        [(SSSScreenshotView *)self addGestureRecognizer:*(*(&v14 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  panGestureRecognizer = [controllerCopy panGestureRecognizer];
  rotationGestureRecognizer = [controllerCopy rotationGestureRecognizer];
  panGestureRecognizer2 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) panGestureRecognizer];
  pinchGestureRecognizer = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) pinchGestureRecognizer];
  if (panGestureRecognizer)
  {
    [panGestureRecognizer2 requireGestureRecognizerToFail:panGestureRecognizer];
    [pinchGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer];
  }

  if (rotationGestureRecognizer)
  {
    [panGestureRecognizer2 requireGestureRecognizerToFail:rotationGestureRecognizer];
    [pinchGestureRecognizer requireGestureRecognizerToFail:rotationGestureRecognizer];
  }
}

- (void)setAnnotationsEnabled:(BOOL)enabled
{
  if (self->_hasPositionedPDFViewToMatchImageView != enabled)
  {
    self->_hasPositionedPDFViewToMatchImageView = enabled;
    [*(&self->_imageCropController + 2) setAnnotationsEnabled:?];

    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (id)_currentOverlayController
{
  currentView = [(SSSScreenshotView *)self currentView];
  overlayController = [currentView overlayController];

  return overlayController;
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  currentView = [(SSSScreenshotView *)self currentView];
  [currentView updatePaletteVisibilityIfNecessary:necessaryCopy];
}

- (UIView)viewContainingScreenshotContents
{
  currentView = [(SSSScreenshotView *)self currentView];
  viewWithScreenshotImage = [currentView viewWithScreenshotImage];

  return viewWithScreenshotImage;
}

- (UIViewController)viewControllerForOverlayPresentations
{
  delegate = [(SSSScreenshotView *)self delegate];
  v4 = [delegate viewControllerForPresentationsFromScreenshotView:self];

  return v4;
}

- (UIView)contentSnapshot
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  modelModificationInfo = [screenshot modelModificationInfo];
  v5 = modelModificationInfo;
  if (modelModificationInfo)
  {
    [modelModificationInfo cropInfo];
    v6 = v14;
    v7 = v13;
    v8 = v16;
    v9 = v15;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  currentView = [(SSSScreenshotView *)self currentView];
  v11 = [currentView resizableSnapshotViewFromRect:1 afterScreenUpdates:v7 withCapInsets:{v6, v9, v8, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v11;
}

- (void)requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self hasHighPriorityGesture:recognizerCopy];
}

- (void)requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:(id)recognizers
{
  recognizersCopy = recognizers;
  delegate = [(SSSScreenshotView *)self delegate];
  [delegate screenshotView:self noLongerHasHighPriorityGesture:recognizersCopy];
}

- (void)setGesturesEnabled:(BOOL)enabled
{
  if (HIBYTE(self->_lastScreenshotImageViewFrameInScreen.size.height) != enabled)
  {
    HIBYTE(self->_lastScreenshotImageViewFrameInScreen.size.height) = enabled;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  currentView = [(SSSScreenshotView *)self currentView];
  [currentView convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  currentView2 = [(SSSScreenshotView *)self currentView];
  v14 = [currentView2 pointInside:eventCopy withEvent:{v10, v12}];

  editMode = [(SSSScreenshotView *)self editMode];
  v16 = &OBJC_IVAR___SSSScreenshotView__pdfCropController;
  if (!editMode)
  {
    v16 = &OBJC_IVAR___SSSScreenshotView__imageCropController;
  }

  cropView = [*(&self->super.super.super.super.isa + *v16) cropView];
  [cropView convertPoint:self fromView:{x, y}];
  v18 = [cropView pointInside:eventCopy withEvent:?];
  v21.receiver = self;
  v21.super_class = SSSScreenshotView;
  v19 = v14 & [(SSSScreenshotView *)&v21 pointInside:eventCopy withEvent:x, y]| v18;

  return v19 & 1;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(SSSScreenshotView *)self state]== 1 && [(SSSScreenshotView *)self editMode]== 1)
  {
    _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
    [(SSSScreenshotView *)self convertPoint:_pdfView toView:x, y];
    v10 = v9;
    v12 = v11;

    _pdfView2 = [*(&self->_pdfCropController + 2) _pdfView];
    v14 = [_pdfView2 hitTest:eventCopy withEvent:{v10, v12}];
  }

  else
  {
    if ([(SSSScreenshotView *)self state])
    {
      v17.receiver = self;
      v17.super_class = SSSScreenshotView;
      selfCopy = [(SSSScreenshotView *)&v17 hitTest:eventCopy withEvent:x, y];
    }

    else
    {
      selfCopy = self;
    }

    v14 = selfCopy;
  }

  return v14;
}

- (void)setEditMode:(int64_t)mode
{
  if (*(&self->_delegate + 2) != mode)
  {
    *(&self->_delegate + 2) = mode;
    v5 = (&self->_imageCropController + 2);
    [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
    [*(&self->_screenshotImageView + 2) setEditMode:mode];
    if (mode == 2)
    {
      BYTE4(self->_lastScreenshotImageViewFrameInScreen.size.height) = 1;
    }

    else if (mode == 1 && BYTE4(self->_lastScreenshotImageViewFrameInScreen.size.height) == 1)
    {
      [(SSSScreenshotView *)self _layoutPDFViewVerticalContentInsetToMatchImageView];
      _pdfView = [*(&self->_pdfCropController + 2) _pdfView];
      documentScrollView = [_pdfView documentScrollView];

      [documentScrollView contentInset];
      [documentScrollView setContentInset:{fmax(v8, 118.0)}];
    }

    cropView = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
    [cropView setHidden:*(&self->_delegate + 2) != 0];

    cropView2 = [*(&self->_screenshotImageView + 2) cropView];
    [cropView2 setHidden:*(&self->_delegate + 2) == 0];

    if (!*(&self->_delegate + 2))
    {
      v5 = (&self->_pdfCropController + 2);
    }

    [*v5 setOverlayControllerActive:0];
    currentView = [(SSSScreenshotView *)self currentView];
    [currentView setOverlayControllerActive:1];

    screenshot = [(SSSScreenshotView *)self screenshot];
    [screenshot setLastViewEditMode:mode];

    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)adjustPDFPositioningToMatchImageIfNecessary
{
  if ([(SSSScreenshotView *)self editMode]== 1)
  {

    [(SSSScreenshotView *)self _layoutPDFViewToMatchImageViewIfNeeded];
  }
}

- (void)enterCrop
{
  currentCropController = [(SSSScreenshotView *)self currentCropController];
  [currentCropController enterCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)resetCrop
{
  currentCropController = [(SSSScreenshotView *)self currentCropController];
  [currentCropController resetCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)doneCrop
{
  currentCropController = [(SSSScreenshotView *)self currentCropController];
  [currentCropController doneCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)cancelCrop
{
  currentCropController = [(SSSScreenshotView *)self currentCropController];
  [currentCropController cancelCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (BOOL)isCropped
{
  currentCropController = [(SSSScreenshotView *)self currentCropController];
  isCropped = [currentCropController isCropped];

  return isCropped;
}

- (id)_imageAnalysisAaButtonIfExists
{
  if (*(&self->_delegate + 2))
  {
    analysisButton = 0;
  }

  else
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    analysisButton = [imageInteraction analysisButton];
  }

  imageInteraction2 = [*(&self->_imageCropController + 2) imageInteraction];
  [imageInteraction2 setAnalysisButtonPrefersDarkGlyphWhenSelected:1];

  v6 = +[UIColor whiteColor];
  [analysisButton setTintColor:v6];

  return analysisButton;
}

- (id)_imageAnalysisAaBarButtonItemIfExists
{
  if (*(&self->_delegate + 2))
  {
    analysisBarButtonItem = 0;
  }

  else
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    analysisBarButtonItem = [imageInteraction analysisBarButtonItem];
  }

  return analysisBarButtonItem;
}

- (id)_visualSearchCornerViewIfExists
{
  traitCollection = [(SSSScreenshotView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (_SSQuickActionsEnabled() && userInterfaceIdiom || *(&self->_delegate + 2))
  {
    visualSearchCornerView = 0;
  }

  else
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    visualSearchCornerView = [imageInteraction visualSearchCornerView];
  }

  return visualSearchCornerView;
}

- (id)_actionInfoViewIfExists
{
  if (_SSQuickActionsEnabled() && ![(_SSSVI2View *)self _ss_vi2Enabled])
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    v5 = imageInteraction;
    if (*(&self->_delegate + 2))
    {
      customLayoutActionInfoView = 0;
    }

    else
    {
      customLayoutActionInfoView = [imageInteraction customLayoutActionInfoView];
      if (customLayoutActionInfoView)
      {
        [v5 setActionInfoEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
        [v5 setPreferredQuickActionButtonHeight:35.0];
        [v5 setActionInfoLiveTextButtonDisabled:1];
        [v5 setActionInfoVisualSearchCornerViewDisabled:1];
      }
    }
  }

  else
  {
    customLayoutActionInfoView = 0;
  }

  return customLayoutActionInfoView;
}

- (id)_omnibarContainerViewIfExists
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    if ((objc_opt_respondsToSelector() & 1) != 0 && !*(&self->_delegate + 2))
    {
      omnibarContainerView = [imageInteraction omnibarContainerView];
      if (omnibarContainerView)
      {
        [imageInteraction setActionInfoEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
        [imageInteraction setPreferredQuickActionButtonHeight:35.0];
        [imageInteraction setActionInfoLiveTextButtonDisabled:1];
        [imageInteraction setActionInfoVisualSearchCornerViewDisabled:1];
      }
    }

    else
    {
      omnibarContainerView = 0;
    }
  }

  else
  {
    omnibarContainerView = 0;
  }

  return omnibarContainerView;
}

- (int64_t)currentPDFPage
{
  if (*(&self->_delegate + 2))
  {
    return [*(&self->_pdfCropController + 2) currentPDFPage];
  }

  else
  {
    return 0;
  }
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_viewState
{
  editMode = [(SSSScreenshotView *)self editMode];
  currentPDFPage = [(SSSScreenshotView *)self currentPDFPage];
  v5 = editMode;
  result.var1 = currentPDFPage;
  result.var0 = v5;
  return result;
}

- (void)pageChanged:(id)changed
{
  editMode = [(SSSScreenshotView *)self editMode];
  currentPDFPage = [*(&self->_pdfCropController + 2) currentPDFPage];
  screenshot = [(SSSScreenshotView *)self screenshot];
  v7 = [screenshot modelModificationInfoForState:{editMode, currentPDFPage}];
  v8 = v7;
  if (v7)
  {
    [v7 cropInfo];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v9 = sub_1000538C8(v16);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [*(&self->_screenshotImageView + 2) setPageCropRect:{v9, v11, v13, v15}];
}

- (id)currentView
{
  if (*(&self->_delegate + 2))
  {
    v2 = &OBJC_IVAR___SSSScreenshotView__screenshotPDFView;
  }

  else
  {
    v2 = &OBJC_IVAR___SSSScreenshotView__screenshotImageView;
  }

  return *(&self->super.super.super.super.isa + *v2);
}

- (id)currentCropController
{
  if (*(&self->_delegate + 2))
  {
    v2 = &OBJC_IVAR___SSSScreenshotView__pdfCropController;
  }

  else
  {
    v2 = &OBJC_IVAR___SSSScreenshotView__imageCropController;
  }

  return *(&self->super.super.super.super.isa + *v2);
}

- (id)viewModificationInfo
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  v6 = [screenshot viewModificationInfoForState:{_viewState, v5}];

  return v6;
}

- (id)modelModificationInfo
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  v6 = [screenshot modelModificationInfoForState:{_viewState, v5}];

  return v6;
}

- (void)promoteViewValueToModelValueForKey:(unint64_t)key
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  [screenshot promoteViewValueToModelValueForKey:key forState:{_viewState, v6}];
}

- (void)undo
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  [screenshot undoForViewState:{_viewState, v4}];
}

- (void)redo
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  [screenshot redoForViewState:{_viewState, v4}];
}

- (BOOL)canUndo
{
  selfCopy = self;
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)selfCopy _viewState];
  LOBYTE(selfCopy) = [screenshot canUndoForViewState:{_viewState, v5}];

  return selfCopy;
}

- (BOOL)canRedo
{
  selfCopy = self;
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)selfCopy _viewState];
  LOBYTE(selfCopy) = [screenshot canRedoForViewState:{_viewState, v5}];

  return selfCopy;
}

- (void)revert
{
  screenshot = [(SSSScreenshotView *)self screenshot];
  _viewState = [(SSSScreenshotView *)self _viewState];
  [screenshot revertForViewState:{_viewState, v4}];
}

- (void)prepareForGestureScreenshotBasedAnimation
{
  if (![(SSSScreenshotView *)self isBeingRemoved])
  {
    v3 = *(&self->_imageCropController + 2);

    [v3 bringCachedImageViewToFront];
  }
}

- (void)cleanUpAfterGestureScreenshotBasedAnimation
{
  if (![(SSSScreenshotView *)self isBeingRemoved])
  {
    v3 = *(&self->_imageCropController + 2);

    [v3 updateCachedImageViewLocation];
  }
}

- (VKCImageAnalysis)currentImageAnalysis
{
  if ([(SSSScreenshotView *)self editMode])
  {
    analysis = 0;
  }

  else
  {
    imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
    analysis = [imageInteraction analysis];
  }

  return analysis;
}

- (NSString)vsGlyph
{
  imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
  visualSearchResultItems = [imageInteraction visualSearchResultItems];
  firstObject = [visualSearchResultItems firstObject];
  infoButtonGlyphName = [firstObject infoButtonGlyphName];

  return infoButtonGlyphName;
}

- (NSString)vsGlyphFilled
{
  imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
  visualSearchResultItems = [imageInteraction visualSearchResultItems];
  firstObject = [visualSearchResultItems firstObject];
  filledInfoButtonGlyphName = [firstObject filledInfoButtonGlyphName];

  return filledInfoButtonGlyphName;
}

- (void)dismissVISheetIfNecessary
{
  imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
  [imageInteraction dismissVisualIntelligenceSheetIfNecessary];
}

- (BOOL)isShowingVICard
{
  imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
  isVisualIntelligenceSheetVisible = [imageInteraction isVisualIntelligenceSheetVisible];

  return isVisualIntelligenceSheetVisible;
}

- (BOOL)isVICardFullScreen
{
  imageInteraction = [*(&self->_imageCropController + 2) imageInteraction];
  [imageInteraction currentVisualIntelligenceSheetProgress];
  v4 = v3 > 0.75;

  return v4;
}

- (UIActivity)visionKitFeedbackActivity
{
  if (*(&self->_delegate + 2))
  {
    visionKitFeedbackActivity = 0;
  }

  else
  {
    visionKitFeedbackActivity = [*(&self->_imageCropController + 2) visionKitFeedbackActivity];
  }

  return visionKitFeedbackActivity;
}

- (CGRect)cropOverlayViewRectInWindow
{
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropOverlayViewRectInWindow];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setExtent:(CGRect)extent
{
  *(&self->_editMode + 2) = *&extent.origin.x;
  *(&self->_extent.origin.x + 2) = extent.origin.y;
  *(&self->_extent.origin.y + 2) = extent.size.width;
  *(&self->_extent.size.width + 2) = extent.size.height;
}

- (SSSScreenshotViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained((&self->_interactionMode + 2));

  return WeakRetained;
}

@end