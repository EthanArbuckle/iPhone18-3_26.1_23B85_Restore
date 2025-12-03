@interface THSectionController
- (BOOL)allowsDescendersToClipForPageController:(id)controller;
- (BOOL)displaySinglePageChapterSeparatelyForPageController:(id)controller;
- (BOOL)isCompactFlowPresentationForPageController:(id)controller;
- (BOOL)isTwoUpForNavigationUnitForPageController:(id)controller;
- (BOOL)p_showingPagesInNodeContainingRelativePageIndex:(unint64_t)index;
- (BOOL)shouldAllowFinishingPartionedAttachmentLayoutForPageController:(id)controller;
- (BOOL)shouldEnablePaging;
- (BOOL)shouldScaleFlowLayoutsForPageController:(id)controller;
- (CGPoint)canvasOriginDelta;
- (CGPoint)canvasOriginDeltaForPageController:(id)controller;
- (CGPoint)canvasOriginForPageController:(id)controller;
- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)index;
- (CGPoint)sectionOriginForContentNode:(id)node;
- (CGRect)canvasRectForRelativePageIndex:(unint64_t)index;
- (CGRect)p_expandCanvasRectIfFlow:(CGRect)flow;
- (CGRect)rectForBodyAnchor:(id)anchor;
- (CGRect)rectForContentNode:(id)node layout:(id)layout;
- (CGRect)sectionRelativeCanvasRectForRelativePageIndex:(unint64_t)index;
- (CGSize)pageSize;
- (CGSize)preferredCanvasSize;
- (CGSize)sectionSizeForContentNode:(id)node;
- (NSArray)currentContentNodes;
- (THSectionController)initWithDelegate:(id)delegate pagePositionController:(id)controller presentationType:(id)type;
- (TSKSearchTargetProvider)searchTargetProvider;
- (_NSRange)firstLineInRect:(CGRect)rect forBodyAnchor:(id)anchor;
- (_NSRange)relativePageRangeForCanvasRect:(CGRect)rect pad:(int)pad;
- (id)accessControllerForPageController:(id)controller;
- (id)bodyAnchorForCanvasRect:(CGRect)rect;
- (id)bodyInfoForStorage:(id)storage anchoredCharIndex:(unint64_t)index;
- (id)bodyInfoForStorage:(id)storage charIndex:(unint64_t)index;
- (id)bodyStorageForPageController:(id)controller presentationType:(id)type;
- (id)displaySectionInfoForRelativePageIndex:(unint64_t)index;
- (id)infosToDisplayForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load;
- (id)layoutControllerForPageController:(id)controller;
- (id)newPageControllerForContentNode:(id)node;
- (id)p_contentNodeForBodyStorage:(id)storage forceLoad:(BOOL)load;
- (id)p_contentNodeForRelativePageIndex:(unint64_t)index;
- (id)pageControllerForContentNode:(id)node;
- (id)pageInfoForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller;
- (id)pageInfoForCenterOfVisibleRectInInteractiveCanvasController:(id)controller;
- (id)pageInfoForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (id)pageInfoForPageController:(id)controller pageIndex:(unint64_t)index presentationType:(id)type;
- (id)pageInfoForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)_navigationUnitRelativePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)_navigationUnitRelativePageIndexForCenterOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)_navigationUnitRelativePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)_navigationUnitRelativePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)absolutePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)absolutePageIndexForBodyStorageAnchor:(id)anchor;
- (unint64_t)absolutePageIndexForCenterOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller;
- (unint64_t)mostVisibleAbsolutePageIndexForCanvasBoundsRect:(CGRect)rect;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)index forString:(id)string options:(unint64_t)options inDirection:(unint64_t)direction;
- (unint64_t)p_relativeSheetIndexFromCanvasPoint:(CGPoint)point;
- (unint64_t)pageCount;
- (unint64_t)pageCountForNavigationUnitForPageController:(id)controller;
- (unint64_t)pageCountForPageController:(id)controller presentationType:(id)type;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index;
- (unint64_t)relativePageIndexForBodyStorage:(id)storage charIndex:(unint64_t)index forceLoad:(BOOL)load;
- (unint64_t)relativePageIndexForBodyStorageAnchor:(id)anchor;
- (unint64_t)relativePageIndexForContentNode:(id)node;
- (unint64_t)relativePageIndexForStorageAnchor:(id)anchor;
- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)index;
- (void)clearCTCaches;
- (void)dealloc;
- (void)ensureSectionInfosLaidOut:(id)out layoutController:(id)controller;
- (void)layoutContentAtLayoutAnchor:(id)anchor padAbove:(double)above padBelow:(double)below layoutController:(id)controller;
- (void)layoutContentFromBottom:(double)bottom layoutController:(id)controller;
- (void)p_addPagesInRange:(_NSRange)range forceLoad:(BOOL)load;
- (void)p_clearDataForUnusedContentNodes;
- (void)p_ensureDataForContentNodes;
- (void)p_ensureLayoutThroughRect:(CGRect)rect pad:(int)pad withLayoutController:(id)controller;
- (void)p_ensureLayoutThroughRelativePageRange:(_NSRange)range withLayoutController:(id)controller;
- (void)p_enumerateRelativePageRange:(_NSRange)range acrossContentNodesUsingBlock:(id)block;
- (void)p_updateSectionInfosForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load;
- (void)pageControllerNeedsLayout:(id)layout;
- (void)setCurrentNavigationUnit:(id)unit;
- (void)setPresentationType:(id)type;
- (void)teardown;
- (void)withRootSearchTargetAtIndex:(unint64_t)index executeBlock:(id)block;
@end

