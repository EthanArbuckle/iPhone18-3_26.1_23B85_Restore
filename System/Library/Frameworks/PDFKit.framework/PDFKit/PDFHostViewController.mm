@interface PDFHostViewController
+ (id)loadExtension:(id)extension;
+ (void)createHostView:(id)view forExtensionIdentifier:(id)identifier;
- (BOOL)_isTouchingLollipopAtLocationOfFirstTouch:(CGPoint)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)userDidEnterPassword:(id)password forPasswordViewController:(id)controller;
- (CGRect)_insetBoundsInDocument;
- (CGSize)_documentViewSize;
- (UIEdgeInsets)_pdfViewInsets;
- (UIEdgeInsets)_pdfViewSafeAreaInsets;
- (double)_hostScrollViewZoomScale;
- (id)pageNumberIndicator;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)_typeForGestureRecognizer:(id)recognizer;
- (void)_appendPasswordUI;
- (void)_endPDFViewRotationAnimated:(BOOL)animated withUpdate:(BOOL)update;
- (void)_gestureInit;
- (void)_pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region completion:(id)completion;
- (void)_resetPDFHostViewControllerViews;
- (void)_setMaximumZoomScale:(double)scale;
- (void)_setMinimumZoomScale:(double)scale;
- (void)_setupExtensionInterruptionBlock;
- (void)beginPDFViewRotation;
- (void)cancelFindStringWithHighlightsCleared:(BOOL)cleared;
- (void)completePointerInteractionRegionForRequest:(id)request;
- (void)dealloc;
- (void)didCopy:(id)copy;
- (void)didLongPressPageIndex:(int64_t)index atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect;
- (void)didLongPressURL:(id)l atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect;
- (void)documentIsLocked:(BOOL)locked;
- (void)endPDFViewRotationWithContentInset:(UIEdgeInsets)inset;
- (void)findString:(id)string withOptions:(unint64_t)options;
- (void)findStringUpdate:(unint64_t)update done:(BOOL)done;
- (void)focusOnSearchResultAtIndex:(unint64_t)index;
- (void)goToDestination:(int64_t)destination point:(CGPoint)point;
- (void)goToPageIndex:(int64_t)index;
- (void)goToPageIndex:(int64_t)index pageFrame:(CGRect)frame;
- (void)goToPageIndex:(int64_t)index withViewFrustum:(CGRect)frustum;
- (void)goToURL:(id)l atLocation:(CGPoint)location;
- (void)handleGesture:(id)gesture;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)recievedSnapshotViewRect:(id)rect;
- (void)setDocumentData:(id)data withScrollView:(id)view;
- (void)setup;
- (void)setupDocumentViewSize:(CGSize)size;
- (void)showSelectionRect:(CGRect)rect;
- (void)showTextSelectionMenu:(BOOL)menu selectionRect:(CGRect)rect;
- (void)snapshotViewRect:(CGRect)rect snapshotWidth:(id)width afterScreenUpdates:(BOOL)updates withResult:(id)result;
- (void)updateAutoScaleFactor;
- (void)updateCurrentPageIndex:(int64_t)index;
- (void)updateDocumentIsLocked:(BOOL)locked;
- (void)updateDocumentViewSize;
- (void)updatePDFViewLayout;
- (void)updatePageCount:(int64_t)count;
- (void)viewDidLayoutSubviews;
- (void)zoomToRect:(CGRect)rect;
@end

@implementation PDFHostViewController

+ (void)createHostView:(id)view forExtensionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
  }

  else
  {
    v7 = @"com.apple.PDFKit.PDFExtensionView";
  }

  v8 = [PDFHostViewController loadExtension:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PDFHostViewController_createHostView_forExtensionIdentifier___block_invoke;
  v11[3] = &unk_1E81514D0;
  v12 = v8;
  v13 = viewCopy;
  v9 = viewCopy;
  v10 = v8;
  [v10 instantiateViewControllerWithInputItems:0 connectionHandler:v11];
}

void __63__PDFHostViewController_createHostView_forExtensionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [*(a1 + 32) _extensionContextForUUID:v5];
    v9 = objc_alloc_init(PDFHostViewControllerPrivate);
    v10 = v7[127];
    v7[127] = v9;

    objc_storeStrong((v7[127] + 8), *(a1 + 32));
    v11 = [v8 _auxiliaryConnection];
    v12 = [v11 remoteObjectProxy];
    v13 = v7[127];
    v14 = *(v13 + 16);
    *(v13 + 16) = v12;

    [v8 setHostViewController:v7];
    if (!*(v7[127] + 16))
    {
      NSLog(&cfstr_Pdfhostviewcon.isa);
      (*(*(a1 + 40) + 16))();
    }

    if (sUseIOSurfaceForTiles != 2)
    {
      v15 = *(v7[127] + 16);
      v18[0] = @"function";
      v18[1] = @"value";
      v19[0] = @"setUseIOSurfaceForTiles";
      v16 = [MEMORY[0x1E696AD98] numberWithInt:sUseIOSurfaceForTiles == 1];
      v19[1] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      [v15 hostToExtension:v17];
    }

    [v7 setup];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    NSLog(&cfstr_Pdfhostviewcon_0.isa);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setup
{
  v3 = [PDFExtensionTopView alloc];
  view = [(PDFHostViewController *)self view];
  [view frame];
  v5 = [(PDFExtensionTopView *)v3 initWithFrame:?];
  v6 = self->_private;
  topView = v6->topView;
  v6->topView = v5;

  [(PDFExtensionTopView *)self->_private->topView setAutoresizingMask:18];
  view2 = [(PDFHostViewController *)self view];
  [view2 addSubview:self->_private->topView];

  view3 = [(PDFHostViewController *)self view];
  [view3 bringSubviewToFront:self->_private->topView];

  v10 = self->_private->topView;
  v11 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.001];
  [(PDFExtensionTopView *)v10 setBackgroundColor:v11];

  v12 = self->_private;
  passwordViewController = v12->passwordViewController;
  v12->passwordViewController = 0;

  v14 = self->_private;
  password = v14->password;
  v14->password = 0;

  self->_private->isUnlocked = 1;
  self->_private->currentPageIndex = 0;
  self->_private->pageCount = 0;
  self->_private->documentViewSize = *MEMORY[0x1E695F060];
  self->_private->minScaleFactor = 1.0;
  self->_private->maxScaleFactor = 5.0;
  self->_private->hasSelection = 0;
  v16 = *MEMORY[0x1E695EFF8];
  self->_private->topLeftSelectionPoint = *MEMORY[0x1E695EFF8];
  self->_private->bottomRightSelectionPoint = v16;
  self->_private->pdfViewIsRotating = 0;
  self->_private->pdfViewNeedsUpdate = 0;
  self->_private->hostScrollViewObserverIsActive = 0;
  [(PDFHostViewController *)self _gestureInit];

  [(PDFHostViewController *)self _setupExtensionInterruptionBlock];
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3->hostScrollViewObserverIsActive)
  {
    v3->hostScrollViewObserverIsActive = 0;
    WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
    [WeakRetained removeObserver:self forKeyPath:@"contentInset" context:@"PDFHostViewController.contentInsetPropertyObservationContext"];

    v3 = self->_private;
  }

  [(PDFExtensionProtocol *)v3->extensionProxy hostToExtension:&unk_1F41842F8];
  v5.receiver = self;
  v5.super_class = PDFHostViewController;
  [(PDFHostViewController *)&v5 dealloc];
}

