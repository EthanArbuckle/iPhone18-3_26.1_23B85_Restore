@interface SSSScreenshotView
+ (CGAffineTransform)_transformToConvertFromRect:(SEL)a3 toRect:(CGRect)a4;
+ (CGRect)_scaledAndCenteredRect:(CGRect)a3 withinRect:(CGRect)a4;
+ (void)_zoomToRectWithinContentInsetBounds:(CGRect)a3 scrollView:(id)a4 animated:(BOOL)a5;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_viewState;
- (AKController)akController;
- (BOOL)_layoutPDFViewVerticalContentInsetToMatchImageView;
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)isCropped;
- (BOOL)isShowingVICard;
- (BOOL)isVICardFullScreen;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)screenshotEditsSnapshotted;
- (BOOL)shouldFlash;
- (CGRect)cropOverlayViewRectInWindow;
- (CGRect)extent;
- (CGRect)rectToCenterAboveKeyboard;
- (NSString)vsGlyph;
- (NSString)vsGlyphFilled;
- (SSSScreenshotView)initWithFrame:(CGRect)a3;
- (SSSScreenshotViewDelegate)delegate;
- (UIActivity)visionKitFeedbackActivity;
- (UIView)contentSnapshot;
- (UIView)viewContainingScreenshotContents;
- (UIViewController)viewControllerForOverlayPresentations;
- (VKCImageAnalysis)currentImageAnalysis;
- (id)_actionInfoViewIfExists;
- (id)_currentOverlayController;
- (id)_findTextViewFirstResponderUnderView:(id)a3;
- (id)_imageAnalysisAaBarButtonItemIfExists;
- (id)_imageAnalysisAaButtonIfExists;
- (id)_omnibarContainerViewIfExists;
- (id)_visualSearchCornerViewIfExists;
- (id)currentCropController;
- (id)currentView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)modelModificationInfo;
- (id)screenshotRepresentationAKControllerForPDF;
- (id)undoManager;
- (id)viewModificationInfo;
- (int64_t)_numberOfDrawingStrokesInScreenshot;
- (int64_t)currentPDFPage;
- (int64_t)screenshotPDFPageIndex:(id)a3;
- (void)_commitCropControllerInflightEdits;
- (void)_goToPDFPage:(unint64_t)a3 rect:(CGRect)a4 force:(BOOL)a5;
- (void)_handleTap;
- (void)_layoutPDFViewToMatchImageViewIfNeeded;
- (void)_layoutUpdateCropControllers;
- (void)_logEditsInScreenshotForAnalytics;
- (void)_prepareGesturesForOverlayController:(id)a3;
- (void)_stopFlash;
- (void)_updateGestures;
- (void)adjustPDFPositioningToMatchImageIfNecessary;
- (void)cancelCrop;
- (void)cleanUpAfterGestureScreenshotBasedAnimation;
- (void)commitInflightEdits;
- (void)cropController:(id)a3 changedToCropRect:(CGRect)a4;
- (void)cropControllerCropRectDidChange:(id)a3;
- (void)dealloc;
- (void)deselectAllAnnotations;
- (void)dismissVISheetIfNecessary;
- (void)doneCrop;
- (void)enterCrop;
- (void)finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:(BOOL)a3;
- (void)flash;
- (void)imageView:(id)a3 isDraggingVISheetDidChange:(BOOL)a4;
- (void)imageView:(id)a3 requestsUpdateToInteractionMode:(unint64_t)a4;
- (void)imageView:(id)a3 startEditingOpacityInAccessoryView:(id)a4;
- (void)imageView:(id)a3 viCardIsPresentedDidChange:(BOOL)a4;
- (void)imageViewDidLoadImage:(id)a3;
- (void)imageViewDidUpdateInteraction:(id)a3 withAnalysis:(id)a4;
- (void)layoutSubviews;
- (void)pageChanged:(id)a3;
- (void)pdfView:(id)a3 startEditingOpacityInAccessoryView:(id)a4;
- (void)prepareForFullscreenExperience;
- (void)prepareForGestureScreenshotBasedAnimation;
- (void)promoteViewValueToModelValueForKey:(unint64_t)a3;
- (void)redo;
- (void)requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:(id)a3;
- (void)requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:(id)a3;
- (void)resetCrop;
- (void)revert;
- (void)safeAreaInsetsDidChange;
- (void)screenshot:(id)a3 didHaveChangeOnPage:(unint64_t)a4;
- (void)screenshotDeletePDFPage:(int64_t)a3;
- (void)screenshotDidHaveUndoStackChanged:(id)a3;
- (void)screenshotDidReceivePDFData;
- (void)screenshotDidRevert:(id)a3;
- (void)screenshotInsertPDFPage:(id)a3 pageIndex:(int64_t)a4;
- (void)setAnnotationsEnabled:(BOOL)a3;
- (void)setBorderStyle:(int64_t)a3;
- (void)setCropHandlesFadedOut:(BOOL)a3;
- (void)setEditMode:(int64_t)a3;
- (void)setExtent:(CGRect)a3;
- (void)setGesturesEnabled:(BOOL)a3;
- (void)setInteractionMode:(unint64_t)a3;
- (void)setIsBeingRemoved:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setRulerHostingView:(id)a3;
- (void)setScreenshot:(id)a3;
- (void)setScreenshotEditsSnapshotted:(BOOL)a3 inTransition:(BOOL)a4 currentScreenshot:(BOOL)a5;
- (void)setState:(unint64_t)a3;
- (void)setUseTrilinearMinificationFilter:(BOOL)a3;
- (void)setUsesOriginalImageAspectRatio:(BOOL)a3;
- (void)undo;
- (void)updateForFrame:(CGRect)a3;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3;
@end

