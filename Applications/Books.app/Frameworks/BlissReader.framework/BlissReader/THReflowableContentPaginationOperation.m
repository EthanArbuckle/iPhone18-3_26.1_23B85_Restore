@interface THReflowableContentPaginationOperation
- (CGPoint)canvasOriginForPageController:(id)a3;
- (CGSize)pageSizeForPagePositionController:(id)a3;
- (THReflowableContentPaginationOperation)initWithContentNode:(id)a3 paginationResults:(id)a4 flowModelContentNodeBody:(id)a5 presentationType:(id)a6 documentRoot:(id)a7 isForegroundPagination:(BOOL)a8 delegate:(id)a9;
- (id)bodyStorageForPageController:(id)a3 presentationType:(id)a4;
- (id)p_addPageToContentBody;
- (id)pageInfoForPageController:(id)a3 pageIndex:(unint64_t)a4 presentationType:(id)a5;
- (unint64_t)pageCountForPageController:(id)a3 presentationType:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)p_accumulateStorageUIDsForChildrenInObject:(id)a3 forRelativePageIndex:(unint64_t)a4;
@end

@implementation THReflowableContentPaginationOperation

- (THReflowableContentPaginationOperation)initWithContentNode:(id)a3 paginationResults:(id)a4 flowModelContentNodeBody:(id)a5 presentationType:(id)a6 documentRoot:(id)a7 isForegroundPagination:(BOOL)a8 delegate:(id)a9
{
  v18.receiver = self;
  v18.super_class = THReflowableContentPaginationOperation;
  v15 = [(THReflowableContentPaginationOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_contentNode = a3;
    v15->_documentRoot = a7;
    v16->_flowModelContentNodeBody = a5;
    v16->_presentationType = [a6 copyFixingSize];
    v16->_paginationResults = a4;
    v16->_isForegroundPagination = a8;
    v16->_delegate = a9;
  }

  return v16;
}

- (void)dealloc
{
  self->_documentRoot = 0;

  self->_flowModelContentNodeBody = 0;
  self->_paginatedModelContentNodeBody = 0;

  self->_presentationType = 0;
  self->_pageController = 0;

  self->_pagePositionController = 0;
  self->_paginationResults = 0;
  v3.receiver = self;
  v3.super_class = THReflowableContentPaginationOperation;
  [(THReflowableContentPaginationOperation *)&v3 dealloc];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = THReflowableContentPaginationOperation;
  [(THReflowableContentPaginationOperation *)&v3 cancel];
  [(THPaginatedPageController *)self->_pageController teardown];
}

- (void)p_accumulateStorageUIDsForChildrenInObject:(id)a3 forRelativePageIndex:(unint64_t)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 childEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        v12 = TSUDynamicCast();
        if (v12)
        {
          -[THModelContentNodeReflowablePaginationResults assignRelativePageIndex:toStorageUID:](-[THReflowableContentPaginationOperation paginationResults](self, "paginationResults"), "assignRelativePageIndex:toStorageUID:", a4, -[THModelContentNodeBody nodeUniqueIDForInfo:](-[THReflowableContentPaginationOperation flowModelContentNodeBody](self, "flowModelContentNodeBody"), "nodeUniqueIDForInfo:", [v12 containedStorage]));
        }

        else if (objc_opt_respondsToSelector())
        {
          [(THReflowableContentPaginationOperation *)self p_accumulateStorageUIDsForChildrenInObject:v11 forRelativePageIndex:a4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if (([(THReflowableContentPaginationOperation *)self isCancelled]& 1) == 0)
  {
    self->_pageController = [[THPaginatedPageController alloc] initWithDelegate:self contentNode:self->_contentNode paginationController:0 presentationType:self->_presentationType];
    self->_pagePositionController = [THPagePositionController paginatedPositionerWithDelegate:self];
    self->_paginatedModelContentNodeBody = [[THModelContentNodeBody alloc] initWithContext:[(THDocumentRoot *)[(THReflowableContentPaginationOperation *)self documentRoot] context]];
    [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] setStylesheet:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self flowModelContentNodeBody] stylesheet]];
    [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] setBodyStorage:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self flowModelContentNodeBody] bodyStorage]];
    [(THWPStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage] setFontSize:[(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] fontSize]];
    [(THWPStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage] setUsesApplicationFontScaling:1];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [(THModelContentNodeBody *)self->_flowModelContentNodeBody infos];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(THModelContentNodeBody *)self->_paginatedModelContentNodeBody setNodeUniqueID:[(THModelContentNodeBody *)self->_flowModelContentNodeBody nodeUniqueIDForInfo:*(*(&v20 + 1) + 8 * v8)] forInfo:*(*(&v20 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    if ([(THReflowableContentPaginationOperation *)self paginationResults])
    {
      if ([(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] pageCount])
      {
        v9 = 0;
        do
        {
          v10 = [(THReflowableContentPaginationOperation *)self p_addPageToContentBody];
          v11 = [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] hintRangeForRelativePageIndex:v9];
          v13 = v12;
          [v10 setPageStartCharIndex:v11];
          [v10 setPageEndCharIndex:&v11[v13]];
          ++v9;
        }

        while (v9 < [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] pageCount]);
      }
    }

    else
    {
      if (([(THReflowableContentPaginationOperation *)self isCancelled]& 1) == 0)
      {
        v14 = objc_alloc_init(THModelContentNodeReflowablePaginationResults);
        self->_paginationResults = v14;
        [(THModelContentNodeReflowablePaginationResults *)v14 setPageCount:1];
        [(THModelContentNodeReflowablePaginationResults *)self->_paginationResults setNodeGUID:[(THModelNode *)[(THReflowableContentPaginationOperation *)self contentNode] nodeGUID]];
        [(THModelContentNodeReflowablePaginationResults *)self->_paginationResults setPresentationType:[(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] copyFixingSize]];
        [(THPaginatedPageController *)[(THReflowableContentPaginationOperation *)self pageController] layoutThroughRelativePageIndex:-1 layoutController:0];
      }

      if (([(THReflowableContentPaginationOperation *)self isCancelled]& 1) == 0)
      {
        [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] setPageHints:[(NSArray *)[(THPageHintController *)[(THPaginatedPageController *)[(THReflowableContentPaginationOperation *)self pageController] pageHints] pageHints] mutableCopy]];
        [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] setBodyStorageUID:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] nodeUniqueIDForInfo:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage]]];
        v15 = [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage];
        v16 = objc_opt_class();
        v17 = [(THWPStorage *)v15 range];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_49930;
        v19[3] = &unk_45BA80;
        v19[4] = self;
        [(THWPStorage *)v15 enumerateAttachmentsOfClass:v16 inTextRange:v17 usingBlock:v18, v19];
      }
    }
  }

  if (([(THReflowableContentPaginationOperation *)self isCancelled]& 1) == 0)
  {
    [(THReflowableContentPaginationOperationDelegate *)[(THReflowableContentPaginationOperation *)self delegate] contentPaginationOperation:self paginatedNodeBody:[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] forPresentationType:[(THReflowableContentPaginationOperation *)self presentationType]];
  }

  [(THPaginatedPageController *)self->_pageController teardown];
  objc_autoreleasePoolPop(v3);
}