- (void)_setupExtensionInterruptionBlock
{
  objc_initWeak(&location, self);
  extension = self->_private->extension;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PDFHostViewController__setupExtensionInterruptionBlock__block_invoke;
  v4[3] = &unk_1E81514F8;
  objc_copyWeak(&v5, &location);
  [(NSExtension *)extension setRequestInterruptionBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__PDFHostViewController__setupExtensionInterruptionBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PDFHostViewController__setupExtensionInterruptionBlock__block_invoke_2;
    aBlock[3] = &unk_1E8150990;
    v5 = WeakRetained;
    v3 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v3);
    }
  }
}

void __57__PDFHostViewController__setupExtensionInterruptionBlock__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 1016) + 24));
  if (WeakRetained)
  {
    [WeakRetained setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [WeakRetained setContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v3 = *(*(a1 + 32) + 1016);
    if (*(v3 + 378) == 1)
    {
      *(v3 + 378) = 0;
      [WeakRetained removeObserver:*(a1 + 32) forKeyPath:@"contentInset" context:@"PDFHostViewController.contentInsetPropertyObservationContext"];
    }
  }

  [*(*(*(a1 + 32) + 1016) + 64) removeFromSuperview];
  v4 = objc_loadWeakRetained((*(*(a1 + 32) + 1016) + 32));
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 pdfHostViewControllerExtensionProcessDidCrash:*(a1 + 32)];
  }
}

- (void)setDocumentData:(id)data withScrollView:(id)view
{
  v25[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  viewCopy = view;
  if (dataCopy)
  {
    extensionProxy = self->_private->extensionProxy;
    v24[0] = @"function";
    v24[1] = @"data";
    v25[0] = @"setDocumentData";
    v25[1] = dataCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [(PDFExtensionProtocol *)extensionProxy hostToExtension:v9];

    WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
    if (WeakRetained != viewCopy)
    {
      objc_storeWeak(&self->_private->hostScrollView, viewCopy);
      v11 = objc_loadWeakRetained(&self->_private->hostScrollView);

      panGestureRecognizer = [viewCopy panGestureRecognizer];
      [panGestureRecognizer requireGestureRecognizerToFail:self->_private->longPressGestureRecognizer];

      panGestureRecognizer2 = [viewCopy panGestureRecognizer];
      [panGestureRecognizer2 requireGestureRecognizerToFail:self->_private->panGestureRecognizer];

      [v11 addObserver:self forKeyPath:@"contentInset" options:1 context:@"PDFHostViewController.contentInsetPropertyObservationContext"];
      self->_private->hostScrollViewObserverIsActive = 1;
      WeakRetained = v11;
    }

    [(PDFHostViewController *)self _resetPDFHostViewControllerViews];
    v14 = self->_private;
    [viewCopy frame];
    v14->scrollViewFrame.origin.x = v15;
    v14->scrollViewFrame.origin.y = v16;
    v14->scrollViewFrame.size.width = v17;
    v14->scrollViewFrame.size.height = v18;
    v19 = self->_private;
    [viewCopy contentInset];
    v19->contentInset.top = v20;
    v19->contentInset.left = v21;
    v19->contentInset.bottom = v22;
    v19->contentInset.right = v23;
    [(PDFHostViewController *)self updatePDFViewLayout];
  }
}

- (void)_resetPDFHostViewControllerViews
{
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained setMinimumZoomScale:1.0];
  [WeakRetained setMaximumZoomScale:1.0];
  [WeakRetained setZoomScale:1.0];
  [WeakRetained frame];
  [WeakRetained setContentSize:{v3, v4}];
  view = [(PDFHostViewController *)self view];
  [WeakRetained frame];
  [view setFrame:?];

  passwordViewController = self->_private->passwordViewController;
  if (passwordViewController)
  {
    v7 = passwordViewController;
    [(PDFPasswordViewController *)v7 clearPasswordField];
    viewIfLoaded = [(PDFPasswordViewController *)self->_private->passwordViewController viewIfLoaded];

    [viewIfLoaded removeFromSuperview];
  }
}

- (void)findString:(id)string withOptions:(unint64_t)options
{
  v12[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    v7 = stringCopy;
  }

  else
  {
    v7 = &stru_1F416DF70;
  }

  extensionProxy = self->_private->extensionProxy;
  v11[0] = @"function";
  v11[1] = @"string";
  v12[0] = @"findString";
  v12[1] = v7;
  v11[2] = @"options";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v10];

  if (![(__CFString *)v7 length])
  {
    [(PDFHostViewController *)self findStringUpdate:0 done:1];
  }
}

- (void)cancelFindStringWithHighlightsCleared:(BOOL)cleared
{
  v7[2] = *MEMORY[0x1E69E9840];
  extensionProxy = self->_private->extensionProxy;
  v6[0] = @"function";
  v6[1] = @"clearHighlights";
  v7[0] = @"cancelFindStringWithHighlightsCleared";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:cleared];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v5];
}

