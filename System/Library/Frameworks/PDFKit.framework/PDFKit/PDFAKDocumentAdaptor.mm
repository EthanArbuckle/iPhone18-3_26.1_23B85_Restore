@interface PDFAKDocumentAdaptor
+ (BOOL)isHandlingEditDetected;
+ (void)setIsHandlingEditDetected:(BOOL)a3;
- (BOOL)handleBackTabInTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4;
- (BOOL)handleTabInTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4;
- (BOOL)hasHighlightableSelectionForAnnotationController:(id)a3;
- (BOOL)shouldAddTabControlsToTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4;
- (BOOL)shouldPlaceFormElementAtPoint:(CGPoint)a3 onOverlayAtPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (BOOL)shouldPlaceProposedFormElementAtRect:(CGRect)a3 onOverlayAtPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromModelToOverlayWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (CGPoint)convertPoint:(CGPoint)a3 fromOverlayToModelWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (CGRect)positioningRectForCandidatePicker;
- (PDFAKControllerDelegateProtocol)PDFAKControllerDelegate;
- (PDFAKDocumentAdaptor)initWithPDFDocument:(id)a3 andView:(id)a4;
- (PDFDocument)pdfDocument;
- (PDFView)pdfView;
- (UIView)akToolbarView;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)_scrollViewRecognizersForPageAtIndex:(unint64_t)a3;
- (id)controller:(id)a3 willSetToolbarItems:(id)a4;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7;
- (id)popoverPresentingViewControllerForAnnotationController:(id)a3;
- (id)rulerHostingView;
- (id)undoManagerForAnnotationController:(id)a3;
- (unint64_t)pageIndexForAnnotation:(id)a3;
- (void)_adjustScrollViewWithAnimationProperties:(TextAnnotationAnimationProperties *)a3 delta:(double)a4;
- (void)_delayedModelBaseScaleFactorCalculation;
- (void)_pdfDocumentDidUnlock:(id)a3;
- (void)_resetAnimationProperties;
- (void)_scheduleDelayedModelBaseScaleFactorCalculation;
- (void)_teardown;
- (void)_updatePDFScrollViewMinimumNumberOfTouches;
- (void)adjustScrollViewForKeyboardNotification:(id)a3;
- (void)annotationDidEndEditing:(id)a3;
- (void)annotationWillBeginEditing:(id)a3;
- (void)controllerDidEnterToolMode:(id)a3;
- (void)controllerDidExitToolMode:(id)a3;
- (void)controllerWillDismissSignatureCaptureView:(id)a3;
- (void)controllerWillDismissSignatureManagerView:(id)a3;
- (void)controllerWillEnterToolMode:(id)a3;
- (void)controllerWillExitToolMode:(id)a3;
- (void)controllerWillShowSignatureCaptureView:(id)a3;
- (void)controllerWillShowSignatureManagerView:(id)a3;
- (void)dealloc;
- (void)editCheckpointReachedForAnnotationController:(id)a3;
- (void)editDetectedForAnnotationController:(id)a3;
- (void)handleTextSuggestion:(id)a3 forAnnotationController:(id)a4 completionHandler:(id)a5;
- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pdfDocument:(id)a3 didExchangePage:(id)a4 atIndex:(unint64_t)a5 withPage:(id)a6 atIndex:(unint64_t)a7;
- (void)pdfDocument:(id)a3 didInsertPage:(id)a4 atIndex:(unint64_t)a5;
- (void)pdfDocument:(id)a3 didRemovePage:(id)a4 atIndex:(unint64_t)a5;
- (void)pdfDocument:(id)a3 didReplacePagePlaceholder:(id)a4 atIndex:(unint64_t)a5 withPage:(id)a6;
- (void)pdfDocumentDidRemoveAllPagesOrPlaceholders:(id)a3;
- (void)penStrokeCompletedForAnnotationController:(id)a3;
- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4;
- (void)rotateLeft:(id)a3;
- (void)rotateRight:(id)a3;
- (void)teardown;
- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6;
@end

