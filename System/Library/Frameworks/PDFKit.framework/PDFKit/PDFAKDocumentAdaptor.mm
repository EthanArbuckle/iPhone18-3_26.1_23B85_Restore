@interface PDFAKDocumentAdaptor
+ (BOOL)isHandlingEditDetected;
+ (void)setIsHandlingEditDetected:(BOOL)detected;
- (BOOL)handleBackTabInTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller;
- (BOOL)handleTabInTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller;
- (BOOL)hasHighlightableSelectionForAnnotationController:(id)controller;
- (BOOL)shouldAddTabControlsToTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller;
- (BOOL)shouldPlaceFormElementAtPoint:(CGPoint)point onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (BOOL)shouldPlaceProposedFormElementAtRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)page;
- (CGPoint)convertPoint:(CGPoint)point fromModelToOverlayWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGPoint)convertPoint:(CGPoint)point fromOverlayToModelWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGRect)positioningRectForCandidatePicker;
- (PDFAKControllerDelegateProtocol)PDFAKControllerDelegate;
- (PDFAKDocumentAdaptor)initWithPDFDocument:(id)document andView:(id)view;
- (PDFDocument)pdfDocument;
- (PDFView)pdfView;
- (UIView)akToolbarView;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)_scrollViewRecognizersForPageAtIndex:(unint64_t)index;
- (id)controller:(id)controller willSetToolbarItems:(id)items;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)popoverPresentingViewControllerForAnnotationController:(id)controller;
- (id)rulerHostingView;
- (id)undoManagerForAnnotationController:(id)controller;
- (unint64_t)pageIndexForAnnotation:(id)annotation;
- (void)_adjustScrollViewWithAnimationProperties:(TextAnnotationAnimationProperties *)properties delta:(double)delta;
- (void)_delayedModelBaseScaleFactorCalculation;
- (void)_pdfDocumentDidUnlock:(id)unlock;
- (void)_resetAnimationProperties;
- (void)_scheduleDelayedModelBaseScaleFactorCalculation;
- (void)_teardown;
- (void)_updatePDFScrollViewMinimumNumberOfTouches;
- (void)adjustScrollViewForKeyboardNotification:(id)notification;
- (void)annotationDidEndEditing:(id)editing;
- (void)annotationWillBeginEditing:(id)editing;
- (void)controllerDidEnterToolMode:(id)mode;
- (void)controllerDidExitToolMode:(id)mode;
- (void)controllerWillDismissSignatureCaptureView:(id)view;
- (void)controllerWillDismissSignatureManagerView:(id)view;
- (void)controllerWillEnterToolMode:(id)mode;
- (void)controllerWillExitToolMode:(id)mode;
- (void)controllerWillShowSignatureCaptureView:(id)view;
- (void)controllerWillShowSignatureManagerView:(id)view;
- (void)dealloc;
- (void)editCheckpointReachedForAnnotationController:(id)controller;
- (void)editDetectedForAnnotationController:(id)controller;
- (void)handleTextSuggestion:(id)suggestion forAnnotationController:(id)controller completionHandler:(id)handler;
- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pdfDocument:(id)document didExchangePage:(id)page atIndex:(unint64_t)index withPage:(id)withPage atIndex:(unint64_t)atIndex;
- (void)pdfDocument:(id)document didInsertPage:(id)page atIndex:(unint64_t)index;
- (void)pdfDocument:(id)document didRemovePage:(id)page atIndex:(unint64_t)index;
- (void)pdfDocument:(id)document didReplacePagePlaceholder:(id)placeholder atIndex:(unint64_t)index withPage:(id)page;
- (void)pdfDocumentDidRemoveAllPagesOrPlaceholders:(id)placeholders;
- (void)penStrokeCompletedForAnnotationController:(id)controller;
- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller;
- (void)rotateLeft:(id)left;
- (void)rotateRight:(id)right;
- (void)teardown;
- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller;
@end

@implementation PDFAKDocumentAdaptor

- (PDFAKDocumentAdaptor)initWithPDFDocument:(id)document andView:(id)view
{
  documentCopy = document;
  viewCopy = view;
  if (GetDefaultsWriteAKEnabled())
  {
    v21.receiver = self;
    v21.super_class = PDFAKDocumentAdaptor;
    v8 = [(PDFAKDocumentAdaptor *)&v21 init];
    p_isa = &v8->super.isa;
    if (v8)
    {
      v8->_modelBaseScaleFactor = 9.22337204e18;
      objc_storeWeak(&v8->_pdfDocument, documentCopy);
      objc_storeWeak(p_isa + 3, viewCopy);
      v10 = [AKControllerClass() controllerWithDelegate:p_isa];
      objc_storeStrong(p_isa + 4, v10);
      [p_isa[4] setRulerHostingDelegate:p_isa];
      [objc_opt_class() addObserver:p_isa forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:0];
      [p_isa _resetAnimationProperties];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:p_isa selector:sel_adjustScrollViewForKeyboardNotification_ name:*MEMORY[0x1E69DE080] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = AKDidEndEditingTextAnnotationNotificationString();
      [defaultCenter2 addObserver:p_isa selector:sel_annotationDidEndEditing_ name:v13 object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = AKWillBeginEditingTextAnnotationNotificationString();
      [defaultCenter3 addObserver:p_isa selector:sel_annotationWillBeginEditing_ name:v15 object:0];

      objc_storeWeak(p_isa + 5, 0);
      [v10 setAnnotationEditingEnabled:0];
      if ([documentCopy isLocked] && !objc_msgSend(documentCopy, "pageCount"))
      {
        defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter4 addObserver:p_isa selector:sel__pdfDocumentDidUnlock_ name:@"PDFDocumentDidUnlock" object:documentCopy];
      }

      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 addObserver:p_isa selector:sel__pdfViewDidLayout_ name:@"PDFViewDidLayoutDocumentView" object:viewCopy];

      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 addObserver:p_isa selector:sel__pdfViewDidChangeScale_ name:@"PDFViewScaleChanged" object:viewCopy];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PDFAKDocumentAdaptor *)self _teardown];
    }

    else
    {
      NSLog(&cfstr_SCalledFromABa.isa, "[PDFAKDocumentAdaptor dealloc]");
    }
  }

  v3.receiver = self;
  v3.super_class = PDFAKDocumentAdaptor;
  [(PDFAKDocumentAdaptor *)&v3 dealloc];
}