- (void)focusOnSearchResultAtIndex:(unint64_t)index
{
  v7[2] = *MEMORY[0x1E69E9840];
  extensionProxy = self->_private->extensionProxy;
  v6[0] = @"function";
  v6[1] = @"searchIndex";
  v7[0] = @"focusOnSearchResultAtIndex";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v5];
}

- (void)goToPageIndex:(int64_t)index
{
  v9[2] = *MEMORY[0x1E69E9840];
  extensionProxy = self->_private->extensionProxy;
  v8[0] = @"function";
  v8[1] = @"pageIndex";
  v9[0] = @"goToPageIndex";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v7];

  [(PDFPageLabelView *)self->_private->pageLabelView setCurrentPageNumber:index + 1 forPageCount:self->_private->pageCount];
}

- (void)goToPageIndex:(int64_t)index withViewFrustum:(CGRect)frustum
{
  height = frustum.size.height;
  width = frustum.size.width;
  y = frustum.origin.y;
  x = frustum.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  view = [(PDFHostViewController *)self view];
  [view convertRect:WeakRetained toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [WeakRetained scrollRectToVisible:0 animated:{v12, v14, v16, v18}];
  v19 = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 pdfHostViewController:self goToPageIndex:index withViewFrustum:{x, y, width, height}];
  }

  [(PDFPageLabelView *)self->_private->pageLabelView setCurrentPageNumber:index + 1 forPageCount:self->_private->pageCount];
}

- (void)viewDidLayoutSubviews
{
  v2 = self->_private;
  if (v2->isUnlocked)
  {
    WeakRetained = objc_loadWeakRetained(&v2->hostScrollView);
    [WeakRetained frame];
    v10.origin.x = v4;
    v10.origin.y = v5;
    v10.size.width = v6;
    v10.size.height = v7;
    if (PDFRectEqualToRect(self->_private->scrollViewFrame, v10) || self->_private->pdfViewIsRotating)
    {
      [(PDFHostViewController *)self updatePDFViewLayout];
    }

    else
    {
      [(PDFHostViewController *)self beginPDFViewRotation];
      [(PDFHostViewController *)self endPDFViewRotation];
    }
  }
}

- (CGSize)_documentViewSize
{
  v2 = self->_private;
  width = v2->documentViewSize.width;
  height = v2->documentViewSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    WeakRetained = objc_loadWeakRetained(&v2->hostScrollView);
    [WeakRetained frame];
    width = v7;
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)_pdfViewInsets
{
  v2 = self->_private;
  [(PDFHostViewController *)self _pdfViewSafeAreaInsets];
  v4 = v3;
  top = v2->contentInset.top;
  left = v2->contentInset.left;
  bottom = v2->contentInset.bottom;
  right = v2->contentInset.right;

  MaxInsets = PDFEdgeInsetsGetMaxInsets(top, left, bottom, right, v4);
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = MaxInsets;
  return result;
}

- (UIEdgeInsets)_pdfViewSafeAreaInsets
{
  v2 = self->_private;
  if (v2->isUnlocked)
  {
    WeakRetained = objc_loadWeakRetained(&v2->hostScrollView);
    [WeakRetained safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = self->_private;
    v14 = 0.0;
    if (v13->contentInset.top <= v6)
    {
      v15 = v6;
    }

    else
    {
      v15 = 0.0;
    }

    if (v13->contentInset.left <= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0.0;
    }

    if (v13->contentInset.bottom <= v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0.0;
    }

    if (v13->contentInset.right <= v12)
    {
      v14 = v12;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v14;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGRect)_insetBoundsInDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained bounds];
  v4 = self->_private;
  top = v4->contentInset.top;
  left = v4->contentInset.left;
  v8 = v7 + left;
  v10 = v9 + top;
  v12 = v11 - (left + v4->contentInset.right);
  v14 = v13 - (top + v4->contentInset.bottom);
  view = [(PDFHostViewController *)self view];
  [WeakRetained convertRect:view toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(PDFHostViewController *)self _pdfViewSafeAreaInsets];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(PDFHostViewController *)self _hostScrollViewZoomScale];
  v33 = PDFRectScale(v25, v27, v29, v31, 1.0 / v32);
  v36 = v21 - (v34 + v35);
  v38 = v23 - (v33 + v37);

  v39 = v17;
  v40 = v19;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (double)_hostScrollViewZoomScale
{
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained zoomScale];
  v5 = CGFloatClamp(v4, self->_private->minScaleFactor, self->_private->maxScaleFactor);

  return v5;
}