@implementation SSSScreenshotView

- (SSSScreenshotView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = SSSScreenshotView;
  v3 = [(SSSScreenshotView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v10 = [*(v3 + 18) overlayController];
  [v10 setDelegate:v3];

  v11 = [*(v3 + 34) overlayController];
  [v11 setDelegate:v3];

  v12 = objc_alloc_init(SSSCropController);
  v13 = *(v3 + 10);
  *(v3 + 10) = v12;

  [*(v3 + 10) setNumberOfTouchesRequiredForPanningCrop:2];
  [*(v3 + 10) setDelegate:v3];
  v14 = [*(v3 + 10) cropView];
  [v14 setHidden:*(v3 + 154) != 0];

  v15 = [*(v3 + 10) cropView];
  [v3 addSubview:v15];

  v16 = objc_alloc_init(SSSCropController);
  v17 = *(v3 + 26);
  *(v3 + 26) = v16;

  [*(v3 + 26) setNumberOfTouchesRequiredForPanningCrop:2];
  [*(v3 + 26) setDelegate:v3];
  [*(v3 + 26) setEditMode:1];
  v18 = [*(v3 + 26) cropView];
  [v18 setHidden:*(v3 + 154) == 0];

  v19 = [*(v3 + 26) cropView];
  [v3 addSubview:v19];

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
  v3 = [(SSSScreenshotView *)self undoManager];
  [v3 removeAllActions];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = [*(&self->_imageCropController + 2) overlayController];
  [v5 logDidEndEditingWithOverlay];

  v6 = [*(&self->_pdfCropController + 2) overlayController];
  [v6 logDidEndEditingWithOverlay];

  v7.receiver = self;
  v7.super_class = SSSScreenshotView;
  [(SSSScreenshotView *)&v7 dealloc];
}

- (void)setBorderStyle:(int64_t)a3
{
  if ([(SSSScreenshotView *)self borderStyle]!= a3)
  {
    v5 = *(&self->_screenshotPDFView + 2);

    [v5 setBorderStyle:a3];
  }
}

- (void)setUseTrilinearMinificationFilter:(BOOL)a3
{
  if (BYTE5(self->_lastScreenshotImageViewFrameInScreen.size.height) != a3)
  {
    BYTE5(self->_lastScreenshotImageViewFrameInScreen.size.height) = a3;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)setScreenshot:(id)a3
{
  v5 = a3;
  [*(&self->_flashView + 2) setRepresentation:0];
  objc_storeStrong((&self->_flashView + 2), a3);
  [*(&self->_flashView + 2) setRepresentation:self];
  [*(&self->_imageCropController + 2) setScreenshot:v5];
  [*(&self->_pdfCropController + 2) setScreenshot:v5];
  [(SSSScreenshotView *)self setNeedsLayout];
  v6 = [(SSSScreenshotView *)self screenshot];
  v7 = [v6 environmentDescription];

  if ([v7 presentationMode] == 3)
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

- (void)setInteractionMode:(unint64_t)a3
{
  if (*(&self->_state + 2) != a3)
  {
    *(&self->_state + 2) = a3;
    [*(&self->_imageCropController + 2) setInteractionMode:?];

    [(SSSScreenshotView *)self _layoutUpdateCropControllers];
  }
}

- (id)undoManager
{
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [v3 undoManagerForEditMode:{-[SSSScreenshotView _viewState](self, "_viewState")}];

  return v4;
}

- (void)screenshotDidHaveUndoStackChanged:(id)a3
{
  [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
  v4 = [(SSSScreenshotView *)self delegate];
  [v4 screenshotViewUndoStackChanged:self];

  v5 = [(SSSScreenshotView *)self currentView];
  [v5 updateUndoState];

  v6 = [(SSSScreenshotView *)self modelModificationInfo];
  v7 = v6;
  if (v6)
  {
    [v6 cropInfo];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v8 = sub_1000538C8(v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SSSScreenshotView *)self currentCropController];
  [v15 cropRect];
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

- (void)screenshotDidRevert:(id)a3
{
  [(SSSScreenshotView *)self screenshotDidHaveUndoStackChanged:a3];
  v4 = [(SSSScreenshotView *)self delegate];
  [v4 screenshotViewUndoStackChanged:self];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)screenshot:(id)a3 didHaveChangeOnPage:(unint64_t)a4
{
  [(SSSScreenshotView *)self _goToPDFPage:a4 rect:0 force:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  v5 = [(SSSScreenshotView *)self delegate];
  [v5 screenshotViewUndoStackChanged:self];
}

- (void)_goToPDFPage:(unint64_t)a3 rect:(CGRect)a4 force:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v48 = [*(&self->_pdfCropController + 2) _pdfView];
  v12 = [v48 document];
  if ([v12 pageCount])
  {
    v13 = fmin(fmax(a3, 0.0), ([v12 pageCount] - 1));
    v14 = [v48 currentPage];
    v15 = [v12 indexForPage:v14];

    v16 = [v12 pageAtIndex:v13];
    [v48 layoutDocumentView];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    if (CGRectIsEmpty(v50))
    {
      if (!v5 || v13 && [v12 pageCount] - 1 != v13)
      {
        if (v15 != v13)
        {
          [v48 goToPage:v16];
          [*(&self->_pdfCropController + 2) updateViewState];
        }

        goto LABEL_9;
      }

      [v16 boundsForBox:1];
      [v48 convertRect:v16 fromPage:?];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = [v48 documentView];
      [v48 convertRect:v25 toView:{v18, v20, v22, v24}];
      v27 = v26;
      v29 = v28;

      v30 = [v48 documentScrollView];
      [v30 contentInset];
      v32 = v31;
      [v48 pageBreakMargins];
      v34 = v29 - (v32 + v33);

      v35 = [v48 documentScrollView];
      [v35 contentSize];
      v37 = v36;
      [v35 bounds];
      [v35 setContentOffset:1 animated:{v27, fmin(v34, v37 - v38)}];
      [*(&self->_pdfCropController + 2) updateViewState];
    }

    else
    {
      [v48 convertRect:v16 fromPage:{x, y, width, height}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = objc_opt_class();
      v35 = [v48 documentScrollView];
      [v47 _zoomToRectWithinContentInsetBounds:v35 scrollView:0 animated:{v40, v42, v44, v46}];
    }

LABEL_9:
  }
}

- (void)setUsesOriginalImageAspectRatio:(BOOL)a3
{
  if (BYTE6(self->_lastScreenshotImageViewFrameInScreen.size.height) != a3)
  {
    BYTE6(self->_lastScreenshotImageViewFrameInScreen.size.height) = a3;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)setIsBeingRemoved:(BOOL)a3
{
  if (self->_hasEnteredFullPageCropBefore != a3)
  {
    self->_hasEnteredFullPageCropBefore = a3;
    [*(&self->_imageCropController + 2) setIsBeingRemoved:?];
  }
}

- (void)setNeedsLayout
{
  v5.receiver = self;
  v5.super_class = SSSScreenshotView;
  [(SSSScreenshotView *)&v5 setNeedsLayout];
  v3 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
  [v3 setNeedsLayout];

  v4 = [*(&self->_screenshotImageView + 2) cropView];
  [v4 setNeedsLayout];
}

- (void)screenshotDidReceivePDFData
{
  v3 = [(SSSScreenshotView *)self window];
  v5 = [v3 firstResponder];

  [*(&self->_pdfCropController + 2) setupPDFData];
  if ([(SSSScreenshotView *)self editMode]== 1)
  {
    v4 = [(SSSScreenshotView *)self currentView];
    [v4 setOverlayControllerActive:1];
  }

  if (([v5 isFirstResponder] & 1) == 0)
  {
    [v5 becomeFirstResponder];
  }

  [(SSSScreenshotView *)self adjustPDFPositioningToMatchImageIfNecessary];
}

- (id)screenshotRepresentationAKControllerForPDF
{
  v2 = [*(&self->_pdfCropController + 2) _pdfView];
  v3 = [v2 document];
  v4 = [v3 akController];

  return v4;
}

- (int64_t)screenshotPDFPageIndex:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotView *)self _internalPDFView];
  v6 = [v5 document];
  v7 = [v6 indexForPage:v4];

  return v7;
}

- (void)screenshotDeletePDFPage:(int64_t)a3
{
  v5 = [(SSSScreenshotView *)self _internalPDFView];
  v4 = [v5 document];
  [v4 removePageAtIndex:a3];
}

- (void)screenshotInsertPDFPage:(id)a3 pageIndex:(int64_t)a4
{
  v6 = a3;
  v8 = [(SSSScreenshotView *)self _internalPDFView];
  v7 = [v8 document];
  [v7 insertPage:v6 atIndex:a4];
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
  v7 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
  v8 = v7;
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

  [v7 setHidden:v11];

  v13 = [*(&self->_screenshotImageView + 2) cropView];
  [v13 setHidden:v10];

  v14 = [*(&self->super.super.super.super.isa + v12) cropView];
  [(SSSScreenshotView *)self bounds];
  [v14 sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];

  v15 = *(&self->super._ss_vi2EnabledCacheIsValid + 1);
  v16 = [(SSSScreenshotView *)self screenshot];
  v17 = [v16 snapUnitRects];
  [v15 setSnapRects:v17];

  v18 = *(&self->_screenshotImageView + 2);
  v19 = [(SSSScreenshotView *)self screenshot];
  v20 = [v19 snapUnitRects];
  [v18 setSnapRects:v20];

  if ([(SSSScreenshotView *)self state]== 1)
  {
    v21 = [(SSSScreenshotView *)self akController];
    if ([v21 onlyDrawWithApplePencil])
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
  v3 = [(SSSScreenshotView *)self screenshot];

  if (!v3)
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
  v12 = [(SSSScreenshotView *)self traitCollection];
  sub_10000F490(v12, &v55);

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
  v15 = [(SSSScreenshotView *)self viewModificationInfo];
  [v15 vellumOpacity];
  [v14 setVellumOpacity:?];

  v16 = *(&self->_pdfCropController + 2);
  v17 = [(SSSScreenshotView *)self viewModificationInfo];
  [v17 vellumOpacity];
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
    v24 = [(SSSScreenshotView *)self modelModificationInfo];
    v25 = v24;
    if (v24)
    {
      [v24 cropInfo];
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
      v38 = [(SSSScreenshotView *)self window];
      [*(&self->_imageCropController + 2) bounds];
      [v38 convertRect:*(&self->_imageCropController + 2) fromView:?];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = [(SSSScreenshotView *)self window];
      [v47 convertRect:0 toWindow:{v40, v42, v44, v46}];
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
  v3 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * v7) setAllowedTouchTypes:&off_1000BE780];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [*(&self->_screenshotImageView + 2) gestureRecognizers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v12) setAllowedTouchTypes:&off_1000BE780];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
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

  v14 = [*(&self->_pdfCropController + 2) overlayController];
  [v14 setGesturesEnabled:v13];

  v15 = [(SSSScreenshotView *)self annotationsEnabled]&& ![(SSSScreenshotView *)self editMode]&& [(SSSScreenshotView *)self interactionMode]== 1;
  v16 = [*(&self->_imageCropController + 2) overlayController];
  [v16 setGesturesEnabled:v15];
}

- (void)updateForFrame:(CGRect)a3
{
  if ((BYTE3(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
  {
    [(SSSScreenshotView *)self bounds:a3.origin.x];
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
    v5 = [*(&self->_pdfCropController + 2) _pdfView];
    v6 = [v5 documentScrollView];

    v7 = [(SSSScreenshotView *)self window];
    [v7 convertRect:0 fromWindow:{*v3, v3[1], v3[2], v3[3]}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(SSSScreenshotView *)self window];
    [v16 convertRect:v6 toView:{v9, v11, v13, v15}];
    v18 = v17;
    rect = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(SSSScreenshotView *)self bounds];
    [(SSSScreenshotView *)self convertRect:v6 toView:?];
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
    [v6 setContentInset:{v34, 0.0, MaxY - CGRectGetMaxY(v42), 0.0}];
  }

  return !IsEmpty;
}

- (void)_layoutPDFViewToMatchImageViewIfNeeded
{
  if ((BYTE2(self->_lastScreenshotImageViewFrameInScreen.size.height) & 1) == 0)
  {
    v3 = [(SSSScreenshotView *)self screenshot];
    v4 = [v3 pdfData];

    if (v4)
    {
      if ([(SSSScreenshotView *)self _layoutPDFViewVerticalContentInsetToMatchImageView])
      {
        v5 = [(SSSScreenshotView *)self screenshot];
        v6 = [v5 visiblePDFPageWhenScreenshotted];

        v7 = [(SSSScreenshotView *)self screenshot];
        [v7 visiblePDFRectWhenScreenshotted];
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
          v16 = [*(&self->_pdfCropController + 2) _pdfView];
          [v16 layoutDocumentView];
          v17 = [v16 document];
          v18 = [v17 pageAtIndex:v6];

          [v18 boundsForBox:0];
          [v16 convertRect:v18 fromPage:?];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v27 = objc_opt_class();
          v28 = [v16 documentScrollView];
          [v27 _zoomToRectWithinContentInsetBounds:v28 scrollView:0 animated:{v20, v22, v24, v26}];
        }

        else
        {
          [(SSSScreenshotView *)self _goToPDFPage:v6 rect:0 force:v9, v11, v13, v15];
        }

        v29 = +[NSNotificationCenter defaultCenter];
        v30 = [(SSSScreenshotView *)self _internalPDFView];
        [v29 addObserver:self selector:"pageChanged:" name:PDFViewPageChangedNotification object:v30];

        BYTE2(self->_lastScreenshotImageViewFrameInScreen.size.height) = 1;
      }
    }
  }
}

- (void)setRulerHostingView:(id)a3
{
  v4 = *(&self->_pdfCropController + 2);
  v5 = a3;
  [v4 setRulerHostView:v5];
  [*(&self->_imageCropController + 2) setRulerHostView:v5];
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

+ (CGAffineTransform)_transformToConvertFromRect:(SEL)a3 toRect:(CGRect)a4
{
  height = a4.size.height;
  rect = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v8 = a4.size.height;
  v9 = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
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

+ (CGRect)_scaledAndCenteredRect:(CGRect)a3 withinRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v18 = a3.origin.y;
  v11 = a3.origin.x;
  v19 = CGRectGetWidth(a4);
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

+ (void)_zoomToRectWithinContentInsetBounds:(CGRect)a3 scrollView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 contentInset];
  [a1 _scaledAndCenteredRect:x withinRect:{y, width, height, v13 + v20, v15 + v21, v17 - (v20 + v22), v19 - (v21 + v23)}];
  memset(&v24[1], 0, sizeof(CGAffineTransform));
  [a1 _transformToConvertFromRect:? toRect:?];
  [v11 frame];
  v24[0] = v24[1];
  v26 = CGRectApplyAffineTransform(v25, v24);
  [v11 zoomToRect:v5 animated:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
}

- (void)setState:(unint64_t)a3
{
  if (*(&self->_screenshot + 2) != a3)
  {
    *(&self->_screenshot + 2) = a3;
    [(SSSScreenshotView *)self _stopFlash];
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setState:a3];
    [*(&self->_imageCropController + 2) setState:a3];

    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)cropController:(id)a3 changedToCropRect:(CGRect)a4
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v5 = [(SSSScreenshotView *)self modelModificationInfo];
  v6 = v5;
  if (v5)
  {
    [v5 cropInfo];
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
  v9 = [(SSSScreenshotView *)self screenshot];
  v10 = [v9 environmentDescription];
  [v10 imageScale];

  SSRoundRectToScale();
  v23.f64[0] = v11;
  v23.f64[1] = v12;
  v24.f64[0] = v13;
  v24.f64[1] = v14;
  v15 = [(SSSScreenshotView *)self viewModificationInfo];
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [v15 setCropInfo:v21];

  [(SSSScreenshotView *)self promoteViewValueToModelValueForKey:0];
  v16 = +[SSStatisticsManager sharedStatisticsManager];
  [v16 fullscreenExperienceHadCropEvent];
}

- (void)cropControllerCropRectDidChange:(id)a3
{
  v4 = os_log_create("com.apple.screenshotservices", "Editing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SSSScreenshotView *)self modelModificationInfo];
    v6 = v5;
    if (v5)
    {
      [v5 cropInfo];
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

  v12 = [(SSSScreenshotView *)self delegate];
  [v12 screenshotViewCropDidChange:self];

  if ([(SSSScreenshotView *)self shouldReanalyzeImageForCurrentInteractionMode])
  {
    [*(&self->_imageCropController + 2) reanalyzeImage];
  }
}

- (void)commitInflightEdits
{
  [(SSSScreenshotView *)self _commitCropControllerInflightEdits];
  v3 = [(SSSScreenshotView *)self akController];
  [v3 commitEditing];
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
  v3 = [(SSSScreenshotView *)self delegate];
  [v3 screenshotViewTapped:self];
}

- (void)prepareForFullscreenExperience
{
  if ((BYTE2(self->_borderView) & 1) == 0)
  {
    BYTE2(self->_borderView) = 1;
    v4 = *(&self->_pdfCropController + 2);
    v5 = [(SSSScreenshotView *)self screenshot];
    [v4 setScreenshot:v5];

    v6 = *(&self->_imageCropController + 2);
    v7 = [(SSSScreenshotView *)self screenshot];
    [v6 setScreenshot:v7];

    if ([*(&self->_pdfCropController + 2) didFailToWritePDFToURL])
    {
      [(SSSScreenshotView *)self setDidFailToWritePDFToURL:1];
      v8 = [(SSSScreenshotView *)self delegate];
      [v8 screenshotViewDidFailToWritePDFToURL:self];
    }

    v9 = [*(&self->_pdfCropController + 2) overlayController];
    [(SSSScreenshotView *)self _prepareGesturesForOverlayController:v9];

    v10 = [*(&self->_imageCropController + 2) overlayController];
    [(SSSScreenshotView *)self _prepareGesturesForOverlayController:v10];

    [(SSSScreenshotView *)self setNeedsLayout];
    v11 = *(&self->super._ss_vi2EnabledCacheIsValid + 1);

    [v11 prepareForFullscreenExperience:1];
  }
}

- (void)finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:(BOOL)a3
{
  if ((BYTE3(self->_borderView) & 1) == 0)
  {
    v3 = a3;
    BYTE3(self->_borderView) = 1;
    [*(&self->_pdfCropController + 2) setOverlayControllerActive:0];
    [*(&self->_imageCropController + 2) setOverlayControllerActive:1];
    if (v3)
    {
      v5 = [(SSSScreenshotView *)self delegate];
      [v5 screenshotView:self requestsUpdateToInteractionMode:{-[SSSScreenshotView interactionMode](self, "interactionMode")}];
    }
  }
}

- (void)deselectAllAnnotations
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = [(SSSScreenshotView *)self currentView];
    [v3 deselectAllAnnotations];
  }

  v5 = [(SSSScreenshotView *)self akController];
  v4 = [v5 modelController];
  [v4 deselectAllAnnotations];
}

- (void)imageViewDidUpdateInteraction:(id)a3 withAnalysis:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSSScreenshotView *)self delegate];
  [v8 screenshotView:self didUpdateInteraction:v7 withAnalysis:v6];
}

- (void)imageView:(id)a3 requestsUpdateToInteractionMode:(unint64_t)a4
{
  v6 = [(SSSScreenshotView *)self delegate];
  [v6 screenshotView:self requestsUpdateToInteractionMode:a4];
}

- (void)imageViewDidLoadImage:(id)a3
{
  [*(&self->_imageCropController + 2) setInhibitImageAnalysis:0];
  v4 = [*(&self->_imageCropController + 2) drawingGestureRecognizer];
  if (v4)
  {
    v6 = v4;
    v5 = [(SSSScreenshotView *)self delegate];
    [v5 screenshotView:self hasHighPriorityGesture:v6];

    v4 = v6;
  }
}

- (void)imageView:(id)a3 viCardIsPresentedDidChange:(BOOL)a4
{
  if (a4)
  {
    v6 = [(SSSScreenshotView *)self delegate];
    [v6 screenshotViewDidInvokeVICard:self];
  }

  v7 = dispatch_time(0, 50000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007740;
  v8[3] = &unk_1000BA0B8;
  v8[4] = self;
  v9 = a4;
  dispatch_after(v7, &_dispatch_main_q, v8);
}

- (void)imageView:(id)a3 isDraggingVISheetDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(SSSScreenshotView *)self delegate];
  [v6 screenshotView:self isDraggingVISheetDidChange:v4];
}

- (void)imageView:(id)a3 startEditingOpacityInAccessoryView:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotView *)self delegate];
  [v6 screenshotView:self startEditingOpacityInAccessoryView:v5];
}