- (void)teardown
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PDFAKDocumentAdaptor *)self _teardown];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PDFAKDocumentAdaptor_teardown__block_invoke;
    block[3] = &unk_1E8150990;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_teardown
{
  if (!self->_isTornDown)
  {
    self->_isTornDown = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing"];
    [(AKController *)self->_akController teardown];
    akController = self->_akController;
    self->_akController = 0;

    objc_storeWeak(&self->_pdfAKControllerDelegate, 0);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"prefersPencilOnlyDrawing"])
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PDFAKDocumentAdaptor;
    [(PDFAKDocumentAdaptor *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (PDFView)pdfView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (PDFDocument)pdfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  return WeakRetained;
}

- (UIView)akToolbarView
{
  akToolbarView = self->_akToolbarView;
  if (!akToolbarView)
  {
    v4 = [objc_alloc(AKToolbarViewClass()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v4 setShareButtonHidden:1];
    v5 = self->_akToolbarView;
    self->_akToolbarView = v4;

    akToolbarView = self->_akToolbarView;
  }

  [(AKToolbarView *)akToolbarView setAnnotationController:self->_akController];
  v6 = self->_akToolbarView;

  return v6;
}

- (PDFAKControllerDelegateProtocol)PDFAKControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);

  return WeakRetained;
}

- (void)pdfDocument:(id)document didInsertPage:(id)page atIndex:(unint64_t)index
{
  akPageAdaptor = [page akPageAdaptor];
  akPageModelController = [akPageAdaptor akPageModelController];

  akDocumentModelController = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v9 = [akDocumentModelController mutableArrayValueForKey:@"pageModelControllers"];

  [v9 insertObject:akPageModelController atIndex:index];
  akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
  currentPageIndex = [akMainController currentPageIndex];

  if (currentPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    akMainController2 = [(PDFAKDocumentAdaptor *)self akMainController];
    [akMainController2 setCurrentPageIndex:index];
  }
}

- (void)pdfDocument:(id)document didRemovePage:(id)page atIndex:(unint64_t)index
{
  v6 = [(PDFAKDocumentAdaptor *)self akDocumentModelController:document];
  v7 = [v6 mutableArrayValueForKey:@"pageModelControllers"];

  [v7 removeObjectAtIndex:index];
}

- (void)pdfDocumentDidRemoveAllPagesOrPlaceholders:(id)placeholders
{
  akDocumentModelController = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v4 = [akDocumentModelController mutableArrayValueForKey:@"pageModelControllers"];

  [v4 removeAllObjects];
}

- (void)pdfDocument:(id)document didExchangePage:(id)page atIndex:(unint64_t)index withPage:(id)withPage atIndex:(unint64_t)atIndex
{
  v9 = [(PDFAKDocumentAdaptor *)self akDocumentModelController:document];
  v10 = [v9 mutableArrayValueForKey:@"pageModelControllers"];

  [v10 exchangeObjectAtIndex:index withObjectAtIndex:atIndex];
}

- (void)pdfDocument:(id)document didReplacePagePlaceholder:(id)placeholder atIndex:(unint64_t)index withPage:(id)page
{
  akPageAdaptor = [page akPageAdaptor];
  akPageModelController = [akPageAdaptor akPageModelController];

  akDocumentModelController = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v10 = [akDocumentModelController mutableArrayValueForKey:@"pageModelControllers"];

  if ([v10 count] <= index)
  {
    [v10 insertObject:akPageModelController atIndex:index];
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:index];

    if (v11 != akPageModelController)
    {
      [v10 setObject:akPageModelController atIndexedSubscript:index];
    }
  }

  akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
  currentPageIndex = [akMainController currentPageIndex];

  if (currentPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    akMainController2 = [(PDFAKDocumentAdaptor *)self akMainController];
    [akMainController2 setCurrentPageIndex:index];
  }
}

- (id)rulerHostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (id)undoManagerForAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    undoManager = [WeakRetained undoManagerForAnnotationController:controllerCopy];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_pdfView);
    undoManager = [v7 undoManager];
  }

  return undoManager;
}

