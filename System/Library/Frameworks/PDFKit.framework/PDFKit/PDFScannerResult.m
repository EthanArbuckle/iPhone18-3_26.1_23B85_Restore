@interface PDFScannerResult
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)containsPoint:(CGPoint)a3 onPageLayer:(id)a4;
- (BOOL)hasActionsForResult;
- (BOOL)pointIsOnButton:(CGPoint)a3;
- (BOOL)pointIsOnButton:(CGPoint)a3 onPageLayer:(id)a4;
- (CGRect)bounds;
- (PDFScannerResult)initWithDDScannerResult:(id)a3 foundOnPage:(id)a4;
- (double)displayScaleOnPageLayer:(id)a3;
- (void)setButtonPressed:(BOOL)a3;
- (void)setHighlightRef:(__DDHighlight *)a3;
@end

@implementation PDFScannerResult

- (PDFScannerResult)initWithDDScannerResult:(id)a3 foundOnPage:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = PDFScannerResult;
  v9 = [(PDFScannerResult *)&v44 init];
  if (v9)
  {
    v10 = [v7 url];
    v11 = PDFURLLooksSuspicious(v10);

    if ((v11 & 1) != 0 || (v12 = [v7 urlificationRange], objc_msgSend(v8, "selectionForRange:", v12, v13), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v37 = 0;
      goto LABEL_14;
    }

    v15 = v14;
    v16 = objc_alloc_init(PDFScannerResultPrivate);
    v17 = v9->_private;
    v9->_private = v16;

    objc_storeStrong(&v9->_private->ddResult, a3);
    objc_storeWeak(&v9->_private->page, v8);
    v18 = v9->_private;
    [v15 boundsForPage:v8];
    v18->bounds.origin.x = v19;
    v18->bounds.origin.y = v20;
    v18->bounds.size.width = v21;
    v18->bounds.size.height = v22;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = v9->_private;
    rects = v24->rects;
    v24->rects = v23;

    v39 = v15;
    v26 = [v15 selectionsByLine];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(v26);
          }

          [*(*(&v40 + 1) + 8 * v30) boundsForPage:v8];
          v31 = v9->_private->rects;
          v32 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:?];
          [(NSArray *)v31 addObject:v32];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v28);
    }

    v33 = [v8 document];
    v34 = [v33 documentAttributes];
    v35 = [v34 objectForKey:@"CreationDate"];

    [(DDScannerResult *)v9->_private->ddResult coreResult];
    v36 = [MEMORY[0x1E695DFE8] localTimeZone];
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

- (void)setHighlightRef:(__DDHighlight *)a3
{
  highlightRef = self->_private->highlightRef;
  if (highlightRef != a3)
  {
    if (highlightRef)
    {
      CFRelease(highlightRef);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_private->highlightRef = a3;
  }
}

- (double)displayScaleOnPageLayer:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 geometryInterface];
    [v5 targetBackingScaleFactor];
    BackingScaleFactor = v6;
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    [v5 convertRectToRootView:v4 fromPageLayer:{PDFRectMake(v8, v9, 1.0, 1.0)}];
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

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
    v9 = [WeakRetained view];
    v10 = [v7 document];
    v11 = [v9 pageViewForPageAtIndex:{objc_msgSend(v10, "indexForPage:", v7)}];
    v12 = [v11 layer];

    v13 = [(PDFScannerResult *)self containsPoint:v12 onPageLayer:x, y];
  }

  return v13;
}

- (BOOL)containsPoint:(CGPoint)a3 onPageLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v7 && self->_private->highlightRef)
  {
    v10 = [v7 geometryInterface];
    v11.n128_u64[0] = 0;
    v12.n128_u64[0] = 0;
    [v10 convertRectToRootView:v8 fromPageLayer:{PDFRectMake(v11, v12, 1.0, 1.0)}];
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

- (BOOL)pointIsOnButton:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
    v9 = [WeakRetained view];
    v10 = [v7 document];
    v11 = [v9 pageViewForPageAtIndex:{objc_msgSend(v10, "indexForPage:", v7)}];
    v12 = [v11 layer];

    v13 = [(PDFScannerResult *)self pointIsOnButton:v12 onPageLayer:x, y];
  }

  return v13;
}

- (BOOL)pointIsOnButton:(CGPoint)a3 onPageLayer:(id)a4
{
  if (a4)
  {
    if (self->_private->highlightRef)
    {
      y = a3.y;
      x = a3.x;
      v7 = a4;
      v8 = [v7 geometryInterface];
      v9.n128_u64[0] = 0;
      v10.n128_u64[0] = 0;
      [v8 convertRectToRootView:v7 fromPageLayer:{PDFRectMake(v9, v10, 1.0, 1.0)}];
      v12 = v11;

      [(PDFScannerResult *)self displayScaleOnPageLayer:v7];
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

- (void)setButtonPressed:(BOOL)a3
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