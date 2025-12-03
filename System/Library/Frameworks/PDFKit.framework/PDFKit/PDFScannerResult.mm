@interface PDFScannerResult
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)containsPoint:(CGPoint)point onPageLayer:(id)layer;
- (BOOL)hasActionsForResult;
- (BOOL)pointIsOnButton:(CGPoint)button;
- (BOOL)pointIsOnButton:(CGPoint)button onPageLayer:(id)layer;
- (CGRect)bounds;
- (PDFScannerResult)initWithDDScannerResult:(id)result foundOnPage:(id)page;
- (double)displayScaleOnPageLayer:(id)layer;
- (void)setButtonPressed:(BOOL)pressed;
- (void)setHighlightRef:(__DDHighlight *)ref;
@end

@implementation PDFScannerResult

- (PDFScannerResult)initWithDDScannerResult:(id)result foundOnPage:(id)page
{
  v46 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  pageCopy = page;
  v44.receiver = self;
  v44.super_class = PDFScannerResult;
  v9 = [(PDFScannerResult *)&v44 init];
  if (v9)
  {
    v10 = [resultCopy url];
    v11 = PDFURLLooksSuspicious(v10);

    if ((v11 & 1) != 0 || (v12 = [resultCopy urlificationRange], objc_msgSend(pageCopy, "selectionForRange:", v12, v13), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v37 = 0;
      goto LABEL_14;
    }

    v15 = v14;
    v16 = objc_alloc_init(PDFScannerResultPrivate);
    v17 = v9->_private;
    v9->_private = v16;

    objc_storeStrong(&v9->_private->ddResult, result);
    objc_storeWeak(&v9->_private->page, pageCopy);
    v18 = v9->_private;
    [v15 boundsForPage:pageCopy];
    v18->bounds.origin.x = v19;
    v18->bounds.origin.y = v20;
    v18->bounds.size.width = v21;
    v18->bounds.size.height = v22;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = v9->_private;
    rects = v24->rects;
    v24->rects = v23;

    v39 = v15;
    selectionsByLine = [v15 selectionsByLine];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = [selectionsByLine countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        v30 = 0;
        do
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(selectionsByLine);
          }

          [*(*(&v40 + 1) + 8 * v30) boundsForPage:pageCopy];
          v31 = v9->_private->rects;
          v32 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:?];
          [(NSArray *)v31 addObject:v32];

          ++v30;
        }

        while (v28 != v30);
        v28 = [selectionsByLine countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v28);
    }

    document = [pageCopy document];
    documentAttributes = [document documentAttributes];
    v35 = [documentAttributes objectForKey:@"CreationDate"];

    [(DDScannerResult *)v9->_private->ddResult coreResult];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    v9->_private->resultIsPastDate = DDResultIsPastDate() != 0;

    v9->_private->hasRunActionsForResult = 0;
    v9->_private->hasActionsForResult = 0;
  }

  v37 = v9;
LABEL_14:

  return v37;
}

- (CGRect)bounds
{
  v2 = self->_private;
  x = v2->bounds.origin.x;
  y = v2->bounds.origin.y;
  width = v2->bounds.size.width;
  height = v2->bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)hasActionsForResult
{
  v2 = self->_private;
  if (!v2->hasRunActionsForResult)
  {
    v2->hasActionsForResult = 0;
    self->_private->hasRunActionsForResult = 1;
    v2 = self->_private;
  }

  return v2->hasActionsForResult;
}

- (void)setHighlightRef:(__DDHighlight *)ref
{
  highlightRef = self->_private->highlightRef;
  if (highlightRef != ref)
  {
    if (highlightRef)
    {
      CFRelease(highlightRef);
    }

    if (ref)
    {
      CFRetain(ref);
    }

    self->_private->highlightRef = ref;
  }
}