- (CGPoint)convertPoint:(CGPoint)point fromModelToOverlayWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = point.y;
  x = point.x;
  v9 = [controller overlayViewAtIndex:?];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  v11 = PDFPointFromCGPoint(x, y);
  v13 = v12;
  pdfDocument = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v15 = [pdfDocument pageAtIndex:index];
  [pdfView convertPoint:v15 fromPage:{v11, v13}];
  v17 = v16;
  v19 = v18;

  [pdfView convertPoint:v9 toView:{v17, v19}];
  v22 = PDFPointToCGPoint(v20, v21);
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromOverlayToModelWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = point.y;
  x = point.x;
  v9 = [controller overlayViewAtIndex:?];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  [pdfView convertPoint:v9 fromView:{PDFPointFromCGPoint(x, y)}];
  v12 = v11;
  v14 = v13;
  pdfDocument = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v16 = [pdfDocument pageAtIndex:index];
  [pdfView convertPoint:v16 toPage:{v12, v14}];
  v19 = PDFPointToCGPoint(v17, v18);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v5 = [(PDFAKDocumentAdaptor *)self pdfDocument:index];
  v6 = [v5 pageAtIndex:index];
  [v6 boundsForBox:1];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  adornmentsCopy = adornments;
  v15 = [(PDFAKDocumentAdaptor *)self akMainController:adornments];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  pdfDocument = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v18 = pdfDocument;
  v19 = 0;
  if (pdfView && pdfDocument)
  {
    v20 = [v15 overlayViewAtIndex:index];
    v21 = [v18 pageAtIndex:index];
    displaysAnnotations = [v21 displaysAnnotations];
    [v21 setDisplaysAnnotations:adornmentsCopy];
    [pdfView convertRect:v20 fromView:{x, y, width, height}];
    [pdfView convertRect:v21 toPage:?];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29 - PDFRectToCGRect([v21 boundsForBox:1]);
    v32 = v24 - v31;
    v51.origin.x = v30;
    v51.origin.y = v32;
    v51.size.width = v26;
    v51.size.height = v28;
    v33 = CGRectGetWidth(v51);
    v52.origin.x = v30;
    v52.origin.y = v32;
    v52.size.width = v26;
    v52.size.height = v28;
    mediaBox.origin.x = 0.0;
    mediaBox.origin.y = 0.0;
    v34 = v33 * scale;
    v35 = CGRectGetHeight(v52) * scale;
    mediaBox.size.width = v34;
    mediaBox.size.height = v35;
    if (CGDisplayListCreateWithRect())
    {
      CGDisplayListSetBoundingBox();
      v36 = CGDisplayListContextCreate();
      if (v36)
      {
        v37 = v36;
        CGContextSaveGState(v36);
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        CGContextSetFillColorWithColor(v37, [whiteColor CGColor]);

        v53.origin.x = 0.0;
        v53.origin.y = 0.0;
        v53.size.width = v34;
        v53.size.height = v35;
        CGContextFillRect(v37, v53);
        CGContextScaleCTM(v37, scale, scale);
        v54.origin.x = v30;
        v54.origin.y = v32;
        v54.size.width = v26;
        v54.size.height = v28;
        v39 = -CGRectGetMinX(v54);
        v55.origin.x = v30;
        v55.origin.y = v32;
        v55.size.width = v26;
        v55.size.height = v28;
        MinY = CGRectGetMinY(v55);
        CGContextTranslateCTM(v37, v39, -MinY);
        [(PDFAKDocumentAdaptor *)self _compensatingAffineTransformForPage:v21];
        CGContextConcatCTM(v37, &v49);
        v41 = +[PDFPage isExcludingAKAnnotationRenderingForThisThread];
        [PDFPage setExcludingAKAnnotationRenderingForThisThread:1];
        [v21 drawWithBox:1 toContext:v37];
        [PDFPage setExcludingAKAnnotationRenderingForThisThread:v41];
        CGContextRestoreGState(v37);
        CGContextRelease(v37);
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
        v43 = Mutable;
        if (Mutable)
        {
          v44 = CGDataConsumerCreateWithCFData(Mutable);
          if (v44)
          {
            v45 = v44;
            v46 = CGPDFContextCreate(v44, &mediaBox, 0);
            if (v46)
            {
              v47 = v46;
              CGPDFContextBeginPage(v46, 0);
              CGContextSaveGState(v47);
              CGDisplayListDrawInContext();
              CGContextRestoreGState(v47);
              CGPDFContextEndPage(v47);
              CGPDFContextClose(v47);
              CGContextRelease(v47);
            }

            CGDataConsumerRelease(v45);
          }
        }
      }

      else
      {
        v43 = 0;
      }

      CGDisplayListRelease();
    }

    else
    {
      v43 = 0;
    }

    [v21 setDisplaysAnnotations:displaysAnnotations];
    v19 = v43;
  }

  return v19;
}

- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)page
{
  v5 = a4;
  rotation = [v5 rotation];
  v7 = PDFDegToRad(rotation);
  [v5 boundsForBox:1];

  PDFRectToCGRect(v8);
  v10 = v9;
  v12 = v11;
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeRotation(&v20, v7);
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v13;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  switch(rotation)
  {
    case 270:
      v15 = 0.0;
      goto LABEL_7;
    case 180:
      v15 = v10;
LABEL_7:
      v14 = v12;
      goto LABEL_8;
    case 90:
      v14 = 0.0;
      v15 = v10;
LABEL_8:
      CGAffineTransformMakeTranslation(&v19, v15, v14);
      break;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v20;
  v17 = v19;
  return CGAffineTransformConcat(retstr, &t1, &v17);
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    rootViewController = [WeakRetained popoverPresentingViewControllerForAnnotationController:controllerCopy];
  }

  else
  {
    pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
    window = [pdfView window];
    rootViewController = [window rootViewController];
  }

  return rootViewController;
}

- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  v8 = pdfView;
  if (pdfView)
  {
    [pdfView addGestureRecognizer:recognizerCopy];
  }
}

- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  view = [recognizerCopy view];
  [view removeGestureRecognizer:recognizerCopy];

  if (!pdfView)
  {
    NSLog(&cfstr_SCalledWhenPdf.isa, "[PDFAKDocumentAdaptor uninstallDrawingGestureRecognizer:forPageAtIndex:forAnnotationController:]");
  }
}

- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller
{
  priorityCopy = priority;
  v71[5] = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  controllerCopy = controller;
  akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  if (pdfView)
  {
    indexCopy = index;
    v47 = priorityCopy;
    v49 = akMainController;
    doubleTapGestureRecognizer = [controllerCopy doubleTapGestureRecognizer];
    tapGestureRecognizer = [controllerCopy tapGestureRecognizer];
    v71[0] = tapGestureRecognizer;
    v71[1] = doubleTapGestureRecognizer;
    pressGestureRecognizer = [controllerCopy pressGestureRecognizer];
    v71[2] = pressGestureRecognizer;
    panGestureRecognizer = [controllerCopy panGestureRecognizer];
    v71[3] = panGestureRecognizer;
    v50 = controllerCopy;
    rotationGestureRecognizer = [controllerCopy rotationGestureRecognizer];
    v71[4] = rotationGestureRecognizer;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];

    v20 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = pdfView;
    gestureRecognizers = [pdfView gestureRecognizers];
    v22 = [gestureRecognizers countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v64;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v26 = *(*(&v63 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [gestureRecognizers countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v23);
    }

    v27 = [(PDFAKDocumentAdaptor *)self _scrollViewRecognizersForPageAtIndex:indexCopy];
    [v20 addObjectsFromArray:v27];

    v28 = [MEMORY[0x1E695DFD8] setWithArray:v19];
    [v20 minusSet:v28];

    [v20 removeObject:recognizerCopy];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v29 = v19;
    v30 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v60;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(v29);
          }

          if (*(*(&v59 + 1) + 8 * j) != doubleTapGestureRecognizer)
          {
            [recognizerCopy requireGestureRecognizerToFail:?];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v31);
    }

    if (v47)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v34 = v20;
      v35 = [v34 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v56;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v56 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v55 + 1) + 8 * k);
            [recognizerCopy removeFailureRequirement:v39];
            [v39 requireGestureRecognizerToFail:recognizerCopy];
          }

          v36 = [v34 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v36);
      }
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v40 = v20;
      v41 = [v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v52;
        do
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v52 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v51 + 1) + 8 * m);
            [v45 removeFailureRequirement:recognizerCopy];
            [recognizerCopy requireGestureRecognizerToFail:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
        }

        while (v42);
      }
    }

    akMainController = v49;
    controllerCopy = v50;
    pdfView = v48;
  }
}

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modelBaseScaleFactorOfPageAtIndex:index forAnnotationController:controllerCopy];
    modelBaseScaleFactor = v8;
  }

  else
  {
    modelBaseScaleFactor = self->_modelBaseScaleFactor;
    if (modelBaseScaleFactor == 9.22337204e18)
    {
      pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
      [pdfView scaleFactor];
      v12 = v11;

      modelBaseScaleFactor = 1.0 / v12;
      self->_modelBaseScaleFactor = modelBaseScaleFactor;
    }
  }

  return modelBaseScaleFactor;
}

- (BOOL)shouldPlaceFormElementAtPoint:(CGPoint)point onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = point.y;
  x = point.x;
  v8 = [controller overlayViewAtIndex:index];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  [pdfView convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;
  v14 = [pdfView pageForPoint:0 nearest:?];
  if (v14)
  {
    [pdfView convertPoint:v14 toPage:{v11, v13}];
    v15 = [v14 annotationAtPoint:?];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 valueForAnnotationKey:@"/Subtype"];
      v18 = [v17 isEqualToString:@"/Widget"] ^ 1;
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)shouldPlaceProposedFormElementAtRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v57 = *MEMORY[0x1E69E9840];
  v10 = [controller overlayViewAtIndex:index];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  [pdfView convertRect:v10 fromView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v10 frame];
  MidX = CGRectGetMidX(v58);
  [v10 frame];
  v49 = v10;
  [pdfView convertPoint:v10 fromView:{MidX, CGRectGetMidY(v59)}];
  v21 = [pdfView pageForPoint:0 nearest:?];
  v48 = pdfView;
  [pdfView convertRect:v21 toPage:{v13, v15, v17, v19}];
  v61 = CGRectInset(v60, 4.0, 0.0);
  v22 = v61.origin.x;
  v23 = v61.origin.y;
  v24 = v61.size.width;
  v25 = v61.size.height;
  v26 = CGRectGetWidth(v61);
  v62.origin.x = v22;
  v62.origin.y = v23;
  v62.size.width = v24;
  v62.size.height = v25;
  v27 = CGRectGetHeight(v62);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = v21;
  annotations = [v21 annotations];
  v29 = [annotations countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v50 = v26 * 0.25 * v27;
    v31 = *v53;
    v32 = 1;
    v51 = v25;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(annotations);
        }

        v34 = *(*(&v52 + 1) + 8 * i);
        v35 = [v34 valueForAnnotationKey:@"/Subtype"];
        v36 = [v35 isEqualToString:@"/Widget"];

        if (v36)
        {
          [v34 bounds];
          v67.origin.x = v22;
          v67.origin.y = v23;
          v67.size.width = v24;
          v67.size.height = v25;
          v64 = CGRectIntersection(v63, v67);
          v37 = v64.origin.x;
          v38 = v64.origin.y;
          v39 = v64.size.width;
          v40 = v64.size.height;
          if (!CGRectIsEmpty(v64))
          {
            v65.origin.x = v37;
            v65.origin.y = v38;
            v65.size.width = v39;
            v65.size.height = v40;
            v41 = v24;
            v42 = v23;
            v43 = v22;
            v44 = CGRectGetWidth(v65);
            v66.origin.x = v37;
            v66.origin.y = v38;
            v66.size.width = v39;
            v66.size.height = v40;
            v45 = v44 * CGRectGetHeight(v66);
            v22 = v43;
            v23 = v42;
            v24 = v41;
            v25 = v51;
            v32 &= v45 <= v50;
          }
        }
      }

      v30 = [annotations countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v30);
  }

  else
  {
    v32 = 1;
  }

  return v32 & 1;
}

- (CGRect)positioningRectForCandidatePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained positioningRectForCandidatePicker];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)editCheckpointReachedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained editCheckpointReachedForAnnotationController:controllerCopy];
  }
}