- (void)pdfView:(id)a3 startEditingOpacityInAccessoryView:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotView *)self delegate];
  [v6 screenshotView:self startEditingOpacityInAccessoryView:v5];
}

- (void)setCropHandlesFadedOut:(BOOL)a3
{
  if (self->_hasCroppedImageView != a3)
  {
    self->_hasCroppedImageView = a3;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (void)flash
{
  [(SSSScreenshotView *)self _stopFlash];
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [v3 environmentDescription];

  if ([v4 presentationMode] == 3)
  {
    v5 = [v4 externalFlashLayerRenderID];
    v6 = [v4 externalFlashLayerContextID];
    if (v5)
    {
      v7 = v6;
      if (v6)
      {
        v8 = objc_alloc_init(SSSPortalView);
        v9 = *&self->_isShowingVICard;
        *&self->_isShowingVICard = v8;

        [*&self->_isShowingVICard setSourceLayerRenderId:v5];
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
    v14 = [(SSSScreenshotView *)self screenshot];
    v15 = [v14 environmentDescription];
    v16 = [v15 serviceOptions];
    v17 = [v16 flashStyle];

    if (_SSScreenshotsRedesign2025Enabled())
    {
      v18 = 2;
    }

    else
    {
      v18 = v17 != 0;
    }

    v19 = [SSFlashView flashViewForStyle:v18];
    v20 = *&self->_isShowingVICard;
    *&self->_isShowingVICard = v19;

    if (_SSScreenshotsRedesign2025Enabled() && (_SSPIPExperienceEnabled() & 1) == 0)
    {
      v21 = [(SSSScreenshotView *)self traitCollection];
      [v21 displayCornerRadius];
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
  v2 = [(SSSScreenshotView *)self screenshot];
  v3 = [v2 environmentDescription];

  if ([v3 presentationMode] == 3)
  {
    if (![v3 externalFlashLayerRenderID] || !objc_msgSend(v3, "externalFlashLayerContextID"))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([v3 presentationMode] == 1)
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

  v4 = [v3 presentationMode] == 2;
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

- (void)setScreenshotEditsSnapshotted:(BOOL)a3 inTransition:(BOOL)a4 currentScreenshot:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (![(SSSScreenshotView *)self screenshotEditsSnapshotted]&& v7 && ![(SSSScreenshotView *)self isBeingRemoved])
  {
    [(SSSScreenshotView *)self _logEditsInScreenshotForAnalytics];
    v9 = +[SSSScreenshotManager sharedScreenshotManager];
    v10 = [(SSSScreenshotView *)self screenshot];
    [v9 saveEditsToScreenshotIfNecessary:v10 inTransition:v6];
  }

  v11 = [*(&self->_imageCropController + 2) screenshotEditsSnapshotted];
  if ((!v6 || v5) && v11 != v7)
  {
    [*(&self->_imageCropController + 2) setScreenshotEditsSnapshotted:v7];
    v12 = [(SSSScreenshotView *)self screenshot];
    v13 = [v12 pdfData];

    if (v13)
    {
      v14 = *(&self->_pdfCropController + 2);

      [v14 setScreenshotEditsSnapshotted:v7];
    }
  }
}

- (void)_logEditsInScreenshotForAnalytics
{
  v3 = [(SSSScreenshotView *)self _numberOfDrawingStrokesInScreenshot];
  v4 = [(SSSScreenshotView *)self screenshot];
  if ([v4 hasEverBeenEditedForMode:0] && objc_msgSend(*(&self->_imageCropController + 2), "didDrawPenStroke"))
  {

    if (!v3)
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

  v7 = [(SSSScreenshotView *)self screenshot];
  if ([v7 hasEverBeenEditedForMode:0])
  {
    v8 = [*(&self->_imageCropController + 2) didDrawPenStroke];

    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = +[SSStatisticsManager sharedStatisticsManager];
    [v9 drewStrokes:v3];

    v7 = os_log_create("com.apple.screenshotservices", "Editing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving Edits to screenshot: User drew %lu strokes", &v16, 0xCu);
    }
  }

LABEL_13:
  v10 = [(SSSScreenshotView *)self screenshot];
  v11 = [v10 modelModificationInfo];
  v12 = [v11 annotations];
  v13 = [v12 count];

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
  v16 = [(SSSScreenshotView *)self screenshot];
  v2 = [v16 modelModificationInfo];
  v3 = [v2 annotations];
  v4 = [v3 count];

  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v16 modelModificationInfo];
    v6 = [v5 annotations];

    v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v7)
    {
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
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
            v13 = [v10 drawing];
            v14 = [v13 strokes];
            v7 = [v14 count];

            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
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
  v2 = [(SSSScreenshotView *)self currentView];
  v3 = [v2 screenshotEditsSnapshotted];

  return v3;
}

- (AKController)akController
{
  v2 = [(SSSScreenshotView *)self _currentOverlayController];
  v3 = [v2 annotationKitController];

  return v3;
}

- (id)_findTextViewFirstResponderUnderView:(id)a3
{
  if ([(SSSScreenshotView *)self _isAncestorOfFirstResponder])
  {
    v4 = [(SSSScreenshotView *)self firstResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [(SSSScreenshotView *)self _currentOverlayController];
  [v3 rectToCenterAboveKeyboard];
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
    v15 = [(SSSScreenshotView *)self currentView];
    [(SSSScreenshotView *)self convertRect:v15 fromView:x, v7, v9, v11];
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

- (void)_prepareGesturesForOverlayController:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 gestureRecognizers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(SSSScreenshotView *)self addGestureRecognizer:*(*(&v14 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [v4 panGestureRecognizer];
  v11 = [v4 rotationGestureRecognizer];
  v12 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) panGestureRecognizer];
  v13 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) pinchGestureRecognizer];
  if (v10)
  {
    [v12 requireGestureRecognizerToFail:v10];
    [v13 requireGestureRecognizerToFail:v10];
  }

  if (v11)
  {
    [v12 requireGestureRecognizerToFail:v11];
    [v13 requireGestureRecognizerToFail:v11];
  }
}

- (void)setAnnotationsEnabled:(BOOL)a3
{
  if (self->_hasPositionedPDFViewToMatchImageView != a3)
  {
    self->_hasPositionedPDFViewToMatchImageView = a3;
    [*(&self->_imageCropController + 2) setAnnotationsEnabled:?];

    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (id)_currentOverlayController
{
  v2 = [(SSSScreenshotView *)self currentView];
  v3 = [v2 overlayController];

  return v3;
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSScreenshotView *)self currentView];
  [v4 updatePaletteVisibilityIfNecessary:v3];
}

- (UIView)viewContainingScreenshotContents
{
  v2 = [(SSSScreenshotView *)self currentView];
  v3 = [v2 viewWithScreenshotImage];

  return v3;
}

- (UIViewController)viewControllerForOverlayPresentations
{
  v3 = [(SSSScreenshotView *)self delegate];
  v4 = [v3 viewControllerForPresentationsFromScreenshotView:self];

  return v4;
}

- (UIView)contentSnapshot
{
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [v3 modelModificationInfo];
  v5 = v4;
  if (v4)
  {
    [v4 cropInfo];
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

  v10 = [(SSSScreenshotView *)self currentView];
  v11 = [v10 resizableSnapshotViewFromRect:1 afterScreenUpdates:v7 withCapInsets:{v6, v9, v8, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v11;
}

- (void)requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotView *)self delegate];
  [v5 screenshotView:self hasHighPriorityGesture:v4];
}

- (void)requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotView *)self delegate];
  [v5 screenshotView:self noLongerHasHighPriorityGesture:v4];
}

- (void)setGesturesEnabled:(BOOL)a3
{
  if (HIBYTE(self->_lastScreenshotImageViewFrameInScreen.size.height) != a3)
  {
    HIBYTE(self->_lastScreenshotImageViewFrameInScreen.size.height) = a3;
    [(SSSScreenshotView *)self setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SSSScreenshotView *)self currentView];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(SSSScreenshotView *)self currentView];
  v14 = [v13 pointInside:v7 withEvent:{v10, v12}];

  v15 = [(SSSScreenshotView *)self editMode];
  v16 = &OBJC_IVAR___SSSScreenshotView__pdfCropController;
  if (!v15)
  {
    v16 = &OBJC_IVAR___SSSScreenshotView__imageCropController;
  }

  v17 = [*(&self->super.super.super.super.isa + *v16) cropView];
  [v17 convertPoint:self fromView:{x, y}];
  v18 = [v17 pointInside:v7 withEvent:?];
  v21.receiver = self;
  v21.super_class = SSSScreenshotView;
  v19 = v14 & [(SSSScreenshotView *)&v21 pointInside:v7 withEvent:x, y]| v18;

  return v19 & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SSSScreenshotView *)self state]== 1 && [(SSSScreenshotView *)self editMode]== 1)
  {
    v8 = [*(&self->_pdfCropController + 2) _pdfView];
    [(SSSScreenshotView *)self convertPoint:v8 toView:x, y];
    v10 = v9;
    v12 = v11;

    v13 = [*(&self->_pdfCropController + 2) _pdfView];
    v14 = [v13 hitTest:v7 withEvent:{v10, v12}];
  }

  else
  {
    if ([(SSSScreenshotView *)self state])
    {
      v17.receiver = self;
      v17.super_class = SSSScreenshotView;
      v15 = [(SSSScreenshotView *)&v17 hitTest:v7 withEvent:x, y];
    }

    else
    {
      v15 = self;
    }

    v14 = v15;
  }

  return v14;
}

