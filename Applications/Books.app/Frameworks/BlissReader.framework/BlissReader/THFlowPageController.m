@interface THFlowPageController
- (BOOL)allowsDescendersToClip;
- (BOOL)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 originalContentOffset:(CGPoint)a5 targetContentOffset:(CGPoint *)a6;
- (CGPoint)originOfCharacterIndex:(unint64_t)a3 forRelativePageIndex:(unint64_t)a4;
- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3 pageFrame:(CGRect)a4;
- (CGRect)i_rectForBodyIndex:(unint64_t)a3;
- (CGRect)i_rectForPageLayout;
- (CGRect)i_rectForSectionLayout;
- (CGRect)p_overriddenBodyFrame;
- (CGRect)rectForAnchor;
- (CGSize)desiredPageSizeForRelativePageIndex:(unint64_t)a3;
- (CGSize)widgetStackMaxContainerSizeForSize:(CGSize)a3;
- (THFlowPageController)initWithDelegate:(id)a3 layoutObserver:(id)a4 contentNode:(id)a5 presentationType:(id)a6;
- (THModelBodyTextInfo)bodyInfo;
- (THModelFlowPageInfo)pageInfo;
- (_NSRange)firstLineInRect:(CGRect)a3 fromCharIndex:(unint64_t)a4;
- (_NSRange)i_textRangeForBodyIndex:(unint64_t)a3;
- (double)bodyTopAtIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)bodyAnchorForRect:(CGRect)a3 onMissReturnClosestBody:(BOOL)a4;
- (id)bodyInfoForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4;
- (id)i_infoForBodyIndex:(unint64_t)a3;
- (id)pageInfoForRelativePageIndex:(unint64_t)a3;
- (unint64_t)bodyIndexClosestToPoint:(CGPoint)a3;
- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3 forRelativePageIndex:(unint64_t)a4 onMissReturnClosestBody:(BOOL)a5;
- (unint64_t)i_bodyCount;
- (void)dealloc;
- (void)i_inflateColumnsInBodyLayout:(id)a3;
- (void)i_registerPageLayout:(id)a3;
- (void)i_setGutterOverhang:(double)a3;
- (void)i_setHeight:(double)a3 forBodyIndex:(unint64_t)a4;
- (void)i_setPageHintSize:(CGSize)a3 forRelativePageIndex:(unint64_t)a4;
- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 inTarget:(id)a5 removeAutoNumberFootnoteCount:(unint64_t)a6;
- (void)i_unregisterPageLayout:(id)a3;
- (void)layoutContentAtLayoutAnchor:(id)a3 padAbove:(double *)a4 padBelow:(double *)a5;
- (void)layoutContentFromBottom:(double *)a3;
- (void)layoutContentFromTop:(double *)a3;
- (void)p_ensureLoaded;
- (void)p_withPageLayoutPerformBlock:(id)a3;
- (void)prepareForLayout;
- (void)teardown;
- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4;
@end

@implementation THFlowPageController

- (THFlowPageController)initWithDelegate:(id)a3 layoutObserver:(id)a4 contentNode:(id)a5 presentationType:(id)a6
{
  v14.receiver = self;
  v14.super_class = THFlowPageController;
  v10 = [(THFlowPageController *)&v14 init];
  if (v10)
  {
    if ([a5 pageCountForPresentationType:a6] != &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v10->_delegate = a3;
    v10->_layoutObserver = a4;
    v10->_contentNode = a5;
    v10->_presentationType = a6;
    v10->_drawablesLayoutController = [[THOffscreenLayoutController alloc] initWithCanvas:0];
    [(THOffscreenLayoutController *)v10->_drawablesLayoutController setLayoutIsCompactWidth:[(THPresentationType *)[(THFlowPageController *)v10 presentationType] isCompactWidth]];
    [(THOffscreenLayoutController *)v10->_drawablesLayoutController setLayoutIsCompactHeight:[(THPresentationType *)[(THFlowPageController *)v10 presentationType] isCompactHeight]];
    [(THOffscreenLayoutController *)v10->_drawablesLayoutController setDelegate:v10];
    v11 = objc_alloc_init(THSectionInfo);
    v10->_offscreenSectionInfo = v11;
    [(THSectionInfo *)v11 setPageController:v10];
    size = CGRectZero.size;
    v10->_rectForAnchor.origin = CGRectZero.origin;
    v10->_rectForAnchor.size = size;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_delegate || self->_drawablesLayoutController || self->_offscreenSectionInfo || self->_contentNode || self->_pageInfo || self->_bodyInfo || self->_presentationType)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_cachedAnchorForRect = 0;
  v3.receiver = self;
  v3.super_class = THFlowPageController;
  [(THFlowPageController *)&v3 dealloc];
}

- (CGSize)widgetStackMaxContainerSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(THPresentationType *)[(THFlowPageController *)self presentationType] pageSize];
  v6 = fmin(height, v5 + 10.0 * -2.0);
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)prepareForLayout
{
  objc_sync_enter(self);
  [(THFlowPageController *)self p_ensureLoaded];

  objc_sync_exit(self);
}