@implementation PDFAKDocumentAdaptor

- (PDFAKDocumentAdaptor)initWithPDFDocument:(id)a3 andView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (GetDefaultsWriteAKEnabled())
  {
    v21.receiver = self;
    v21.super_class = PDFAKDocumentAdaptor;
    v8 = [(PDFAKDocumentAdaptor *)&v21 init];
    p_isa = &v8->super.isa;
    if (v8)
    {
      v8->_modelBaseScaleFactor = 9.22337204e18;
      objc_storeWeak(&v8->_pdfDocument, v6);
      objc_storeWeak(p_isa + 3, v7);
      v10 = [AKControllerClass() controllerWithDelegate:p_isa];
      objc_storeStrong(p_isa + 4, v10);
      [p_isa[4] setRulerHostingDelegate:p_isa];
      [objc_opt_class() addObserver:p_isa forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:0];
      [p_isa _resetAnimationProperties];
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:p_isa selector:sel_adjustScrollViewForKeyboardNotification_ name:*MEMORY[0x1E69DE080] object:0];

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = AKDidEndEditingTextAnnotationNotificationString();
      [v12 addObserver:p_isa selector:sel_annotationDidEndEditing_ name:v13 object:0];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = AKWillBeginEditingTextAnnotationNotificationString();
      [v14 addObserver:p_isa selector:sel_annotationWillBeginEditing_ name:v15 object:0];

      objc_storeWeak(p_isa + 5, 0);
      [v10 setAnnotationEditingEnabled:0];
      if ([v6 isLocked] && !objc_msgSend(v6, "pageCount"))
      {
        v16 = [MEMORY[0x1E696AD88] defaultCenter];
        [v16 addObserver:p_isa selector:sel__pdfDocumentDidUnlock_ name:@"PDFDocumentDidUnlock" object:v6];
      }

      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 addObserver:p_isa selector:sel__pdfViewDidLayout_ name:@"PDFViewDidLayoutDocumentView" object:v7];

      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 addObserver:p_isa selector:sel__pdfViewDidChangeScale_ name:@"PDFViewScaleChanged" object:v7];
    }

    self = p_isa;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self];

    [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing"];
    [(AKController *)self->_akController teardown];
    akController = self->_akController;
    self->_akController = 0;

    objc_storeWeak(&self->_pdfAKControllerDelegate, 0);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"prefersPencilOnlyDrawing"])
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PDFAKDocumentAdaptor;
    [(PDFAKDocumentAdaptor *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (void)pdfDocument:(id)a3 didInsertPage:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [a4 akPageAdaptor];
  v13 = [v7 akPageModelController];

  v8 = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v9 = [v8 mutableArrayValueForKey:@"pageModelControllers"];

  [v9 insertObject:v13 atIndex:a5];
  v10 = [(PDFAKDocumentAdaptor *)self akMainController];
  v11 = [v10 currentPageIndex];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(PDFAKDocumentAdaptor *)self akMainController];
    [v12 setCurrentPageIndex:a5];
  }
}

- (void)pdfDocument:(id)a3 didRemovePage:(id)a4 atIndex:(unint64_t)a5
{
  v6 = [(PDFAKDocumentAdaptor *)self akDocumentModelController:a3];
  v7 = [v6 mutableArrayValueForKey:@"pageModelControllers"];

  [v7 removeObjectAtIndex:a5];
}

- (void)pdfDocumentDidRemoveAllPagesOrPlaceholders:(id)a3
{
  v3 = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v4 = [v3 mutableArrayValueForKey:@"pageModelControllers"];

  [v4 removeAllObjects];
}