@implementation THSectionController

- (THSectionController)initWithDelegate:(id)delegate pagePositionController:(id)controller presentationType:(id)type
{
  v10.receiver = self;
  v10.super_class = THSectionController;
  v8 = [(THSectionController *)&v10 init];
  if (v8)
  {
    [(THSectionController *)v8 setPageControllers:+[TSUPointerKeyDictionary dictionary]];
    [(THSectionController *)v8 setSectionInfos:+[TSUPointerKeyDictionary dictionary]];
    [(THSectionController *)v8 setDelegate:delegate];
    v8->_presentationType = [type copy];
    [(THSectionController *)v8 setPagePositionController:controller];
    [(THSectionController *)v8 setCanvasOriginDelta:CGPointZero.x, CGPointZero.y];
  }

  return v8;
}

- (void)teardown
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) setPageController:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(THSectionController *)self setCurrentNavigationUnit:0];
  [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] removeAllObjects];
  [(THSectionController *)self setPageControllers:0];
  [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] removeAllObjects];
  [(THSectionController *)self setSectionInfos:0];
  [(THSectionController *)self setPresentationType:0];
  [(THSectionController *)self setDelegate:0];
  [(THSectionController *)self setPagePositionController:0];
  [(THSectionController *)self setSearchTargetProvider:0];
}

- (void)dealloc
{
  [(THSectionController *)self teardown];
  if ([(THSectionController *)self pageControllers])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THSectionController *)self pagePositionController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THSectionController *)self presentationType])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THSectionController *)self delegate])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THSectionController *)self sectionInfos])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_searchTargetProvider)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THSectionController;
  [(THSectionController *)&v3 dealloc];
}

- (unint64_t)pageCount
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v4 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(currentContentNodes);
      }

      v6 += [*(*(&v10 + 1) + 8 * i) pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
    }

    v5 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v6;
}

- (void)p_enumerateRelativePageRange:(_NSRange)range acrossContentNodesUsingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(THSectionController *)self currentContentNodes];
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      v13 = [v12 pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
      v14 = length + location;
      if (length + location >= v13)
      {
        v14 = v13;
      }

      v15 = v14 - location;
      v16 = location < v13 ? location : 0x7FFFFFFFFFFFFFFFLL;
      v17 = location < v13 ? v15 : 0;
      if (location < v13)
      {
        location = 0;
      }

      else
      {
        location -= v13;
      }

      (*(block + 2))(block, v12, v16, v17);
      v18 = length > v17;
      length -= v17;
      if (!v18)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)p_clearDataForUnusedContentNodes
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_55994;
  v13[3] = &unk_45BAF8;
  v13[4] = self;
  v3 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] keysOfEntriesPassingTest:v13];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [-[TSUPointerKeyDictionary objectForKey:](-[THSectionController sectionInfos](self "sectionInfos")];
        [-[TSUPointerKeyDictionary objectForKey:](-[THSectionController pageControllers](self "pageControllers")];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  -[TSUPointerKeyDictionary removeObjectsForKeys:](-[THSectionController pageControllers](self, "pageControllers"), "removeObjectsForKeys:", [v3 allObjects]);
  -[TSUPointerKeyDictionary removeObjectsForKeys:](-[THSectionController sectionInfos](self, "sectionInfos"), "removeObjectsForKeys:", [v3 allObjects]);
  [(THSectionController *)self setSearchTargetProvider:0];
}

- (void)p_ensureDataForContentNodes
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v4 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(currentContentNodes);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (![(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:v8])
        {
          v9 = [(THSectionController *)self newPageControllerForContentNode:v8];
          [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] setObject:v9 forUncopiedKey:v8];

          v10 = [(THSectionController *)self newSectionInfoForContentNode:v8];
          [v10 setPageController:v9];
          [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] setObject:v10 forUncopiedKey:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (NSArray)currentContentNodes
{
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];

  return [(THNavigationUnit *)currentNavigationUnit contentNodes];
}

- (void)setCurrentNavigationUnit:(id)unit
{
  if (self->mCurrentNavigationUnit != unit)
  {
    unitCopy = unit;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    contentNodes = [unit contentNodes];
    v7 = [contentNodes countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(contentNodes);
          }

          [*(*(&v20 + 1) + 8 * v10) retainBodies];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [contentNodes countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contentNodes2 = [(THNavigationUnit *)self->mCurrentNavigationUnit contentNodes];
    v12 = [(NSArray *)contentNodes2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(contentNodes2);
          }

          [*(*(&v16 + 1) + 8 * v15) releaseBodies];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)contentNodes2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    self->mCurrentNavigationUnit = unit;
    [(THSectionController *)self p_clearDataForUnusedContentNodes];
    [(THSectionController *)self p_ensureDataForContentNodes];
  }
}

- (void)setPresentationType:(id)type
{
  if (type)
  {
    if (([type isEqualIncludingSize:{-[THSectionController presentationType](self, "presentationType")}] & 1) == 0 && objc_msgSend(type, "isPaginated") && -[THPresentationType isPaginated](-[THSectionController presentationType](self, "presentationType"), "isPaginated"))
    {

      self->_presentationType = [type copyFixingSize];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      allValues = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] allValues];
      v6 = [allValues countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v24 + 1) + 8 * i) setPresentationType:type];
          }

          v7 = [allValues countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v7);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      contentNodes = [(THNavigationUnit *)self->mCurrentNavigationUnit contentNodes];
      v11 = [(NSArray *)contentNodes countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(contentNodes);
            }

            [*(*(&v20 + 1) + 8 * j) waitUntilFinishedLoadingAndPaginating];
          }

          v12 = [(NSArray *)contentNodes countByEnumeratingWithState:&v20 objects:v32 count:16];
        }

        while (v12);
      }
    }
  }

  else
  {

    self->_presentationType = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    allValues2 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] allValues];
    v16 = [allValues2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (k = 0; k != v17; k = k + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v28 + 1) + 8 * k) setPresentationType:0];
        }

        v17 = [allValues2 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v17);
    }
  }
}