- (void)updatePDFViewLayout
{
  v69[5] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained frame];
  v8 = v7;
  v9 = self->_private;
  if (v9->scrollViewFrame.size.width == v5)
  {
    v10 = v6;
    if (v9->scrollViewFrame.size.height == v6)
    {
      v11 = v4;
      v12 = v5;
      [WeakRetained contentInset];
      v9->contentInset.top = v13;
      v9->contentInset.left = v14;
      v9->contentInset.bottom = v15;
      v9->contentInset.right = v16;
      [WeakRetained bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      view = [(PDFHostViewController *)self view];
      [WeakRetained convertRect:view toView:{v18, v20, v22, v24}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = self->_private;
      [(PDFHostViewController *)self _insetBoundsInDocument];
      v34->insetBoundsInDocument.origin.x = v35;
      v34->insetBoundsInDocument.origin.y = v36;
      v34->insetBoundsInDocument.size.width = v37;
      v34->insetBoundsInDocument.size.height = v38;
      v39 = self->_private;
      v39->scrollViewFrame.origin.x = v8;
      v39->scrollViewFrame.origin.y = v11;
      v39->scrollViewFrame.size.width = v12;
      v39->scrollViewFrame.size.height = v10;
      v40 = self->_private;
      [(PDFHostViewController *)self _pdfViewSafeAreaInsets];
      v40->pdfSafeAreaInsets.top = v41;
      v40->pdfSafeAreaInsets.left = v42;
      v40->pdfSafeAreaInsets.bottom = v43;
      v40->pdfSafeAreaInsets.right = v44;
      [(PDFHostViewController *)self _hostScrollViewZoomScale];
      v57 = v45;
      extensionProxy = self->_private->extensionProxy;
      v69[0] = @"updatePDFViewLayout";
      v68[0] = @"function";
      v68[1] = @"boundsInDocument";
      v64 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
      v67[0] = v64;
      v63 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      v67[1] = v63;
      v62 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
      v67[2] = v62;
      v61 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
      v67[3] = v61;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
      v69[1] = v59;
      v68[2] = @"scrollViewFrame";
      v58 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v66[0] = v58;
      v56 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v66[1] = v56;
      v55 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      v66[2] = v55;
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v66[3] = v54;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
      v69[2] = v53;
      v68[3] = @"safeAreaInsets";
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->pdfSafeAreaInsets.top];
      v65[0] = v46;
      v47 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->pdfSafeAreaInsets.left];
      v65[1] = v47;
      v48 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->pdfSafeAreaInsets.bottom];
      v65[2] = v48;
      v49 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->pdfSafeAreaInsets.right];
      v65[3] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
      v69[3] = v50;
      v68[4] = @"zoomScale";
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v57];
      v69[4] = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:5];
      [(PDFExtensionProtocol *)extensionProxy hostToExtension:v52];

      v9 = self->_private;
    }
  }

  [(PDFPageLabelView *)v9->pageLabelView updateEffect];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"PDFHostViewController.contentInsetPropertyObservationContext")
  {
    v7 = self->_private;
    WeakRetained = objc_loadWeakRetained(&v7->hostScrollView);
    [WeakRetained contentInset];
    v7->contentInset.top = v9;
    v7->contentInset.left = v10;
    v7->contentInset.bottom = v11;
    v7->contentInset.right = v12;

    v13 = self->_private;
    if (v13->pdfViewNeedsUpdate)
    {
      v13->pdfViewNeedsUpdate = 0;

      [(PDFHostViewController *)self _endPDFViewRotationAnimated:1 withUpdate:0];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PDFHostViewController;
    [(PDFHostViewController *)&v14 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)pageNumberIndicator
{
  pageLabelView = self->_private->pageLabelView;
  if (!pageLabelView)
  {
    v4 = [[PDFPageLabelView alloc] initWithFrame:10.0, 10.0, 75.0, 35.0];
    v5 = self->_private;
    v6 = v5->pageLabelView;
    v5->pageLabelView = v4;

    pageLabelView = self->_private->pageLabelView;
  }

  return pageLabelView;
}

- (void)snapshotViewRect:(CGRect)rect snapshotWidth:(id)width afterScreenUpdates:(BOOL)updates withResult:(id)result
{
  updatesCopy = updates;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27[4] = *MEMORY[0x1E69E9840];
  widthCopy = width;
  v14 = _Block_copy(result);
  v15 = self->_private;
  snapshotCompletion = v15->snapshotCompletion;
  v15->snapshotCompletion = v14;

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v27[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v27[1] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v27[2] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v27[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

  extensionProxy = self->_private->extensionProxy;
  v25[0] = @"function";
  v25[1] = @"rect";
  v26[0] = @"snapshotViewRect";
  v26[1] = v21;
  v26[2] = widthCopy;
  v25[2] = @"width";
  v25[3] = @"afterScreenUpdates";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:updatesCopy];
  v26[3] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v24];
}

- (void)recievedSnapshotViewRect:(id)rect
{
  if (rect)
  {
    snapshotCompletion = self->_private->snapshotCompletion;
    if (snapshotCompletion)
    {
      snapshotCompletion[2](snapshotCompletion, rect);
    }
  }
}

- (void)_setMinimumZoomScale:(double)scale
{
  v7[2] = *MEMORY[0x1E69E9840];
  extensionProxy = self->_private->extensionProxy;
  v6[0] = @"function";
  v6[1] = @"minimumZoomScale";
  v7[0] = @"setMinimumZoomScale";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v5];
}

- (void)_setMaximumZoomScale:(double)scale
{
  v7[2] = *MEMORY[0x1E69E9840];
  extensionProxy = self->_private->extensionProxy;
  v6[0] = @"function";
  v6[1] = @"maximumZoomScale";
  v7[0] = @"setMaximumZoomScale";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v5];
}

- (void)setupDocumentViewSize:(CGSize)size
{
  self->_private->documentViewSize = size;
  [(PDFHostViewController *)self updateDocumentViewSize];
  [(PDFHostViewController *)self updateAutoScaleFactor];
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained setZoomScale:self->_private->minScaleFactor];
  [WeakRetained setContentOffset:{PDFPointMake(-self->_private->contentInset.left, -self->_private->contentInset.top)}];
}

- (void)updateDocumentViewSize
{
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [WeakRetained zoomScale];
  v4 = v3;
  [(PDFHostViewController *)self _documentViewSize];
  v6 = v5;
  v8 = v7;
  _pdfViewSafeAreaInsets = [(PDFHostViewController *)self _pdfViewSafeAreaInsets];
  v14 = PDFSizeMake(_pdfViewSafeAreaInsets, v11 + v10 + v6 * v4, v13 + v12 + v8 * v4);
  v16 = v15;
  v17.n128_u64[0] = 0;
  v18.n128_u64[0] = 0;
  v19 = PDFRectMake(v17, v18, v14, v16);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  view = [(PDFHostViewController *)self view];
  [view frame];
  v46.origin.x = v27;
  v46.origin.y = v28;
  v46.size.width = v29;
  v46.size.height = v30;
  v45.origin.x = v19;
  v45.origin.y = v21;
  v45.size.width = v23;
  v45.size.height = v25;
  v31 = PDFRectEqualToRect(v45, v46);

  if (!v31)
  {
    view2 = [(PDFHostViewController *)self view];
    [view2 setFrame:{v19, v21, v23, v25}];
  }

  [WeakRetained contentSize];
  if (v14 != v34 || v16 != v33)
  {
    [WeakRetained contentOffset];
    v37 = v36;
    v39 = v38;
    [WeakRetained setContentSize:{v14, v16}];
    [WeakRetained contentOffset];
    if (v37 != v41 || v39 != v40)
    {
      [WeakRetained setContentOffset:{v37, v39}];
    }
  }
}

