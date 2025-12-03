@interface AXPDFNodeElement
- (AXPDFNodeElement)initWithAccessibilityContainer:(id)container withPage:(id)page;
- (BOOL)_accessibilityIncludeDuringContentReading;
- (BOOL)isLastNodeInPage;
- (BOOL)pdfViewRequiresPageTurning;
- (CGRect)axConvertBoundsFromPageToScreenCoordinates:(CGRect)coordinates;
- (CGRect)convertedAccessibilityFrame:(CGRect)frame;
- (PDFPage)page;
- (id)pdfView;
- (id)plugin;
@end

@implementation AXPDFNodeElement

- (AXPDFNodeElement)initWithAccessibilityContainer:(id)container withPage:(id)page
{
  v8.receiver = self;
  v8.super_class = AXPDFNodeElement;
  pageCopy = page;
  v6 = [(AXPDFNodeElement *)&v8 initWithAccessibilityContainer:container];
  [(AXPDFNodeElement *)v6 setPage:pageCopy, v8.receiver, v8.super_class];

  return v6;
}

- (id)pdfView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  window = [WeakRetained window];

  if (!window)
  {
    v5 = [(AXPDFNodeElement *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E4220](@"PDFView")];
    objc_storeWeak(&self->_pdfView, v5);
  }

  v6 = objc_loadWeakRetained(&self->_pdfView);

  return v6;
}

- (id)plugin
{
  page = [(AXPDFNodeElement *)self page];
  v3 = [page safeValueForKey:@"plugin"];

  return v3;
}

- (BOOL)isLastNodeInPage
{
  pdfView = [(AXPDFNodeElement *)self pdfView];

  if (!pdfView || ![(AXPDFNodeElement *)self isAccessibilityElement])
  {
    return 0;
  }

  if ([(AXPDFNodeElement *)self didDetermineLastNodeStatus])
  {
    return self->_isLastNodeInPage;
  }

  if ([(AXPDFNodeElement *)self isGatheringLeafDescendents])
  {
    return 0;
  }

  accessibilityContainer = [(AXPDFNodeElement *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v6AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v6AccessibilityContainer;
    }

    while (v6AccessibilityContainer);
  }

  v8 = [accessibilityContainer _accessibilityValueForKey:@"AXValidElements"];
  if (!v8)
  {
    [(AXPDFNodeElement *)self setIsGatheringLeafDescendents:1];
    options = [MEMORY[0x29EDC7328] options];
    v8 = [accessibilityContainer _accessibilityLeafDescendantsWithOptions:options];

    [(AXPDFNodeElement *)self setIsGatheringLeafDescendents:0];
    [accessibilityContainer _accessibilitySetRetainedValue:v8 forKey:@"AXValidElements"];
  }

  lastObject = [v8 lastObject];
  self->_isLastNodeInPage = lastObject == self;

  [(AXPDFNodeElement *)self setDidDetermineLastNodeStatus:1];
  isLastNodeInPage = self->_isLastNodeInPage;

  return isLastNodeInPage;
}

- (BOOL)pdfViewRequiresPageTurning
{
  pdfView = [(AXPDFNodeElement *)self pdfView];
  v3 = ([pdfView isUsingPageViewController] & 1) != 0 || objc_msgSend(pdfView, "displayMode") == 2 || objc_msgSend(pdfView, "displayMode") == 0;

  return v3;
}

- (BOOL)_accessibilityIncludeDuringContentReading
{
  plugin = [(AXPDFNodeElement *)self plugin];

  if (plugin)
  {
    return 0;
  }

  return [(AXPDFNodeElement *)self pdfViewRequiresPageTurning];
}

- (CGRect)axConvertBoundsFromPageToScreenCoordinates:(CGRect)coordinates
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4010000000;
  v14 = "";
  coordinatesCopy = coordinates;
  AXPerformSafeBlock();
  v3 = v12[4];
  v4 = v12[5];
  v5 = v12[6];
  v6 = v12[7];
  _Block_object_dispose(&v11, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

void __63__AXPDFNodeElement_axConvertBoundsFromPageToScreenCoordinates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pdfView];
  v3 = *(*(a1 + 40) + 8);
  v4 = [*(a1 + 32) page];
  [v2 convertRect:v4 fromPage:{v3[4], v3[5], v3[6], v3[7]}];
  v5 = *(*(a1 + 40) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;

  v10 = *(*(a1 + 40) + 8);
  v11 = [*(a1 + 32) pdfView];
  *(*(*(a1 + 40) + 8) + 32) = UIAccessibilityConvertFrameToScreenCoordinates(v10[1], v11);
}

- (CGRect)convertedAccessibilityFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  plugin = [(AXPDFNodeElement *)self plugin];
  if (plugin && (v9 = plugin, [(AXPDFNodeElement *)self plugin], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    page = [(AXPDFNodeElement *)self page];
    document = [page document];
    page2 = [(AXPDFNodeElement *)self page];
    v15 = [document indexForPage:page2];

    plugin2 = [(AXPDFNodeElement *)self plugin];
    [plugin2 convertFromPDFPageToScreenForAccessibility:v15 pageIndex:{x, y, width, height}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    [(AXPDFNodeElement *)self axConvertBoundsFromPageToScreenCoordinates:x, y, width, height];
    v18 = v25;
    v20 = v26;
    v22 = v27;
    v24 = v28;
  }

  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end