- (id)pageControllerForContentNode:(id)node
{
  if (node)
  {
    pageControllers = [(THSectionController *)self pageControllers];

    return [(TSUPointerKeyDictionary *)pageControllers objectForKey:node];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (CGSize)pageSize
{
  presentationType = [(THSectionController *)self presentationType];

  [(THPresentationType *)presentationType pageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)preferredCanvasSize
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v5 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(currentContentNodes);
        }

        [(THSectionController *)self sectionSizeForContentNode:*(*(&v11 + 1) + 8 * v8)];
        [v3 addObject:{+[NSValue valueWithCGSize:](NSValue, "valueWithCGSize:")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(THPagePositionController *)[(THSectionController *)self pagePositionController] sequentialSizeFromPageSizes:v3];
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)shouldEnablePaging
{
  pagePositionController = [(THSectionController *)self pagePositionController];

  return [(THPagePositionController *)pagePositionController shouldEnablePaging];
}

- (BOOL)p_showingPagesInNodeContainingRelativePageIndex:(unint64_t)index
{
  v4 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] contentNodeForRelativePageIndex:index forPresentationType:[(THSectionController *)self presentationType]];
  if (v4)
  {
    v4 = [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] objectForKey:v4];
  }

  return [objc_msgSend(v4 "pages")] != 0;
}

- (void)p_addPagesInRange:(_NSRange)range forceLoad:(BOOL)load
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_56298;
  v4[3] = &unk_45BB70;
  v4[4] = self;
  loadCopy = load;
  [(THSectionController *)self p_enumerateRelativePageRange:range.location acrossContentNodesUsingBlock:range.length, v4];
}