- (void)editDetectedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  if (!+[PDFAKDocumentAdaptor isHandlingEditDetected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
    v6 = [WeakRetained permissionsStatus] != 0;
    pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
    objc_initWeak(&location, pdfView);

    objc_copyWeak(&to, &self->_pdfAKControllerDelegate);
    v8 = objc_loadWeakRetained(&location);
    currentPage = [v8 currentPage];
    akPageAdaptor = [currentPage akPageAdaptor];
    akPageModelController = [akPageAdaptor akPageModelController];
    objc_initWeak(&from, akPageModelController);

    v12 = objc_loadWeakRetained(&from);
    selectedAnnotations = [v12 selectedAnnotations];
    v14 = [selectedAnnotations mutableCopy];

    window = [v8 window];
    firstResponder = [window firstResponder];
    objc_initWeak(&v34, firstResponder);

    parentViewController = [v8 parentViewController];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __60__PDFAKDocumentAdaptor_editDetectedForAnnotationController___block_invoke;
    v25 = &unk_1E8151790;
    selfCopy = self;
    v27 = controllerCopy;
    objc_copyWeak(&v29, &location);
    v33 = v6;
    objc_copyWeak(&v30, &from);
    v18 = v14;
    v28 = v18;
    objc_copyWeak(&v31, &v34);
    objc_copyWeak(&v32, &to);
    v19 = _Block_copy(&v22);
    v20 = GetDefaultsWriteAKEnabled();
    if (v8)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      [WeakRetained requirePasswordsIfNeededUsingPresentingViewController:parentViewController completion:{v19, v22, v23, v24, v25, selfCopy, v27, v28}];
    }

    else
    {
      v19[2](v19, 2);
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&from);

    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }
}

void __60__PDFAKDocumentAdaptor_editDetectedForAnnotationController___block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) undoManagerForAnnotationController:*(a1 + 40)];
  p_vtable = &OBJC_METACLASS___PDFAKPageOverlayViewProvider.vtable;
  [PDFAKDocumentAdaptor setIsHandlingEditDetected:1];
  if (!a2)
  {
    if (*(a1 + 88) == 1 && [v4 canUndo])
    {
      [v4 undoNestedGroup];
      [v4 redo];
    }

LABEL_10:
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = [WeakRetained annotations];
      if (v10)
      {
        v11 = *(a1 + 48);

        if (v11)
        {
          v12 = MEMORY[0x1E695DFD8];
          v13 = [v9 annotations];
          v14 = [v12 setWithArray:v13];

          [*(a1 + 48) intersectSet:v14];
          v15 = [v9 mutableSetValueForKey:@"selectedAnnotations"];
          [v15 setSet:*(a1 + 48)];
        }
      }
    }

    v16 = objc_loadWeakRetained((a1 + 72));
    [v16 becomeFirstResponder];

    if (a2 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if ([v4 canUndo])
      {
        [v4 undoNestedGroup];
      }

      v6 = objc_loadWeakRetained((a1 + 56));
      v7 = [v6 activeAnnotation];
      [v6 removeControlForAnnotation:v7];
    }

    goto LABEL_10;
  }

LABEL_15:
  v17 = objc_loadWeakRetained((a1 + 80));
  if (objc_opt_respondsToSelector())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = +[PDFAnnotation PDFKitAnnotationUndoManagerDisplayNames];
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      v28 = 1;
LABEL_18:
      v22 = 0;
      while (1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * v22);
        v24 = [v4 undoActionName];
        v25 = [v24 containsString:v23];

        v26 = [v4 redoActionName];
        v27 = [v26 containsString:v23];

        if (v25 & 1) != 0 || (v27)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v20)
          {
            goto LABEL_18;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v28 = 0;
    }

    [v17 annotationController:*(a1 + 40) detectedEditOfType:v28];
    p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
  }

  else if (objc_opt_respondsToSelector())
  {
    [v17 editDetectedForAnnotationController:*(a1 + 40)];
  }

LABEL_30:
  [p_vtable + 392 setIsHandlingEditDetected:0];
}

+ (void)setIsHandlingEditDetected:(BOOL)detected
{
  detectedCopy = detected;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:detectedCopy];
  [threadDictionary setObject:v5 forKeyedSubscript:@"PDFKitIsHandlingEditDetected"];
}

+ (BOOL)isHandlingEditDetected
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"PDFKitIsHandlingEditDetected"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)penStrokeCompletedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained penStrokeCompletedForAnnotationController:controllerCopy];
  }
}

- (void)controllerWillShowSignatureCaptureView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillShowSignatureCaptureView:viewCopy];
  }
}

- (void)controllerWillDismissSignatureCaptureView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillDismissSignatureCaptureView:viewCopy];
  }
}

- (void)controllerWillShowSignatureManagerView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillShowSignatureManagerView:viewCopy];
  }
}

- (void)controllerWillDismissSignatureManagerView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillDismissSignatureManagerView:viewCopy];
  }
}

- (void)controllerWillEnterToolMode:(id)mode
{
  modeCopy = mode;
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  [pdfView endEditing:1];

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillEnterToolMode:modeCopy];
  }
}

- (void)controllerDidEnterToolMode:(id)mode
{
  modeCopy = mode;
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKDocumentAdaptor", "Did enter Markup editing mode for PDFView: %@", v5, v6, v7, v8, v9, pdfView);
  if (pdfView)
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
    [pdfView clearSelection];
  }

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerDidEnterToolMode:modeCopy];
  }
}

- (void)controllerWillExitToolMode:(id)mode
{
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillExitToolMode:modeCopy];
  }
}

- (void)controllerDidExitToolMode:(id)mode
{
  modeCopy = mode;
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKDocumentAdaptor", "Did exit Markup editing mode for PDFView: %@", v5, v6, v7, v8, v9, pdfView);
  if (pdfView)
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
  }

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerDidExitToolMode:modeCopy];
  }
}