- (void)layoutContentAtLayoutAnchor:(id)a3 padAbove:(double *)a4 padBelow:(double *)a5
{
  objc_sync_enter(self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_115AC8;
  v9[3] = &unk_45DAC0;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v9];
  objc_sync_exit(self);
}

- (void)layoutContentFromBottom:(double *)a3
{
  objc_sync_enter(self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_115C30;
  v5[3] = &unk_45DAE0;
  v5[4] = a3;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v5];
  objc_sync_exit(self);
}

- (void)layoutContentFromTop:(double *)a3
{
  objc_sync_enter(self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_115CDC;
  v5[3] = &unk_45DAE0;
  v5[4] = a3;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v5];
  objc_sync_exit(self);
}

- (id)bodyAnchorForRect:(CGRect)a3 onMissReturnClosestBody:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_sync_enter(self);
  [(THFlowPageController *)self rectForAnchor];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v15, v16) || ![(THFlowPageController *)self cachedAnchorForRect])
  {
    v10 = [(THFlowPageController *)self firstBodyCharacterIndexOverlappingPageRect:0 forRelativePageIndex:v4 onMissReturnClosestBody:x, y, width, height];
    v11 = [(THModelContentNode *)self->_contentNode nodeUniqueIDForInfo:[(THModelBodyTextInfo *)[(THFlowPageController *)self bodyInfo] bodyStorage] forPresentationType:self->_presentationType];

    self->_cachedAnchorForRect = 0;
    self->_cachedAnchorForRect = [[THModelStorageAnchor alloc] initWithContentNode:self->_contentNode storageUID:v11 range:v10, 1];
    [(THFlowPageController *)self setRectForAnchor:x, y, width, height];
  }

  objc_sync_exit(self);
  v12 = [(THFlowPageController *)self cachedAnchorForRect];

  return v12;
}

- (unint64_t)bodyIndexClosestToPoint:(CGPoint)a3
{
  y = a3.y;
  [(THFlowPageController *)self bodyOffset];
  v6 = v5;
  objc_sync_enter(self);
  if (self->_isLoaded)
  {
    begin = self->_bodyHints.__begin_;
    end = self->_bodyHints.__end_;
    if (begin == end)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = self->_bodyHints.__begin_;
      do
      {
        if (y - v6 < *v10 + *(v10 + 1))
        {
          break;
        }

        ++v9;
        v10 = (v10 + 40);
      }

      while (v10 != end);
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3) - 1;
    if (v9 >= v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(self);
  return v11;
}

- (double)bodyTopAtIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = 0.0;
  if (self->_isLoaded)
  {
    begin = self->_bodyHints.__begin_;
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
    if (v7 <= a3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      begin = self->_bodyHints.__begin_;
      v7 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
    }

    if (v7 > a3)
    {
      v5 = *(begin + 5 * a3);
    }
  }

  objc_sync_exit(self);
  [(THFlowPageController *)self bodyOffset];
  return v5 + v8;
}