- (void)updateAutoScaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [(PDFHostViewController *)self _documentViewSize];
  v4 = v3;
  [(PDFHostViewController *)self _pdfViewInsets];
  v7 = v5 + v6;
  [WeakRetained bounds];
  v9 = (v8 - v7) / v4;
  if (v9 <= 0.00000011920929)
  {
    v9 = 1.0;
  }

  self->_private->minScaleFactor = v9;
  self->_private->maxScaleFactor = self->_private->minScaleFactor + 5.0;
  [WeakRetained setMinimumZoomScale:self->_private->minScaleFactor];
  [WeakRetained setMaximumZoomScale:self->_private->maxScaleFactor];
  [(PDFHostViewController *)self _setMinimumZoomScale:self->_private->minScaleFactor];
  [(PDFHostViewController *)self _setMaximumZoomScale:self->_private->maxScaleFactor];
}

- (void)documentIsLocked:(BOOL)locked
{
  self->_private->isUnlocked = !locked;
  if (locked)
  {
    [(PDFHostViewController *)self _appendPasswordUI];
  }
}

- (void)updateCurrentPageIndex:(int64_t)index
{
  self->_private->currentPageIndex = index;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pdfHostViewController:self updateCurrentPageIndex:index];
  }

  [(PDFPageLabelView *)self->_private->pageLabelView setCurrentPageNumber:self->_private->currentPageIndex + 1 forPageCount:self->_private->pageCount];
}

- (void)updatePageCount:(int64_t)count
{
  self->_private->pageCount = count;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pdfHostViewController:self updatePageCount:count];
  }

  [(PDFPageLabelView *)self->_private->pageLabelView setCurrentPageNumber:self->_private->currentPageIndex + 1 forPageCount:self->_private->pageCount];
}

- (void)findStringUpdate:(unint64_t)update done:(BOOL)done
{
  doneCopy = done;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v8 pdfHostViewController:self findStringUpdate:update done:doneCopy];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)showSelectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  view = [(PDFHostViewController *)self view];
  [WeakRetained convertRect:view fromView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [WeakRetained bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(PDFHostViewController *)self _pdfViewInsets];
  v44 = v25;
  v42 = v27;
  v43 = v26;
  v47.origin.x = PDFEdgeInsetsInsetRect(v18, v20, v22, v24, v25, v28, v26, v27);
  v48.origin.x = v10;
  v48.origin.y = v12;
  v48.size.width = v14;
  v48.size.height = v16;
  if (!PDFRectContainsRect(v47, v48))
  {
    CenterPoint = PDFRectGetCenterPoint(v10, v12, v14);
    v31 = v30;
    [WeakRetained contentSize];
    v33 = v32;
    v35 = v34;
    v36 = PDFRectMakeFromCenter(CenterPoint, v31, v22);
    v38 = v37;
    if (v42 + v33 - v22 >= 0.0)
    {
      v39 = v42 + v33 - v22;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = CGFloatClamp(v36, 0.0, v39);
    if (v43 + v35 - v24 >= 0.0)
    {
      v41 = v43 + v35 - v24;
    }

    else
    {
      v41 = 0.0;
    }

    [WeakRetained setContentOffset:1 animated:{v40, CGFloatClamp(v38, -v44, v41)}];
  }
}

- (void)showTextSelectionMenu:(BOOL)menu selectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  menuCopy = menu;
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  if (menuCopy)
  {
    [(PDFExtensionTopView *)self->_private->topView becomeFirstResponder];
    [mEMORY[0x1E69DCC68] showMenuFromView:self->_private->topView rect:{x, y, width, height}];
  }

  else
  {
    [mEMORY[0x1E69DCC68] hideMenu];
  }
}

- (void)zoomToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!PDFRectIsEmpty(rect))
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
    [WeakRetained frame];
    v9 = CGFloatClamp((v8 - self->_private->contentInset.left - self->_private->contentInset.right) / width, self->_private->minScaleFactor, self->_private->maxScaleFactor);
    [WeakRetained zoomToRect:1 animated:{x - self->_private->contentInset.left / v9 * 0.5, y - self->_private->contentInset.top / v9 * 0.5, width, height}];
    [(PDFHostViewController *)self updatePDFViewLayout];
  }
}

- (void)goToURL:(id)l atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pdfHostViewController:self goToURL:lCopy atLocation:{x, y}];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pdfHostViewController:self goToURL:lCopy];
    }
  }
}

- (void)goToPageIndex:(int64_t)index pageFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [(PDFHostViewController *)self _hostScrollViewZoomScale];
  if (v10 > self->_private->minScaleFactor)
  {
    [WeakRetained setZoomScale:0 animated:?];
  }

  view = [(PDFHostViewController *)self view];
  [view convertRect:WeakRetained toView:{x, y, width, height}];
  v13 = v12;

  [WeakRetained contentOffset];
  v15 = v14;
  [(PDFHostViewController *)self _pdfViewInsets];
  v17 = v13 - v16;
  v18 = -self->_private->contentInset.top;
  view2 = [(PDFHostViewController *)self view];
  [view2 frame];
  v21 = v20;
  [WeakRetained bounds];
  v23 = CGFloatClamp(v17, v18, v21 - v22);

  [WeakRetained setContentOffset:{v15, v23}];
  v24 = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v24 pdfHostViewController:self goToPageIndex:index];
  }
}

- (void)goToDestination:(int64_t)destination point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  view = [(PDFHostViewController *)self view];
  [view convertPoint:WeakRetained toView:{x, y}];
  v10 = v9;
  v12 = v11;

  [(PDFHostViewController *)self _pdfViewInsets];
  v14 = v13;
  v16 = v10 - v15;
  v17 = -self->_private->contentInset.left;
  view2 = [(PDFHostViewController *)self view];
  [view2 frame];
  v20 = v19;
  [WeakRetained bounds];
  v22 = CGFloatClamp(v16, v17, v20 - v21);

  v23 = v12 - v14;
  v24 = -self->_private->contentInset.top;
  view3 = [(PDFHostViewController *)self view];
  [view3 frame];
  v27 = v26;
  [WeakRetained bounds];
  v29 = CGFloatClamp(v23, v24, v27 - v28);

  [WeakRetained setContentOffset:{PDFPointMake(v22, v29)}];
  v30 = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    view4 = [(PDFHostViewController *)self view];
    [WeakRetained convertRect:view4 toView:{v32, v34, v36, v38}];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [v30 pdfHostViewController:self goToPageIndex:destination withViewFrustum:{v41, v43, v45, v47}];
  }
}

