@interface THPagePositionController
+ (CGSize)fixedPageSizeForLandscapeOrientation:(BOOL)orientation;
+ (id)flowPositionerWithDelegate:(id)delegate;
+ (id)paginatedPositionerWithDelegate:(id)delegate;
- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)index;
- (CGPoint)sectionOriginWithPrecedingSectionSizes:(id)sizes;
- (CGRect)offsetRect:(CGRect)rect inPagingDirectionWithOffset:(CGPoint)offset;
- (CGRect)pageRectForRelativePageIndex:(unint64_t)index;
- (CGSize)canvasSizeForPageCount:(unint64_t)count;
- (CGSize)offsetSize:(CGSize)size inPagingDirectionWithOffset:(CGSize)offset;
- (CGSize)p_sequentialPageSizeOffsetFromPageSize:(CGSize)size;
- (CGSize)pageSize;
- (CGSize)pageSizeWithZeroInPagingDirection;
- (CGSize)sequentialSizeFromPageSizes:(id)sizes;
- (THPagePositionController)initWithDelegate:(id)delegate enablePaging:(BOOL)paging pageHorizontally:(BOOL)horizontally;
- (_NSRange)visibleRelativePageIndexRangeForRect:(CGRect)rect withPadding:(BOOL)padding pageCount:(unint64_t)count;
- (unint64_t)mostVisibleRelativePageIndexForCanvasBoundsRect:(CGRect)rect;
- (unint64_t)relativePageIndexFromCanvasPoint:(CGPoint)point;
- (void)arrangeLayouts:(id)layouts;
@end

@implementation THPagePositionController

- (THPagePositionController)initWithDelegate:(id)delegate enablePaging:(BOOL)paging pageHorizontally:(BOOL)horizontally
{
  v9.receiver = self;
  v9.super_class = THPagePositionController;
  result = [(THPagePositionController *)&v9 init];
  if (result)
  {
    result->mDelegate = delegate;
    result->mShouldEnablePaging = paging;
    result->mPageHorizontally = horizontally;
  }

  return result;
}

+ (CGSize)fixedPageSizeForLandscapeOrientation:(BOOL)orientation
{
  v3 = 768.0;
  if (orientation)
  {
    v3 = 1024.0;
  }

  v4 = 1004.0;
  if (orientation)
  {
    v4 = 748.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)paginatedPositionerWithDelegate:(id)delegate
{
  v3 = [[self alloc] initWithDelegate:delegate enablePaging:1 pageHorizontally:1];

  return v3;
}

+ (id)flowPositionerWithDelegate:(id)delegate
{
  v3 = [[self alloc] initWithDelegate:delegate enablePaging:0 pageHorizontally:0];

  return v3;
}

- (CGSize)pageSize
{
  [(THPagePositionControllerDelegate *)self->mDelegate pageSizeForPagePositionController:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)relativePageIndexFromCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(THPagePositionController *)self pageSize];
  v7 = v6;
  v9 = v8;
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  if (pageHorizontally)
  {
    v11 = x;
  }

  else
  {
    v11 = y;
  }

  if (pageHorizontally)
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

- (CGSize)canvasSizeForPageCount:(unint64_t)count
{
  [(THPagePositionController *)self pageSize];
  v6 = v5;
  v8 = v7;
  if (count == 0x7FFFFFFFFFFFFFFFLL)
  {
    count = 1;
  }

  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  v10 = v8 * count;
  v11 = v6 * count;
  if (pageHorizontally)
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

- (_NSRange)visibleRelativePageIndexRangeForRect:(CGRect)rect withPadding:(BOOL)padding pageCount:(unint64_t)count
{
  if (rect.size.height <= 0.0)
  {
    v19 = NSInvalidRange[0];
    v18 = NSInvalidRange[1];
  }

  else
  {
    paddingCopy = padding;
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
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

    v21 = v17 + paddingCopy;
    if (paddingCopy)
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

    v22 = count - 1;
    if (v21 < count - 1)
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

- (unint64_t)mostVisibleRelativePageIndexForCanvasBoundsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  return [(THPagePositionController *)self relativePageIndexFromCanvasPoint:MidX, MidY];
}

- (CGRect)pageRectForRelativePageIndex:(unint64_t)index
{
  [(THPagePositionController *)self pageOriginForRelativePageIndex:index];
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

- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)index
{
  [(THPagePositionController *)self pageSize];
  v6 = v5;
  v8 = v7;
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  if (pageHorizontally)
  {
    v10 = v6 * index;
  }

  else
  {
    v10 = 0.0;
  }

  if (pageHorizontally)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8 * index;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)pageSizeWithZeroInPagingDirection
{
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  [(THPagePositionController *)self pageSize];
  if (pageHorizontally)
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

- (CGPoint)sectionOriginWithPrecedingSectionSizes:(id)sizes
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [sizes countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(sizes);
        }

        [*(*(&v19 + 1) + 8 * v10) CGSizeValue];
        v12 = v11;
        v14 = v13;
        pageHorizontally = [(THPagePositionController *)self pageHorizontally];
        v16 = x + v12;
        if (pageHorizontally)
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
      v8 = [sizes countByEnumeratingWithState:&v19 objects:v23 count:{16, v16}];
    }

    while (v8);
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGSize)p_sequentialPageSizeOffsetFromPageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  v6 = 0.0;
  if (pageHorizontally)
  {
    v7 = width;
  }

  else
  {
    v7 = 0.0;
  }

  if (!pageHorizontally)
  {
    v6 = height;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (void)arrangeLayouts:(id)layouts
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(layouts);
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
      v6 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (CGSize)sequentialSizeFromPageSizes:(id)sizes
{
  [(THPagePositionController *)self pageSizeWithZeroInPagingDirection];
  v6 = v5;
  v8 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [sizes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(sizes);
        }

        [*(*(&v17 + 1) + 8 * v12) CGSizeValue];
        [(THPagePositionController *)self p_sequentialPageSizeOffsetFromPageSize:?];
        TSDAddSizes();
        v6 = v13;
        v8 = v14;
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [sizes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = v6;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGRect)offsetRect:(CGRect)rect inPagingDirectionWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.y;
  v9 = rect.origin.x;
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  v11 = v9 + x;
  v12 = v8 + y;
  if (pageHorizontally)
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

- (CGSize)offsetSize:(CGSize)size inPagingDirectionWithOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  v6 = size.height;
  v7 = size.width;
  pageHorizontally = [(THPagePositionController *)self pageHorizontally];
  v9 = v7 + width;
  v10 = v6 + height;
  if (pageHorizontally)
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