- (_NSRange)firstLineInRect:(CGRect)a3 fromCharIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_116178;
  v19 = nullsub_23;
  v20 = "";
  v21 = xmmword_34A730;
  objc_sync_enter(self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_116188;
  v14[3] = &unk_45DB08;
  v14[4] = &v15;
  *&v14[5] = x;
  *&v14[6] = y;
  *&v14[7] = width;
  *&v14[8] = height;
  v14[9] = a4;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v14];
  objc_sync_exit(self);
  v10 = v16[6];
  v11 = v16[7];
  _Block_object_dispose(&v15, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 originalContentOffset:(CGPoint)a5 targetContentOffset:(CGPoint *)a6
{
  y = a4.y;
  if (fabs(a4.y) <= 0.2)
  {
    return 0;
  }

  v8 = a5.y;
  [(THPageControllerDelegate *)self->_delegate canvasOriginForPageController:self];
  if (self->_bodyHints.__end_ == self->_bodyHints.__begin_)
  {
    return 0;
  }

  v12 = v11;
  x = a6->x;
  v14 = a6->y;
  v15 = 1;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v17 = v15 - 1;
    [(THFlowPageController *)self i_rectForBodyIndex:v15 - 1];
    v19 = v12 + v18;
    v21 = v20 + v12 + v18;
    if (v19 < v14 && v21 > v14)
    {
      break;
    }

    if (v21 < v14)
    {
      v23 = v15 - 1;
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v19 > v14)
    {
      v24 = v15 - 1;
    }

    else
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (y > 0.0)
    {
      v23 = v24;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v23;
    }

    if (v15++ >= 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - self->_bodyHints.__begin_) >> 3))
    {
      goto LABEL_25;
    }
  }

  if (y < 0.0)
  {
LABEL_27:
    [(THFlowPageController *)self i_rectForBodyIndex:v17];
    v27 = v12 + v30;
    goto LABEL_28;
  }

  if (v17 >= 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - self->_bodyHints.__begin_) >> 3) - 1 || (-[THFlowPageController i_rectForBodyIndex:](self, "i_rectForBodyIndex:", v15), v27 = v12 + v26, [a3 frame], v27 >= v8 + v28))
  {
LABEL_25:
    v17 = v16;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_28:
  a6->x = x;
  a6->y = v27;
  return 1;
}

- (void)teardown
{
  objc_sync_enter(self);
  self->_delegate = 0;
  [(THOffscreenLayoutController *)self->_drawablesLayoutController setDelegate:0];

  self->_drawablesLayoutController = 0;
  self->_offscreenSectionInfo = 0;

  self->_contentNode = 0;
  self->_presentationType = 0;

  self->_pageInfo = 0;
  self->_bodyInfo = 0;
  begin = self->_bodyHints.__begin_;
  end = self->_bodyHints.__end_;
  while (begin != end)
  {

    *(begin + 4) = 0;
    begin = (begin + 40);
  }

  objc_sync_exit(self);
}

