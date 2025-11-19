@interface PDFCoachMarkManager
- (PDFCoachMarkManager)initWithPDFRenderingProperties:(id)a3;
- (id)_pageLayerForPage:(id)a3;
- (void)_cleanCoachMarks;
- (void)createCoachMarkForPage:(id)a3 atFrame:(CGRect)a4;
- (void)pageLayerDidAppear:(id)a3;
- (void)pageLayerWillRemove:(id)a3;
@end

@implementation PDFCoachMarkManager

- (PDFCoachMarkManager)initWithPDFRenderingProperties:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PDFCoachMarkManager;
  v5 = [(PDFCoachMarkManager *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFCoachMarkManagerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->renderingProperties, v4);
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

- (void)createCoachMarkForPage:(id)a3 atFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
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
        v9 = [[PDFCoachMark alloc] initWithFrame:x, y, width, height];
        [(PDFTimer *)self->_private->timer update];
        v10 = [(PDFCoachMarkManager *)self _pageLayerForPage:v15];
        if (v10)
        {
          [(PDFCoachMark *)v9 playEffect:v10];
        }

        else
        {
          v11 = [v15 document];
          v12 = [v11 indexForPage:v15];

          coachMarks = self->_private->coachMarks;
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [(NSMutableDictionary *)coachMarks setObject:v9 forKey:v14];
        }
      }
    }
  }
}

- (void)pageLayerDidAppear:(id)a3
{
  v14 = a3;
  v4 = [v14 page];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 document];
    v7 = [v6 indexForPage:v5];

    coachMarks = self->_private->coachMarks;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v10 = [(NSMutableDictionary *)coachMarks objectForKey:v9];

    if (v10)
    {
      [v10 effectTimeLeft];
      if (v11 >= 0.0)
      {
        [v10 playEffect:v14];
      }

      v12 = self->_private->coachMarks;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];
    }
  }
}

- (void)pageLayerWillRemove:(id)a3
{
  v8 = [a3 page];
  v4 = [v8 document];
  v5 = [v4 indexForPage:v8];

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

- (id)_pageLayerForPage:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->renderingProperties);
  v6 = [v4 document];
  v7 = [v6 indexForPage:v4];

  v8 = [WeakRetained pdfView];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 pageViewForPageAtIndex:v7];
    v11 = [v10 pageLayer];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end