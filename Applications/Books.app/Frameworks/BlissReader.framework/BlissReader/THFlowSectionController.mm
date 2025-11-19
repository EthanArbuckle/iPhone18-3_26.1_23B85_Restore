@interface THFlowSectionController
- (CGRect)firstLineCacheRect;
- (CGSize)sectionSizeForContentNode:(id)a3;
- (NSArray)sortedPageControllers;
- (THFlowSectionController)initWithDelegate:(id)a3 pagePositionController:(id)a4 presentationType:(id)a5;
- (_NSRange)firstLineCacheRange;
- (_NSRange)firstLineInRect:(CGRect)a3 forBodyAnchor:(id)a4;
- (id)bodyAnchorForCanvasRect:(CGRect)a3;
- (id)infosToDisplayForRelativePageRange:(_NSRange)a3 forceLoad:(BOOL)a4;
- (id)infosToDisplayOnlyForRelativePageRange:(_NSRange)a3 forceLoad:(BOOL)a4;
- (id)layoutAnchorForContentOffset:(CGPoint)a3;
- (id)newPageControllerForContentNode:(id)a3;
- (id)newSectionInfoForContentNode:(id)a3;
- (id)pageControllerForContentOffset:(CGPoint)a3;
- (void)layoutContentAtLayoutAnchor:(id)a3 padAbove:(double)a4 padBelow:(double)a5 layoutController:(id)a6;
- (void)layoutContentFromBottom:(double)a3 layoutController:(id)a4;
- (void)p_preparePageControllerForLayout:(id)a3 layoutController:(id)a4;
@end

@implementation THFlowSectionController

- (THFlowSectionController)initWithDelegate:(id)a3 pagePositionController:(id)a4 presentationType:(id)a5
{
  v7.receiver = self;
  v7.super_class = THFlowSectionController;
  result = [(THSectionController *)&v7 initWithDelegate:a3 pagePositionController:a4 presentationType:a5];
  if (result)
  {
    result->_firstLineCacheRange = *NSInvalidRange;
    size = CGRectZero.size;
    result->_firstLineCacheRect.origin = CGRectZero.origin;
    result->_firstLineCacheRect.size = size;
  }

  return result;
}

- (id)infosToDisplayForRelativePageRange:(_NSRange)a3 forceLoad:(BOOL)a4
{
  v5 = [(TSUPointerKeyDictionary *)self->super.mSectionInfos allValues:a3.location];
  v6 = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_11C52C;
  v8[3] = &unk_45BBC0;
  v8[4] = v6;
  return [v5 sortedArrayUsingComparator:v8];
}

- (id)infosToDisplayOnlyForRelativePageRange:(_NSRange)a3 forceLoad:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  v6 = [(THFlowSectionController *)self infosToDisplayForRelativePageRange:a3.location forceLoad:a3.length, a4];
  v7 = +[NSMutableArray array];
  if (location < location + length)
  {
    do
    {
      if (location >= [v6 count])
      {
        break;
      }

      [v7 addObject:{objc_msgSend(v6, "objectAtIndexedSubscript:", location++)}];
      --length;
    }

    while (length);
  }

  return v7;
}

- (id)bodyAnchorForCanvasRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(THFlowSectionController *)self pageControllerForContentOffset:?];
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v7 i_rectForSectionLayout];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectIntersection(v10, v11);
  TSDSubtractPoints();

  return [v7 bodyAnchorForRect:1 onMissReturnClosestBody:?];
}

- (id)layoutAnchorForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(THFlowSectionController *)self pageControllerForContentOffset:?];
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = [[THFlowLayoutAnchor alloc] initWithPageController:v5 absoluteOffset:x, y];
  if (!v6)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v6;
}

- (void)layoutContentAtLayoutAnchor:(id)a3 padAbove:(double)a4 padBelow:(double)a5 layoutController:(id)a6
{
  v24 = a5;
  v25 = a4;
  if (a3)
  {
    v9 = [(THFlowSectionController *)self sortedPageControllers];
    v10 = -[NSArray indexOfObjectIdenticalTo:](v9, "indexOfObjectIdenticalTo:", [a3 pageController]);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"[THFlowSectionController layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowSectionController.mm"];

      [v11 handleFailureInFunction:v12 file:v13 lineNumber:121 description:@"layout anchor is from another navigation unit"];
    }

    else
    {
      v14 = v10;
      -[THFlowSectionController p_preparePageControllerForLayout:layoutController:](self, "p_preparePageControllerForLayout:layoutController:", [a3 pageController], a6);
      [objc_msgSend(a3 "pageController")];
      if (v14)
      {
        v15 = v25;
        if (v25 > 0.0)
        {
          v16 = v14 - 1;
          do
          {
            v17 = [(NSArray *)v9 objectAtIndex:v16, v15];
            [(THFlowSectionController *)self p_preparePageControllerForLayout:v17 layoutController:a6];
            [v17 layoutContentFromBottom:&v25];
            if (v16-- == 0)
            {
              break;
            }

            v15 = v25;
          }

          while (v25 > 0.0);
        }
      }

      v19 = [(NSArray *)v9 count];
      if ((v14 + 1) < v19)
      {
        v20 = v24;
        if (v24 > 0.0)
        {
          v21 = v19;
          v22 = v14 + 2;
          do
          {
            v23 = [(NSArray *)v9 objectAtIndex:v22 - 1, v20];
            [(THFlowSectionController *)self p_preparePageControllerForLayout:v23 layoutController:a6];
            [v23 layoutContentFromTop:&v24];
            if (v22 >= v21)
            {
              break;
            }

            v20 = v24;
            ++v22;
          }

          while (v24 > 0.0);
        }
      }
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }
}

