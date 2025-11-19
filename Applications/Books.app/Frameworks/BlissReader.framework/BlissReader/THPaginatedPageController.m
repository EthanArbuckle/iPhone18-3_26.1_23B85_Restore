@interface THPaginatedPageController
- ($D6031A91289B01F4EEA92D3AF6491109)p_stubHintAtRelativePageIndex:(SEL)a3;
- (BOOL)allowsDescendersToClip;
- (BOOL)needsAnnotationSourceForLayout:(id)a3;
- (BOOL)p_generateHintForPageIndex:(unint64_t)a3;
- (BOOL)shouldAllowFinishingPartionedAttachmentLayout;
- (CGPoint)originOfCharacterIndex:(unint64_t)a3 forRelativePageIndex:(unint64_t)a4;
- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3 pageFrame:(CGRect)a4;
- (CGRect)i_rectForSectionLayout;
- (CGSize)desiredPageSizeForRelativePageIndex:(unint64_t)a3;
- (THPageHintController)pageHints;
- (THPagePositionController)pagePositionController;
- (THPaginatedPageController)initWithDelegate:(id)a3 contentNode:(id)a4 paginationController:(id)a5 presentationType:(id)a6;
- (THWPStorage)bodyStorage;
- (_NSRange)p_anchoredRangeForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5;
- (_NSRange)p_bodyRangeForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5;
- (_NSRange)p_layoutEndAnchoredRange;
- (_NSRange)p_layoutEndRange;
- (const)i_topicHintsAfterPageIndex:(unint64_t)a3;
- (const)i_topicHintsPriorToPageIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)bodyInfoForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4;
- (id)bodyInfoForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4;
- (id)i_columnAfterPageIndex:(unint64_t)a3;
- (id)i_columnPriorToPageIndex:(unint64_t)a3;
- (id)i_firstChildHintAfterPageIndex:(unint64_t)a3;
- (id)i_pageHintForPageIndex:(unint64_t)a3;
- (id)lineHintsForTarget:(id)a3;
- (id)p_cachedPageLayoutForPageIndex:(unint64_t)a3 preferredLayoutController:(id)a4;
- (id)p_lastValidPageHint;
- (id)p_layoutManager;
- (id)p_pageHintForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5;
- (id)p_pageInfoForPageAtRelativeIndex:(unint64_t)a3;
- (id)p_updateHintAtIndex:(unint64_t)a3 withBodyTargets:(id)a4;
- (id)pageInfoForRelativePageIndex:(unint64_t)a3;
- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3 forRelativePageIndex:(unint64_t)a4;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6;
- (unint64_t)p_lastPageIndexWithBodyAfterPageIndex:(unint64_t)a3;
- (unint64_t)p_nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5;
- (unint64_t)p_previousRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5;
- (unint64_t)p_relativePageIndexFollowingRelativePageIndex:(unint64_t)a3;
- (unint64_t)p_relativePageIndexForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4 searchAfterLayoutPoint:(BOOL)a5;
- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 caretAffinity:(int)a4 forceLayout:(BOOL)a5 searchAfterLayoutPoint:(BOOL)a6;
- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 scanBackwardsFromPageIndex:(unint64_t)a4;
- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 scanForwardsFromPageIndex:(unint64_t)a4;
- (unint64_t)p_relativePageIndexPrecedingRelativePageIndex:(unint64_t)a3;
- (unint64_t)pageCount;
- (unint64_t)relativePageIndexForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4;
- (unint64_t)relativePageIndexForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4;
- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3;
- (void)clearLayout;
- (void)dealloc;
- (void)i_inflateColumnsInBodyLayout:(id)a3;
- (void)i_registerPageLayout:(id)a3;
- (void)i_setPageHintSize:(CGSize)a3 forRelativePageIndex:(unint64_t)a4;
- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 inTarget:(id)a5 removeAutoNumberFootnoteCount:(unint64_t)a6;
- (void)i_unregisterPageLayout:(id)a3;
- (void)layoutManager:(id)a3 didClearDirtyRangeWithDelta:(int64_t)a4 afterCharIndex:(unint64_t)a5;
- (void)layoutManagerNeedsLayout:(id)a3;
- (void)layoutThroughRelativePageIndex:(unint64_t)a3 layoutController:(id)a4;
- (void)p_bodyLayoutDidLayout:(id)a3;
- (void)p_clearOffscreenLayouts;
- (void)p_destroyBodyLayoutState;
- (void)p_didLayout;
- (void)p_insertPageLayoutIntoCache:(id)a3;
- (void)p_invalidateBodyLayoutOnPageIndex:(unint64_t)a3;
- (void)p_layoutNextPageForLayoutController:(id)a3;
- (void)p_layoutThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4 clearOffscreenInfos:(BOOL)a5;
- (void)p_layoutWithPageLayout:(id)a3 outDidSync:(BOOL *)a4;
- (void)p_performBlock:(id)a3 withPageLayoutAtRelativeIndex:(unint64_t)a4;
- (void)p_performBlock:(id)a3 withPageLayoutAtRelativeIndex:(unint64_t)a4 preferredLayoutController:(id)a5;
- (void)p_processWidowsAndInflationForLayoutController:(id)a3;
- (void)p_removeOrphanedLayoutsFromCache;
- (void)p_removePageLayoutFromCache:(id)a3;
- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)a3;
- (void)p_updateWithPaginationResults;
- (void)setPresentationType:(id)a3;
- (void)teardown;
@end

@implementation THPaginatedPageController

- (THPageHintController)pageHints
{
  objc_sync_enter(self);
  v3 = self->mPageHints;
  objc_sync_exit(self);
  return v3;
}

- (THPaginatedPageController)initWithDelegate:(id)a3 contentNode:(id)a4 paginationController:(id)a5 presentationType:(id)a6
{
  v14.receiver = self;
  v14.super_class = THPaginatedPageController;
  v10 = [(THPaginatedPageController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(THPaginatedPageController *)v10 setDelegate:a3];
    [(THPaginatedPageController *)v11 setContentNode:a4];
    [(THPaginatedPageController *)v11 setPaginationController:a5];
    v11->mPresentationType = [a6 copyFixingSize];
    [(THPaginatedPageController *)v11 setWrapController:objc_alloc_init(THBodyTextWrapController)];
    v11->_drawablesLayoutController = [[THOffscreenLayoutController alloc] initWithCanvas:0];
    [(THOffscreenLayoutController *)v11->_drawablesLayoutController setLayoutIsCompactWidth:[(THPresentationType *)[(THPaginatedPageController *)v11 presentationType] isCompactWidth]];
    [(THOffscreenLayoutController *)v11->_drawablesLayoutController setLayoutIsCompactHeight:[(THPresentationType *)[(THPaginatedPageController *)v11 presentationType] isCompactHeight]];
    v12 = objc_alloc_init(THSectionInfo);
    v11->mOffscreenSectionInfo = v12;
    [(THSectionInfo *)v12 setPageController:v11];
    v11->mPageHints = objc_alloc_init(THPageHintController);
  }

  return v11;
}

- (void)teardown
{
  objc_sync_enter(self);
  v3 = objc_alloc_init(NSMutableArray);
  begin_node = self->_pageLayoutCache.__tree_.__begin_node_;
  if (begin_node != &self->_pageLayoutCache.__tree_.__end_node_)
  {
    do
    {
      [v3 addObject:begin_node->mWrapController];
      mDelegate = begin_node->mDelegate;
      if (mDelegate)
      {
        do
        {
          mContentNode = mDelegate;
          mDelegate = *mDelegate;
        }

        while (mDelegate);
      }

      else
      {
        do
        {
          mContentNode = begin_node->mContentNode;
          v7 = mContentNode->super.isa == begin_node;
          begin_node = mContentNode;
        }

        while (!v7);
      }

      begin_node = mContentNode;
    }

    while (mContentNode != &self->_pageLayoutCache.__tree_.__end_node_);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) removeFromParent];
      }

      v8 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(THPaginatedPageController *)self p_destroyBodyLayoutState];
  self->mWrapController = 0;

  self->_bodyLayoutManager = 0;
  self->_drawablesLayoutController = 0;

  self->mOffscreenSectionInfo = 0;
  self->mPageHints = 0;
  [(THPaginatedPageController *)self setPresentationType:0];
  [(THPaginatedPageController *)self setContentNode:0];
  [(THPaginatedPageController *)self setDelegate:0];
  objc_sync_exit(self);
}