- (void)didCopy:(id)copy
{
  v3 = MEMORY[0x1E69DCD50];
  copyCopy = copy;
  generalPasteboard = [v3 generalPasteboard];
  [generalPasteboard setItems:copyCopy];
}

- (void)_appendPasswordUI
{
  passwordViewController = self->_private->passwordViewController;
  if (!passwordViewController)
  {
    v4 = [[PDFPasswordViewController alloc] initWithDelegate:self];
    v5 = self->_private;
    v6 = v5->passwordViewController;
    v5->passwordViewController = v4;

    passwordViewController = self->_private->passwordViewController;
  }

  view = [(PDFPasswordViewController *)passwordViewController view];
  view2 = [(PDFHostViewController *)self view];
  [view2 addSubview:view];

  [view setAutoresizingMask:18];
  view3 = [(PDFHostViewController *)self view];
  [view3 bounds];
  [view setFrame:?];

  [(PDFPasswordViewController *)self->_private->passwordViewController clearPasswordField];
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pdfHostViewControllerDocumentDidRequestPassword:self];
  }
}

- (BOOL)userDidEnterPassword:(id)password forPasswordViewController:(id)controller
{
  v12[2] = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  v7 = passwordCopy;
  if (passwordCopy && !self->_private->isUnlocked && [passwordCopy length])
  {
    objc_storeStrong(&self->_private->password, password);
    extensionProxy = self->_private->extensionProxy;
    v11[0] = @"function";
    v11[1] = @"password";
    v12[0] = @"unlockWithPassword";
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(PDFExtensionProtocol *)extensionProxy hostToExtension:v9];
  }

  return 1;
}

- (void)updateDocumentIsLocked:(BOOL)locked
{
  self->_private->isUnlocked = !locked;
  v4 = self->_private;
  passwordViewController = v4->passwordViewController;
  if (!locked)
  {
    if (passwordViewController)
    {
      view = [(PDFPasswordViewController *)passwordViewController view];
      [view removeFromSuperview];

      v4 = self->_private;
    }

    WeakRetained = objc_loadWeakRetained(&v4->hostViewControllerDelegate);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v8 pdfHostViewController:self documentDidUnlockWithPassword:self->_private->password];
      }
    }

    MEMORY[0x1EEE66BE0]();
  }

  else
  {

    [(PDFPasswordViewController *)passwordViewController presentInvalidPasswordAlertWithParentViewController:self];
  }
}

- (void)didLongPressURL:(id)l atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = location.y;
  v10 = location.x;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pdfHostViewController:self didLongPressURL:lCopy atLocation:v10 withAnnotationRect:{v9, x, y, width, height}];
    }

    if (objc_opt_respondsToSelector())
    {
      view = [(PDFHostViewController *)self view];
      v14 = objc_loadWeakRetained(&self->_private->hostScrollView);
      [view convertPoint:v14 toView:{v10, v9}];
      v16 = v15;
      v18 = v17;

      [WeakRetained pdfHostViewController:self didLongPressURL:lCopy atLocation:{v16, v18}];
    }
  }
}

- (void)didLongPressPageIndex:(int64_t)index atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = location.y;
  v10 = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostViewControllerDelegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pdfHostViewController:self didLongPressPageIndex:index atLocation:v10 withAnnotationRect:{v9, x, y, width, height}];
    }

    if (objc_opt_respondsToSelector())
    {
      view = [(PDFHostViewController *)self view];
      v14 = objc_loadWeakRetained(&self->_private->hostScrollView);
      [view convertPoint:v14 toView:{v10, v9}];
      v16 = v15;
      v18 = v17;

      [WeakRetained pdfHostViewController:self didLongPressPageIndex:index atLocation:{v16, v18}];
    }
  }
}