- (id)pageInfoForRelativePageIndex:(unint64_t)a3
{
  if (a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return [(THFlowPageController *)self pageInfo];
}

- (id)bodyInfoForCharIndex:(unint64_t)a3 forceLayout:(BOOL)a4
{
  objc_sync_enter(self);
  begin = self->_bodyHints.__begin_;
  end = self->_bodyHints.__end_;
  if (end == begin)
  {
    goto LABEL_15;
  }

  v8 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
  do
  {
    v9 = v8 >> 1;
    v10 = begin + 40 * (v8 >> 1);
    v11 = *(v10 + 3) + *(v10 + 2);
    v12 = (v10 + 40);
    v8 += ~(v8 >> 1);
    if (v11 <= a3)
    {
      begin = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (begin == end)
  {
LABEL_15:
    v16 = 0;
  }

  else
  {
    v13 = *(begin + 2);
    v15 = a3 >= v13;
    v14 = a3 - v13;
    v15 = !v15 || v14 >= *(begin + 3);
    if (v15)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    objc_opt_class();
    v16 = TSUCheckedDynamicCast();
  }

  objc_sync_exit(self);
  return v16;
}

- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3 forRelativePageIndex:(unint64_t)a4 onMissReturnClosestBody:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_sync_enter(self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1167BC;
  v17[3] = &unk_45DB30;
  v17[4] = &v18;
  *&v17[5] = x;
  *&v17[6] = y;
  *&v17[7] = width;
  *&v17[8] = height;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v17];
  v11 = v19;
  v12 = v19[3];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1167F8;
    v16[3] = &unk_45DB30;
    *&v16[5] = x;
    *&v16[6] = y;
    *&v16[7] = width;
    *&v16[8] = height;
    v16[4] = &v18;
    [(THFlowPageController *)self p_withPageLayoutPerformBlock:v16];
    v11 = v19;
    v12 = v19[3];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11[3] = 0;
  }

  objc_sync_exit(self);
  v14 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v14;
}

- (CGPoint)originOfCharacterIndex:(unint64_t)a3 forRelativePageIndex:(unint64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4012000000;
  v14 = sub_116B5C;
  v15 = nullsub_24;
  v16 = "";
  v17 = CGPointZero;
  objc_sync_enter(self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_116B6C;
  v10[3] = &unk_45DB58;
  v10[4] = &v11;
  v10[5] = a3;
  [(THFlowPageController *)self p_withPageLayoutPerformBlock:v10];
  objc_sync_exit(self);
  v6 = v12[6];
  v7 = v12[7];
  _Block_object_dispose(&v11, 8);
  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)desiredPageSizeForRelativePageIndex:(unint64_t)a3
{
  if (a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_sync_enter(self);
  [(THPagePositionController *)[(THFlowPageController *)self pagePositionController] pageSize];
  v5 = v4;
  if (self->_isLoaded)
  {
    v6 = 0.0;
    if ([(THModelFlowPageInfo *)[(THFlowPageController *)self pageInfo] hasBodyFlow])
    {
      v6 = *(self->_bodyHints.__end_ - 5) + *(self->_bodyHints.__end_ - 4);
    }

    [(THFlowPageController *)self bodyOffset];
    v8 = v7;
    [(THModelPageInfo *)[(THFlowPageController *)self pageInfo] autosizeMargin];
    v10 = v6 + v8 + v9 + 20.0 + self->_gutterOverhang;
    v11 = ceilf(v10);
  }

  else
  {
    v11 = 5000.0;
  }

  objc_sync_exit(self);
  v12 = v5;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGPoint)pageOriginForRelativePageIndex:(unint64_t)a3 pageFrame:(CGRect)a4
{
  v5 = [(THFlowPageController *)self pagePositionController:a4.origin.x];

  [(THPagePositionController *)v5 pageOriginForRelativePageIndex:a3];
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4
{
  v4 = [TSUAssertionHandler currentHandler:a3];
  v5 = [NSString stringWithUTF8String:"[THFlowPageController withRootSearchTargetAtIndex:executeBlock:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageController.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:529 description:@"flow page controller can't search yet"];
}

- (unint64_t)i_bodyCount
{
  objc_sync_enter(self);
  if (!self->_isLoaded)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - self->_bodyHints.__begin_) >> 3);
  objc_sync_exit(self);
  return v3;
}

- (CGRect)i_rectForBodyIndex:(unint64_t)a3
{
  [(THFlowPageController *)self p_overriddenBodyFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  objc_sync_enter(self);
  begin = self->_bodyHints.__begin_;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  if (v14 <= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    begin = self->_bodyHints.__begin_;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  }

  if (v14 > a3)
  {
    [(THFlowPageController *)self bodyOffset];
    v15 = (begin + 40 * a3);
    v12 = v15[1];
    v8 = v16 + *v15;
  }

  objc_sync_exit(self);
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)i_setHeight:(double)a3 forBodyIndex:(unint64_t)a4
{
  objc_sync_enter(self);
  begin = self->_bodyHints.__begin_;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  if (v8 <= a4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    begin = self->_bodyHints.__begin_;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  }

  if (v8 > a4)
  {
    v9 = a3 - *(begin + 5 * a4 + 1);
    if (v9 != 0.0)
    {
      [(THFlowLayoutObserver *)self->_layoutObserver flowPageControllerWillChangeContentHeight:self];
      end = self->_bodyHints.__end_;
      v11 = (self->_bodyHints.__begin_ + 40 * a4);
      v11[1] = a3;
      for (i = v11 + 5; i != end; i += 5)
      {
        *i = v9 + *i;
      }
    }
  }

  objc_sync_exit(self);
}

- (_NSRange)i_textRangeForBodyIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  begin = self->_bodyHints.__begin_;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  if (v6 <= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    begin = self->_bodyHints.__begin_;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  }

  if (v6 <= a3)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v7 = begin + 40 * a3;
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
  }

  objc_sync_exit(self);
  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)i_infoForBodyIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  begin = self->_bodyHints.__begin_;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  if (v6 <= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    begin = self->_bodyHints.__begin_;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((self->_bodyHints.__end_ - begin) >> 3);
  }

  if (v6 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(begin + 5 * a3 + 4);
  }

  objc_sync_exit(self);
  return v7;
}

- (void)i_setGutterOverhang:(double)a3
{
  objc_sync_enter(self);
  self->_gutterOverhang = a3;

  objc_sync_exit(self);
}

- (CGRect)i_rectForPageLayout
{
  [(THFlowPageController *)self desiredPageSizeForRelativePageIndex:0];

  TSDRectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)i_setPageHintSize:(CGSize)a3 forRelativePageIndex:(unint64_t)a4
{
  v4 = [TSUAssertionHandler currentHandler:a4];
  v5 = [NSString stringWithUTF8String:"[THFlowPageController i_setPageHintSize:forRelativePageIndex:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageController.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:652 description:@"flow page controller doesn't want to be told the page size"];
}

- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 inTarget:(id)a5 removeAutoNumberFootnoteCount:(unint64_t)a6
{
  v6 = [TSUAssertionHandler currentHandler:a3];
  v7 = [NSString stringWithUTF8String:"[THFlowPageController i_trimPageAtIndex:toCharIndex:inTarget:removeAutoNumberFootnoteCount:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageController.mm"];

  [v6 handleFailureInFunction:v7 file:v8 lineNumber:657 description:@"flow page controller doesn't support trimming"];
}

- (void)i_inflateColumnsInBodyLayout:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THFlowPageController i_inflateColumnsInBodyLayout:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageController.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:680 description:@"flow page controller doesn't support inflation"];
}