- (void)dealloc
{
  if (self->_bodyLayoutManager || self->_drawablesLayoutController || self->mPageHints)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mWrapController = 0;
  [(THPaginatedPageController *)self setPresentationType:0];
  [(THPaginatedPageController *)self setContentNode:0];
  v3.receiver = self;
  v3.super_class = THPaginatedPageController;
  [(THPaginatedPageController *)&v3 dealloc];
}

- (void)p_updateWithPaginationResults
{
  if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount])
  {

    [(THPaginatedPageController *)self p_validatePageHints];
  }

  else
  {
    v3 = [(THReflowablePaginationController *)[(THPaginatedPageController *)self paginationController] paginationResultForContentNode:[(THPaginatedPageController *)self contentNode]];
    if (v3)
    {
      v4 = v3;
      v10 = [objc_msgSend(v3 "pageHints")];
      self->_firstPageIndexNeedingLayout = [v10 count];
      if ([v4 pageCount])
      {
        v5 = 0;
        do
        {
          if (v5 >= [v10 count])
          {
            break;
          }

          v6 = [(THPaginatedPageController *)self pageInfoForRelativePageIndex:v5];
          v7 = [v10 objectAtIndexedSubscript:v5];
          [v6 setPageStartCharIndex:{objc_msgSend(v7, "range")}];
          v8 = [v7 range];
          [v6 setPageEndCharIndex:&v8[v9]];
          [v7 range];
          ++v5;
        }

        while (v5 < [v4 pageCount]);
      }

      [(THPageHintController *)[(THPaginatedPageController *)self pageHints] setPageHints:v10];
    }
  }
}

- (void)clearLayout
{
  [(THPageHintController *)[(THPaginatedPageController *)self pageHints] removeAllHints];
  self->_firstPageIndexNeedingLayout = 0;
  [(THPaginatedPageController *)self p_clearOffscreenLayouts];
  [(TSWPLayoutManager *)self->_bodyLayoutManager clearTypesetterCache];
  [(THPaginatedPageController *)self p_destroyBodyLayoutState];

  self->_bodyLayoutManager = 0;
}

- (void)setPresentationType:(id)a3
{
  if (([a3 isEqualIncludingSize:{-[THPaginatedPageController presentationType](self, "presentationType")}] & 1) == 0)
  {
    objc_sync_enter(self);

    self->mPresentationType = [a3 copyFixingSize];
    [(THPaginatedPageController *)self clearLayout];

    objc_sync_exit(self);
  }
}

- (THPagePositionController)pagePositionController
{
  v3 = [(THPaginatedPageController *)self delegate];

  return [(THPageControllerDelegate *)v3 pagePositionControllerForPageController:self];
}

- (void)layoutThroughRelativePageIndex:(unint64_t)a3 layoutController:(id)a4
{
  objc_sync_enter(self);
  [(THPaginatedPageController *)self p_updateWithPaginationResults];
  [(THPaginatedPageController *)self p_layoutThroughPageIndex:a3 forLayoutController:a4 clearOffscreenInfos:1];

  objc_sync_exit(self);
}

- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 scanBackwardsFromPageIndex:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
  if (v7 - 1 < a4)
  {
    a4 = v7 - 1;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 < v7)
  {
    v9 = v7;
    while (1)
    {
      v10 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:a4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 range];
        if (!a4)
        {
          break;
        }
      }

      else
      {
        v11 = NSInvalidRange[0];
        v12 = NSInvalidRange[1];
        if (!a4)
        {
          break;
        }
      }

      if (v11 == NSInvalidRange[0] && v12 == NSInvalidRange[1])
      {
        break;
      }

      v14 = a3 - v11;
      if (a3 == v11)
      {
        v8 = a4;
      }

      else
      {
        v16 = a3 < v11 || v14 >= v12;
        LODWORD(v14) = v8 != 0x7FFFFFFFFFFFFFFFLL && v16;
        if (!v16)
        {
          v8 = a4;
        }
      }

      if (--a4 >= v9 || v14)
      {
        return v8;
      }
    }

    if (a3 == v11)
    {
      return a4;
    }

    if (a3 >= v11 && a3 - v11 < v12)
    {
      return a4;
    }
  }

  return v8;
}

- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 scanForwardsFromPageIndex:(unint64_t)a4
{
  if (!(a4 | a3))
  {
    return 0;
  }

  v4 = a4;
  v7 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
  if (v7 <= v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  while (1)
  {
    v9 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 range];
    }

    else
    {
      v10 = NSInvalidRange[0];
      v11 = NSInvalidRange[1];
    }

    if (a3 == v10)
    {
      break;
    }

    if (a3 >= v10 && a3 - v10 < v11)
    {
      break;
    }

    if (++v4 >= v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (unint64_t)relativePageIndexForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4
{
  v4 = a4;
  objc_sync_enter(self);
  v7 = [(THPaginatedPageController *)self p_relativePageIndexForAnchoredCharIndex:a3 forceLayout:v4 searchAfterLayoutPoint:0];
  objc_sync_exit(self);
  return v7;
}

- (unint64_t)relativePageIndexForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4
{
  v4 = a4;
  objc_sync_enter(self);
  v7 = [(THPaginatedPageController *)self p_relativePageIndexForCharIndex:a3 caretAffinity:0 forceLayout:v4 searchAfterLayoutPoint:1];
  objc_sync_exit(self);
  return v7;
}

- (id)pageInfoForRelativePageIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = [(THPaginatedPageController *)self p_pageInfoForPageAtRelativeIndex:a3];
  objc_sync_exit(self);
  return v5;
}

- (id)bodyInfoForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4
{
  v4 = a4;
  v7 = [THPaginatedPageController relativePageIndexForCharIndex:"relativePageIndexForCharIndex:forceLayout:" forceLayout:?];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v7;
  objc_sync_enter(self);
  v10 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:v9 forceLayout:v4 allowAfterLayoutPoint:0];
  if (v10 && (v11 = [-[THPaginatedPageController p_pageInfoForPageAtRelativeIndex:](self p_pageInfoForPageAtRelativeIndex:{v9), "modelBodyInfos"}], (v12 = objc_msgSend(v10, "bodyCount")) != 0))
  {
    v13 = 0;
    v14 = v12 - 1;
    do
    {
      v8 = [v11 objectAtIndex:v13];
      v15 = [v10 rangeForBodyIndex:v13];
    }

    while ((a3 - v15 >= v16 || a3 < v15) && v14 != v13++);
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(self);
  return v8;
}

- (id)bodyInfoForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4
{
  v4 = a4;
  v7 = [THPaginatedPageController relativePageIndexForAnchoredCharIndex:"relativePageIndexForAnchoredCharIndex:forceLayout:" forceLayout:?];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v7;
  objc_sync_enter(self);
  v10 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:v9 forceLayout:v4 allowAfterLayoutPoint:0];
  if (v10 && (v11 = [-[THPaginatedPageController p_pageInfoForPageAtRelativeIndex:](self p_pageInfoForPageAtRelativeIndex:{v9), "modelBodyInfos"}], (v12 = objc_msgSend(v10, "bodyCount")) != 0))
  {
    v13 = 0;
    v14 = v12 - 1;
    do
    {
      v8 = [v11 objectAtIndex:v13];
      v15 = [v10 anchoredRangeForBodyIndex:v13];
    }

    while ((a3 - v15 >= v16 || a3 < v15) && v14 != v13++);
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(self);
  return v8;
}

- (void)p_performBlock:(id)a3 withPageLayoutAtRelativeIndex:(unint64_t)a4
{
  objc_sync_enter(self);
  [(THPaginatedPageController *)self p_layoutThroughPageIndex:a4 forLayoutController:[(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] layoutControllerForPageController:self] clearOffscreenInfos:0];
  [(THPaginatedPageController *)self p_performBlock:a3 withPageLayoutAtRelativeIndex:a4 preferredLayoutController:0];

  objc_sync_exit(self);
}

- (unint64_t)pageCount
{
  v3 = [(THPaginatedPageController *)self delegate];
  v4 = [(THPaginatedPageController *)self presentationType];

  return [(THPageControllerDelegate *)v3 pageCountForPageController:self presentationType:v4];
}

- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3 forRelativePageIndex:(unint64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3C5B0;
  v10[3] = &unk_45B980;
  v10[4] = &v12;
  v11 = a3;
  [(THPaginatedPageController *)self p_performBlock:v10 withPageLayoutAtRelativeIndex:a4];
  v6 = v13[3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_sync_enter(self);
    v7 = *([-[THPaginatedPageController p_pageHintForRelativePageIndex:forceLayout:allowAfterLayoutPoint:](self p_pageHintForRelativePageIndex:a4 forceLayout:1 allowAfterLayoutPoint:{1), "firstHint"}] + 4);
    v8 = v13;
    v13[3] = v7;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        v8 = v13;
      }

      v8[3] = 0;
    }

    objc_sync_exit(self);
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return v6;
}