- (void)_gestureInit
{
  v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleGesture_];
  v4 = self->_private;
  longPressGestureRecognizer = v4->longPressGestureRecognizer;
  v4->longPressGestureRecognizer = v3;

  [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setDelegate:self];
  view = [(PDFHostViewController *)self view];
  [view addGestureRecognizer:self->_private->longPressGestureRecognizer];

  v7 = [[PDFPanGestureRecognizer alloc] initWithTarget:self action:sel_handleGesture_];
  v8 = self->_private;
  panGestureRecognizer = v8->panGestureRecognizer;
  v8->panGestureRecognizer = v7;

  [(PDFPanGestureRecognizer *)self->_private->panGestureRecognizer setDelegate:self];
  [(PDFPanGestureRecognizer *)self->_private->panGestureRecognizer _setHysteresis:8.0];
  view2 = [(PDFHostViewController *)self view];
  [view2 addGestureRecognizer:self->_private->panGestureRecognizer];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleGesture_];
  v12 = self->_private;
  tapGestureRecognizer = v12->tapGestureRecognizer;
  v12->tapGestureRecognizer = v11;

  [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer setDelegate:self];
  view3 = [(PDFHostViewController *)self view];
  [view3 addGestureRecognizer:self->_private->tapGestureRecognizer];

  v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleGesture_];
  v16 = self->_private;
  doubleTapGestureRecognizer = v16->doubleTapGestureRecognizer;
  v16->doubleTapGestureRecognizer = v15;

  [(UITapGestureRecognizer *)self->_private->doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_private->doubleTapGestureRecognizer setDelegate:self];
  view4 = [(PDFHostViewController *)self view];
  [view4 addGestureRecognizer:self->_private->doubleTapGestureRecognizer];

  [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer requireGestureRecognizerToFail:self->_private->longPressGestureRecognizer];
  [(PDFPanGestureRecognizer *)self->_private->panGestureRecognizer requireGestureRecognizerToFail:self->_private->longPressGestureRecognizer];
  [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer requireGestureRecognizerToFail:self->_private->doubleTapGestureRecognizer];
  self->_private->recentGestureIsIndirectTouch = 0;
  v19 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  v20 = self->_private;
  pointerInteraction = v20->pointerInteraction;
  v20->pointerInteraction = v19;

  view5 = [(PDFHostViewController *)self view];
  [view5 addInteraction:self->_private->pointerInteraction];

  v23 = self->_private;
  pdfPointerCompletionHandler = v23->pdfPointerCompletionHandler;
  v23->pdfPointerCompletionHandler = 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  v6 = self->_private;
  if (v6->tapGestureRecognizer == beginCopy)
  {
    if (v6->hasSelection)
    {
      goto LABEL_18;
    }

    [(PDFHostViewController *)self handleGesture:beginCopy];
  }

  else if (v6->doubleTapGestureRecognizer == beginCopy)
  {
    WeakRetained = objc_loadWeakRetained(&v6->hostScrollView);
    [(PDFHostViewController *)self _hostScrollViewZoomScale];
    if (v15 <= self->_private->minScaleFactor)
    {

      goto LABEL_18;
    }

    [WeakRetained setZoomScale:1 animated:?];
  }

  else
  {
    if (v6->longPressGestureRecognizer != beginCopy)
    {
      if (v6->panGestureRecognizer == beginCopy)
      {
        view = [(PDFHostViewController *)self view];
        [v5 locationOfFirstTouchInView:view];
        v9 = v8;
        v11 = v10;

        v12 = self->_private;
        if (v12->hasSelection)
        {
          v13 = [(PDFHostViewController *)self _isTouchingLollipopAtLocationOfFirstTouch:v9, v11];
          v12 = self->_private;
        }

        else
        {
          v13 = 0;
        }

        if (!v12->recentGestureIsIndirectTouch && !v13)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v16 = 1;
      goto LABEL_19;
    }

    if (!v6->hasSelection)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_19:

  return v16;
}

- (void)handleGesture:(id)gesture
{
  v33[2] = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  v5 = [(PDFHostViewController *)self _typeForGestureRecognizer:gestureCopy];
  view = [(PDFHostViewController *)self view];
  [gestureCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v33[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v33[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];

  panGestureRecognizer = self->_private->panGestureRecognizer;
  view2 = [(PDFHostViewController *)self view];
  [(PDFPanGestureRecognizer *)panGestureRecognizer locationOfFirstTouchInView:view2];
  v17 = v16;
  v19 = v18;

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v32[0] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v32[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

  extensionProxy = self->_private->extensionProxy;
  v31[0] = @"handleGesture";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v5, @"function", @"gestureType"}];
  v31[1] = v24;
  v30[2] = @"state";
  v25 = MEMORY[0x1E696AD98];
  state = [gestureCopy state];

  v27 = [v25 numberWithInteger:state];
  v31[2] = v27;
  v31[3] = v13;
  v30[3] = @"location";
  v30[4] = @"locationOfFirstTouch";
  v31[4] = v22;
  v30[5] = @"isIndirectTouch";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_private->recentGestureIsIndirectTouch];
  v31[5] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v29];
}

- (unint64_t)_typeForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = self->_private;
  if (v5->tapGestureRecognizer == recognizerCopy)
  {
    v6 = 0;
  }

  else if (v5->doubleTapGestureRecognizer == recognizerCopy)
  {
    v6 = 1;
  }

  else if (v5->longPressGestureRecognizer == recognizerCopy)
  {
    v6 = 2;
  }

  else if (v5->panGestureRecognizer == recognizerCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  return v6;
}

