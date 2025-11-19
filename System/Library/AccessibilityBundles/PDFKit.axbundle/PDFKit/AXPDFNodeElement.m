@interface AXPDFNodeElement
- (AXPDFNodeElement)initWithAccessibilityContainer:(id)a3 withPage:(id)a4;
- (BOOL)_accessibilityIncludeDuringContentReading;
- (BOOL)isLastNodeInPage;
- (BOOL)pdfViewRequiresPageTurning;
- (CGRect)axConvertBoundsFromPageToScreenCoordinates:(CGRect)a3;
- (CGRect)convertedAccessibilityFrame:(CGRect)a3;
- (PDFPage)page;
- (id)pdfView;
- (id)plugin;
@end

@implementation AXPDFNodeElement

- (AXPDFNodeElement)initWithAccessibilityContainer:(id)a3 withPage:(id)a4
{
  v8.receiver = self;
  v8.super_class = AXPDFNodeElement;
  v5 = a4;
  v6 = [(AXPDFNodeElement *)&v8 initWithAccessibilityContainer:a3];
  [(AXPDFNodeElement *)v6 setPage:v5, v8.receiver, v8.super_class];

  return v6;
}

- (id)pdfView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v4 = [WeakRetained window];

  if (!v4)
  {
    v5 = [(AXPDFNodeElement *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E4220](@"PDFView")];
    objc_storeWeak(&self->_pdfView, v5);
  }

  v6 = objc_loadWeakRetained(&self->_pdfView);

  return v6;
}

- (id)plugin
{
  v2 = [(AXPDFNodeElement *)self page];
  v3 = [v2 safeValueForKey:@"plugin"];

  return v3;
}

- (BOOL)isLastNodeInPage
{
  v3 = [(AXPDFNodeElement *)self pdfView];

  if (!v3 || ![(AXPDFNodeElement *)self isAccessibilityElement])
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

  v6 = [(AXPDFNodeElement *)self accessibilityContainer];
  if (v6)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v7 = [v6 accessibilityContainer];

      v6 = v7;
    }

    while (v7);
  }

  v8 = [v6 _accessibilityValueForKey:@"AXValidElements"];
  if (!v8)
  {
    [(AXPDFNodeElement *)self setIsGatheringLeafDescendents:1];
    v9 = [MEMORY[0x29EDC7328] options];
    v8 = [v6 _accessibilityLeafDescendantsWithOptions:v9];

    [(AXPDFNodeElement *)self setIsGatheringLeafDescendents:0];
    [v6 _accessibilitySetRetainedValue:v8 forKey:@"AXValidElements"];
  }

  v10 = [v8 lastObject];
  self->_isLastNodeInPage = v10 == self;

  [(AXPDFNodeElement *)self setDidDetermineLastNodeStatus:1];
  isLastNodeInPage = self->_isLastNodeInPage;

  return isLastNodeInPage;
}

- (BOOL)pdfViewRequiresPageTurning
{
  v2 = [(AXPDFNodeElement *)self pdfView];
  v3 = ([v2 isUsingPageViewController] & 1) != 0 || objc_msgSend(v2, "displayMode") == 2 || objc_msgSend(v2, "displayMode") == 0;

  return v3;
}

- (BOOL)_accessibilityIncludeDuringContentReading
{
  v3 = [(AXPDFNodeElement *)self plugin];

  if (v3)
  {
    return 0;
  }

  return [(AXPDFNodeElement *)self pdfViewRequiresPageTurning];
}

- (CGRect)axConvertBoundsFromPageToScreenCoordinates:(CGRect)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4010000000;
  v14 = "";
  v15 = a3;
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

- (CGRect)convertedAccessibilityFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AXPDFNodeElement *)self plugin];
  if (v8 && (v9 = v8, [(AXPDFNodeElement *)self plugin], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(AXPDFNodeElement *)self page];
    v13 = [v12 document];
    v14 = [(AXPDFNodeElement *)self page];
    v15 = [v13 indexForPage:v14];

    v16 = [(AXPDFNodeElement *)self plugin];
    [v16 convertFromPDFPageToScreenForAccessibility:v15 pageIndex:{x, y, width, height}];
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