- (CGPoint)originOfCharacterIndex:(unint64_t)a3 forRelativePageIndex:(unint64_t)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_3C6F0;
  v13 = nullsub_18;
  v14 = "";
  v15 = CGPointZero;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3C700;
  v8[3] = &unk_45B9A8;
  v8[4] = &v9;
  v8[5] = a3;
  [(THPaginatedPageController *)self p_performBlock:v8 withPageLayoutAtRelativeIndex:a4];
  v4 = v10[6];
  v5 = v10[7];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)desiredPageSizeForRelativePageIndex:(unint64_t)a3
{
  v3 = [-[THPaginatedPageController pageInfoForRelativePageIndex:](self pageInfoForRelativePageIndex:{a3), "geometry"}];

  [v3 size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3 pageFrame:(CGRect)a4
{
  width = a4.size.width;
  [(THPagePositionController *)[(THPaginatedPageController *)self pagePositionController:a4.origin.x] pageOriginForRelativePageIndex:a3];
  v7 = v6;
  v9 = v8;
  if ([(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] displaySinglePageChapterSeparatelyForPageController:self]&& [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] isTwoUpForNavigationUnitForPageController:self]&& [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] pageCountForNavigationUnitForPageController:self]== &dword_0 + 1)
  {
    [(THPaginatedPageController *)self i_rectForSectionLayout];
    v7 = v7 + (v10 - width) * 0.5;
  }

  v11 = v7;
  v12 = v9;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)layoutManagerNeedsLayout:(id)a3
{
  objc_sync_enter(self);
  [(THPaginatedPageController *)self p_updateWithPaginationResults];
  v5 = [a3 dirtyRange];
  v6 = v5;
  v8 = v7;
  if (v5)
  {
    v9 = v5 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(THPaginatedPageController *)self p_relativePageIndexForCharIndex:v9 caretAffinity:0 forceLayout:0 searchAfterLayoutPoint:0];
  v11 = [(THPaginatedPageController *)self p_relativePageIndexForAnchoredCharIndex:v6 forceLayout:0 searchAfterLayoutPoint:0];
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (self->_firstPageIndexNeedingLayout)
  {
    v13 = [(THPaginatedPageController *)self p_layoutEndCharIndex];
    v14 = [objc_msgSend(a3 "storage")];
    if (v6 == v13 && v8 == &v14[-v13])
    {
      firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
      if (firstPageIndexNeedingLayout != [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      if (self->_firstPageIndexNeedingLayout != 0x8000000000000000)
      {
LABEL_14:
        [(THPaginatedPageController *)self p_setNeedsLayoutOnPageIndex:?];
      }
    }
  }

  [(THPaginatedPageController *)self p_destroyBodyLayoutState];
  if ([(THPaginatedPageController *)self p_isLayoutComplete])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_sync_exit(self);
}

- (id)lineHintsForTarget:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v4 = [result info];

    return [v4 lineHints];
  }

  return result;
}

- (void)layoutManager:(id)a3 didClearDirtyRangeWithDelta:(int64_t)a4 afterCharIndex:(unint64_t)a5
{
  if (!self->_doingLayout)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  if (a4)
  {
    firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
    v8 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints:a3] pageCount];
    v9 = firstPageIndexNeedingLayout + 1;
    if (v9 < v8)
    {
      v10 = v8;
      do
      {
        v11 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v9];
        if (v11 != +[NSNull null])
        {
          [(NSNull *)v11 offsetStartCharIndicesBy:a4];
        }

        ++v9;
      }

      while (v10 != v9);
    }
  }
}

- (BOOL)shouldAllowFinishingPartionedAttachmentLayout
{
  v3 = [(THPaginatedPageController *)self delegate];

  return [(THPageControllerDelegate *)v3 shouldAllowFinishingPartionedAttachmentLayoutForPageController:self];
}

- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3
{
  [(THPaginatedPageController *)self layoutThroughRelativePageIndex:a3 layoutController:[(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] layoutControllerForPageController:self]];

  return [(THPaginatedPageController *)self pageCount];
}

- (unint64_t)p_nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5
{
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = a3 + 1;
    v11 = [THPaginatedPageController p_bodyRangeForRelativePageIndex:"p_bodyRangeForRelativePageIndex:forceLayout:allowAfterLayoutPoint:" forceLayout:? allowAfterLayoutPoint:?];
    v9 = &v11[v12];
    if (&v11[v12] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v13 = [(THPaginatedPageController *)self bodyStorage];
  v14 = [(THWPStorage *)v13 length];
  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v9 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = [-[THWPStorage string](v13 string];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(THPaginatedPageController *)self relativePageIndexForCharIndex:v17 forceLayout:1];
  }

  v18 = [(THWPStorage *)v13 length];
  if (v9 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  if (v9 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v9;
  }

  [(THWPStorage *)v13 attachmentIndexRangeForTextRange:v20, v19 - v20];
  if (v21 && v10 < THMinIndex([(THPaginatedPageController *)self pageCount], v8))
  {
    v22 = v10;
    do
    {
      v23 = [(THPaginatedPageController *)self p_anchoredRangeForRelativePageIndex:v22 forceLayout:1 allowAfterLayoutPoint:0];
      if (THSearchModelsForString([(THWPStorage *)v13 childEnumeratorForRange:v23, v24], a4, a5))
      {
        v8 = v22;
        break;
      }

      ++v22;
    }

    while (v22 < THMinIndex([(THPaginatedPageController *)self pageCount], v8));
  }

  while (v10 < THMinIndex([(THPaginatedPageController *)self pageCount], v8))
  {
    if (THSearchModelChildrenForString([(THPaginatedPageController *)self pageInfoForRelativePageIndex:v10], a4, a5))
    {
      return v10;
    }

    ++v10;
  }

  return v8;
}

- (unint64_t)p_previousRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5
{
  v9 = [(THPaginatedPageController *)self pageCount];
  v10 = [(THWPStorage *)[(THPaginatedPageController *)self bodyStorage] length];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v10;
    a3 = v9;
  }

  else
  {
    v13 = [(THPaginatedPageController *)self p_bodyRangeForRelativePageIndex:a3 forceLayout:0 allowAfterLayoutPoint:0];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v13;
    }
  }

  v14 = [(THPaginatedPageController *)self bodyStorage];
  v15 = [-[THWPStorage string](v14 string];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(THPaginatedPageController *)self relativePageIndexForCharIndex:v15 forceLayout:1];
  }

  [(THWPStorage *)v14 attachmentIndexRangeForTextRange:0, v12];
  if (v16)
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 + 1;
    }

    v18 = a3;
    while (v18 > v17)
    {
      v19 = [(THPaginatedPageController *)self p_anchoredRangeForRelativePageIndex:--v18 forceLayout:1 allowAfterLayoutPoint:0];
      if (THSearchModelsForString([(THWPStorage *)v14 childEnumeratorForRange:v19, v20], a4, a5))
      {
        goto LABEL_17;
      }
    }
  }

  v18 = v11;