- (double)displayScaleOnPageLayer:(id)layer
{
  layerCopy = layer;
  v4 = layerCopy;
  if (layerCopy)
  {
    geometryInterface = [layerCopy geometryInterface];
    [geometryInterface targetBackingScaleFactor];
    BackingScaleFactor = v6;
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    [geometryInterface convertRectToRootView:v4 fromPageLayer:{PDFRectMake(v8, v9, 1.0, 1.0)}];
    v11 = floor(v10 * 0.75);
    if (BackingScaleFactor < v11)
    {
      BackingScaleFactor = v11;
    }
  }

  else
  {
    BackingScaleFactor = PDFScreenGetBackingScaleFactor();
  }

  return BackingScaleFactor;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = WeakRetained;
  if (self->_private->highlightRef)
  {
    v8 = WeakRetained == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    view = [WeakRetained view];
    document = [v7 document];
    v11 = [view pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", v7)}];
    layer = [v11 layer];

    v13 = [(PDFScannerResult *)self containsPoint:layer onPageLayer:x, y];
  }

  return v13;
}

- (BOOL)containsPoint:(CGPoint)point onPageLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  v8 = layerCopy;
  v9 = 0;
  if (layerCopy && self->_private->highlightRef)
  {
    geometryInterface = [layerCopy geometryInterface];
    v11.n128_u64[0] = 0;
    v12.n128_u64[0] = 0;
    [geometryInterface convertRectToRootView:v8 fromPageLayer:{PDFRectMake(v11, v12, 1.0, 1.0)}];
    v14 = v13;

    v15 = PDFPointScale(x, y, v14);
    v17 = v16;
    v18 = malloc_type_malloc(32 * [(NSArray *)self->_private->rects count], 0x1000040E0EAB150uLL);
    [(NSArray *)self->_private->rects count];
    if (loadReveal_onceToken != -1)
    {
      RVItemClass_cold_1();
    }

    [(PDFScannerResult *)self displayScaleOnPageLayer:v8];
    v20 = v19;
    if ([(NSArray *)self->_private->rects count])
    {
      v21 = 0;
      v22 = v17 / v20;
      v23 = v18 + 2;
      v24 = v15 / v20;
      do
      {
        v27.origin.x = PDFRectFromCGRect(*(v23 - 2), *(v23 - 1), *v23, v23[1]);
        v26.x = v24;
        v26.y = v22;
        v9 = PDFRectContainsPoint(v27, v26);
        if (v9)
        {
          break;
        }

        ++v21;
        v23 += 4;
      }

      while ([(NSArray *)self->_private->rects count]> v21);
      goto LABEL_11;
    }

    v9 = 0;
    if (v18)
    {
LABEL_11:
      free(v18);
    }
  }

  return v9;
}

- (BOOL)pointIsOnButton:(CGPoint)button
{
  y = button.y;
  x = button.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = WeakRetained;
  if (self->_private->highlightRef)
  {
    v8 = WeakRetained == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    view = [WeakRetained view];
    document = [v7 document];
    v11 = [view pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", v7)}];
    layer = [v11 layer];

    v13 = [(PDFScannerResult *)self pointIsOnButton:layer onPageLayer:x, y];
  }

  return v13;
}

- (BOOL)pointIsOnButton:(CGPoint)button onPageLayer:(id)layer
{
  if (layer)
  {
    if (self->_private->highlightRef)
    {
      y = button.y;
      x = button.x;
      layerCopy = layer;
      geometryInterface = [layerCopy geometryInterface];
      v9.n128_u64[0] = 0;
      v10.n128_u64[0] = 0;
      [geometryInterface convertRectToRootView:layerCopy fromPageLayer:{PDFRectMake(v9, v10, 1.0, 1.0)}];
      v12 = v11;

      [(PDFScannerResult *)self displayScaleOnPageLayer:layerCopy];
      v14 = v13;

      v15 = PDFPointScale(x, y, v12 / v14);
      PDFPointToCGPoint(v15, v16);
      if (loadReveal_onceToken != -1)
      {
        RVItemClass_cold_1();
      }
    }
  }

  return 0;
}

- (void)setButtonPressed:(BOOL)pressed
{
  if (self->_private->highlightRef)
  {
    if (loadReveal_onceToken != -1)
    {
      RVItemClass_cold_1();
    }
  }
}

@end