- (void)pdfDocument:(id)a3 didExchangePage:(id)a4 atIndex:(unint64_t)a5 withPage:(id)a6 atIndex:(unint64_t)a7
{
  v9 = [(PDFAKDocumentAdaptor *)self akDocumentModelController:a3];
  v10 = [v9 mutableArrayValueForKey:@"pageModelControllers"];

  [v10 exchangeObjectAtIndex:a5 withObjectAtIndex:a7];
}

- (void)pdfDocument:(id)a3 didReplacePagePlaceholder:(id)a4 atIndex:(unint64_t)a5 withPage:(id)a6
{
  v8 = [a6 akPageAdaptor];
  v15 = [v8 akPageModelController];

  v9 = [(PDFAKDocumentAdaptor *)self akDocumentModelController];
  v10 = [v9 mutableArrayValueForKey:@"pageModelControllers"];

  if ([v10 count] <= a5)
  {
    [v10 insertObject:v15 atIndex:a5];
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:a5];

    if (v11 != v15)
    {
      [v10 setObject:v15 atIndexedSubscript:a5];
    }
  }

  v12 = [(PDFAKDocumentAdaptor *)self akMainController];
  v13 = [v12 currentPageIndex];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(PDFAKDocumentAdaptor *)self akMainController];
    [v14 setCurrentPageIndex:a5];
  }
}

- (id)rulerHostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (id)undoManagerForAnnotationController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [WeakRetained undoManagerForAnnotationController:v4];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_pdfView);
    v6 = [v7 undoManager];
  }

  return v6;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromModelToOverlayWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [a5 overlayViewAtIndex:?];
  v10 = [(PDFAKDocumentAdaptor *)self pdfView];
  v11 = PDFPointFromCGPoint(x, y);
  v13 = v12;
  v14 = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v15 = [v14 pageAtIndex:a4];
  [v10 convertPoint:v15 fromPage:{v11, v13}];
  v17 = v16;
  v19 = v18;

  [v10 convertPoint:v9 toView:{v17, v19}];
  v22 = PDFPointToCGPoint(v20, v21);
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromOverlayToModelWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [a5 overlayViewAtIndex:?];
  v10 = [(PDFAKDocumentAdaptor *)self pdfView];
  [v10 convertPoint:v9 fromView:{PDFPointFromCGPoint(x, y)}];
  v12 = v11;
  v14 = v13;
  v15 = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v16 = [v15 pageAtIndex:a4];
  [v10 convertPoint:v16 toPage:{v12, v14}];
  v19 = PDFPointToCGPoint(v17, v18);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v5 = [(PDFAKDocumentAdaptor *)self pdfDocument:a3];
  v6 = [v5 pageAtIndex:a3];
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

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v15 = [(PDFAKDocumentAdaptor *)self akMainController:a3];
  v16 = [(PDFAKDocumentAdaptor *)self pdfView];
  v17 = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v18 = v17;
  v19 = 0;
  if (v16 && v17)
  {
    v20 = [v15 overlayViewAtIndex:a6];
    v21 = [v18 pageAtIndex:a6];
    v22 = [v21 displaysAnnotations];
    [v21 setDisplaysAnnotations:v13];
    [v16 convertRect:v20 fromView:{x, y, width, height}];
    [v16 convertRect:v21 toPage:?];
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
    v34 = v33 * a4;
    v35 = CGRectGetHeight(v52) * a4;
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
        v38 = [MEMORY[0x1E69DC888] whiteColor];
        CGContextSetFillColorWithColor(v37, [v38 CGColor]);

        v53.origin.x = 0.0;
        v53.origin.y = 0.0;
        v53.size.width = v34;
        v53.size.height = v35;
        CGContextFillRect(v37, v53);
        CGContextScaleCTM(v37, a4, a4);
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

    [v21 setDisplaysAnnotations:v22];
    v19 = v43;
  }

  return v19;
}

- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)a3
{
  v5 = a4;
  v6 = [v5 rotation];
  v7 = PDFDegToRad(v6);
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
  switch(v6)
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

- (id)popoverPresentingViewControllerForAnnotationController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [WeakRetained popoverPresentingViewControllerForAnnotationController:v4];
  }

  else
  {
    v7 = [(PDFAKDocumentAdaptor *)self pdfView];
    v8 = [v7 window];
    v6 = [v8 rootViewController];
  }

  return v6;
}

- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v9 = a3;
  v6 = [(PDFAKDocumentAdaptor *)self akMainController];
  v7 = [(PDFAKDocumentAdaptor *)self pdfView];
  v8 = v7;
  if (v7)
  {
    [v7 addGestureRecognizer:v9];
  }
}

- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v6 = a3;
  v9 = [(PDFAKDocumentAdaptor *)self akMainController];
  v7 = [(PDFAKDocumentAdaptor *)self pdfView];
  v8 = [v6 view];
  [v8 removeGestureRecognizer:v6];

  if (!v7)
  {
    NSLog(&cfstr_SCalledWhenPdf.isa, "[PDFAKDocumentAdaptor uninstallDrawingGestureRecognizer:forPageAtIndex:forAnnotationController:]");
  }
}

- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6
{
  v7 = a5;
  v71[5] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [(PDFAKDocumentAdaptor *)self akMainController];
  v13 = [(PDFAKDocumentAdaptor *)self pdfView];
  if (v13)
  {
    v46 = a4;
    v47 = v7;
    v49 = v12;
    v14 = [v11 doubleTapGestureRecognizer];
    v15 = [v11 tapGestureRecognizer];
    v71[0] = v15;
    v71[1] = v14;
    v16 = [v11 pressGestureRecognizer];
    v71[2] = v16;
    v17 = [v11 panGestureRecognizer];
    v71[3] = v17;
    v50 = v11;
    v18 = [v11 rotationGestureRecognizer];
    v71[4] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];

    v20 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = v13;
    v21 = [v13 gestureRecognizers];
    v22 = [v21 countByEnumeratingWithState:&v63 objects:v70 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v63 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v23);
    }

    v27 = [(PDFAKDocumentAdaptor *)self _scrollViewRecognizersForPageAtIndex:v46];
    [v20 addObjectsFromArray:v27];

    v28 = [MEMORY[0x1E695DFD8] setWithArray:v19];
    [v20 minusSet:v28];

    [v20 removeObject:v10];
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

          if (*(*(&v59 + 1) + 8 * j) != v14)
          {
            [v10 requireGestureRecognizerToFail:?];
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
            [v10 removeFailureRequirement:v39];
            [v39 requireGestureRecognizerToFail:v10];
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
            [v45 removeFailureRequirement:v10];
            [v10 requireGestureRecognizerToFail:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
        }

        while (v42);
      }
    }

    v12 = v49;
    v11 = v50;
    v13 = v48;
  }
}

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modelBaseScaleFactorOfPageAtIndex:a3 forAnnotationController:v6];
    modelBaseScaleFactor = v8;
  }

  else
  {
    modelBaseScaleFactor = self->_modelBaseScaleFactor;
    if (modelBaseScaleFactor == 9.22337204e18)
    {
      v10 = [(PDFAKDocumentAdaptor *)self pdfView];
      [v10 scaleFactor];
      v12 = v11;

      modelBaseScaleFactor = 1.0 / v12;
      self->_modelBaseScaleFactor = modelBaseScaleFactor;
    }
  }

  return modelBaseScaleFactor;
}

