@interface PDFCoachMarkManager
- (PDFCoachMarkManager)initWithPDFRenderingProperties:(id)properties;
- (id)_pageLayerForPage:(id)page;
- (void)_cleanCoachMarks;
- (void)createCoachMarkForPage:(id)page atFrame:(CGRect)frame;
- (void)pageLayerDidAppear:(id)appear;
- (void)pageLayerWillRemove:(id)remove;
@end

@implementation PDFCoachMarkManager

- (PDFCoachMarkManager)initWithPDFRenderingProperties:(id)properties
{
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = PDFCoachMarkManager;
  v5 = [(PDFCoachMarkManager *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFCoachMarkManagerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->renderingProperties, propertiesCopy);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v5->_private;
    coachMarks = v9->coachMarks;
    v9->coachMarks = v8;

    v11 = [[PDFTimer alloc] initWithThrottleDelay:sel__cleanCoachMarks forSelector:v5 forTarget:1.7];
    v12 = v5->_private;
    timer = v12->timer;
    v12->timer = v11;
  }

  return v5;
}

- (void)createCoachMarkForPage:(id)page atFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pageCopy = page;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsNull(v17))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (!CGRectIsInfinite(v18))
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      if (!CGRectIsEmpty(v19) && PDFRectValid(x, y, width, height))
      {
        height = [[PDFCoachMark alloc] initWithFrame:x, y, width, height];
        [(PDFTimer *)self->_private->timer update];
        v10 = [(PDFCoachMarkManager *)self _pageLayerForPage:pageCopy];
        if (v10)
        {
          [(PDFCoachMark *)height playEffect:v10];
        }

        else
        {
          document = [pageCopy document];
          v12 = [document indexForPage:pageCopy];

          coachMarks = self->_private->coachMarks;
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [(NSMutableDictionary *)coachMarks setObject:height forKey:v14];
        }
      }
    }
  }
}

- (void)pageLayerDidAppear:(id)appear
{
  appearCopy = appear;
  page = [appearCopy page];
  v5 = page;
  if (page)
  {
    document = [page document];
    v7 = [document indexForPage:v5];

    coachMarks = self->_private->coachMarks;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v10 = [(NSMutableDictionary *)coachMarks objectForKey:v9];

    if (v10)
    {
      [v10 effectTimeLeft];
      if (v11 >= 0.0)
      {
        [v10 playEffect:appearCopy];
      }

      v12 = self->_private->coachMarks;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];
    }
  }
}

- (void)pageLayerWillRemove:(id)remove
{
  page = [remove page];
  document = [page document];
  v5 = [document indexForPage:page];

  coachMarks = self->_private->coachMarks;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [(NSMutableDictionary *)coachMarks removeObjectForKey:v7];
}

- (void)_cleanCoachMarks
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_private->coachMarks;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_private->coachMarks objectForKey:v9, v12];
        [v10 effectTimeLeft];
        if (v11 < 0.0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_private->coachMarks removeObjectsForKeys:v3];
}

- (id)_pageLayerForPage:(id)page
{
  v3 = self->_private;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&v3->renderingProperties);
  document = [pageCopy document];
  v7 = [document indexForPage:pageCopy];

  pdfView = [WeakRetained pdfView];
  v9 = pdfView;
  if (pdfView)
  {
    v10 = [pdfView pageViewForPageAtIndex:v7];
    pageLayer = [v10 pageLayer];
  }

  else
  {
    pageLayer = 0;
  }

  return pageLayer;
}

@end