LABEL_17:
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  while (a3 > v21)
  {
    if (THSearchModelChildrenForString([(THPaginatedPageController *)self pageInfoForRelativePageIndex:--a3], a4, a5))
    {
      return a3;
    }
  }

  return v18;
}

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6
{
  objc_sync_enter(self);
  if (a6 == 1)
  {
    v11 = [(THPaginatedPageController *)self p_previousRootSearchTargetIndexFromIndex:a3 forString:a4 options:a5];
  }

  else
  {
    if (a6)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v11 = [(THPaginatedPageController *)self p_nextRootSearchTargetIndexFromIndex:a3 forString:a4 options:a5];
  }

  v12 = v11;
LABEL_7:
  objc_sync_exit(self);
  return v12;
}

- (THWPStorage)bodyStorage
{
  v3 = [(THPaginatedPageController *)self delegate];
  v4 = [(THPaginatedPageController *)self presentationType];

  return [(THPageControllerDelegate *)v3 bodyStorageForPageController:self presentationType:v4];
}

- (void)p_clearOffscreenLayouts
{
  [(THOffscreenLayoutController *)self->_drawablesLayoutController setInfos:0];
  v3 = +[NSArray array];
  mOffscreenSectionInfo = self->mOffscreenSectionInfo;

  [(THSectionInfo *)mOffscreenSectionInfo setPages:v3];
}

- (id)p_layoutManager
{
  result = self->_bodyLayoutManager;
  if (!result)
  {
    result = [[TSWPLayoutManager alloc] initWithStorage:-[THPaginatedPageController bodyStorage](self owner:{"bodyStorage"), self}];
    self->_bodyLayoutManager = result;
  }

  return result;
}

- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)a3
{
  [(THPaginatedPageController *)self p_invalidateBodyLayoutOnPageIndex:a3];
  v4 = [(THPaginatedPageController *)self delegate];

  [(THPageControllerDelegate *)v4 pageControllerNeedsLayout:self];
}

- (void)p_invalidateBodyLayoutOnPageIndex:(unint64_t)a3
{
  if (self->_firstPageIndexNeedingLayout > a3)
  {
    self->_firstPageIndexNeedingLayout = a3;
    [(THPaginatedPageController *)self p_destroyBodyLayoutState];
  }

  v5 = [(THPaginatedPageController *)self pageHints];

  [(THPageHintController *)v5 clearHintsOnRelativePageIndex:a3];
}

- (void)p_destroyBodyLayoutState
{
  if (self->_bodyLayoutState)
  {
    [(TSWPLayoutManager *)self->_bodyLayoutManager destroyLayoutState:?];
    self->_bodyLayoutState = 0;
  }
}

- (id)p_lastValidPageHint
{
  if (!self->_firstPageIndexNeedingLayout)
  {
    return 0;
  }

  v2 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:self->_firstPageIndexNeedingLayout - 1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v2;
}

- (_NSRange)p_layoutEndRange
{
  if (self->_firstPageIndexNeedingLayout)
  {
    v2 = [-[THPaginatedPageController p_lastValidPageHint](self "p_lastValidPageHint")];
    if (v2)
    {
      v3 = v2;
      v4 = v2[4];
      v5 = v3[5];
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)p_layoutEndAnchoredRange
{
  if (self->_firstPageIndexNeedingLayout)
  {
    v2 = [-[THPaginatedPageController p_lastValidPageHint](self "p_lastValidPageHint")];
    if (!v2)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v3 = v2[7];
    v4 = v2[8];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- ($D6031A91289B01F4EEA92D3AF6491109)p_stubHintAtRelativePageIndex:(SEL)a3
{
  v4 = self;
  v6 = a4 - 1;
  v7 = a4 + 1;
  while (--v7)
  {
    self = [objc_msgSend(-[$D6031A91289B01F4EEA92D3AF6491109 pageHints](v4 "pageHints")];
    if (self)
    {
      v8 = self->var1.length + self->var1.location;
      retstr->var2 = v8;
      retstr->var3.location = v8;
      retstr->var3.length = 0;
      var3 = retstr->var3;
      goto LABEL_6;
    }
  }

  retstr->var3.length = 0;
  var3 = 0;
  *&retstr->var2 = 0u;
LABEL_6:
  retstr->var1 = var3;
  size = CGRectNull.size;
  retstr->var0.origin = CGRectNull.origin;
  retstr->var0.size = size;
  retstr->var4 = 0;
  return self;
}

- (id)p_updateHintAtIndex:(unint64_t)a3 withBodyTargets:(id)a4
{
  if (self->_firstPageIndexNeedingLayout != a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
  v7 = [(THPaginatedPageController *)self pageHints];
  v8 = a3;
  if (v6 <= a3)
  {
    if ([(THPageHintController *)v7 pageCount]!= a3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v9 = 0;
    v8 = a3;
  }

  else
  {
    v9 = [(THPageHintController *)v7 hintForRelativePageIndex:a3];
  }

  v21 = [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] pageInfoForPageController:self pageIndex:v8 presentationType:[(THPaginatedPageController *)self presentationType]];
  if (!v9 || v9 == +[NSNull null])
  {
    v9 = [[THPageHint alloc] initWithPageInfo:v21];
    [(THPageHintController *)[(THPaginatedPageController *)self pageHints] setHint:v9 forRelativePageIndex:v8];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v10)
  {
    [(THPageHint *)v9 setNonEmptyBodyCount:0];
    goto LABEL_27;
  }

  v11 = 0;
  v12 = *v35;
LABEL_13:
  v13 = 0;
  while (1)
  {
    if (*v35 != v12)
    {
      objc_enumerationMutation(a4);
    }

    v14 = *(*(&v34 + 1) + 8 * v13);
    if (![objc_msgSend(v14 "columns")])
    {
      break;
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v24 = 0;
    v38 = 0;
    v39 = 0;
    v33 = +[TSURetainedPointerKeyDictionary dictionary];
    [-[THPaginatedPageController p_layoutManager](self "p_layoutManager")];
    if (__p[1] == __p[0])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THPageHint *)v9 setAnchoredAttachmentPositions:v33 forBodyIndex:v11];
    [(THPageHint *)v9 setHints:__p forBodyIndex:v11];
    [(THPageHint *)v9 setFirstChildHint:v38 forBodyIndex:v11];
    [(THPageHint *)v9 setLastChildHint:v39 forBodyIndex:v11];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v13 = v13 + 1;
    ++v11;
    if (v10 == v13)
    {
      v10 = [a4 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        goto LABEL_13;
      }

      break;
    }
  }

  [(THPageHint *)v9 setNonEmptyBodyCount:v11];
  if (!v11)
  {
    if (!self)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
LABEL_28:
      v25 = v30;
      v26 = v31;
      v27 = v32;
      *__p = v28;
      v24 = v29;
      [(THPageHint *)v9 setBodylessStubHint:__p];
      goto LABEL_29;
    }

LABEL_27:
    [(THPaginatedPageController *)self p_stubHintAtRelativePageIndex:a3];
    goto LABEL_28;
  }

LABEL_29:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THPageControllerDelegate *)self->mDelegate wantsPageCharIndicesFilledForPageController:self])
  {
    v16 = NSInvalidRange[0];
    v15 = NSInvalidRange[1];
    if (v16 == [(THPageHint *)v9 range]&& v15 == v17)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (!v21)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [v21 setPageStartCharIndex:{-[THPageHint range](v9, "range")}];
    v18 = [(THPageHint *)v9 range];
    [v21 setPageEndCharIndex:&v18[v19]];
  }

  if (!v9)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount]<= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v9;
}