- (BOOL)shouldPlaceFormElementAtPoint:(CGPoint)a3 onOverlayAtPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = [a5 overlayViewAtIndex:a4];
  v9 = [(PDFAKDocumentAdaptor *)self pdfView];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;
  v14 = [v9 pageForPoint:0 nearest:?];
  if (v14)
  {
    [v9 convertPoint:v14 toPage:{v11, v13}];
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

- (BOOL)shouldPlaceProposedFormElementAtRect:(CGRect)a3 onOverlayAtPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v57 = *MEMORY[0x1E69E9840];
  v10 = [a5 overlayViewAtIndex:a4];
  v11 = [(PDFAKDocumentAdaptor *)self pdfView];
  [v11 convertRect:v10 fromView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v10 frame];
  MidX = CGRectGetMidX(v58);
  [v10 frame];
  v49 = v10;
  [v11 convertPoint:v10 fromView:{MidX, CGRectGetMidY(v59)}];
  v21 = [v11 pageForPoint:0 nearest:?];
  v48 = v11;
  [v11 convertRect:v21 toPage:{v13, v15, v17, v19}];
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
  v28 = [v21 annotations];
  v29 = [v28 countByEnumeratingWithState:&v52 objects:v56 count:16];
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
          objc_enumerationMutation(v28);
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

      v30 = [v28 countByEnumeratingWithState:&v52 objects:v56 count:16];
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

- (void)editCheckpointReachedForAnnotationController:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained editCheckpointReachedForAnnotationController:v5];
  }
}

- (void)editDetectedForAnnotationController:(id)a3
{
  v4 = a3;
  if (!+[PDFAKDocumentAdaptor isHandlingEditDetected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
    v6 = [WeakRetained permissionsStatus] != 0;
    v7 = [(PDFAKDocumentAdaptor *)self pdfView];
    objc_initWeak(&location, v7);

    objc_copyWeak(&to, &self->_pdfAKControllerDelegate);
    v8 = objc_loadWeakRetained(&location);
    v9 = [v8 currentPage];
    v10 = [v9 akPageAdaptor];
    v11 = [v10 akPageModelController];
    objc_initWeak(&from, v11);

    v12 = objc_loadWeakRetained(&from);
    v13 = [v12 selectedAnnotations];
    v14 = [v13 mutableCopy];

    v15 = [v8 window];
    v16 = [v15 firstResponder];
    objc_initWeak(&v34, v16);

    v17 = [v8 parentViewController];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __60__PDFAKDocumentAdaptor_editDetectedForAnnotationController___block_invoke;
    v25 = &unk_1E8151790;
    v26 = self;
    v27 = v4;
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
      [WeakRetained requirePasswordsIfNeededUsingPresentingViewController:v17 completion:{v19, v22, v23, v24, v25, v26, v27, v28}];
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

+ (void)setIsHandlingEditDetected:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v4 threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v6 setObject:v5 forKeyedSubscript:@"PDFKitIsHandlingEditDetected"];
}

+ (BOOL)isHandlingEditDetected
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"PDFKitIsHandlingEditDetected"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)penStrokeCompletedForAnnotationController:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained penStrokeCompletedForAnnotationController:v5];
  }
}

- (void)controllerWillShowSignatureCaptureView:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillShowSignatureCaptureView:v5];
  }
}

- (void)controllerWillDismissSignatureCaptureView:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillDismissSignatureCaptureView:v5];
  }
}

- (void)controllerWillShowSignatureManagerView:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillShowSignatureManagerView:v5];
  }
}

- (void)controllerWillDismissSignatureManagerView:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillDismissSignatureManagerView:v5];
  }
}

- (void)controllerWillEnterToolMode:(id)a3
{
  v6 = a3;
  v4 = [(PDFAKDocumentAdaptor *)self pdfView];
  [v4 endEditing:1];

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillEnterToolMode:v6];
  }
}

- (void)controllerDidEnterToolMode:(id)a3
{
  v11 = a3;
  v4 = [(PDFAKDocumentAdaptor *)self pdfView];
  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKDocumentAdaptor", "Did enter Markup editing mode for PDFView: %@", v5, v6, v7, v8, v9, v4);
  if (v4)
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
    [v4 clearSelection];
  }

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerDidEnterToolMode:v11];
  }
}

