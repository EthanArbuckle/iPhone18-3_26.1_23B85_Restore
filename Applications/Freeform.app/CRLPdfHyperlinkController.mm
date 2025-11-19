@interface CRLPdfHyperlinkController
- (BOOL)ignoreUrl:(id)a3;
- (CGRect)taggingRect;
- (CRLPdfHyperlinkController)initWithTaggingRect:(CGRect)a3;
- (id)p_chopBezierIntoRects:(id)a3;
- (id)p_hyperlinkRegionsForRep:(id)a3;
- (id)p_taggingRectPath;
- (void)addHyperlinksForRep:(id)a3;
- (void)crl_commitHyperlinksToPDF:(CGContext *)a3 targetRect:(CGRect)a4;
- (void)p_combineSimilarElements:(id)a3;
@end

@implementation CRLPdfHyperlinkController

- (CRLPdfHyperlinkController)initWithTaggingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CRLPdfHyperlinkController;
  v7 = [(CRLPdfHyperlinkController *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(NSMutableArray);
    mHyperlinkRegions = v7->mHyperlinkRegions;
    v7->mHyperlinkRegions = v8;

    v7->mTaggingRect.origin.x = x;
    v7->mTaggingRect.origin.y = y;
    v7->mTaggingRect.size.width = width;
    v7->mTaggingRect.size.height = height;
  }

  return v7;
}

- (BOOL)ignoreUrl:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = v3 == 0;

  return v4;
}

- (CGRect)taggingRect
{
  x = self->mTaggingRect.origin.x;
  y = self->mTaggingRect.origin.y;
  width = self->mTaggingRect.size.width;
  height = self->mTaggingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)p_taggingRectPath
{
  if (CGRectIsNull(self->mTaggingRect))
  {
    v3 = 0;
  }

  else
  {
    v3 = [CRLBezierPath bezierPathWithRect:self->mTaggingRect.origin.x, self->mTaggingRect.origin.y, self->mTaggingRect.size.width, self->mTaggingRect.size.height];
  }

  return v3;
}

- (void)addHyperlinksForRep:(id)a3
{
  v4 = [(CRLPdfHyperlinkController *)self p_hyperlinkRegionsForRep:a3];
  if ([v4 count])
  {
    [(NSMutableArray *)self->mHyperlinkRegions addObjectsFromArray:v4];
  }
}

- (void)crl_commitHyperlinksToPDF:(CGContext *)a3 targetRect:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v32 = [(CRLPdfHyperlinkController *)self p_taggingRectPath:a4.origin.x];
  v9 = [(NSMutableArray *)self->mHyperlinkRegions count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v31 = v9;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [(NSMutableArray *)self->mHyperlinkRegions objectAtIndexedSubscript:v11];
      v14 = [v13 URL];
      if (v14 && ![(CRLPdfHyperlinkController *)self ignoreUrl:v14])
      {
        v15 = [v13 bezierPath];
        v16 = v15;
        v33 = v12;
        if (v32)
        {
          v17 = [v15 intersectBezierPath:?];

          v16 = v17;
        }

        v18 = [(CRLPdfHyperlinkController *)self p_chopBezierIntoRects:v16];
        [(CRLPdfHyperlinkController *)self p_combineSimilarElements:v18];
        v19 = [v18 count];
        if (v19)
        {
          v20 = v19;
          for (i = 0; i != v20; ++i)
          {
            v22 = [v18 objectAtIndex:i];
            [v22 CGRectValue];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v35.origin.x = v24 - x;
            v35.origin.y = height - (v26 - y) - v30;
            v35.size.width = v28;
            v35.size.height = v30;
            CGPDFContextSetURLForRect(a3, v14, v35);
          }
        }

        v10 = v31;
        v12 = v33;
      }

      objc_autoreleasePoolPop(v12);
      ++v11;
    }

    while (v11 != v10);
  }

  [(NSMutableArray *)self->mHyperlinkRegions removeAllObjects];
}

- (id)p_hyperlinkRegionsForRep:(id)a3
{
  v3 = a3;
  v4 = [v3 hyperlinkRegions];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) bezierPath];
        v10 = [v3 layout];
        v11 = v10;
        if (v10)
        {
          [v10 transformInRoot];
        }

        else
        {
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
        }

        [v9 transformUsingAffineTransform:&v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)p_chopBezierIntoRects:(id)a3
{
  v3 = a3;
  if ([v3 elementCount])
  {
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [NSMutableArray arrayWithCapacity:(v10 / 5.0)];
    v13 = 0.0;
    do
    {
      v14 = [CRLBezierPath bezierPathWithRect:v5, v7 + v13, v9, 5.0];
      v15 = [v3 intersectBezierPath:v14];
      if (([v15 isEmpty] & 1) == 0)
      {
        v16 = [v15 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:1];
        if ([v16 count])
        {
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = [v16 objectAtIndex:v17];
            if (([v19 isEmpty] & 1) == 0)
            {
              [v19 bounds];
              v20 = [NSValue valueWithCGRect:?];
              [v12 addObject:v20];
            }

            v17 = v18;
          }

          while ([v16 count] > v18++);
        }
      }

      v13 = v13 + 5.0;
    }

    while (v11 >= v13);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)p_combineSimilarElements:(id)a3
{
  v26 = a3;
  if (v26)
  {
    if ([v26 count])
    {
      v3 = [v26 count];
      v4 = v3 - 1;
      if (v3 != 1)
      {
        v25 = 0.000000999999997;
        do
        {
          v5 = [v26 objectAtIndex:{v4 - 1, *&v25}];
          [v5 CGRectValue];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v14 = [v26 objectAtIndex:v4];
          [v14 CGRectValue];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          if ((v7 == v16 || vabdd_f64(v7, v16) < fabs(v16 * v25)) && (v11 == v20 || vabdd_f64(v11, v20) < fabs(v20 * v25)))
          {
            v23 = v9 + v13;
            if (v9 + v13 == v18 || (v23 = vabdd_f64(v23, v18), v23 < fabs(v18 * v25)))
            {
              [v26 removeObjectAtIndex:{v4, v23}];
              v24 = [NSValue valueWithCGRect:v7, v9, v11, v13 + v22];
              [v26 replaceObjectAtIndex:v4 - 1 withObject:v24];
            }
          }

          --v4;
        }

        while (v4);
      }
    }
  }
}

@end