- (void)p_updateSectionInfosForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load
{
  loadCopy = load;
  length = range.length;
  location = range.location;
  v16 = 0u;
  v17 = 0u;
  if (![(THSectionController *)self shouldEnablePaging])
  {
    length += location;
    location = 0;
  }

  v18 = 0uLL;
  v19 = 0uLL;
  allValues = [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] allValues];
  v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v16 + 1) + 8 * i) setPages:{+[NSArray array](NSArray, "array")}];
      }

      v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(THSectionController *)self p_addPagesInRange:location forceLoad:length, loadCopy];
  [(THSectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [-[THSectionControllerDelegate additionalVisibleRelativePageIndexesForSectionController:](-[THSectionController delegate](self "delegate")];
    [v13 removeIndexesInRange:{location, length}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_56830;
    v14[3] = &unk_45BB98;
    v14[4] = self;
    v15 = loadCopy;
    [v13 enumerateIndexesUsingBlock:v14];
  }
}

- (CGRect)p_expandCanvasRectIfFlow:(CGRect)flow
{
  height = flow.size.height;
  width = flow.size.width;
  y = flow.origin.y;
  x = flow.origin.x;
  if (![(THPagePositionController *)[(THSectionController *)self pagePositionController] shouldEnablePaging])
  {
    [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageSize];
    v9 = -v8;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectInset(v14, 0.0, v9);
    x = v15.origin.x;
    width = v15.size.width;
    *&v15.origin.x = v15.origin.y;
    y = fmaxf(*&v15.origin.x, 0.0);
    height = v15.size.height + v15.origin.y - y;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)infosToDisplayForRelativePageRange:(_NSRange)range forceLoad:(BOOL)load
{
  [(THSectionController *)self p_updateSectionInfosForRelativePageRange:range.location forceLoad:range.length, load];
  allValues = [(TSUPointerKeyDictionary *)[(THSectionController *)self sectionInfos] allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56984;
  v7[3] = &unk_45BBC0;
  v7[4] = [(THSectionController *)self currentContentNodes];
  return [allValues sortedArrayUsingComparator:v7];
}

- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)index
{
  v5 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] contentNodeForRelativePageIndex:index forPresentationType:[(THSectionController *)self presentationType]];
  v6 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] nodeRelativePageIndexInContentNode:v5 forNavigationUnitRelativePageIndex:index presentationType:[(THSectionController *)self presentationType]];
  if (v5)
  {
    v7 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:v5];
  }

  else
  {
    v7 = 0;
  }

  [(THSectionController *)self canvasOriginForPageController:v7];
  [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageOriginForRelativePageIndex:v6];
  TSDAddPoints();
  v9 = v8;
  v11 = v10;
  if ([(THSectionControllerDelegate *)[(THSectionController *)self delegate] displaySinglePageChapterSeparately:self]&& [(THSectionControllerDelegate *)[(THSectionController *)self delegate] isTwoUpForSectionController:self]&& [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] pageCountForPresentationType:[(THSectionController *)self presentationType]]== &dword_0 + 1)
  {
    if (v5)
    {
      v12 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:v5];
    }

    else
    {
      v12 = 0;
    }

    [v12 desiredPageSizeForRelativePageIndex:v6];
    v14 = v13;
    [(THSectionController *)self sectionSizeForContentNode:v5];
    v9 = v9 + (v15 - v14) * 0.5;
  }

  v16 = v9;
  v17 = v11;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)canvasRectForRelativePageIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = sub_56CBC;
  v17 = nullsub_19;
  v18 = "";
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v20 = size;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_56CCC;
  v12[3] = &unk_45BBE8;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = index;
  [objc_msgSend(-[THSectionControllerDelegate documentRootForSectionController:](-[THSectionController delegate](self "delegate")];
  v4 = v14[6];
  v5 = v14[7];
  v6 = v14[8];
  v7 = v14[9];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (unint64_t)relativePageIndexForContentNode:(id)node
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v6 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(currentContentNodes);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if (v11 == node)
    {
      return v8;
    }

    v8 += [v11 pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
    if (v7 == ++v10)
    {
      v7 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return v8;
    }
  }
}

- (CGPoint)sectionOriginForContentNode:(id)node
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v7 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(currentContentNodes);
      }

      if (*(*(&v13 + 1) + 8 * v10) == node)
      {
        break;
      }

      [(THSectionController *)self sectionSizeForContentNode:?];
      [v5 addObject:{+[NSValue valueWithCGSize:](NSValue, "valueWithCGSize:")}];
      if (v8 == ++v10)
      {
        v8 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(THPagePositionController *)[(THSectionController *)self pagePositionController] sectionOriginWithPrecedingSectionSizes:v5];
  result.y = v12;
  result.x = v11;
  return result;
}

- (TSKSearchTargetProvider)searchTargetProvider
{
  result = self->_searchTargetProvider;
  if (!result)
  {
    v4 = +[NSMutableArray array];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    currentContentNodes = [(THSectionController *)self currentContentNodes];
    v6 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(currentContentNodes);
          }

          [v4 addObject:{-[THSectionController pageControllerForContentNode:](self, "pageControllerForContentNode:", *(*(&v10 + 1) + 8 * v9))}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    result = [[TSKAggregateSearchTargetProvider alloc] initWithSearchTargetProviders:v4];
    self->_searchTargetProvider = result;
  }

  return result;
}

- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)index
{
  searchTargetProvider = [(THSectionController *)self searchTargetProvider];

  return [(TSKSearchTargetProvider *)searchTargetProvider rootSearchTargetCountThroughIndex:index];
}

- (void)withRootSearchTargetAtIndex:(unint64_t)index executeBlock:(id)block
{
  searchTargetProvider = [(THSectionController *)self searchTargetProvider];

  [(TSKSearchTargetProvider *)searchTargetProvider withRootSearchTargetAtIndex:index executeBlock:block];
}

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)index forString:(id)string options:(unint64_t)options inDirection:(unint64_t)direction
{
  searchTargetProvider = [(THSectionController *)self searchTargetProvider];

  return [(TSKSearchTargetProvider *)searchTargetProvider nextRootSearchTargetIndexFromIndex:index forString:string options:options inDirection:direction];
}