- (BOOL)shouldAddTabControlsToTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  modelController = [controllerCopy modelController];
  pageModelControllers = [modelController pageModelControllers];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __94__PDFAKDocumentAdaptor_shouldAddTabControlsToTextEditorForAnnotation_forAnnotationController___block_invoke;
  v19 = &unk_1E81517B8;
  v10 = annotationCopy;
  v20 = v10;
  v21 = &v22;
  [pageModelControllers enumerateObjectsUsingBlock:&v16];

  if (v23[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(PDFAKDocumentAdaptor *)self pdfDocument:v16];
    v13 = [v12 pageAtIndex:v23[3]];

    detectedForm = [v13 detectedForm];
    v11 = [detectedForm count] > 1;
  }

  _Block_object_dispose(&v22, 8);
  return v11;
}

uint64_t __94__PDFAKDocumentAdaptor_shouldAddTabControlsToTextEditorForAnnotation_forAnnotationController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsAnnotation:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (BOOL)handleTabInTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller
{
  v4 = [(PDFAKDocumentAdaptor *)self pdfView:annotation];
  handleTabInDetectedFormField = [v4 handleTabInDetectedFormField];

  return handleTabInDetectedFormField;
}

- (BOOL)handleBackTabInTextEditorForAnnotation:(id)annotation forAnnotationController:(id)controller
{
  v4 = [(PDFAKDocumentAdaptor *)self pdfView:annotation];
  handleBackTabInDetectedFormField = [v4 handleBackTabInDetectedFormField];

  return handleBackTabInDetectedFormField;
}

- (void)handleTextSuggestion:(id)suggestion forAnnotationController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  suggestionCopy = suggestion;
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  [pdfView handleTextSuggestion:suggestionCopy completionHandler:handlerCopy];
}

- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller
{
  overlayCopy = overlay;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained positionSketchOverlay:overlayCopy forAnnotationController:controllerCopy];
  }

  else
  {
    pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
    toolbarView = [controllerCopy toolbarView];
    superview = [toolbarView superview];
    [superview bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    documentScrollView = [pdfView documentScrollView];
    [documentScrollView contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = v12 + v23;
    v29 = v14 + v21;
    v30 = v16 - (v23 + v27);
    v31 = v18 - (v21 + v25);
    [pdfView bounds];
    [pdfView convertRect:superview toCoordinateSpace:?];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    pdfDocument = [(PDFAKDocumentAdaptor *)self pdfDocument];
    LOBYTE(documentScrollView) = [pdfDocument isLocked];

    if ((documentScrollView & 1) == 0)
    {
      v41 = [pdfView pageViewForPageAtIndex:{objc_msgSend(controllerCopy, "currentPageIndex")}];
      v42 = v41;
      if (v41)
      {
        [v41 bounds];
        [v42 convertRect:superview toCoordinateSpace:?];
        v33 = v43;
        v35 = v44;
        v37 = v45;
        v39 = v46;
      }
    }

    v60.origin.x = v28;
    v60.origin.y = v29;
    v60.size.width = v30;
    v60.size.height = v31;
    v64.origin.x = v33;
    v64.origin.y = v35;
    v64.size.width = v37;
    v64.size.height = v39;
    v61 = CGRectIntersection(v60, v64);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    IsNull = CGRectIsNull(v61);
    if (IsNull)
    {
      v52 = v28;
    }

    else
    {
      v52 = x;
    }

    if (IsNull)
    {
      v53 = v29;
    }

    else
    {
      v53 = y;
    }

    if (IsNull)
    {
      v54 = v30;
    }

    else
    {
      v54 = width;
    }

    if (IsNull)
    {
      v55 = v31;
    }

    else
    {
      v55 = height;
    }

    [superview convertRect:0 toView:{v52, v53, v54, v55}];
    v63 = CGRectIntegral(v62);
    [superview convertRect:0 fromView:{v63.origin.x, v63.origin.y, v63.size.width, v63.size.height}];
    [overlayCopy setFrame:?];
    superview2 = [overlayCopy superview];

    if (superview2 != superview)
    {
      [overlayCopy setAutoresizingMask:18];
      superview3 = [toolbarView superview];
      [superview3 addSubview:overlayCopy];
    }
  }
}

- (id)controller:(id)controller willSetToolbarItems:(id)items
{
  controllerCopy = controller;
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained controller:controllerCopy willSetToolbarItems:itemsCopy];
  }

  else
  {
    v9 = itemsCopy;
  }

  v10 = v9;

  return v10;
}

- (BOOL)hasHighlightableSelectionForAnnotationController:(id)controller
{
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  currentSelection = [pdfView currentSelection];
  string = [currentSelection string];
  v6 = [string length] != 0;

  return v6;
}

- (void)rotateRight:(id)right
{
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  currentPage = [pdfView currentPage];

  [currentPage setRotation:{objc_msgSend(currentPage, "rotation") + 90}];
}

- (void)rotateLeft:(id)left
{
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  currentPage = [pdfView currentPage];

  [currentPage setRotation:{objc_msgSend(currentPage, "rotation") - 90}];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(PDFAKDocumentAdaptor *)self pdfView:index];
  v6 = [v5 pageViewForPageAtIndex:index];

  layer = [v6 layer];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sublayers = [layer sublayers];
  v9 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(sublayers);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v13;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  NSLog(&cfstr_SCouldnTFindPd.isa, "[PDFAKDocumentAdaptor layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:forAnnotationController:]");
  v14 = layer;
LABEL_12:

  return v14;
}