- (BOOL)p_generateHintForPageIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(THPaginatedPageController *)self p_pageInfoForPageAtRelativeIndex:?];
  v6 = [[THPageHint alloc] initWithPageInfo:v5];
  v7 = [v5 modelBodyInfos];
  if (![v7 count])
  {
    goto LABEL_9;
  }

  v8 = [v7 objectAtIndex:{0, v4}];
  v9 = [v8 lineHints];
  if (!v9 || (v10 = v9, ([v9 valid] & 1) == 0))
  {
    v4 = v16;
    v12 = [(THReflowablePaginationController *)[(THPaginatedPageController *)v16 paginationController] paginationResultForContentNode:[(THPaginatedPageController *)v16 contentNode]];
    if (!v12)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v13 = [v12 pageHints];

    v6 = [v13 objectAtIndexedSubscript:a3];
LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  if ([v10 hintsCount])
  {
    [v10 hints];
    [v10 hints];
    [v10 hintsCount];
    [objc_msgSend(v8 "geometry")];
    [objc_msgSend(v8 "columnStyle")];
    memset(&__p, 0, 24);
    sub_408CC(&__p, 1uLL);
  }

  v11 = 1;
  v4 = v16;
LABEL_10:
  if ([v7 count])
  {
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v4)
    {
      [(THPaginatedPageController *)v4 p_stubHintAtRelativePageIndex:a3];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      memset(&v20, 0, sizeof(v20));
    }

    __p = v20;
    v18 = v21;
    v19 = v22;
    [(THPageHint *)v6 setBodylessStubHint:&__p];
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  TSWPTopicNumberHints::TSWPTopicNumberHints();
  if (a3)
  {
    objc_opt_class();
    [(THPageHintController *)[(THPaginatedPageController *)v4 pageHints] hintForRelativePageIndex:a3 - 1];
    v14 = TSUDynamicCast();
    if (v14)
    {
      [v14 topicNumbers];
      TSWPTopicNumberHints::operator=();
    }
  }

  TSWPTopicNumberHints::advanceToCharIndex(&__p, *([(THPageHint *)v6 firstHint]+ 4), [(THPaginatedPageController *)v4 bodyStorage]);
  [(THPageHint *)v6 setTopicNumbers:&__p];
  [(THPageHintController *)[(THPaginatedPageController *)v4 pageHints] setHint:v6 forRelativePageIndex:a3];
  TSWPTopicNumberHints::~TSWPTopicNumberHints(&__p);
LABEL_21:

  return v11;
}

- (void)p_insertPageLayoutIntoCache:(id)a3
{
  if (![a3 layoutController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [objc_msgSend(a3 "info")];
  if (self->_pageLayoutCache.__tree_.__size_ >= 0x10)
  {
    [(THPaginatedPageController *)self p_clearOffscreenLayouts];
  }

  sub_40924();
}

- (void)p_removeOrphanedLayoutsFromCache
{
  __src = 0;
  v19 = 0;
  v20 = 0;
  p_pageLayoutCache = &self->_pageLayoutCache;
  begin_node = self->_pageLayoutCache.__tree_.__begin_node_;
  p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
  if (begin_node != &self->_pageLayoutCache.__tree_.__end_node_)
  {
    do
    {
      if (![(THBodyTextWrapController *)begin_node->mWrapController layoutController])
      {
        v5 = v19;
        if (v19 >= v20)
        {
          v7 = __src;
          v8 = v19 - __src;
          v9 = (v19 - __src) >> 3;
          v10 = v9 + 1;
          if ((v9 + 1) >> 61)
          {
            sub_3A53C();
          }

          v11 = v20 - __src;
          if ((v20 - __src) >> 2 > v10)
          {
            v10 = v11 >> 2;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v10;
          }

          if (v12)
          {
            sub_40BB8(&__src, v12);
          }

          *(8 * v9) = begin_node->mPageHints;
          v6 = 8 * v9 + 8;
          memcpy(0, v7, v8);
          v13 = __src;
          __src = 0;
          v19 = v6;
          v20 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v19 = begin_node->mPageHints;
          v6 = (v5 + 8);
        }

        v19 = v6;
      }

      mDelegate = begin_node->mDelegate;
      if (mDelegate)
      {
        do
        {
          mContentNode = mDelegate;
          mDelegate = *mDelegate;
        }

        while (mDelegate);
      }

      else
      {
        do
        {
          mContentNode = begin_node->mContentNode;
          v16 = *mContentNode->super.TSPObject_opaque == begin_node;
          begin_node = mContentNode;
        }

        while (!v16);
      }

      begin_node = mContentNode;
    }

    while (mContentNode != p_end_node);
    v17 = __src;
    if (__src != v19)
    {
      do
      {
        sub_40C00(p_pageLayoutCache, v17++);
      }

      while (v17 != v19);
    }
  }
}

- (void)p_removePageLayoutFromCache:(id)a3
{
  v5 = [objc_msgSend(a3 "info")];
  left = self->_pageLayoutCache.__tree_.__end_node_.__left_;
  p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
  v6 = left;
  if (left)
  {
    v9 = p_end_node;
    do
    {
      v10 = *(v6 + 4);
      v11 = v10 >= v5;
      v12 = v10 < v5;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + v12);
    }

    while (v6);
    if (v9 != p_end_node)
    {
      while (v5 == v9[4].__left_)
      {
        if (v9[5].__left_ == a3)
        {
          sub_40D0C(&p_end_node[-1], v9);

          operator delete(v9);
          return;
        }

        v13 = v9[1].__left_;
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = v13->__left_;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v9[2].__left_;
            v15 = v14->__left_ == v9;
            v9 = v14;
          }

          while (!v15);
        }

        v9 = v14;
        if (v14 == p_end_node)
        {
          return;
        }
      }
    }
  }
}

- (id)p_cachedPageLayoutForPageIndex:(unint64_t)a3 preferredLayoutController:(id)a4
{
  p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
  left = self->_pageLayoutCache.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  v8 = &self->_pageLayoutCache.__tree_.__end_node_;
  do
  {
    v9 = *(left + 4);
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v8 = left;
    }

    left = *(left + v11);
  }

  while (left);
  if (v8 == p_end_node || v8[4].__left_ != a3)
  {
    return 0;
  }

  do
  {
    v12 = v8[5].__left_;
    if (!a4 || [v8[5].__left_ layoutController] == a4)
    {
      break;
    }

    v13 = v8[1].__left_;
    v14 = v8;
    if (v13)
    {
      do
      {
        v8 = v13;
        v13 = v13->__left_;
      }

      while (v13);
    }

    else
    {
      do
      {
        v8 = v14[2];
        v15 = v8->__left_ == v14;
        v14 = v8;
      }

      while (!v15);
    }
  }

  while (v8 != p_end_node && v8[4].__left_ == a3);
  return v12;
}