- (void)i_registerPageLayout:(id)a3
{
  objc_sync_enter(self);
  v5 = [a3 info];
  if (v5 != [(THFlowPageController *)self pageInfo])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  cachedPageLayout = self->_cachedPageLayout;
  if (cachedPageLayout && ([-[THFlowPageLayout layoutController](cachedPageLayout "layoutController")] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([-[THFlowPageLayout layoutController](self->_cachedPageLayout "layoutController")])
  {
    [(THOffscreenLayoutController *)self->_drawablesLayoutController setInfos:+[NSArray array]];
    [(THOffscreenLayoutController *)self->_drawablesLayoutController validateLayouts];
  }

  self->_cachedPageLayout = a3;
  [(THFlowPageController *)self setCachedPageLayoutValidated:0];

  objc_sync_exit(self);
}

- (void)i_unregisterPageLayout:(id)a3
{
  objc_sync_enter(self);
  v5 = [a3 info];
  if (v5 != [(THFlowPageController *)self pageInfo])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_cachedPageLayout != a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_cachedPageLayout = 0;

  self->_cachedAnchorForRect = 0;
  [(THFlowPageController *)self setCachedPageLayoutValidated:0];
  [(THFlowPageController *)self setRectForAnchor:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  objc_sync_exit(self);
}

- (CGRect)i_rectForSectionLayout
{
  objc_sync_enter(self);
  [(THPageControllerDelegate *)self->_delegate canvasOriginForPageController:self];
  [(THFlowPageController *)self desiredPageSizeForRelativePageIndex:0];
  TSDRectWithOriginAndSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_sync_exit(self);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)allowsDescendersToClip
{
  v3 = [(THFlowPageController *)self delegate];

  return [(THPageControllerDelegate *)v3 allowsDescendersToClipForPageController:self];
}

- (THModelFlowPageInfo)pageInfo
{
  result = self->_pageInfo;
  if (!result)
  {
    objc_opt_class();
    [(THModelContentNode *)self->_contentNode pageAtRelativeIndex:0 forPresentationType:[(THFlowPageController *)self presentationType]];
    v4 = TSUDynamicCast();
    self->_pageInfo = v4;
    v5 = v4;
    result = self->_pageInfo;
    if (!result)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return self->_pageInfo;
    }
  }

  return result;
}

- (THModelBodyTextInfo)bodyInfo
{
  result = self->_bodyInfo;
  if (!result)
  {
    v4 = [(THModelPageInfo *)[(THFlowPageController *)self pageInfo] modelBodyInfos];
    if ([(NSArray *)v4 count]!= &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    objc_opt_class();
    [(NSArray *)v4 lastObject];
    v5 = TSUDynamicCast();
    self->_bodyInfo = v5;
    v6 = v5;
    result = self->_bodyInfo;
    if (!result)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return self->_bodyInfo;
    }
  }

  return result;
}

- (CGRect)p_overriddenBodyFrame
{
  [-[THModelBodyTextInfo geometry](-[THFlowPageController bodyInfo](self "bodyInfo")];
  layoutObserver = self->_layoutObserver;

  [(THFlowLayoutObserver *)layoutObserver flowPageController:self overrideForBodyFrame:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)p_ensureLoaded
{
  if (!self->_isLoaded)
  {
    v3 = [(THModelBodyTextInfo *)[(THFlowPageController *)self bodyInfo] bodyStorage];
    v4 = [(THWPStorage *)v3 paragraphCount];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0.0;
      do
      {
        if ([(THPageControllerDelegate *)[(THFlowPageController *)self delegate] isCompactFlowPresentationForPageController:self])
        {
          v8 = 1;
        }

        else
        {
          v8 = 5;
        }

        if (v8 >= &v5[-v6])
        {
          v9 = &v5[-v6];
        }

        else
        {
          v9 = v8;
        }

        v10 = [(THWPStorage *)v3 textRangeForParagraphsInRange:v6, v9];
        v12 = v11;
        v13 = [[THFlowBodyChunkInfo alloc] initWithBodyInfo:[(THFlowPageController *)self bodyInfo]];
        end = self->_bodyHints.__end_;
        cap = self->_bodyHints.__cap_;
        if (end >= cap)
        {
          begin = self->_bodyHints.__begin_;
          v18 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0x666666666666666)
          {
            sub_3A53C();
          }

          v20 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 3);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x333333333333333)
          {
            v21 = 0x666666666666666;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_118220(&self->_bodyHints, v21);
          }

          v22 = 40 * v18;
          *v22 = v7;
          *(v22 + 8) = 0x4087700000000000;
          *(v22 + 16) = v10;
          *(v22 + 24) = v12;
          *(v22 + 32) = v13;
          v16 = (40 * v18 + 40);
          v23 = self->_bodyHints.__begin_;
          v24 = (self->_bodyHints.__end_ - v23);
          v25 = (40 * v18 - v24);
          memcpy(v25, v23, v24);
          v26 = self->_bodyHints.__begin_;
          self->_bodyHints.__begin_ = v25;
          self->_bodyHints.__end_ = v16;
          self->_bodyHints.__cap_ = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *end = v7;
          *(end + 1) = 0x4087700000000000;
          *(end + 2) = v10;
          v16 = (end + 40);
          *(end + 3) = v12;
          *(end + 4) = v13;
        }

        self->_bodyHints.__end_ = v16;
        v7 = v7 + 750.0;
        v6 += v9;
      }

      while (v6 < v5);
    }

    self->_isLoaded = 1;
  }
}