- (BOOL)_isTouchingLollipopAtLocationOfFirstTouch:(CGPoint)touch
{
  v3 = self->_private;
  if (!v3->hasSelection)
  {
    return 0;
  }

  y = touch.y;
  x = touch.x;
  WeakRetained = objc_loadWeakRetained(&v3->hostScrollView);
  view = [(PDFHostViewController *)self view];
  [view convertPoint:WeakRetained toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = 1;
  do
  {
    v14 = v13;
    v15 = self->_private;
    if (v14)
    {
      v16 = 136;
    }

    else
    {
      v16 = 152;
    }

    if (v14)
    {
      v17 = 144;
    }

    else
    {
      v17 = 160;
    }

    v18 = *(&v15->super.isa + v17);
    v19 = *(&v15->super.isa + v16);
    view2 = [(PDFHostViewController *)self view];
    [view2 convertPoint:WeakRetained toView:{v19, v18}];
    v22 = v21;
    v24 = v23;

    v25 = sqrt((v12 - v24) * (v12 - v24) + (v10 - v22) * (v10 - v22)) / PDFScreenGetBackingScaleFactor();
    v26 = v25 < 10.0;
    if (v25 < 10.0)
    {
      break;
    }

    v13 = 0;
  }

  while ((v14 & 1) != 0);

  return v26;
}

- (void)_pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region completion:(id)completion
{
  v21[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (self->_private->pdfPointerCompletionHandler != completion)
  {
    v9 = _Block_copy(completion);
    v10 = self->_private;
    pdfPointerCompletionHandler = v10->pdfPointerCompletionHandler;
    v10->pdfPointerCompletionHandler = v9;
  }

  [requestCopy location];
  v13 = v12;
  extensionProxy = self->_private->extensionProxy;
  v20[0] = @"function";
  v20[1] = @"location";
  v21[0] = @"pointerRegionForLocation";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v19[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v19[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v21[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [(PDFExtensionProtocol *)extensionProxy hostToExtension:v18];
}

- (void)completePointerInteractionRegionForRequest:(id)request
{
  requestCopy = request;
  if (self->_private->pdfPointerCompletionHandler)
  {
    v18 = requestCopy;
    identifier = [requestCopy identifier];
    v6 = [identifier isEqualToString:@"PDFPointerRegionText"];

    if (v6)
    {
      v7 = MEMORY[0x1E69DCDC0];
      [v18 rect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      identifier2 = [v18 identifier];
      v17 = [v7 regionWithRect:identifier2 identifier:{v9, v11, v13, v15}];
    }

    else
    {
      v17 = 0;
    }

    (*(self->_private->pdfPointerCompletionHandler + 2))();

    requestCopy = v18;
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  view = [(PDFHostViewController *)self view];
  [regionCopy rect];
  [view convertRect:0 toView:?];
  v8 = v7;

  identifier = [regionCopy identifier];
  v10 = [identifier isEqualToString:@"PDFPointerRegionLink"];

  if ((v10 & 1) != 0 || ([regionCopy identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"PDFPointerRegionText"), v11, !v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E69DCDC8] beamWithPreferredLength:2 axis:v8];
  }

  [MEMORY[0x1E69DD110] _maximumBeamSnappingLength];
  v15 = [MEMORY[0x1E69DCDD0] styleWithShape:v13 constrainedAxes:2 * (v8 <= v14)];

  return v15;
}

- (void)beginPDFViewRotation
{
  self->_private->pdfViewIsRotating = 1;
  v3 = self->_private;
  v3->documentViewCenter.x = PDFRectGetCenterPoint(v3->insetBoundsInDocument.origin.x, v3->insetBoundsInDocument.origin.y, v3->insetBoundsInDocument.size.width);
  v3->documentViewCenter.y = v4;
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [(PDFHostViewController *)self _documentViewSize];
  v6 = v5;
  v7 = self->_private;
  v8 = v7->pdfSafeAreaInsets.left + v7->pdfSafeAreaInsets.right;
  v9 = v7->contentInset.left + v7->contentInset.right;
  [WeakRetained zoomScale];
  self->_private->horizontalScaleFactor = v6 * v10 / (self->_private->scrollViewFrame.size.width - v8 - v9);
}

- (void)_endPDFViewRotationAnimated:(BOOL)animated withUpdate:(BOOL)update
{
  animatedCopy = animated;
  [(PDFHostViewController *)self updateDocumentViewSize];
  [(PDFHostViewController *)self updateAutoScaleFactor];
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [(PDFHostViewController *)self _documentViewSize];
  v8 = v7;
  v10 = v9;
  [(PDFHostViewController *)self _pdfViewInsets];
  v13 = v11 + v12;
  horizontalScaleFactor = self->_private->horizontalScaleFactor;
  [WeakRetained bounds];
  v16 = CGFloatClamp(horizontalScaleFactor * (v15 - v13) / v8, self->_private->minScaleFactor, self->_private->maxScaleFactor);
  [WeakRetained setZoomScale:animatedCopy animated:?];
  [(PDFHostViewController *)self _insetBoundsInDocument];
  v18 = v17;
  v20 = v19;
  [WeakRetained contentInset];
  v25 = PDFRectScale(v21, v22, v23, v24, 1.0 / v16);
  v27 = v26;
  v30 = CGFloatClamp(self->_private->documentViewCenter.x - v18 * 0.5 - v28, -v28, v8 - v18 - v28 - v29);
  v31 = CGFloatClamp(self->_private->documentViewCenter.y - v20 * 0.5 - v25, -v25, v10 - v20 - v25 - v27);
  [WeakRetained setContentOffset:animatedCopy animated:{PDFPointMake(v16 * v30, v16 * v31)}];
  v32 = self->_private;
  [WeakRetained frame];
  v32->scrollViewFrame.origin.x = v33;
  v32->scrollViewFrame.origin.y = v34;
  v32->scrollViewFrame.size.width = v35;
  v32->scrollViewFrame.size.height = v36;
  self->_private->pdfViewIsRotating = 0;
  self->_private->pdfViewNeedsUpdate = update;
  [(PDFHostViewController *)self updatePDFViewLayout];
}

- (void)endPDFViewRotationWithContentInset:(UIEdgeInsets)inset
{
  self->_private->contentInset = inset;
  [(PDFHostViewController *)self updateDocumentViewSize];
  [(PDFHostViewController *)self updateAutoScaleFactor];
  WeakRetained = objc_loadWeakRetained(&self->_private->hostScrollView);
  [(PDFHostViewController *)self _documentViewSize];
  v5 = v4;
  v7 = v6;
  [(PDFHostViewController *)self _pdfViewInsets];
  v10 = v8 + v9;
  horizontalScaleFactor = self->_private->horizontalScaleFactor;
  [WeakRetained bounds];
  v13 = CGFloatClamp(horizontalScaleFactor * (v12 - v10) / v5, self->_private->minScaleFactor, self->_private->maxScaleFactor);
  [WeakRetained setZoomScale:?];
  [(PDFHostViewController *)self _insetBoundsInDocument];
  v15 = v14;
  v17 = v16;
  v18 = PDFRectScale(self->_private->contentInset.top, self->_private->contentInset.left, self->_private->contentInset.bottom, self->_private->contentInset.right, 1.0 / v13);
  v20 = v19;
  v23 = CGFloatClamp(self->_private->documentViewCenter.x - v15 * 0.5 - v21, -v21, v5 - v15 - v21 - v22);
  v24 = CGFloatClamp(self->_private->documentViewCenter.y - v17 * 0.5 - v18, -v18, v7 - v17 - v18 - v20);
  [WeakRetained setContentOffset:{PDFPointMake(v13 * v23, v13 * v24)}];
  v25 = self->_private;
  [WeakRetained frame];
  v25->scrollViewFrame.origin.x = v26;
  v25->scrollViewFrame.origin.y = v27;
  v25->scrollViewFrame.size.width = v28;
  v25->scrollViewFrame.size.height = v29;
  self->_private->pdfViewIsRotating = 0;
  [(PDFHostViewController *)self updatePDFViewLayout];
}

+ (id)loadExtension:(id)extension
{
  extensionCopy = extension;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PDFHostViewController_loadExtension___block_invoke;
  block[3] = &unk_1E8150990;
  v10 = extensionCopy;
  v4 = loadExtension__onceToken;
  v5 = extensionCopy;
  if (v4 != -1)
  {
    dispatch_once(&loadExtension__onceToken, block);
  }

  v6 = loadExtension__extension;
  v7 = loadExtension__extension;

  return v6;
}

void __39__PDFHostViewController_loadExtension___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v2 error:&v7];
  v4 = v7;
  v5 = loadExtension__extension;
  loadExtension__extension = v3;

  if (loadExtension__extension)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    NSLog(&cfstr_Pdfhostviewcon_1.isa, *(a1 + 32), v4);
  }
}

@end