- (unint64_t)p_relativeSheetIndexFromCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(NSArray *)[(THSectionController *)self currentContentNodes] count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(NSArray *)[(THSectionController *)self currentContentNodes] count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  pageHorizontally = [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageHorizontally];
  [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageSize];
  v7 = y;
  v8 = fmaxf(v7, 0.0);
  v10 = v9 * 0.5;
  v11 = x;
  v12 = fmaxf(v11, 0.0);
  v14 = v13 * 0.5;
  if (pageHorizontally)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (pageHorizontally)
  {
    v16 = v14;
  }

  else
  {
    v16 = v8;
  }

  v17 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v19 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v40;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(currentContentNodes);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        [(THSectionController *)self sectionSizeForContentNode:v24];
        v26 = v25;
        v28 = v27;
        [(THPagePositionController *)[(THSectionController *)self pagePositionController] sectionOriginWithPrecedingSectionSizes:v17];
        v30 = v29;
        v32 = v31;
        v33 = [v24 pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
        v45.origin.x = v30;
        v45.origin.y = v32;
        v45.size.width = v26;
        v45.size.height = v28;
        v44.x = v15;
        v44.y = v16;
        if (CGRectContainsPoint(v45, v44))
        {
          v35 = [(THPagePositionController *)[(THSectionController *)self pagePositionController] relativePageIndexFromCanvasPoint:v15 - v30, v16 - v32];
          v36 = (v33 - 1);
          if (v35 < v33 - 1)
          {
            v36 = v35;
          }

          return &v36[v21];
        }

        v21 += v33;
        [v17 addObject:{+[NSValue valueWithCGSize:](NSValue, "valueWithCGSize:", v26, v28)}];
      }

      v20 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v34 = ~v33;
  }

  else
  {
    v21 = 0;
    v34 = -1;
  }

  v38 = [-[NSArray lastObject](-[THSectionController currentContentNodes](self "currentContentNodes")];
  if (!v38)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v38 + v21 + v34;
}

- (_NSRange)relativePageRangeForCanvasRect:(CGRect)rect pad:(int)pad
{
  padCopy = pad;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (pad)
  {
    [(THSectionController *)self p_expandCanvasRectIfFlow:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:x, y];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = CGRectGetMaxX(v26) + -0.01;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v16 = [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:v15, CGRectGetMaxY(v27) + -0.01];
  pageCount = [(THSectionController *)self pageCount];
  v18 = pageCount;
  if (v16 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v16;
  }

  if (v19 >= pageCount)
  {
    v20 = pageCount - 1;
  }

  else
  {
    v20 = v19;
  }

  if (v14 >= v20)
  {
    v14 = v20;
  }

  [(THSectionController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THSectionControllerDelegate *)[(THSectionController *)self delegate] sectionControllerNumberOfPagesDisplayed:self])
  {
    v21 = [(THSectionControllerDelegate *)[(THSectionController *)self delegate] sectionControllerNumberOfPagesDisplayed:self];
  }

  else
  {
    v21 = &dword_0 + 1;
  }

  v22 = v20 - v14 + 1;
  if (padCopy)
  {
    v14 = THRangeExtendBackward(v14, v22, v21);
  }

  v23 = v14;
  if ((padCopy & 2) != 0)
  {

    v23 = THRangeExtendForward(v14, v22, v21, v18);
  }

  result.length = v22;
  result.location = v23;
  return result;
}

- (void)p_ensureLayoutThroughRelativePageRange:(_NSRange)range withLayoutController:(id)controller
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_57790;
  v4[3] = &unk_45BC10;
  v4[4] = self;
  v4[5] = controller;
  [(THSectionController *)self p_enumerateRelativePageRange:range.location acrossContentNodesUsingBlock:range.length, v4];
}

- (void)p_ensureLayoutThroughRect:(CGRect)rect pad:(int)pad withLayoutController:(id)controller
{
  v6 = *&pad;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(THSectionController *)self currentContentNodes])
  {
    height = [(THSectionController *)self relativePageRangeForCanvasRect:v6 pad:x, y, width, height];

    [(THSectionController *)self p_ensureLayoutThroughRelativePageRange:height withLayoutController:v12, controller];
  }
}

- (void)ensureSectionInfosLaidOut:(id)out layoutController:(id)controller
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [out countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(out);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        lastPage = [v10 lastPage];
        if (lastPage)
        {
          [objc_msgSend(v10 "pageController")];
        }
      }

      v7 = [out countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (unint64_t)mostVisibleAbsolutePageIndexForCanvasBoundsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(THPresentationType *)[(THSectionController *)self presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);

  return [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:MidX, MidY];
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index
{
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit relativePageIndexForAbsolutePageIndex:index forPresentationType:presentationType];
}

- (id)displaySectionInfoForRelativePageIndex:(unint64_t)index
{
  v5 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] pageInfoForRelativePageIndex:index forPresentationType:[(THSectionController *)self presentationType]];
  if ([v5 parent])
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_3:
  v6 = objc_alloc_init(THSectionInfo);
  if ([v5 parent])
  {
    v7 = -[TSUPointerKeyDictionary objectForKey:](-[THSectionController pageControllers](self, "pageControllers"), "objectForKey:", [v5 parent]);
  }

  else
  {
    v7 = 0;
  }

  [(THSectionInfo *)v6 setPageController:v7];
  if (v5)
  {
    v8 = [NSArray arrayWithObject:v5];
  }

  else
  {
    v8 = +[NSArray array];
  }

  [(THSectionInfo *)v6 setPages:v8];
  [(THSectionInfo *)v6 setAnchorAtOrigin:1];
  [(THSectionController *)self p_ensureLayoutThroughRelativePageRange:index withLayoutController:1, 0];

  return v6;
}

