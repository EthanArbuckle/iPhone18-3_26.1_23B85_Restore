@interface PDFOverlayViewsController
+ (id)instanceForPlatformWithPDFView:(id)view;
- (PDFDocument)pdfDocument;
- (PDFOverlayViewsController)initWithPDFView:(id)view;
- (PDFPageOverlayViewProvider)viewProvider;
- (PDFView)pdfView;
- (id)_callOverlayViewForPage:(id)page;
- (void)_callWillEndDisplayingOverlayViewForPage:(id)page;
- (void)_pageRotationChanged:(id)changed;
- (void)_setupRotationNotificationObservationForPageAtIndex:(unint64_t)index;
- (void)_teardown;
- (void)_teardownRotationNotificationObservationForPageAtIndex:(unint64_t)index;
- (void)_uninstallAllOverlays;
- (void)dealloc;
- (void)pdfView:(id)view didAddView:(id)addView forPage:(id)page atIndex:(unint64_t)index;
- (void)pdfView:(id)view didSetDocument:(id)document;
- (void)pdfView:(id)view willRemoveView:(id)removeView forPage:(id)page atIndex:(unint64_t)index;
- (void)pdfView:(id)view willSetDocument:(id)document;
- (void)teardown;
@end

@implementation PDFOverlayViewsController

+ (id)instanceForPlatformWithPDFView:(id)view
{
  viewCopy = view;
  v4 = [[PDFOverlayViewsController_ios alloc] initWithPDFView:viewCopy];

  return v4;
}

- (PDFOverlayViewsController)initWithPDFView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PDFOverlayViewsController;
  v5 = [(PDFOverlayViewsController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pdfView, viewCopy);
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

- (void)pdfView:(id)view willSetDocument:(id)document
{
  viewCopy = view;
  documentCopy = document;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained != documentCopy && WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_viewProvider);
    if (objc_opt_respondsToSelector())
    {
      [v8 teardownGestureRecognizersForView:viewCopy];
    }

    [(PDFOverlayViewsController *)self _uninstallAllOverlays];
  }
}

- (void)pdfView:(id)view didSetDocument:(id)document
{
  viewCopy = view;
  documentCopy = document;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained != documentCopy)
  {
    objc_storeWeak(&self->_pdfDocument, documentCopy);
    if (documentCopy)
    {
      v8 = objc_loadWeakRetained(&self->_viewProvider);
      if (objc_opt_respondsToSelector())
      {
        [v8 setupGestureRecognizersForView:viewCopy];
      }
    }
  }
}

- (void)pdfView:(id)view didAddView:(id)addView forPage:(id)page atIndex:(unint64_t)index
{
  addViewCopy = addView;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained)
  {
    [(PDFOverlayViewsController *)self _installOverlayForPageView:addViewCopy ofPage:pageCopy atIndex:index];
    [(PDFOverlayViewsController *)self _setupRotationNotificationObservationForPageAtIndex:index];
  }
}

- (void)pdfView:(id)view willRemoveView:(id)removeView forPage:(id)page atIndex:(unint64_t)index
{
  removeViewCopy = removeView;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);

  if (WeakRetained)
  {
    [(PDFOverlayViewsController *)self _teardownRotationNotificationObservationForPageAtIndex:index];
    [(PDFOverlayViewsController *)self _uninstallOverlayForPageView:removeViewCopy ofPage:pageCopy atIndex:index];
  }
}

- (id)_callOverlayViewForPage:(id)page
{
  pageCopy = page;
  v5 = [(NSMapTable *)self->_pageToOverlayMap objectForKey:pageCopy];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
    pdfView = [(PDFOverlayViewsController *)self pdfView];
    v5 = [WeakRetained pdfView:pdfView overlayViewForPage:pageCopy];

    if (v5)
    {
      [(NSMapTable *)self->_pageToOverlayMap setObject:v5 forKey:pageCopy];
    }
  }

  return v5;
}

- (void)_callWillEndDisplayingOverlayViewForPage:(id)page
{
  pageCopy = page;
  viewProvider = [(PDFOverlayViewsController *)self viewProvider];
  v5 = [(PDFOverlayViewsController *)self _cachedOverlayViewForPage:pageCopy];
  if (objc_opt_respondsToSelector())
  {
    pdfView = [(PDFOverlayViewsController *)self pdfView];
    [viewProvider pdfView:pdfView willEndDisplayingOverlayView:v5 forPage:pageCopy];
  }

  [(NSMapTable *)self->_pageToOverlayMap removeObjectForKey:pageCopy];
}

- (void)_uninstallAllOverlays
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    pageCount = [WeakRetained pageCount];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (pageCount)
    {
      for (i = 0; i != pageCount; ++i)
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

- (void)_setupRotationNotificationObservationForPageAtIndex:(unint64_t)index
{
  if (([(NSMutableIndexSet *)self->_observedPageIndices containsIndex:?]& 1) == 0)
  {
    if (![(NSMutableIndexSet *)self->_observedPageIndices count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__pageRotationChanged_ name:@"PDFPageDidRotate" object:WeakRetained];
    }

    observedPageIndices = self->_observedPageIndices;

    [(NSMutableIndexSet *)observedPageIndices addIndex:index];
  }
}

- (void)_teardownRotationNotificationObservationForPageAtIndex:(unint64_t)index
{
  if ([(NSMutableIndexSet *)self->_observedPageIndices containsIndex:?])
  {
    [(NSMutableIndexSet *)self->_observedPageIndices removeIndex:index];
    if (![(NSMutableIndexSet *)self->_observedPageIndices count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"PDFPageDidRotate" object:WeakRetained];
    }
  }
}

- (void)_pageRotationChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  object = [changedCopy object];
  if (object == WeakRetained)
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKey:@"page"];
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