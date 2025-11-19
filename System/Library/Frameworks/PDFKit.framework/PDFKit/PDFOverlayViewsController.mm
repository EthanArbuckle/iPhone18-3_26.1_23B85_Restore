@interface PDFOverlayViewsController
+ (id)instanceForPlatformWithPDFView:(id)a3;
- (PDFDocument)pdfDocument;
- (PDFOverlayViewsController)initWithPDFView:(id)a3;
- (PDFPageOverlayViewProvider)viewProvider;
- (PDFView)pdfView;
- (id)_callOverlayViewForPage:(id)a3;
- (void)_callWillEndDisplayingOverlayViewForPage:(id)a3;
- (void)_pageRotationChanged:(id)a3;
- (void)_setupRotationNotificationObservationForPageAtIndex:(unint64_t)a3;
- (void)_teardown;
- (void)_teardownRotationNotificationObservationForPageAtIndex:(unint64_t)a3;
- (void)_uninstallAllOverlays;
- (void)dealloc;
- (void)pdfView:(id)a3 didAddView:(id)a4 forPage:(id)a5 atIndex:(unint64_t)a6;
- (void)pdfView:(id)a3 didSetDocument:(id)a4;
- (void)pdfView:(id)a3 willRemoveView:(id)a4 forPage:(id)a5 atIndex:(unint64_t)a6;
- (void)pdfView:(id)a3 willSetDocument:(id)a4;
- (void)teardown;
@end

@implementation PDFOverlayViewsController

+ (id)instanceForPlatformWithPDFView:(id)a3
{
  v3 = a3;
  v4 = [[PDFOverlayViewsController_ios alloc] initWithPDFView:v3];

  return v4;
}

- (PDFOverlayViewsController)initWithPDFView:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PDFOverlayViewsController;
  v5 = [(PDFOverlayViewsController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pdfView, v4);
    v7 = objc_opt_new();
    observedPageIndices = v6->_observedPageIndices;
    v6->_observedPageIndices = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    pageToOverlayMap = v6->_pageToOverlayMap;
    v6->_pageToOverlayMap = v9;
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PDFOverlayViewsController *)self _teardown];
    }

    else
    {
      NSLog(&cfstr_SCalledFromABa.isa, "[PDFOverlayViewsController dealloc]");
    }
  }

  v3.receiver = self;
  v3.super_class = PDFOverlayViewsController;
  [(PDFOverlayViewsController *)&v3 dealloc];
}

- (void)teardown
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PDFOverlayViewsController *)self _teardown];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PDFOverlayViewsController_teardown__block_invoke;
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
  }
}

- (void)pdfView:(id)a3 willSetDocument:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained != v6 && WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_viewProvider);
    if (objc_opt_respondsToSelector())
    {
      [v8 teardownGestureRecognizersForView:v9];
    }

    [(PDFOverlayViewsController *)self _uninstallAllOverlays];
  }
}

- (void)pdfView:(id)a3 didSetDocument:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained != v6)
  {
    objc_storeWeak(&self->_pdfDocument, v6);
    if (v6)
    {
      v8 = objc_loadWeakRetained(&self->_viewProvider);
      if (objc_opt_respondsToSelector())
      {
        [v8 setupGestureRecognizersForView:v9];
      }
    }
  }
}

- (void)pdfView:(id)a3 didAddView:(id)a4 forPage:(id)a5 atIndex:(unint64_t)a6
{
  v11 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained)
  {
    [(PDFOverlayViewsController *)self _installOverlayForPageView:v11 ofPage:v9 atIndex:a6];
    [(PDFOverlayViewsController *)self _setupRotationNotificationObservationForPageAtIndex:a6];
  }
}

- (void)pdfView:(id)a3 willRemoveView:(id)a4 forPage:(id)a5 atIndex:(unint64_t)a6
{
  v11 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained)
  {
    [(PDFOverlayViewsController *)self _teardownRotationNotificationObservationForPageAtIndex:a6];
    [(PDFOverlayViewsController *)self _uninstallOverlayForPageView:v11 ofPage:v9 atIndex:a6];
  }
}

- (id)_callOverlayViewForPage:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_pageToOverlayMap objectForKey:v4];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
    v7 = [(PDFOverlayViewsController *)self pdfView];
    v5 = [WeakRetained pdfView:v7 overlayViewForPage:v4];

    if (v5)
    {
      [(NSMapTable *)self->_pageToOverlayMap setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (void)_callWillEndDisplayingOverlayViewForPage:(id)a3
{
  v7 = a3;
  v4 = [(PDFOverlayViewsController *)self viewProvider];
  v5 = [(PDFOverlayViewsController *)self _cachedOverlayViewForPage:v7];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PDFOverlayViewsController *)self pdfView];
    [v4 pdfView:v6 willEndDisplayingOverlayView:v5 forPage:v7];
  }

  [(NSMapTable *)self->_pageToOverlayMap removeObjectForKey:v7];
}

- (void)_uninstallAllOverlays
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained pageCount];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        [(PDFOverlayViewsController *)self _teardownRotationNotificationObservationForPageAtIndex:i];
        v6 = objc_loadWeakRetained(&self->_pdfView);
        v7 = [v6 pageViewForPageAtIndex:i];

        v8 = [v9 pageAtIndex:i];
        [(PDFOverlayViewsController *)self _uninstallOverlayForPageView:v7 ofPage:v8 atIndex:i];
      }
    }

    [MEMORY[0x1E6979518] commit];
    WeakRetained = v9;
  }
}

- (void)_setupRotationNotificationObservationForPageAtIndex:(unint64_t)a3
{
  if (([(NSMutableIndexSet *)self->_observedPageIndices containsIndex:?]& 1) == 0)
  {
    if (![(NSMutableIndexSet *)self->_observedPageIndices count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__pageRotationChanged_ name:@"PDFPageDidRotate" object:WeakRetained];
    }

    observedPageIndices = self->_observedPageIndices;

    [(NSMutableIndexSet *)observedPageIndices addIndex:a3];
  }
}

- (void)_teardownRotationNotificationObservationForPageAtIndex:(unint64_t)a3
{
  if ([(NSMutableIndexSet *)self->_observedPageIndices containsIndex:?])
  {
    [(NSMutableIndexSet *)self->_observedPageIndices removeIndex:a3];
    if (![(NSMutableIndexSet *)self->_observedPageIndices count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:self name:@"PDFPageDidRotate" object:WeakRetained];
    }
  }
}

- (void)_pageRotationChanged:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  v5 = [v12 object];
  if (v5 == WeakRetained)
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:@"page"];
    v8 = [WeakRetained indexForPage:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      if (v8 < [WeakRetained pageCount])
      {
        v10 = objc_loadWeakRetained(&self->_pdfView);
        v11 = [v10 pageViewForPageAtIndex:v9];
        [v11 setEnableTileUpdates:0];
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [(PDFOverlayViewsController *)self _uninstallOverlayForPageView:v11 ofPage:v7 atIndex:v9];
        [v10 layoutDocumentView];
        [(PDFOverlayViewsController *)self _installOverlayForPageView:v11 ofPage:v7 atIndex:v9];
        [MEMORY[0x1E6979518] commit];
        [v11 setEnableTileUpdates:1];
      }
    }
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

- (PDFPageOverlayViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

@end