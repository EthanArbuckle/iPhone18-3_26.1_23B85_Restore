@interface THFlowSectionController
- (CGRect)firstLineCacheRect;
- (CGSize)sectionSizeForContentNode:(id)node;
- (NSArray)sortedPageControllers;
- (THFlowSectionController)initWithDelegate:(id)delegate pagePositionController:(id)controller presentationType:(id)type;
- (_NSRange)firstLineCacheRange;
- (_NSRange)firstLineInRect:(CGRect)rect forBodyAnchor:(id)anchor;
- (id)bodyAnchorForCanvasRect:(CGRect)rect;
- (id)infosToDisplayForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load;
- (id)infosToDisplayOnlyForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load;
- (id)layoutAnchorForContentOffset:(CGPoint)offset;
- (id)newPageControllerForContentNode:(id)node;
- (id)newSectionInfoForContentNode:(id)node;
- (id)pageControllerForContentOffset:(CGPoint)offset;
- (void)layoutContentAtLayoutAnchor:(id)anchor padAbove:(double)above padBelow:(double)below layoutController:(id)controller;
- (void)layoutContentFromBottom:(double)bottom layoutController:(id)controller;
- (void)p_preparePageControllerForLayout:(id)layout layoutController:(id)controller;
@end

@implementation THFlowSectionController

- (THFlowSectionController)initWithDelegate:(id)delegate pagePositionController:(id)controller presentationType:(id)type
{
  v7.receiver = self;
  v7.super_class = THFlowSectionController;
  result = [(THSectionController *)&v7 initWithDelegate:delegate pagePositionController:controller presentationType:type];
  if (result)
  {
    result->_firstLineCacheRange = *NSInvalidRange;
    size = CGRectZero.size;
    result->_firstLineCacheRect.origin = CGRectZero.origin;
    result->_firstLineCacheRect.size = size;
  }

  return result;
}

- (id)infosToDisplayForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load
{
  v5 = [(TSUPointerKeyDictionary *)self->super.mSectionInfos allValues:range.location];
  contentNodes = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_11C52C;
  v8[3] = &unk_45BBC0;
  v8[4] = contentNodes;
  return [v5 sortedArrayUsingComparator:v8];
}

- (id)infosToDisplayOnlyForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load
{
  length = range.length;
  location = range.location;
  load = [(THFlowSectionController *)self infosToDisplayForRelativePageRange:range.location forceLoad:range.length, load];
  v7 = +[NSMutableArray array];
  if (location < location + length)
  {
    do
    {
      if (location >= [load count])
      {
        break;
      }

      [v7 addObject:{objc_msgSend(load, "objectAtIndexedSubscript:", location++)}];
      --length;
    }

    while (length);
  }

  return v7;
}

- (id)bodyAnchorForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (id)layoutAnchorForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (void)layoutContentAtLayoutAnchor:(id)anchor padAbove:(double)above padBelow:(double)below layoutController:(id)controller
{
  belowCopy = below;
  aboveCopy = above;
  if (anchor)
  {
    sortedPageControllers = [(THFlowSectionController *)self sortedPageControllers];
    v10 = -[NSArray indexOfObjectIdenticalTo:](sortedPageControllers, "indexOfObjectIdenticalTo:", [anchor pageController]);
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
      -[THFlowSectionController p_preparePageControllerForLayout:layoutController:](self, "p_preparePageControllerForLayout:layoutController:", [anchor pageController], controller);
      [objc_msgSend(anchor "pageController")];
      if (v14)
      {
        v15 = aboveCopy;
        if (aboveCopy > 0.0)
        {
          v16 = v14 - 1;
          do
          {
            v17 = [(NSArray *)sortedPageControllers objectAtIndex:v16, v15];
            [(THFlowSectionController *)self p_preparePageControllerForLayout:v17 layoutController:controller];
            [v17 layoutContentFromBottom:&aboveCopy];
            if (v16-- == 0)
            {
              break;
            }

            v15 = aboveCopy;
          }

          while (aboveCopy > 0.0);
        }
      }

      v19 = [(NSArray *)sortedPageControllers count];
      if ((v14 + 1) < v19)
      {
        v20 = belowCopy;
        if (belowCopy > 0.0)
        {
          v21 = v19;
          v22 = v14 + 2;
          do
          {
            v23 = [(NSArray *)sortedPageControllers objectAtIndex:v22 - 1, v20];
            [(THFlowSectionController *)self p_preparePageControllerForLayout:v23 layoutController:controller];
            [v23 layoutContentFromTop:&belowCopy];
            if (v22 >= v21)
            {
              break;
            }

            v20 = belowCopy;
            ++v22;
          }

          while (belowCopy > 0.0);
        }
      }
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }
}