- (void)p_performBlock:(id)a3 withPageLayoutAtRelativeIndex:(unint64_t)a4 preferredLayoutController:(id)a5
{
  if (self->_firstPageIndexNeedingLayout < a4 && (![(THPaginatedPageController *)self p_isLayoutComplete]|| [(THPaginatedPageController *)self pageCount]< a4))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = [(THPaginatedPageController *)self p_cachedPageLayoutForPageIndex:a4 preferredLayoutController:a5];
  if (v9)
  {
    v10 = v9;
    if ([v9 layoutController])
    {
      [objc_msgSend(v10 "layoutController")];
      goto LABEL_16;
    }

    [(THPaginatedPageController *)self p_removeOrphanedLayoutsFromCache];
  }

  v11 = [(THPaginatedPageController *)self p_pageInfoForPageAtRelativeIndex:a4];
  if (v11)
  {
    [(THSectionInfo *)self->mOffscreenSectionInfo setPages:[NSArray arrayWithObject:v11]];
    [(THOffscreenLayoutController *)self->_drawablesLayoutController setInfos:[NSArray arrayWithObject:self->mOffscreenSectionInfo]];
    [(THPaginatedPageController *)self p_removeOrphanedLayoutsFromCache];
    [(THOffscreenLayoutController *)self->_drawablesLayoutController validateLayouts];
    v12 = [(THPaginatedPageController *)self p_cachedPageLayoutForPageIndex:a4 preferredLayoutController:0];
    if (v12)
    {
      v10 = v12;
      v13 = [objc_msgSend(objc_msgSend(v12 "info")];
      if (v13 != [objc_msgSend(v10 "bodyLayouts")])
      {
        v14 = [objc_msgSend(v10 "bodyLayouts")];
        if (v14 != [objc_msgSend(objc_msgSend(v10 "info")])
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }
      }

      goto LABEL_16;
    }
  }

  else if (![(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] pageInfoForPageController:self pageIndex:a4 presentationType:[(THPaginatedPageController *)self presentationType]])
  {
    return;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  v10 = 0;
LABEL_16:
  v15 = *(a3 + 2);

  v15(a3, v10);
}

- (id)p_pageInfoForPageAtRelativeIndex:(unint64_t)a3
{
  v5 = [(THPaginatedPageController *)self delegate];
  v6 = [(THPaginatedPageController *)self presentationType];

  return [(THPageControllerDelegate *)v5 pageInfoForPageController:self pageIndex:a3 presentationType:v6];
}

- (unint64_t)p_relativePageIndexForCharIndex:(unint64_t)a3 caretAffinity:(int)a4 forceLayout:(BOOL)a5 searchAfterLayoutPoint:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [(THPaginatedPageController *)self bodyStorage];
  if (a3 && (v12 = v11, [(THWPStorage *)v11 length]> a3))
  {
    v13 = [(THWPStorage *)v12 characterAtIndex:a3 - 1];
    v14 = IsParagraphBreakingCharacter();
    if (v13 == 8232)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  v17 = 0;
  v25 = (a4 != 1) | v15;
  while (1)
  {
    v18 = [(THPaginatedPageController *)self p_bodyRangeForRelativePageIndex:v17 forceLayout:v7 allowAfterLayoutPoint:v6];
    v19 = v18;
    v21 = v20;
    if (v18 | v20)
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v6)
        {
          return v22;
        }

        v23 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
        if (a3 < 0x7FFFFFFFFFFFFFFFLL || v17 >= v23)
        {
          return v22;
        }

        goto LABEL_19;
      }
    }

    else if (![(THModelContentNode *)[(THPaginatedPageController *)self contentNode] isLoaded])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v19 > a3 && !v6)
    {
      break;
    }

    if (v19 > a3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_19:
    v16 += v21;
    v22 = v17;
    if (v19 + v21 <= a3)
    {
      v22 = v19 + v21 == a3 ? v17 : 0x7FFFFFFFFFFFFFFFLL;
      if (((v19 + v21 == a3) & v25) == 1)
      {
        if ([(THPaginatedPageController *)self p_isLayoutComplete]&& v17 == [(THPaginatedPageController *)self p_lastPageIndexWithBodyAfterPageIndex:v17])
        {
          v22 = v17;
          if (!(v16 | a3))
          {
            return 0;
          }
        }

        else
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    ++v17;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v22;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)p_lastPageIndexWithBodyAfterPageIndex:(unint64_t)a3
{
  v4 = [(THPaginatedPageController *)self pageHints];
  v5 = [(THPageHintController *)v4 pageCount];
  do
  {
    if (v5 <= a3)
    {
      break;
    }

    --v5;
  }

  while (![-[THPageHintController hintForRelativePageIndex:](v4 hintForRelativePageIndex:{v5), "bodyCount"}]);
  return v5;
}

- (id)p_pageHintForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    [(THPaginatedPageController *)self layoutThroughRelativePageIndex:a3 layoutController:[(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] layoutControllerForPageController:self]];
  }

  if (self->_firstPageIndexNeedingLayout <= a3 && !v5)
  {
    return 0;
  }

  if (!v5 && [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount]<= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount]<= a3)
  {
    return 0;
  }

  objc_opt_class();
  [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:a3];
  result = TSUDynamicCast();
  if (!v5 && !result)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (_NSRange)p_bodyRangeForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5
{
  v5 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:a3 forceLayout:a4 allowAfterLayoutPoint:a5];
  if (!v5)
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 firstHint];
  v8 = [v6 lastHint];
  v9 = v8;
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_13:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v7[4];
  v11 = v9[5];
  v12 = v11 + v9[4];
  if (v10 <= v12)
  {
    v13 = v11 + v9[4];
  }

  else
  {
    v13 = v7[4];
  }

  if (v10 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v7[4];
  }

  v15 = v13 - v14;
LABEL_14:
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)p_anchoredRangeForRelativePageIndex:(unint64_t)a3 forceLayout:(BOOL)a4 allowAfterLayoutPoint:(BOOL)a5
{
  v5 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:a3 forceLayout:a4 allowAfterLayoutPoint:a5];
  if (!v5)
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 firstHint];
  v8 = [v6 lastHint];
  v9 = v8;
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_13:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v7[7];
  v11 = v9[8];
  v12 = v11 + v9[7];
  if (v10 <= v12)
  {
    v13 = v11 + v9[7];
  }

  else
  {
    v13 = v7[7];
  }

  if (v10 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v7[7];
  }

  v15 = v13 - v14;
LABEL_14:
  result.length = v15;
  result.location = v14;
  return result;
}

- (unint64_t)p_relativePageIndexForAnchoredCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4 searchAfterLayoutPoint:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  for (i = 0; ; ++i)
  {
    v10 = [(THPaginatedPageController *)self p_anchoredRangeForRelativePageIndex:i forceLayout:v6 allowAfterLayoutPoint:v5];
    v11 = v10;
    v13 = v12;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v5)
      {
        return v14;
      }

      v15 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
      if (a3 < 0x7FFFFFFFFFFFFFFFLL || i >= v15)
      {
        return v14;
      }

      goto LABEL_10;
    }

    if (v10 > a3 && !v5)
    {
      break;
    }

    if (v10 > a3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_10:
    v14 = i;
    if (&v11[v13] <= a3)
    {
      if (&v11[v13] == a3 && [(THPaginatedPageController *)self p_isLayoutComplete])
      {
        if (i == self->_firstPageIndexNeedingLayout - 1)
        {
          v14 = i;
        }

        else
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v14;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_processWidowsAndInflationForLayoutController:(id)a3
{
  if (a3)
  {
    begin_node = self->_pageLayoutCache.__tree_.__begin_node_;
    p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
    if (begin_node != &self->_pageLayoutCache.__tree_.__end_node_)
    {
      do
      {
        if (begin_node->mPageHints >= self->_firstPageIndexNeedingLayout)
        {
          break;
        }

        mWrapController = begin_node->mWrapController;
        if ([(THBodyTextWrapController *)mWrapController layoutController]== a3)
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v8 = [(THBodyTextWrapController *)mWrapController bodyLayouts];
          v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            v10 = *v16;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v16 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v15 + 1) + 8 * i) processWidowAndInflation];
              }

              v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
            }

            while (v9);
          }
        }

        mDelegate = begin_node->mDelegate;
        if (mDelegate)
        {
          do
          {
            mContentNode = mDelegate;
            mDelegate = *mDelegate;
          }

          while (mDelegate);
        }

        else
        {
          do
          {
            mContentNode = begin_node->mContentNode;
            v14 = *mContentNode->super.TSPObject_opaque == begin_node;
            begin_node = mContentNode;
          }

          while (!v14);
        }

        begin_node = mContentNode;
      }

      while (mContentNode != p_end_node);
    }
  }
}