- (void)layoutContentFromBottom:(double)a3 layoutController:(id)a4
{
  v12 = a3;
  v7 = [(THFlowSectionController *)self sortedPageControllers];
  v8 = [(NSArray *)v7 count];
  if (v8 && a3 > 0.0)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [(NSArray *)v7 objectAtIndex:v9];
      [(THFlowSectionController *)self p_preparePageControllerForLayout:v10 layoutController:a4];
      [v10 layoutContentFromBottom:&v12];
      v11 = v9-- != 0;
    }

    while (v11 && v12 > 0.0);
  }
}

- (_NSRange)firstLineInRect:(CGRect)a3 forBodyAnchor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(THFlowSectionController *)self firstLineCacheRect];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectEqualToRect(v24, v27) || ((v10 = [(THFlowSectionController *)self firstLineCacheRange], v10 == NSInvalidRange[0]) ? (v12 = v11 == NSInvalidRange[1]) : (v12 = 0), v12))
  {
    v13 = -[TSUPointerKeyDictionary objectForKey:](self->super.mPageControllers, "objectForKey:", [a4 contentNode]);
    if (!v13)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [v13 i_rectForSectionLayout];
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v26 = CGRectIntersection(v25, v28);
    v14 = v26.size.width;
    v15 = v26.size.height;
    TSDSubtractPoints();
    v18 = [v13 firstLineInRect:objc_msgSend(a4 fromCharIndex:{"range"), v16, v17, v14, v15}];
    [(THFlowSectionController *)self setFirstLineCacheRange:v18, v19];
    [(THFlowSectionController *)self setFirstLineCacheRect:x, y, width, height];
  }

  v20 = [(THFlowSectionController *)self firstLineCacheRange];
  result.length = v21;
  result.location = v20;
  return result;
}

- (id)newPageControllerForContentNode:(id)a3
{
  v5 = [(THSectionControllerDelegate *)[(THSectionController *)self delegate] flowLayoutObserverForSectionController:self];
  v6 = [THFlowPageController alloc];
  v7 = [(THSectionController *)self presentationType];

  return [(THFlowPageController *)v6 initWithDelegate:self layoutObserver:v5 contentNode:a3 presentationType:v7];
}

- (id)newSectionInfoForContentNode:(id)a3
{
  v4 = objc_alloc_init(THFlowSectionInfo);
  [(THFlowSectionInfo *)v4 setPresentationType:[(THSectionController *)self presentationType]];
  return v4;
}

- (CGSize)sectionSizeForContentNode:(id)a3
{
  v3 = [(TSUPointerKeyDictionary *)self->super.mPageControllers objectForKey:a3];

  [v3 desiredPageSizeForRelativePageIndex:0];
  result.height = v5;
  result.width = v4;
  return result;
}

- (NSArray)sortedPageControllers
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSArray *)v3 addObject:[(TSUPointerKeyDictionary *)self->super.mPageControllers objectForKey:*(*(&v10 + 1) + 8 * v8)]];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)pageControllerForContentOffset:(CGPoint)a3
{
  y = a3.y;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v17;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v17 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = [(TSUPointerKeyDictionary *)self->super.mPageControllers objectForKey:*(*(&v16 + 1) + 8 * v9)];
    [v10 i_rectForSectionLayout];
    x = v21.origin.x;
    v12 = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    if (y >= CGRectGetMinY(v21))
    {
      v22.origin.x = x;
      v22.origin.y = v12;
      v22.size.width = width;
      v22.size.height = height;
      if (y < CGRectGetMaxY(v22))
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return v10;
    }
  }
}

- (void)p_preparePageControllerForLayout:(id)a3 layoutController:(id)a4
{
  [a3 prepareForLayout];
  v7 = -[TSUPointerKeyDictionary objectForKey:](self->super.mSectionInfos, "objectForKey:", [a3 contentNode]);
  objc_opt_class();
  [a4 layoutForInfo:v7];
  v8 = TSUDynamicCast();
  if (!v8)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v8 ensurePageLayoutCreated];
}

- (_NSRange)firstLineCacheRange
{
  p_firstLineCacheRange = &self->_firstLineCacheRange;
  location = self->_firstLineCacheRange.location;
  length = p_firstLineCacheRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)firstLineCacheRect
{
  x = self->_firstLineCacheRect.origin.x;
  y = self->_firstLineCacheRect.origin.y;
  width = self->_firstLineCacheRect.size.width;
  height = self->_firstLineCacheRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end