- (void)layoutContentFromBottom:(double)bottom layoutController:(id)controller
{
  bottomCopy = bottom;
  sortedPageControllers = [(THFlowSectionController *)self sortedPageControllers];
  v8 = [(NSArray *)sortedPageControllers count];
  if (v8 && bottom > 0.0)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [(NSArray *)sortedPageControllers objectAtIndex:v9];
      [(THFlowSectionController *)self p_preparePageControllerForLayout:v10 layoutController:controller];
      [v10 layoutContentFromBottom:&bottomCopy];
      v11 = v9-- != 0;
    }

    while (v11 && bottomCopy > 0.0);
  }
}

- (_NSRange)firstLineInRect:(CGRect)rect forBodyAnchor:(id)anchor
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(THFlowSectionController *)self firstLineCacheRect];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectEqualToRect(v24, v27) || ((v10 = [(THFlowSectionController *)self firstLineCacheRange], v10 == NSInvalidRange[0]) ? (v12 = v11 == NSInvalidRange[1]) : (v12 = 0), v12))
  {
    v13 = -[TSUPointerKeyDictionary objectForKey:](self->super.mPageControllers, "objectForKey:", [anchor contentNode]);
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
    v18 = [v13 firstLineInRect:objc_msgSend(anchor fromCharIndex:{"range"), v16, v17, v14, v15}];
    [(THFlowSectionController *)self setFirstLineCacheRange:v18, v19];
    [(THFlowSectionController *)self setFirstLineCacheRect:x, y, width, height];
  }

  firstLineCacheRange = [(THFlowSectionController *)self firstLineCacheRange];
  result.length = v21;
  result.location = firstLineCacheRange;
  return result;
}

- (id)newPageControllerForContentNode:(id)node
{
  v5 = [(THSectionControllerDelegate *)[(THSectionController *)self delegate] flowLayoutObserverForSectionController:self];
  v6 = [THFlowPageController alloc];
  presentationType = [(THSectionController *)self presentationType];

  return [(THFlowPageController *)v6 initWithDelegate:self layoutObserver:v5 contentNode:node presentationType:presentationType];
}

- (id)newSectionInfoForContentNode:(id)node
{
  v4 = objc_alloc_init(THFlowSectionInfo);
  [(THFlowSectionInfo *)v4 setPresentationType:[(THSectionController *)self presentationType]];
  return v4;
}

- (CGSize)sectionSizeForContentNode:(id)node
{
  v3 = [(TSUPointerKeyDictionary *)self->super.mPageControllers objectForKey:node];

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
  contentNodes = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v5 = [(NSArray *)contentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(contentNodes);
        }

        [(NSArray *)v3 addObject:[(TSUPointerKeyDictionary *)self->super.mPageControllers objectForKey:*(*(&v10 + 1) + 8 * v8)]];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)contentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)pageControllerForContentOffset:(CGPoint)offset
{
  y = offset.y;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentNodes = [(THNavigationUnit *)self->super.mCurrentNavigationUnit contentNodes];
  v6 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      objc_enumerationMutation(contentNodes);
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
      v7 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return v10;
    }
  }
}

- (void)p_preparePageControllerForLayout:(id)layout layoutController:(id)controller
{
  [layout prepareForLayout];
  v7 = -[TSUPointerKeyDictionary objectForKey:](self->super.mSectionInfos, "objectForKey:", [layout contentNode]);
  objc_opt_class();
  [controller layoutForInfo:v7];
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