- (void)p_layoutThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4 clearOffscreenInfos:(BOOL)a5
{
  if (self->_doingLayout)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  [(THPaginatedPageController *)self p_processWidowsAndInflationForLayoutController:a4, a4, a5];
  if (![(THPaginatedPageController *)self p_isLayoutComplete]&& self->_firstPageIndexNeedingLayout <= a3)
  {
    v8 = [(THPaginatedPageController *)self p_isLayoutComplete];
    if ((v8 & 1) == 0)
    {
      v9 = v8;
      while (1)
      {
        [(THPaginatedPageController *)self p_layoutNextPageForLayoutController:a4];
        if (self->_firstPageIndexNeedingLayout > a3)
        {
          break;
        }

        if ([(THPaginatedPageController *)self p_isLayoutComplete])
        {
          if (v9)
          {
            goto LABEL_11;
          }

          break;
        }
      }

      [(THPaginatedPageController *)self p_clearOffscreenLayouts];
      [(THPaginatedPageController *)self p_processWidowsAndInflationForLayoutController:a4];
      [(THPaginatedPageController *)self p_didLayout];
    }
  }

LABEL_11:
  if ([(THPaginatedPageController *)self p_isLayoutComplete])
  {
    firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
    if (firstPageIndexNeedingLayout < [(THPaginatedPageController *)self pageCount])
    {
      p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
      left = self->_pageLayoutCache.__tree_.__end_node_.__left_;
      if (left)
      {
        v13 = self->_firstPageIndexNeedingLayout;
        v14 = &self->_pageLayoutCache.__tree_.__end_node_;
        do
        {
          v15 = left[4].__left_;
          v16 = v15 >= v13;
          v17 = v15 < v13;
          if (v16)
          {
            v14 = left;
          }

          left = left[v17].__left_;
        }

        while (left);
        if (v14 != p_end_node)
        {
          do
          {
            if (v14[4].__left_ > a3)
            {
              break;
            }

            [v14[5].__left_ validate];
            v18 = v14[1].__left_;
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = v18->__left_;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v14[2].__left_;
                v20 = v19->__left_ == v14;
                v14 = v19;
              }

              while (!v20);
            }

            v14 = v19;
          }

          while (v19 != p_end_node);
        }
      }
    }
  }
}

- (void)p_bodyLayoutDidLayout:(id)a3
{
  v5 = [a3 bodyIndexInPageLayout];
  [objc_msgSend(a3 "geometry")];
  v7 = v6;
  v9 = v8;
  v10 = -[THPaginatedPageController p_pageHintForRelativePageIndex:forceLayout:allowAfterLayoutPoint:](self, "p_pageHintForRelativePageIndex:forceLayout:allowAfterLayoutPoint:", [objc_msgSend(a3 "parent")], 0, 1);

  [v10 setSize:v5 forBodyIndex:{v7, v9}];
}

- (void)p_layoutWithPageLayout:(id)a3 outDidSync:(BOOL *)a4
{
  v7 = [a3 bodyLayouts];
  v8 = [(THPaginatedPageController *)self p_layoutManager];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = *v41;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      v39 = 0;
      v13 = [v8 layoutIntoTarget:v12 withLayoutState:self->_bodyLayoutState outSync:&v39];
      self->_bodyLayoutState = v13;
      if (v39 == 1)
      {
        *a4 = 1;
      }

      if (!v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(THPaginatedPageController *)self p_updateHintAtIndex:self->_firstPageIndexNeedingLayout withBodyTargets:v7];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v7);
        }

        [(THPaginatedPageController *)self p_bodyLayoutDidLayout:*(*(&v35 + 1) + 8 * i)];
      }

      v14 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
  left = self->_pageLayoutCache.__tree_.__end_node_.__left_;
  if (left)
  {
    firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
    v20 = &self->_pageLayoutCache.__tree_.__end_node_;
    do
    {
      v21 = left[4].__left_;
      v22 = v21 >= firstPageIndexNeedingLayout;
      v23 = v21 < firstPageIndexNeedingLayout;
      if (v22)
      {
        v20 = left;
      }

      left = left[v23].__left_;
    }

    while (left);
    if (v20 != p_end_node)
    {
      do
      {
        if (v20[4].__left_ != self->_firstPageIndexNeedingLayout)
        {
          break;
        }

        if (v20[5].__left_ != a3)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v24 = [v20[5].__left_ bodyLayouts];
          v25 = [v24 countByEnumeratingWithState:&v31 objects:v44 count:16];
          if (v25)
          {
            v26 = *v32;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v32 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                [*(*(&v31 + 1) + 8 * j) killColumns];
              }

              v25 = [v24 countByEnumeratingWithState:&v31 objects:v44 count:16];
            }

            while (v25);
          }
        }

        v28 = v20[1].__left_;
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = v28->__left_;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v20[2].__left_;
            v30 = v29->__left_ == v20;
            v20 = v29;
          }

          while (!v30);
        }

        v20 = v29;
      }

      while (v29 != p_end_node);
    }
  }

  if ([(THPaginatedPageController *)self p_isLayoutComplete])
  {
    [(THPaginatedPageController *)self p_destroyBodyLayoutState];
  }
}

- (void)p_layoutNextPageForLayoutController:(id)a3
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = [(THPaginatedPageController *)self p_cachedPageLayoutForPageIndex:self->_firstPageIndexNeedingLayout preferredLayoutController:a3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 bodyLayouts];
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v8 |= [*(*(&v18 + 1) + 8 * i) needsInflation] ^ 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (v8 & 1 | ![(THPaginatedPageController *)self p_generateHintForPageIndex:self->_firstPageIndexNeedingLayout])
  {
    if (!self->_bodyLayoutState)
    {
      if (self->_firstPageIndexNeedingLayout)
      {
        v12 = [(THPaginatedPageController *)self p_lastValidPageHint];
        if (v12)
        {
          v13 = [(THPaginatedPageController *)self p_layoutManager];
          if ([objc_msgSend(v6 "bodyLayouts")])
          {
            v14 = [objc_msgSend(v6 "bodyLayouts")];
          }

          else
          {
            v14 = 0;
          }

          self->_bodyLayoutState = [v13 layoutStateForLayoutTarget:v14 afterHint:objc_msgSend(v12 childHint:"lastHint") topicNumbers:objc_msgSend(v12 textIsVertical:{"lastChildHint"), objc_msgSend(v12, "topicNumbers"), 0}];
        }
      }
    }

    if (self->_doingLayout)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    self->_doingLayout = 1;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3F870;
    v15[3] = &unk_45B9D0;
    v15[4] = self;
    v15[5] = v16;
    [(THPaginatedPageController *)self p_performBlock:v15 withPageLayoutAtRelativeIndex:self->_firstPageIndexNeedingLayout preferredLayoutController:a3];
    self->_doingLayout = 0;
    _Block_object_dispose(v16, 8);
  }

  else
  {
    [(THPaginatedPageController *)self p_destroyBodyLayoutState];
  }

  ++self->_firstPageIndexNeedingLayout;
}