- (id)p_addPageToContentBody
{
  v3 = [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] gutterDrawableStorage] context];
  v4 = [[THModelPageInfo alloc] initWithContext:v3];
  v5 = [TSDInfoGeometry alloc];
  [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] pageSize];
  v6 = [v5 initWithSize:?];
  [(THModelPageInfo *)v4 setGeometry:v6];

  [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] addPageInfo:v4];
  y = CGPointZero.y;
  [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] pageSize];
  v9 = v8;
  v11 = v10;
  [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] contentInsets];
  v15 = v9 - (v13 + v14);
  v17 = [[TSDInfoGeometry alloc] initWithPosition:CGPointZero.x + v13 size:{y + v12, v15, v11 - (v12 + v16)}];
  v18 = [[THModelBodyTextInfo alloc] initWithContext:v3 geometry:v17];

  v19 = [[TSSPropertyMap alloc] initWithCapacity:3];
  [v19 setObject:+[TSWPPadding padding](TSWPPadding forProperty:{"padding"), 145}];
  v20 = [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] columnCount];
  if (v20 < 2)
  {
    [v19 setObject:+[TSWPColumns columns](TSWPColumns forProperty:{"columns"), 148}];
  }

  else
  {
    v21 = v20;
    [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] gutterWidth];
    v23 = [[TSWPColumns alloc] initWithEqualColumnCount:v21 gapFraction:v22 / v15];
    [v19 setObject:v23 forProperty:148];
  }

  v24 = [[TSWPColumnStyle alloc] initWithContext:v3 name:0 overridePropertyMap:v19 isVariation:0];
  [(THModelBodyTextInfo *)v18 setColumnStyle:v24];

  [(THModelBodyTextInfo *)v18 setExteriorTextWrap:+[TSDExteriorTextWrap exteriorTextWrap]];
  [(THModelPageInfo *)v4 addBodyBoxInfo:v18 insertContext:0];
  v25 = [(THModelPageInfo *)v4 drawablesZOrder];
  [(THDrawablesZOrder *)v25 addDrawable:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage]];
  [(THDrawablesZOrder *)v25 addDrawable:v18];
  [(THModelPageInfo *)v4 setParent:[(THReflowableContentPaginationOperation *)self contentNode]];

  return v4;
}