- (void)_pdfDocumentDidUnlock:(id)unlock
{
  object = [unlock object];
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  if (WeakRetained)
  {
    if (object == WeakRetained)
    {
      akMainController = [(PDFAKDocumentAdaptor *)self akMainController];
      currentPageIndex = [akMainController currentPageIndex];

      if (currentPageIndex == 0x7FFFFFFFFFFFFFFFLL && [WeakRetained pageCount])
      {
        akMainController2 = [(PDFAKDocumentAdaptor *)self akMainController];
        [akMainController2 setCurrentPageIndex:0];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"PDFDocumentDidUnlock" object:WeakRetained];
    }

    else
    {
      NSLog(&cfstr_SNotificationD.isa, "[PDFAKDocumentAdaptor _pdfDocumentDidUnlock:]", object, WeakRetained);
    }
  }
}

- (void)_scheduleDelayedModelBaseScaleFactorCalculation
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedModelBaseScaleFactorCalculation object:0];

  [(PDFAKDocumentAdaptor *)self performSelector:sel__delayedModelBaseScaleFactorCalculation withObject:0 afterDelay:0.25];
}

- (void)_delayedModelBaseScaleFactorCalculation
{
  if (!self->_isTornDown && self->_modelBaseScaleFactor == 9.22337204e18)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
    isLocked = [WeakRetained isLocked];

    if ((isLocked & 1) == 0)
    {
      v7 = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
      if (!v7 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        [(PDFAKDocumentAdaptor *)self modelBaseScaleFactorOfPageAtIndex:0 forAnnotationController:self->_akController];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"PDFViewDidLayoutDocumentView" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:@"PDFViewScaleChanged" object:0];
    }
  }
}

- (void)_updatePDFScrollViewMinimumNumberOfTouches
{
  v24 = *MEMORY[0x1E69E9840];
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  scrollViewMinimumNumberOfTouches = [pdfView scrollViewMinimumNumberOfTouches];
  if ([pdfView isUsingPageViewController])
  {
    documentViewController = [pdfView documentViewController];
    scrollView = [documentViewController scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer setMinimumNumberOfTouches:scrollViewMinimumNumberOfTouches];

    viewControllers = [documentViewController viewControllers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(viewControllers);
          }

          scrollView2 = [*(*(&v19 + 1) + 8 * v11) scrollView];
          panGestureRecognizer2 = [scrollView2 panGestureRecognizer];
          [panGestureRecognizer2 setMinimumNumberOfTouches:scrollViewMinimumNumberOfTouches];

          ++v11;
        }

        while (v9 != v11);
        v9 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    documentViewController = [pdfView documentScrollView];
    scrollView = [documentViewController panGestureRecognizer];
    [scrollView setMinimumNumberOfTouches:scrollViewMinimumNumberOfTouches];
  }

  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKOverlayAdaptor", "Number of touches required to scroll is %lu for PDFView: %@", v14, v15, v16, v17, v18, scrollViewMinimumNumberOfTouches);
}

- (id)_scrollViewRecognizersForPageAtIndex:(unint64_t)index
{
  v5 = objc_opt_new();
  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  v7 = pdfView;
  if (pdfView)
  {
    if ([pdfView isUsingPageViewController])
    {
      documentViewController = [v7 documentViewController];
      scrollView = [documentViewController scrollView];
      v10 = scrollView;
      if (scrollView)
      {
        panGestureRecognizer = [scrollView panGestureRecognizer];
        if (panGestureRecognizer)
        {
          [v5 addObject:panGestureRecognizer];
        }

        pinchGestureRecognizer = [v10 pinchGestureRecognizer];

        if (pinchGestureRecognizer)
        {
          [v5 addObject:pinchGestureRecognizer];
        }
      }

      else
      {
        pinchGestureRecognizer = 0;
      }

      if (index != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [documentViewController findPageViewControllerForPageIndex:index];
        scrollView2 = [v15 scrollView];
        v17 = scrollView2;
        if (scrollView2)
        {
          panGestureRecognizer2 = [scrollView2 panGestureRecognizer];

          if (panGestureRecognizer2)
          {
            [v5 addObject:panGestureRecognizer2];
          }

          pinchGestureRecognizer = [v17 pinchGestureRecognizer];

          if (pinchGestureRecognizer)
          {
            [v5 addObject:pinchGestureRecognizer];
          }
        }
      }
    }

    else
    {
      documentScrollView = [v7 documentScrollView];
      documentViewController = documentScrollView;
      if (documentScrollView)
      {
        panGestureRecognizer3 = [documentScrollView panGestureRecognizer];
        if (panGestureRecognizer3)
        {
          [v5 addObject:panGestureRecognizer3];
        }

        pinchGestureRecognizer = [documentViewController pinchGestureRecognizer];

        if (pinchGestureRecognizer)
        {
          [v5 addObject:pinchGestureRecognizer];
        }
      }

      else
      {
        pinchGestureRecognizer = 0;
      }
    }
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)_resetAnimationProperties
{
  v2 = *(MEMORY[0x1E695F050] + 16);
  self->_animationProperties.visibleTextViewRectInScrollView.origin = *MEMORY[0x1E695F050];
  self->_animationProperties.visibleTextViewRectInScrollView.size = v2;
  self->_animationProperties.animationDuration = 0.0;
  self->_animationProperties.originDelta = 0.0;
}

- (void)annotationWillBeginEditing:(id)editing
{
  userInfo = [editing userInfo];
  v5 = AKEditingTextAnnotationKeyString();
  v6 = [userInfo objectForKey:v5];

  editingAnnotaiton = self->_editingAnnotaiton;
  self->_editingAnnotaiton = v6;
  v8 = v6;

  v11 = [PDFAKAnnotationAdaptor getPDFAnnotationAssociatedWith:v8];

  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  controller = [pdfView controller];
  [controller interactWithAnnotation:v11];
}

- (void)annotationDidEndEditing:(id)editing
{
  v4 = -self->_animationProperties.originDelta;
  size = self->_animationProperties.visibleTextViewRectInScrollView.size;
  v9[0] = self->_animationProperties.visibleTextViewRectInScrollView.origin;
  v9[1] = size;
  v9[2] = *&self->_animationProperties.animationDuration;
  [(PDFAKDocumentAdaptor *)self _adjustScrollViewWithAnimationProperties:v9 delta:v4];
  [(PDFAKDocumentAdaptor *)self _resetAnimationProperties];
  editingAnnotaiton = self->_editingAnnotaiton;
  self->_editingAnnotaiton = 0;

  pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
  controller = [pdfView controller];
  [controller setActiveAnnotation:0];
}

- (unint64_t)pageIndexForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  pdfDocument = [(PDFAKDocumentAdaptor *)self pdfDocument];
  akDocumentAdaptor = [pdfDocument akDocumentAdaptor];

  akMainController = [akDocumentAdaptor akMainController];
  modelController = [akMainController modelController];
  v9 = [modelController pageModelControllerForAnnotation:annotationCopy];

  modelController2 = [akMainController modelController];
  pageModelControllers = [modelController2 pageModelControllers];
  v12 = [pageModelControllers indexOfObject:v9];

  return v12;
}

