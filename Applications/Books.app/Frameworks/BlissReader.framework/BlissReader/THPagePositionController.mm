@interface THPagePositionController
+ (CGSize)fixedPageSizeForLandscapeOrientation:(BOOL)a3;
+ (id)flowPositionerWithDelegate:(id)a3;
+ (id)paginatedPositionerWithDelegate:(id)a3;
- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3;
- (CGPoint)sectionOriginWithPrecedingSectionSizes:(id)a3;
- (CGRect)offsetRect:(CGRect)a3 inPagingDirectionWithOffset:(CGPoint)a4;
- (CGRect)pageRectForRelativePageIndex:(unint64_t)a3;
- (CGSize)canvasSizeForPageCount:(unint64_t)a3;
- (CGSize)offsetSize:(CGSize)a3 inPagingDirectionWithOffset:(CGSize)a4;
- (CGSize)p_sequentialPageSizeOffsetFromPageSize:(CGSize)a3;
- (CGSize)pageSize;
- (CGSize)pageSizeWithZeroInPagingDirection;
- (CGSize)sequentialSizeFromPageSizes:(id)a3;
- (THPagePositionController)initWithDelegate:(id)a3 enablePaging:(BOOL)a4 pageHorizontally:(BOOL)a5;
- (_NSRange)visibleRelativePageIndexRangeForRect:(CGRect)a3 withPadding:(BOOL)a4 pageCount:(unint64_t)a5;
- (unint64_t)mostVisibleRelativePageIndexForCanvasBoundsRect:(CGRect)a3;
- (unint64_t)relativePageIndexFromCanvasPoint:(CGPoint)a3;
- (void)arrangeLayouts:(id)a3;
@end

@implementation THPagePositionController

- (THPagePositionController)initWithDelegate:(id)a3 enablePaging:(BOOL)a4 pageHorizontally:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = THPagePositionController;
  result = [(THPagePositionController *)&v9 init];
  if (result)
  {
    result->mDelegate = a3;
    result->mShouldEnablePaging = a4;
    result->mPageHorizontally = a5;
  }

  return result;
}

+ (CGSize)fixedPageSizeForLandscapeOrientation:(BOOL)a3
{
  v3 = 768.0;
  if (a3)
  {
    v3 = 1024.0;
  }

  v4 = 1004.0;
  if (a3)
  {
    v4 = 748.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)paginatedPositionerWithDelegate:(id)a3
{
  v3 = [[a1 alloc] initWithDelegate:a3 enablePaging:1 pageHorizontally:1];

  return v3;
}

+ (id)flowPositionerWithDelegate:(id)a3
{
  v3 = [[a1 alloc] initWithDelegate:a3 enablePaging:0 pageHorizontally:0];

  return v3;
}

- (CGSize)pageSize
{
  [(THPagePositionControllerDelegate *)self->mDelegate pageSizeForPagePositionController:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)relativePageIndexFromCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(THPagePositionController *)self pageSize];
  v7 = v6;
  v9 = v8;
  v10 = [(THPagePositionController *)self pageHorizontally];
  if (v10)
  {
    v11 = x;
  }

  else
  {
    v11 = y;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  return (v11 / v12);
}

- (CGSize)canvasSizeForPageCount:(unint64_t)a3
{
  [(THPagePositionController *)self pageSize];
  v6 = v5;
  v8 = v7;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = 1;
  }

  v9 = [(THPagePositionController *)self pageHorizontally];
  v10 = v8 * a3;
  v11 = v6 * a3;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v11 = v6;
  }

  result.height = v10;
  result.width = v11;
  return result;
}