- (CGRect)sectionRelativeCanvasRectForRelativePageIndex:(unint64_t)index
{
  [(THSectionController *)self canvasRectForRelativePageIndex:?];
  v6 = v5;
  v8 = v7;
  [(THSectionController *)self sectionOriginForContentNode:[(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] contentNodeForRelativePageIndex:index forPresentationType:[(THSectionController *)self presentationType]]];
  TSDSubtractPoints();
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (unint64_t)_navigationUnitRelativePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller
{
  [controller visibleUnscaledRect];

  return [(THSectionController *)self relativePageRangeForCanvasRect:0 pad:?];
}

- (unint64_t)absolutePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit absolutePageIndexForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (unint64_t)_navigationUnitRelativePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  if (![(THPresentationType *)[(THSectionController *)self presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [controller visibleUnscaledRect];
  TSDCenterOfRect();
  TSDRectWithOriginAndSize();
  TSDCenterOfRect();

  return [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:?];
}

- (unint64_t)absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit absolutePageIndexForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (unint64_t)_navigationUnitRelativePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  if (![(THPresentationType *)[(THSectionController *)self presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [controller visibleUnscaledRect];
  TSDCenterOfRect();
  TSDRectWithOriginAndSize();
  TSDCenterOfRect();

  return [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:?];
}

- (unint64_t)absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit absolutePageIndexForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (unint64_t)_navigationUnitRelativePageIndexForCenterOfVisibleRectInInteractiveCanvasController:(id)controller
{
  if (![(THPresentationType *)[(THSectionController *)self presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [controller visibleUnscaledRect];
  [(THSectionControllerDelegate *)[(THSectionController *)self delegate] isTwoUpForSectionController:self];
  TSDCenterOfRect();

  return [(THSectionController *)self p_relativeSheetIndexFromCanvasPoint:?];
}

- (unint64_t)absolutePageIndexForCenterOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForCenterOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit absolutePageIndexForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (id)pageInfoForBeginningOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForBeginningOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit pageInfoForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (id)pageInfoForCenterOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForCenterOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit pageInfoForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (id)pageInfoForFirstQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit pageInfoForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (id)pageInfoForSecondQuadrantOfVisibleRectInInteractiveCanvasController:(id)controller
{
  v4 = [(THSectionController *)self _navigationUnitRelativePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:controller];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit pageInfoForRelativePageIndex:v4 forPresentationType:presentationType];
}

- (id)bodyAnchorForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(THSectionController *)self relativePageRangeForCanvasRect:0 pad:?];
  v9 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] contentNodeForRelativePageIndex:v8 forPresentationType:[(THSectionController *)self presentationType]];
  v10 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] nodeRelativePageIndexInContentNode:v9 forNavigationUnitRelativePageIndex:v8 presentationType:[(THSectionController *)self presentationType]];
  if (v9)
  {
    v11 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  [(THSectionController *)self canvasRectForRelativePageIndex:v8];
  v13 = v12;
  v15 = v14;
  [v11 desiredPageSizeForRelativePageIndex:v10];
  v21.size.width = v16;
  v21.size.height = v17;
  v21.origin.x = v13;
  v21.origin.y = v15;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectIntersection(v21, v22);
  TSDSubtractPoints();
  v18 = -[THModelStorageAnchor initWithContentNode:storageUID:range:]([THModelStorageAnchor alloc], "initWithContentNode:storageUID:range:", v9, [v9 nodeUniqueIDForInfo:objc_msgSend(v9 forPresentationType:{"bodyStorageForPresentationType:", -[THSectionController presentationType](self, "presentationType")), -[THSectionController presentationType](self, "presentationType")}], objc_msgSend(v11, "firstBodyCharacterIndexOverlappingPageRect:forRelativePageIndex:", v10), 1);

  return v18;
}

- (CGRect)rectForBodyAnchor:(id)anchor
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  contentNode = [anchor contentNode];
  [contentNode waitUntilFinishedLoadingAndPaginating];
  if (contentNode)
  {
    v10 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:contentNode];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 relativePageIndexForCharIndex:objc_msgSend(anchor forceLayout:{"range"), 1}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    if ([(THPagePositionController *)[(THSectionController *)self pagePositionController] shouldEnablePaging])
    {
      v13 = [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] navUnitRelativePageIndexForContentNode:contentNode forContentNodeRelativePageIndex:v12 presentationType:[(THSectionController *)self presentationType]];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(THSectionController *)self canvasRectForRelativePageIndex:v13];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
      }
    }

    else
    {
      [v10 originOfCharacterIndex:objc_msgSend(anchor forRelativePageIndex:{"range"), v12}];
      [(THSectionController *)self canvasOriginForPageController:v10];
      TSDAddPoints();
      x = v18;
      y = v19;
      [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageSize];
      width = v20;
      height = v21;
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)rectForContentNode:(id)node layout:(id)layout
{
  [(THSectionController *)self canvasOriginForPageController:[(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:node]];
  [objc_msgSend(layout "geometry")];
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (!CGRectIsNull(v16))
  {
    TSDAddPoints();
    x = v8;
    y = v9;
  }

  [(THPagePositionController *)[(THSectionController *)self pagePositionController] pageSize];
  v11 = v10;
  v13 = v12;
  v14 = x;
  v15 = y;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (unint64_t)absolutePageIndexForBodyStorageAnchor:(id)anchor
{
  contentNode = [anchor contentNode];
  if (contentNode)
  {
    v6 = [(TSUPointerKeyDictionary *)[(THSectionController *)self pageControllers] objectForKey:contentNode];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 relativePageIndexForCharIndex:objc_msgSend(anchor forceLayout:{"range"), 1}];
  presentationType = [(THSectionController *)self presentationType];

  return [contentNode absolutePageIndexForRelativePageIndex:v7 forPresentationType:presentationType];
}

- (unint64_t)relativePageIndexForBodyStorageAnchor:(id)anchor
{
  v4 = [(THSectionController *)self absolutePageIndexForBodyStorageAnchor:anchor];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit relativePageIndexForAbsolutePageIndex:v4 forPresentationType:presentationType];
}

- (unint64_t)relativePageIndexForStorageAnchor:(id)anchor
{
  contentNode = [anchor contentNode];
  objc_opt_class();
  [contentNode infoForNodeUniqueID:objc_msgSend(anchor forPresentationType:{"storageUID"), -[THSectionController presentationType](self, "presentationType")}];
  v6 = TSUDynamicCast();
  if (!v6)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (v6 == [contentNode bodyStorageForPresentationType:{-[THSectionController presentationType](self, "presentationType")}])
  {
    v7 = [(THSectionController *)self relativePageIndexForBodyStorageAnchor:anchor];
  }

  else
  {
    v7 = -[THNavigationUnit relativePageIndexForAbsolutePageIndex:forPresentationType:](-[THSectionController currentNavigationUnit](self, "currentNavigationUnit"), "relativePageIndexForAbsolutePageIndex:forPresentationType:", [contentNode absolutePageIndexForRelativePageIndex:objc_msgSend(contentNode forPresentationType:{"relativePageIndexForInfo:forPresentationType:", v6, -[THSectionController presentationType](self, "presentationType")), -[THSectionController presentationType](self, "presentationType")}], -[THSectionController presentationType](self, "presentationType"));
  }

  v8 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v8;
}

- (id)p_contentNodeForBodyStorage:(id)storage forceLoad:(BOOL)load
{
  loadCopy = load;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v8 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(currentContentNodes);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    presentationType = [(THSectionController *)self presentationType];
    v14 = loadCopy ? [v12 bodyStorageForPresentationType:presentationType] : objc_msgSend(objc_msgSend(v12, "nodeBodyForPresentationType:", presentationType), "bodyStorage");
    if (v14 == storage)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (unint64_t)relativePageIndexForBodyStorage:(id)storage charIndex:(unint64_t)index forceLoad:(BOOL)load
{
  v7 = [(THSectionController *)self p_contentNodeForBodyStorage:storage forceLoad:load];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = [-[THSectionController pageControllerForContentNode:](self pageControllerForContentNode:{v7), "relativePageIndexForCharIndex:forceLayout:", index, 1}];
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit navUnitRelativePageIndexForContentNode:v8 forContentNodeRelativePageIndex:v9 presentationType:presentationType];
}

- (id)bodyInfoForStorage:(id)storage charIndex:(unint64_t)index
{
  result = [(THSectionController *)self p_contentNodeForBodyStorage:storage forceLoad:1];
  if (result)
  {
    v7 = [(THSectionController *)self pageControllerForContentNode:result];

    return [v7 bodyInfoForCharIndex:index forceLayout:1];
  }

  return result;
}

- (id)bodyInfoForStorage:(id)storage anchoredCharIndex:(unint64_t)index
{
  result = [(THSectionController *)self p_contentNodeForBodyStorage:storage forceLoad:1];
  if (result)
  {
    v7 = [(THSectionController *)self pageControllerForContentNode:result];

    return [v7 bodyInfoForAnchoredCharIndex:index forceLayout:1];
  }

  return result;
}

- (id)newPageControllerForContentNode:(id)node
{
  v5 = [THPaginatedPageController alloc];
  reflowablePaginationController = [(THSectionController *)self reflowablePaginationController];
  presentationType = [(THSectionController *)self presentationType];

  return [(THPaginatedPageController *)v5 initWithDelegate:self contentNode:node paginationController:reflowablePaginationController presentationType:presentationType];
}

- (CGSize)sectionSizeForContentNode:(id)node
{
  v5 = [node pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [node startLoading];
    [node waitUntilFinishedLoadingAndPaginating];
    v5 = [node pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
  }

  [(THPagePositionController *)[(THSectionController *)self pagePositionController] canvasSizeForPageCount:v5];
  v7 = v6;
  v9 = v8;
  if ([(THSectionControllerDelegate *)[(THSectionController *)self delegate] displaySinglePageChapterSeparately:self]&& [(THSectionControllerDelegate *)[(THSectionController *)self delegate] isTwoUpForSectionController:self]&& [(THNavigationUnit *)[(THSectionController *)self currentNavigationUnit] pageCountForPresentationType:[(THSectionController *)self presentationType]]== &dword_0 + 1)
  {
    v7 = v7 + v7;
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)p_contentNodeForRelativePageIndex:(unint64_t)index
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentContentNodes = [(THSectionController *)self currentContentNodes];
  v6 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(currentContentNodes);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 pageCountForPresentationType:{-[THSectionController presentationType](self, "presentationType")}];
      v12 = index >= v11;
      index -= v11;
      if (!v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)currentContentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v10;
}

- (id)accessControllerForPageController:(id)controller
{
  v3 = [(THSectionControllerDelegate *)[(THSectionController *)self delegate] documentRootForSectionController:self];

  return [v3 accessController];
}

- (void)pageControllerNeedsLayout:(id)layout
{
  delegate = [(THSectionController *)self delegate];

  [(THSectionControllerDelegate *)delegate sectionControllerNeedsLayout:self];
}

- (CGPoint)canvasOriginForPageController:(id)controller
{
  contentNode = [controller contentNode];

  [(THSectionController *)self sectionOriginForContentNode:contentNode];
  result.y = v6;
  result.x = v5;
  return result;
}

- (BOOL)isCompactFlowPresentationForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate isCompactFlowPresentationForSectionController:self];
}