- (CGSize)pageSizeForPagePositionController:(id)a3
{
  v3 = [(THReflowableContentPaginationOperation *)self presentationType];

  [(THPresentationType *)v3 pageSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGPoint)canvasOriginForPageController:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (unint64_t)pageCountForPageController:(id)a3 presentationType:(id)a4
{
  v5 = [(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody:a3] pages] count];
  if (([(THReflowableContentPaginationOperation *)self isCancelled]& 1) == 0)
  {
    if (v5)
    {
      v6 = v5 + 1;
      v7 = [(THPageHintController *)[(THPaginatedPageController *)[(THReflowableContentPaginationOperation *)self pageController] pageHints] hintForRelativePageIndex:v5 - 1];
      if (v7)
      {
        v8 = v7;
        if (v7 != +[NSNull null])
        {
          v9 = [(THWPStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage] range];
          v11 = &v9[v10];
          v12 = [(NSNull *)v8 range];
          if (v11 <= &v12[v13])
          {
            v6 = v5;
          }
        }
      }
    }

    else
    {
      v6 = 1;
    }

    if (v6 >= 0xFA0)
    {
      v5 = 4000;
    }

    else
    {
      v5 = v6;
    }

    [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] setPageCount:v5];
  }

  return v5;
}

- (id)bodyStorageForPageController:(id)a3 presentationType:(id)a4
{
  v4 = [(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody:a3];

  return [(THModelContentNodeBody *)v4 bodyStorage];
}

- (id)pageInfoForPageController:(id)a3 pageIndex:(unint64_t)a4 presentationType:(id)a5
{
  if ([(THReflowableContentPaginationOperation *)self pageController:a3]!= a3)
  {
    return 0;
  }

  if ([(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] count]<= a4 || ![(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] objectAtIndex:a4])
  {
    v8 = [(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] count];
    if (v8 <= a4)
    {
      v9 = v8;
      do
      {
        [(THReflowableContentPaginationOperation *)self p_addPageToContentBody];
        ++v9;
      }

      while (v9 <= a4);
    }
  }

  v10 = [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages];

  return [(NSArray *)v10 objectAtIndex:a4];
}

@end