- (void)p_didLayout
{
  if ([(THPaginatedPageController *)self p_isLayoutComplete])
  {
    firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
    v4 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount];
    if (firstPageIndexNeedingLayout > v4)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (firstPageIndexNeedingLayout < v4)
    {
      [(THPageHintController *)[(THPaginatedPageController *)self pageHints] clearHintsOnRelativePageIndex:firstPageIndexNeedingLayout];
    }

    p_end_node = &self->_pageLayoutCache.__tree_.__end_node_;
    left = self->_pageLayoutCache.__tree_.__end_node_.__left_;
    if (left)
    {
      v7 = self->_firstPageIndexNeedingLayout;
      v8 = &self->_pageLayoutCache.__tree_.__end_node_;
      do
      {
        v9 = left[4].__left_;
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = left;
        }

        left = left[v11].__left_;
      }

      while (left);
      if (v8 != p_end_node)
      {
        do
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [v8[5].__left_ bodyLayouts];
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            v14 = *v20;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v19 + 1) + 8 * i) killColumns];
              }

              v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v13);
          }

          v16 = v8[1].__left_;
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = v16->__left_;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v8[2].__left_;
              v18 = v17->__left_ == v8;
              v8 = v17;
            }

            while (!v18);
          }

          v8 = v17;
        }

        while (v17 != p_end_node);
      }
    }
  }
}

- (id)i_pageHintForPageIndex:(unint64_t)a3
{
  if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount]<= a3)
  {
    return 0;
  }

  if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount]<= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v5;
}

- (void)i_setPageHintSize:(CGSize)a3 forRelativePageIndex:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  objc_sync_enter(self);
  [-[THPaginatedPageController i_pageHintForPageIndex:](self i_pageHintForPageIndex:{a4), "setSize:", width, height}];

  objc_sync_exit(self);
}

- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 inTarget:(id)a5 removeAutoNumberFootnoteCount:(unint64_t)a6
{
  firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
  if (firstPageIndexNeedingLayout <= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    firstPageIndexNeedingLayout = self->_firstPageIndexNeedingLayout;
  }

  if (firstPageIndexNeedingLayout - 1 != a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v12 = [-[THPageHintController hintForRelativePageIndex:](-[THPaginatedPageController pageHints](self "pageHints")];

  [v12 trimToCharIndex:a4 inTarget:a5 removeAutoNumberFootnoteCount:a6];
}

- (id)i_columnPriorToPageIndex:(unint64_t)a3
{
  if (self->_firstPageIndexNeedingLayout >= a3)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = a3 - 1;
  if (![(THPaginatedPageController *)self p_cachedPageLayoutForPageIndex:v5 preferredLayoutController:0]|| ![(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v5]|| (result = [[THVisibleColumnProxy alloc] initWithPageIndex:v5 pageController:self]) == 0)
  {
    result = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v5];
    if (result)
    {

      return [result lastColumn];
    }
  }

  return result;
}

- (id)i_columnAfterPageIndex:(unint64_t)a3
{
  if (self->_firstPageIndexNeedingLayout < a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = a3 + 1;
  if (v5 >= [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount])
  {
    return 0;
  }

  v6 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v5];
  if (v6 == +[NSNull null])
  {
    return 0;
  }

  return [(NSNull *)v6 firstColumn];
}

- (id)i_firstChildHintAfterPageIndex:(unint64_t)a3
{
  if (self->_firstPageIndexNeedingLayout < a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = a3 + 1;
  if (v5 >= [(THPageHintController *)[(THPaginatedPageController *)self pageHints] pageCount])
  {
    return 0;
  }

  v6 = [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v5];
  if (v6 == +[NSNull null])
  {
    return 0;
  }

  return [(NSNull *)v6 firstChildHint];
}

- (void)i_inflateColumnsInBodyLayout:(id)a3
{
  objc_sync_enter(self);
  if (!self->_doingLayout)
  {
    v5 = [a3 pageIndex];
    if (self->_firstPageIndexNeedingLayout <= v5 && [(THPageHintController *)[(THPaginatedPageController *)self pageHints] hintForRelativePageIndex:v5])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    else
    {
      v6 = [(THPaginatedPageController *)self i_pageHintForPageIndex:v5];
      if (!v6)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      if (v5)
      {
        v7 = [(THPaginatedPageController *)self i_pageHintForPageIndex:v5 - 1];
      }

      else
      {
        v7 = 0;
      }

      v8 = [a3 bodyIndexInPageLayout];
      if (v8 < [v6 nonEmptyBodyCount])
      {
        v9 = [v6 anchoredAttachmentPositionsForBodyChildAtIndex:v8];
        v10 = [(THPaginatedPageController *)self p_layoutManager];
        if (v6)
        {
          [v6 hintsForBodyIndex:v8];
        }

        else
        {
          __p = 0;
          v12 = 0;
          v13 = 0;
        }

        [v10 inflateTarget:a3 fromHints:&__p childHint:objc_msgSend(v7 anchoredAttachmentPositions:"lastChildHint") topicNumbers:{v9, objc_msgSend(v6, "topicNumbers")}];
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }

        [(THPaginatedPageController *)self p_validatePageHints];
        if (![objc_msgSend(a3 "columns")])
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }
      }

      [(THPaginatedPageController *)self p_bodyLayoutDidLayout:a3];
    }
  }

  objc_sync_exit(self);
}

- (void)i_registerPageLayout:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THPaginatedPageController *)self p_insertPageLayoutIntoCache:a3];

  objc_sync_exit(self);
}

- (void)i_unregisterPageLayout:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THPaginatedPageController *)self p_removePageLayoutFromCache:a3];

  objc_sync_exit(self);
}

- (CGRect)i_rectForSectionLayout
{
  v3 = [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] pagePositionControllerForPageController:self];
  [v3 pageSizeWithZeroInPagingDirection];
  v5 = v4;
  v7 = v6;
  v8 = [(THPaginatedPageController *)self pageCount];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if ([(THPageHintController *)[(THPaginatedPageController *)self pageHints] hasFullHintForRelativePageIndex:i])
      {
        [-[THPageHintController hintForRelativePageIndex:](-[THPaginatedPageController pageHints](self "pageHints")];
      }

      else
      {
        [v3 pageSize];
      }

      [v3 offsetSize:v5 inPagingDirectionWithOffset:{v7, v11, v12}];
      v5 = v13;
      v7 = v14;
    }
  }

  [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] canvasOriginForPageController:self];
  [(THPaginatedPageController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] canvasOriginDeltaForPageController:self];
  }

  if ([(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] displaySinglePageChapterSeparatelyForPageController:self]&& [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] isTwoUpForNavigationUnitForPageController:self])
  {
    [(THPageControllerDelegate *)[(THPaginatedPageController *)self delegate] pageCountForNavigationUnitForPageController:self];
  }

  TSDRectWithOriginAndSize();
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)needsAnnotationSourceForLayout:(id)a3
{
  v5 = [(THPaginatedPageController *)self delegate];

  return [(THPageControllerDelegate *)v5 pageController:self needsAnnotationSourceForLayout:a3];
}

- (BOOL)allowsDescendersToClip
{
  v3 = [(THPaginatedPageController *)self delegate];

  return [(THPageControllerDelegate *)v3 allowsDescendersToClipForPageController:self];
}

- (unint64_t)p_relativePageIndexPrecedingRelativePageIndex:(unint64_t)a3
{
  if (a3)
  {
    return a3 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)p_relativePageIndexFollowingRelativePageIndex:(unint64_t)a3
{
  if (a3 + 1 < [(THPaginatedPageController *)self pageCount])
  {
    return a3 + 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (const)i_topicHintsPriorToPageIndex:(unint64_t)a3
{
  if (self->_firstPageIndexNeedingLayout < a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THPaginatedPageController *)self p_relativePageIndexPrecedingRelativePageIndex:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:v5 forceLayout:0 allowAfterLayoutPoint:0];

  return [v7 topicNumbers];
}

- (const)i_topicHintsAfterPageIndex:(unint64_t)a3
{
  v4 = [(THPaginatedPageController *)self p_relativePageIndexFollowingRelativePageIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(THPaginatedPageController *)self p_pageHintForRelativePageIndex:v4 forceLayout:0 allowAfterLayoutPoint:0];

  return [v6 topicNumbers];
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 8) = self + 72;
  return self;
}

@end