- (void)controllerWillExitToolMode:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerWillExitToolMode:v5];
  }
}

- (void)controllerDidExitToolMode:(id)a3
{
  v11 = a3;
  v4 = [(PDFAKDocumentAdaptor *)self pdfView];
  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKDocumentAdaptor", "Did exit Markup editing mode for PDFView: %@", v5, v6, v7, v8, v9, v4);
  if (v4)
  {
    [(PDFAKDocumentAdaptor *)self _updatePDFScrollViewMinimumNumberOfTouches];
  }

  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained controllerDidExitToolMode:v11];
  }
}

- (BOOL)shouldAddTabControlsToTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [v7 modelController];
  v9 = [v8 pageModelControllers];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __94__PDFAKDocumentAdaptor_shouldAddTabControlsToTextEditorForAnnotation_forAnnotationController___block_invoke;
  v19 = &unk_1E81517B8;
  v10 = v6;
  v20 = v10;
  v21 = &v22;
  [v9 enumerateObjectsUsingBlock:&v16];

  if (v23[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(PDFAKDocumentAdaptor *)self pdfDocument:v16];
    v13 = [v12 pageAtIndex:v23[3]];

    v14 = [v13 detectedForm];
    v11 = [v14 count] > 1;
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

- (BOOL)handleTabInTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4
{
  v4 = [(PDFAKDocumentAdaptor *)self pdfView:a3];
  v5 = [v4 handleTabInDetectedFormField];

  return v5;
}

- (BOOL)handleBackTabInTextEditorForAnnotation:(id)a3 forAnnotationController:(id)a4
{
  v4 = [(PDFAKDocumentAdaptor *)self pdfView:a3];
  v5 = [v4 handleBackTabInDetectedFormField];

  return v5;
}

- (void)handleTextSuggestion:(id)a3 forAnnotationController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(PDFAKDocumentAdaptor *)self pdfView];
  [v9 handleTextSuggestion:v8 completionHandler:v7];
}

- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4
{
  v58 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained positionSketchOverlay:v58 forAnnotationController:v6];
  }

  else
  {
    v8 = [(PDFAKDocumentAdaptor *)self pdfView];
    v9 = [v6 toolbarView];
    v10 = [v9 superview];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v8 documentScrollView];
    [v19 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = v12 + v23;
    v29 = v14 + v21;
    v30 = v16 - (v23 + v27);
    v31 = v18 - (v21 + v25);
    [v8 bounds];
    [v8 convertRect:v10 toCoordinateSpace:?];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [(PDFAKDocumentAdaptor *)self pdfDocument];
    LOBYTE(v19) = [v40 isLocked];

    if ((v19 & 1) == 0)
    {
      v41 = [v8 pageViewForPageAtIndex:{objc_msgSend(v6, "currentPageIndex")}];
      v42 = v41;
      if (v41)
      {
        [v41 bounds];
        [v42 convertRect:v10 toCoordinateSpace:?];
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

    [v10 convertRect:0 toView:{v52, v53, v54, v55}];
    v63 = CGRectIntegral(v62);
    [v10 convertRect:0 fromView:{v63.origin.x, v63.origin.y, v63.size.width, v63.size.height}];
    [v58 setFrame:?];
    v56 = [v58 superview];

    if (v56 != v10)
    {
      [v58 setAutoresizingMask:18];
      v57 = [v9 superview];
      [v57 addSubview:v58];
    }
  }
}

- (id)controller:(id)a3 willSetToolbarItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained controller:v6 willSetToolbarItems:v7];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (BOOL)hasHighlightableSelectionForAnnotationController:(id)a3
{
  v3 = [(PDFAKDocumentAdaptor *)self pdfView];
  v4 = [v3 currentSelection];
  v5 = [v4 string];
  v6 = [v5 length] != 0;

  return v6;
}