- (_NSRange)visibleRelativePageIndexRangeForRect:(CGRect)a3 withPadding:(BOOL)a4 pageCount:(unint64_t)a5
{
  if (a3.size.height <= 0.0)
  {
    v19 = NSInvalidRange[0];
    v18 = NSInvalidRange[1];
  }

  else
  {
    v6 = a4;
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(THPagePositionController *)self pageSize];
    v13 = v12;
    v15 = v14;
    if ([(THPagePositionController *)self pageHorizontally])
    {
      v16 = x / v13;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v17 = CGRectGetMaxX(v25) / v13;
    }

    else
    {
      v16 = y / v15;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = CGRectGetMaxY(v26) / v15;
    }

    v20 = v16 - 1;
    if (!v16)
    {
      v20 = 0;
    }

    v21 = v17 + v6;
    if (v6)
    {
      v19 = v20;
    }

    else
    {
      v19 = v16;
    }

    if (v21 + 1 < v19)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v22 = a5 - 1;
    if (v21 < a5 - 1)
    {
      v22 = v21;
    }

    v18 = (v22 - v19 + 1);
  }

  v23 = v19;
  result.length = v18;
  result.location = v23;
  return result;
}

- (unint64_t)mostVisibleRelativePageIndexForCanvasBoundsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  return [(THPagePositionController *)self relativePageIndexFromCanvasPoint:MidX, MidY];
}

- (CGRect)pageRectForRelativePageIndex:(unint64_t)a3
{
  [(THPagePositionController *)self pageOriginForRelativePageIndex:a3];
  v5 = v4;
  v7 = v6;
  [(THPagePositionController *)self pageSize];
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v13 = v7;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3
{
  [(THPagePositionController *)self pageSize];
  v6 = v5;
  v8 = v7;
  v9 = [(THPagePositionController *)self pageHorizontally];
  if (v9)
  {
    v10 = v6 * a3;
  }

  else
  {
    v10 = 0.0;
  }

  if (v9)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8 * a3;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)pageSizeWithZeroInPagingDirection
{
  v3 = [(THPagePositionController *)self pageHorizontally];
  [(THPagePositionController *)self pageSize];
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v5 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGPoint)sectionOriginWithPrecedingSectionSizes:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v19 + 1) + 8 * v10) CGSizeValue];
        v12 = v11;
        v14 = v13;
        v15 = [(THPagePositionController *)self pageHorizontally];
        v16 = x + v12;
        if (v15)
        {
          x = x + v12;
        }

        else
        {
          y = y + v14;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:{16, v16}];
    }

    while (v8);
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGSize)p_sequentialPageSizeOffsetFromPageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(THPagePositionController *)self pageHorizontally];
  v6 = 0.0;
  if (v5)
  {
    v7 = width;
  }

  else
  {
    v7 = 0.0;
  }

  if (!v5)
  {
    v6 = height;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (void)arrangeLayouts:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        memset(&v16, 0, sizeof(v16));
        CGAffineTransformMakeTranslation(&v16, width, height);
        v12 = [objc_msgSend(v11 "geometry")];
        v15 = v16;
        [v12 setTransform:&v15];
        [v11 setGeometry:v12];
        [v12 size];
        [(THPagePositionController *)self p_sequentialPageSizeOffsetFromPageSize:?];
        TSDAddSizes();
        width = v13;
        height = v14;

        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (CGSize)sequentialSizeFromPageSizes:(id)a3
{
  [(THPagePositionController *)self pageSizeWithZeroInPagingDirection];
  v6 = v5;
  v8 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v17 + 1) + 8 * v12) CGSizeValue];
        [(THPagePositionController *)self p_sequentialPageSizeOffsetFromPageSize:?];
        TSDAddSizes();
        v6 = v13;
        v8 = v14;
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = v6;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGRect)offsetRect:(CGRect)a3 inPagingDirectionWithOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v10 = [(THPagePositionController *)self pageHorizontally];
  v11 = v9 + x;
  v12 = v8 + y;
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v11 = v9;
  }

  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)offsetSize:(CGSize)a3 inPagingDirectionWithOffset:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v8 = [(THPagePositionController *)self pageHorizontally];
  v9 = v7 + width;
  v10 = v6 + height;
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v9 = v7;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

@end