- (void)setEditMode:(int64_t)a3
{
  if (*(&self->_delegate + 2) != a3)
  {
    *(&self->_delegate + 2) = a3;
    v5 = (&self->_imageCropController + 2);
    [*(&self->_imageCropController + 2) clearImageAnalysisTextSelection];
    [*(&self->_screenshotImageView + 2) setEditMode:a3];
    if (a3 == 2)
    {
      BYTE4(self->_lastScreenshotImageViewFrameInScreen.size.height) = 1;
    }

    else if (a3 == 1 && BYTE4(self->_lastScreenshotImageViewFrameInScreen.size.height) == 1)
    {
      [(SSSScreenshotView *)self _layoutPDFViewVerticalContentInsetToMatchImageView];
      v6 = [*(&self->_pdfCropController + 2) _pdfView];
      v7 = [v6 documentScrollView];

      [v7 contentInset];
      [v7 setContentInset:{fmax(v8, 118.0)}];
    }

    v9 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) cropView];
    [v9 setHidden:*(&self->_delegate + 2) != 0];

    v10 = [*(&self->_screenshotImageView + 2) cropView];
    [v10 setHidden:*(&self->_delegate + 2) == 0];

    if (!*(&self->_delegate + 2))
    {
      v5 = (&self->_pdfCropController + 2);
    }

    [*v5 setOverlayControllerActive:0];
    v11 = [(SSSScreenshotView *)self currentView];
    [v11 setOverlayControllerActive:1];

    v12 = [(SSSScreenshotView *)self screenshot];
    [v12 setLastViewEditMode:a3];

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
  v3 = [(SSSScreenshotView *)self currentCropController];
  [v3 enterCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)resetCrop
{
  v3 = [(SSSScreenshotView *)self currentCropController];
  [v3 resetCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)doneCrop
{
  v3 = [(SSSScreenshotView *)self currentCropController];
  [v3 doneCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (void)cancelCrop
{
  v3 = [(SSSScreenshotView *)self currentCropController];
  [v3 cancelCrop];

  [(SSSScreenshotView *)self setNeedsLayout];
}

- (BOOL)isCropped
{
  v2 = [(SSSScreenshotView *)self currentCropController];
  v3 = [v2 isCropped];

  return v3;
}

- (id)_imageAnalysisAaButtonIfExists
{
  if (*(&self->_delegate + 2))
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(&self->_imageCropController + 2) imageInteraction];
    v3 = [v4 analysisButton];
  }

  v5 = [*(&self->_imageCropController + 2) imageInteraction];
  [v5 setAnalysisButtonPrefersDarkGlyphWhenSelected:1];

  v6 = +[UIColor whiteColor];
  [v3 setTintColor:v6];

  return v3;
}

- (id)_imageAnalysisAaBarButtonItemIfExists
{
  if (*(&self->_delegate + 2))
  {
    v2 = 0;
  }

  else
  {
    v3 = [*(&self->_imageCropController + 2) imageInteraction];
    v2 = [v3 analysisBarButtonItem];
  }

  return v2;
}

- (id)_visualSearchCornerViewIfExists
{
  v3 = [(SSSScreenshotView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (_SSQuickActionsEnabled() && v4 || *(&self->_delegate + 2))
  {
    v5 = 0;
  }

  else
  {
    v7 = [*(&self->_imageCropController + 2) imageInteraction];
    v5 = [v7 visualSearchCornerView];
  }

  return v5;
}

- (id)_actionInfoViewIfExists
{
  if (_SSQuickActionsEnabled() && ![(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v4 = [*(&self->_imageCropController + 2) imageInteraction];
    v5 = v4;
    if (*(&self->_delegate + 2))
    {
      v3 = 0;
    }

    else
    {
      v3 = [v4 customLayoutActionInfoView];
      if (v3)
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
    v3 = 0;
  }

  return v3;
}

- (id)_omnibarContainerViewIfExists
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v3 = [*(&self->_imageCropController + 2) imageInteraction];
    if ((objc_opt_respondsToSelector() & 1) != 0 && !*(&self->_delegate + 2))
    {
      v4 = [v3 omnibarContainerView];
      if (v4)
      {
        [v3 setActionInfoEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
        [v3 setPreferredQuickActionButtonHeight:35.0];
        [v3 setActionInfoLiveTextButtonDisabled:1];
        [v3 setActionInfoVisualSearchCornerViewDisabled:1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [(SSSScreenshotView *)self editMode];
  v4 = [(SSSScreenshotView *)self currentPDFPage];
  v5 = v3;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (void)pageChanged:(id)a3
{
  v4 = [(SSSScreenshotView *)self editMode];
  v5 = [*(&self->_pdfCropController + 2) currentPDFPage];
  v6 = [(SSSScreenshotView *)self screenshot];
  v7 = [v6 modelModificationInfoForState:{v4, v5}];
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
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [(SSSScreenshotView *)self _viewState];
  v6 = [v3 viewModificationInfoForState:{v4, v5}];

  return v6;
}

- (id)modelModificationInfo
{
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [(SSSScreenshotView *)self _viewState];
  v6 = [v3 modelModificationInfoForState:{v4, v5}];

  return v6;
}

- (void)promoteViewValueToModelValueForKey:(unint64_t)a3
{
  v7 = [(SSSScreenshotView *)self screenshot];
  v5 = [(SSSScreenshotView *)self _viewState];
  [v7 promoteViewValueToModelValueForKey:a3 forState:{v5, v6}];
}

- (void)undo
{
  v5 = [(SSSScreenshotView *)self screenshot];
  v3 = [(SSSScreenshotView *)self _viewState];
  [v5 undoForViewState:{v3, v4}];
}

- (void)redo
{
  v5 = [(SSSScreenshotView *)self screenshot];
  v3 = [(SSSScreenshotView *)self _viewState];
  [v5 redoForViewState:{v3, v4}];
}

- (BOOL)canUndo
{
  v2 = self;
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [(SSSScreenshotView *)v2 _viewState];
  LOBYTE(v2) = [v3 canUndoForViewState:{v4, v5}];

  return v2;
}

- (BOOL)canRedo
{
  v2 = self;
  v3 = [(SSSScreenshotView *)self screenshot];
  v4 = [(SSSScreenshotView *)v2 _viewState];
  LOBYTE(v2) = [v3 canRedoForViewState:{v4, v5}];

  return v2;
}

- (void)revert
{
  v5 = [(SSSScreenshotView *)self screenshot];
  v3 = [(SSSScreenshotView *)self _viewState];
  [v5 revertForViewState:{v3, v4}];
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
    v3 = 0;
  }

  else
  {
    v4 = [*(&self->_imageCropController + 2) imageInteraction];
    v3 = [v4 analysis];
  }

  return v3;
}

- (NSString)vsGlyph
{
  v2 = [*(&self->_imageCropController + 2) imageInteraction];
  v3 = [v2 visualSearchResultItems];
  v4 = [v3 firstObject];
  v5 = [v4 infoButtonGlyphName];

  return v5;
}

- (NSString)vsGlyphFilled
{
  v2 = [*(&self->_imageCropController + 2) imageInteraction];
  v3 = [v2 visualSearchResultItems];
  v4 = [v3 firstObject];
  v5 = [v4 filledInfoButtonGlyphName];

  return v5;
}

- (void)dismissVISheetIfNecessary
{
  v2 = [*(&self->_imageCropController + 2) imageInteraction];
  [v2 dismissVisualIntelligenceSheetIfNecessary];
}

- (BOOL)isShowingVICard
{
  v2 = [*(&self->_imageCropController + 2) imageInteraction];
  v3 = [v2 isVisualIntelligenceSheetVisible];

  return v3;
}

- (BOOL)isVICardFullScreen
{
  v2 = [*(&self->_imageCropController + 2) imageInteraction];
  [v2 currentVisualIntelligenceSheetProgress];
  v4 = v3 > 0.75;

  return v4;
}

- (UIActivity)visionKitFeedbackActivity
{
  if (*(&self->_delegate + 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(&self->_imageCropController + 2) visionKitFeedbackActivity];
  }

  return v4;
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

- (void)setExtent:(CGRect)a3
{
  *(&self->_editMode + 2) = *&a3.origin.x;
  *(&self->_extent.origin.x + 2) = a3.origin.y;
  *(&self->_extent.origin.y + 2) = a3.size.width;
  *(&self->_extent.size.width + 2) = a3.size.height;
}

- (SSSScreenshotViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained((&self->_interactionMode + 2));

  return WeakRetained;
}

@end