- (unint64_t)pageCountForNavigationUnitForPageController:(id)controller
{
  currentNavigationUnit = [(THSectionController *)self currentNavigationUnit];
  presentationType = [(THSectionController *)self presentationType];

  return [(THNavigationUnit *)currentNavigationUnit pageCountForPresentationType:presentationType];
}

- (BOOL)displaySinglePageChapterSeparatelyForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate displaySinglePageChapterSeparately:self];
}

- (BOOL)isTwoUpForNavigationUnitForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate isTwoUpForSectionController:self];
}

- (unint64_t)pageCountForPageController:(id)controller presentationType:(id)type
{
  contentNode = [controller contentNode];

  return [contentNode pageCountForPresentationType:type];
}

- (id)bodyStorageForPageController:(id)controller presentationType:(id)type
{
  contentNode = [controller contentNode];

  return [contentNode bodyStorageForPresentationType:type];
}

- (id)pageInfoForPageController:(id)controller pageIndex:(unint64_t)index presentationType:(id)type
{
  contentNode = [controller contentNode];

  return [contentNode pageAtRelativeIndex:index forPresentationType:type];
}

- (id)layoutControllerForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate layoutControllerForSectionController:self];
}

- (BOOL)allowsDescendersToClipForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate allowsDescendersToClipForSectionController:self];
}