- (void)adjustScrollViewForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (self->_editingAnnotaiton)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:*MEMORY[0x1E69DDF98]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    userInfo2 = [v5 userInfo];
    v17 = [userInfo2 valueForKey:*MEMORY[0x1E69DDFA0]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = self->_editingAnnotaiton;
    v27 = [(PDFAKDocumentAdaptor *)self pageIndexForAnnotation:v26];
    if (v26)
    {
      v28 = v27;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        pdfView = [(PDFAKDocumentAdaptor *)self pdfView];
        documentScrollView = [pdfView documentScrollView];
        document = [pdfView document];
        v32 = [document pageAtIndex:v28];

        [(AKRectAnnotation *)v26 rectangle];
        [pdfView convertRect:v32 fromPage:?];
        [pdfView convertRect:0 toView:?];
        v63 = v34;
        v64 = v33;
        v61 = v36;
        v62 = v35;
        window = [documentScrollView window];
        [documentScrollView convertRect:window fromView:{v9, v11, v13, v15}];
        v39 = v38;

        window2 = [documentScrollView window];
        [documentScrollView convertRect:window2 fromView:{v19, v21, v23, v25}];
        v42 = v41;

        v43 = 0.0;
        if (v39 - v42 >= 0.0)
        {
          v43 = v39 - v42;
        }

        v65 = v43;
        self->_animationProperties.originDelta = self->_animationProperties.originDelta + v43;
        [documentScrollView bounds];
        [documentScrollView convertRect:0 toView:?];
        x = v67.origin.x;
        y = v67.origin.y;
        width = v67.size.width;
        height = v67.size.height;
        v71.origin.x = v19;
        v71.origin.y = v21;
        v71.size.width = v23;
        v71.size.height = v25;
        if (CGRectIntersectsRect(v67, v71))
        {
          v68.origin.x = x;
          v68.origin.y = y;
          v68.size.width = width;
          v68.size.height = height;
          v72.origin.x = v19;
          v72.origin.y = v21;
          v72.size.width = v23;
          v72.size.height = v25;
          v69 = CGRectIntersection(v68, v72);
          v48 = height - (CGRectGetHeight(v69) + 0.0);
          [documentScrollView convertRect:0 fromView:{v64, v63, v62, v61}];
          v59 = v50;
          v60 = v49;
          v57 = v52;
          v58 = v51;
          v70.origin.x = x + 0.0;
          v70.origin.y = y + 0.0;
          v70.size.width = width;
          v70.size.height = v48;
          v73.origin.x = v64;
          v73.origin.y = v63;
          v73.size.width = v62;
          v73.size.height = v61;
          if (!CGRectContainsRect(v70, v73))
          {
            self->_animationProperties.visibleTextViewRectInScrollView.origin.x = v60;
            self->_animationProperties.visibleTextViewRectInScrollView.origin.y = v59;
            self->_animationProperties.visibleTextViewRectInScrollView.size.width = v58;
            self->_animationProperties.visibleTextViewRectInScrollView.size.height = v57;
          }
        }

        userInfo3 = [v5 userInfo];
        v54 = [userInfo3 valueForKey:*MEMORY[0x1E69DDF40]];
        [v54 floatValue];
        self->_animationProperties.animationDuration = v55;

        size = self->_animationProperties.visibleTextViewRectInScrollView.size;
        v66[0] = self->_animationProperties.visibleTextViewRectInScrollView.origin;
        v66[1] = size;
        v66[2] = *&self->_animationProperties.animationDuration;
        [(PDFAKDocumentAdaptor *)self _adjustScrollViewWithAnimationProperties:v66 delta:v65];
      }
    }
  }
}

- (void)_adjustScrollViewWithAnimationProperties:(TextAnnotationAnimationProperties *)properties delta:(double)delta
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

  animationDuration = properties->animationDuration;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PDFAKDocumentAdaptor__adjustScrollViewWithAnimationProperties_delta___block_invoke;
  v10[3] = &unk_1E81517E0;
  v10[4] = self;
  *&v10[5] = delta;
  size = properties->visibleTextViewRectInScrollView.size;
  origin = properties->visibleTextViewRectInScrollView.origin;
  v12 = size;
  v13 = *&properties->animationDuration;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:&__block_literal_global_10 completion:animationDuration];
}

void __71__PDFAKDocumentAdaptor__adjustScrollViewWithAnimationProperties_delta___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pdfView];
  v3 = [v2 documentScrollView];

  [v3 contentInset];
  [v3 setContentInset:?];
  if (!CGRectIsNull(*(a1 + 48)))
  {
    [v3 scrollRectToVisible:0 animated:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }
}

void __71__PDFAKDocumentAdaptor__adjustScrollViewWithAnimationProperties_delta___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 endIgnoringInteractionEvents];
}

@end