- (void)rotateRight:(id)a3
{
  v3 = [(PDFAKDocumentAdaptor *)self pdfView];
  v4 = [v3 currentPage];

  [v4 setRotation:{objc_msgSend(v4, "rotation") + 90}];
}

- (void)rotateLeft:(id)a3
{
  v3 = [(PDFAKDocumentAdaptor *)self pdfView];
  v4 = [v3 currentPage];

  [v4 setRotation:{objc_msgSend(v4, "rotation") - 90}];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(PDFAKDocumentAdaptor *)self pdfView:a3];
  v6 = [v5 pageViewForPageAtIndex:a3];

  v7 = [v6 layer];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 sublayers];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v14 = v7;
LABEL_12:

  return v14;
}

- (void)_pdfDocumentDidUnlock:(id)a3
{
  v9 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  if (WeakRetained)
  {
    if (v9 == WeakRetained)
    {
      v5 = [(PDFAKDocumentAdaptor *)self akMainController];
      v6 = [v5 currentPageIndex];

      if (v6 == 0x7FFFFFFFFFFFFFFFLL && [WeakRetained pageCount])
      {
        v7 = [(PDFAKDocumentAdaptor *)self akMainController];
        [v7 setCurrentPageIndex:0];
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"PDFDocumentDidUnlock" object:WeakRetained];
    }

    else
    {
      NSLog(&cfstr_SNotificationD.isa, "[PDFAKDocumentAdaptor _pdfDocumentDidUnlock:]", v9, WeakRetained);
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
    v4 = [WeakRetained isLocked];

    if ((v4 & 1) == 0)
    {
      v7 = objc_loadWeakRetained(&self->_pdfAKControllerDelegate);
      if (!v7 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        [(PDFAKDocumentAdaptor *)self modelBaseScaleFactorOfPageAtIndex:0 forAnnotationController:self->_akController];
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:self name:@"PDFViewDidLayoutDocumentView" object:0];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:self name:@"PDFViewScaleChanged" object:0];
    }
  }
}

- (void)_updatePDFScrollViewMinimumNumberOfTouches
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(PDFAKDocumentAdaptor *)self pdfView];
  v3 = [v2 scrollViewMinimumNumberOfTouches];
  if ([v2 isUsingPageViewController])
  {
    v4 = [v2 documentViewController];
    v5 = [v4 scrollView];
    v6 = [v5 panGestureRecognizer];
    [v6 setMinimumNumberOfTouches:v3];

    v7 = [v4 viewControllers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * v11) scrollView];
          v13 = [v12 panGestureRecognizer];
          [v13 setMinimumNumberOfTouches:v3];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = [v2 documentScrollView];
    v5 = [v4 panGestureRecognizer];
    [v5 setMinimumNumberOfTouches:v3];
  }

  _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFAKOverlayAdaptor", "Number of touches required to scroll is %lu for PDFView: %@", v14, v15, v16, v17, v18, v3);
}