- (void)p_withPageLayoutPerformBlock:(id)a3
{
  [(THFlowPageController *)self p_ensureLoaded];
  cachedPageLayout = self->_cachedPageLayout;
  if (cachedPageLayout)
  {
    if (![(THFlowPageController *)self cachedPageLayoutValidated])
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(THFlowLayoutObserver *)self->_layoutObserver flowPageController:self isEdgeObscured:2];
      }

      else
      {
        v6 = 0;
      }

      [(THFlowPageLayout *)cachedPageLayout setMaxXEdgeObscured:v6];
      [-[THFlowPageLayout layoutController](cachedPageLayout "layoutController")];
      [(THFlowPageController *)self setCachedPageLayoutValidated:1];
    }
  }

  else
  {
    [(THSectionInfo *)self->_offscreenSectionInfo setPages:[NSArray arrayWithObject:[(THFlowPageController *)self pageInfo]]];
    [(THOffscreenLayoutController *)self->_drawablesLayoutController setInfos:[NSArray arrayWithObject:self->_offscreenSectionInfo]];
    [(THOffscreenLayoutController *)self->_drawablesLayoutController validateLayouts];
    cachedPageLayout = self->_cachedPageLayout;
    [(THFlowPageController *)self setCachedPageLayoutValidated:0];
    if (!cachedPageLayout)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      cachedPageLayout = 0;
    }
  }

  v7 = *(a3 + 2);

  v7(a3, cachedPageLayout);
}

- (CGRect)rectForAnchor
{
  x = self->_rectForAnchor.origin.x;
  y = self->_rectForAnchor.origin.y;
  width = self->_rectForAnchor.size.width;
  height = self->_rectForAnchor.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end