- (BOOL)shouldAllowFinishingPartionedAttachmentLayoutForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate shouldAllowFinishingPartionedAttachmentLayoutForSectionController:self];
}

- (BOOL)shouldScaleFlowLayoutsForPageController:(id)controller
{
  delegate = [(THSectionController *)self delegate];

  return [(THSectionControllerDelegate *)delegate shouldScaleFlowLayoutsForSectionController:self];
}

- (CGPoint)canvasOriginDeltaForPageController:(id)controller
{
  x = self->_canvasOriginDelta.x;
  y = self->_canvasOriginDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)layoutContentAtLayoutAnchor:(id)anchor padAbove:(double)above padBelow:(double)below layoutController:(id)controller
{
  v6 = [TSUAssertionHandler currentHandler:anchor];
  v7 = [NSString stringWithUTF8String:"[THSectionController layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionController.mm"];

  [v6 handleFailureInFunction:v7 file:v8 lineNumber:1163 description:@"layout anchors aren't supported by paginated section controller"];
}

- (void)layoutContentFromBottom:(double)bottom layoutController:(id)controller
{
  v4 = [TSUAssertionHandler currentHandler:controller];
  v5 = [NSString stringWithUTF8String:"[THSectionController layoutContentFromBottom:layoutController:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionController.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:1167 description:@"layout from bottom isn't supported by paginated section controller"];
}

- (_NSRange)firstLineInRect:(CGRect)rect forBodyAnchor:(id)anchor
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)clearCTCaches
{
  pageControllers = [(THSectionController *)self pageControllers];

  [(TSUPointerKeyDictionary *)pageControllers enumerateKeysAndObjectsUsingBlock:&stru_45BC50];
}

- (CGPoint)canvasOriginDelta
{
  x = self->_canvasOriginDelta.x;
  y = self->_canvasOriginDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

@end