- (id)_scrollViewRecognizersForPageAtIndex:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(PDFAKDocumentAdaptor *)self pdfView];
  v7 = v6;
  if (v6)
  {
    if ([v6 isUsingPageViewController])
    {
      v8 = [v7 documentViewController];
      v9 = [v8 scrollView];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 panGestureRecognizer];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v12 = [v10 pinchGestureRecognizer];

        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      else
      {
        v12 = 0;
      }

      if (a3 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v8 findPageViewControllerForPageIndex:a3];
        v16 = [v15 scrollView];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 panGestureRecognizer];

          if (v18)
          {
            [v5 addObject:v18];
          }

          v12 = [v17 pinchGestureRecognizer];

          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }
    }

    else
    {
      v13 = [v7 documentScrollView];
      v8 = v13;
      if (v13)
      {
        v14 = [v13 panGestureRecognizer];
        if (v14)
        {
          [v5 addObject:v14];
        }

        v12 = [v8 pinchGestureRecognizer];

        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  v19 = [v5 allObjects];

  return v19;
}

- (void)_resetAnimationProperties
{
  v2 = *(MEMORY[0x1E695F050] + 16);
  self->_animationProperties.visibleTextViewRectInScrollView.origin = *MEMORY[0x1E695F050];
  self->_animationProperties.visibleTextViewRectInScrollView.size = v2;
  self->_animationProperties.animationDuration = 0.0;
  self->_animationProperties.originDelta = 0.0;
}

- (void)annotationWillBeginEditing:(id)a3
{
  v4 = [a3 userInfo];
  v5 = AKEditingTextAnnotationKeyString();
  v6 = [v4 objectForKey:v5];

  editingAnnotaiton = self->_editingAnnotaiton;
  self->_editingAnnotaiton = v6;
  v8 = v6;

  v11 = [PDFAKAnnotationAdaptor getPDFAnnotationAssociatedWith:v8];

  v9 = [(PDFAKDocumentAdaptor *)self pdfView];
  v10 = [v9 controller];
  [v10 interactWithAnnotation:v11];
}

- (void)annotationDidEndEditing:(id)a3
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

  v7 = [(PDFAKDocumentAdaptor *)self pdfView];
  v8 = [v7 controller];
  [v8 setActiveAnnotation:0];
}

- (unint64_t)pageIndexForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(PDFAKDocumentAdaptor *)self pdfDocument];
  v6 = [v5 akDocumentAdaptor];

  v7 = [v6 akMainController];
  v8 = [v7 modelController];
  v9 = [v8 pageModelControllerForAnnotation:v4];

  v10 = [v7 modelController];
  v11 = [v10 pageModelControllers];
  v12 = [v11 indexOfObject:v9];

  return v12;
}

- (void)adjustScrollViewForKeyboardNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_editingAnnotaiton)
  {
    v6 = [v4 userInfo];
    v7 = [v6 valueForKey:*MEMORY[0x1E69DDF98]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v5 userInfo];
    v17 = [v16 valueForKey:*MEMORY[0x1E69DDFA0]];
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
        v29 = [(PDFAKDocumentAdaptor *)self pdfView];
        v30 = [v29 documentScrollView];
        v31 = [v29 document];
        v32 = [v31 pageAtIndex:v28];

        [(AKRectAnnotation *)v26 rectangle];
        [v29 convertRect:v32 fromPage:?];
        [v29 convertRect:0 toView:?];
        v63 = v34;
        v64 = v33;
        v61 = v36;
        v62 = v35;
        v37 = [v30 window];
        [v30 convertRect:v37 fromView:{v9, v11, v13, v15}];
        v39 = v38;

        v40 = [v30 window];
        [v30 convertRect:v40 fromView:{v19, v21, v23, v25}];
        v42 = v41;

        v43 = 0.0;
        if (v39 - v42 >= 0.0)
        {
          v43 = v39 - v42;
        }

        v65 = v43;
        self->_animationProperties.originDelta = self->_animationProperties.originDelta + v43;
        [v30 bounds];
        [v30 convertRect:0 toView:?];
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
          [v30 convertRect:0 fromView:{v64, v63, v62, v61}];
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

        v53 = [v5 userInfo];
        v54 = [v53 valueForKey:*MEMORY[0x1E69DDF40]];
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

- (void)_adjustScrollViewWithAnimationProperties:(TextAnnotationAnimationProperties *)a3 delta:(double)a4
{
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  [v7 beginIgnoringInteractionEvents];

  animationDuration = a3->animationDuration;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PDFAKDocumentAdaptor__adjustScrollViewWithAnimationProperties_delta___block_invoke;
  v10[3] = &unk_1E81517E0;
  v10[4] = self;
  *&v10[5] = a4;
  size = a3->visibleTextViewRectInScrollView.size;
  origin = a3->visibleTextViewRectInScrollView.origin;
  v12 = size;
  v13 = *&a3->animationDuration;
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