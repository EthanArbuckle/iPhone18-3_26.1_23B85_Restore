@interface THReflowableContentPaginationOperation
- (CGPoint)canvasOriginForPageController:(id)controller;
- (CGSize)pageSizeForPagePositionController:(id)controller;
- (THReflowableContentPaginationOperation)initWithContentNode:(id)node paginationResults:(id)results flowModelContentNodeBody:(id)body presentationType:(id)type documentRoot:(id)root isForegroundPagination:(BOOL)pagination delegate:(id)delegate;
- (id)bodyStorageForPageController:(id)controller presentationType:(id)type;
- (id)p_addPageToContentBody;
- (id)pageInfoForPageController:(id)controller pageIndex:(unint64_t)index presentationType:(id)type;
- (unint64_t)pageCountForPageController:(id)controller presentationType:(id)type;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)p_accumulateStorageUIDsForChildrenInObject:(id)object forRelativePageIndex:(unint64_t)index;
@end

@implementation THReflowableContentPaginationOperation

- (THReflowableContentPaginationOperation)initWithContentNode:(id)node paginationResults:(id)results flowModelContentNodeBody:(id)body presentationType:(id)type documentRoot:(id)root isForegroundPagination:(BOOL)pagination delegate:(id)delegate
{
  v18.receiver = self;
  v18.super_class = THReflowableContentPaginationOperation;
  v15 = [(THReflowableContentPaginationOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_contentNode = node;
    v15->_documentRoot = root;
    v16->_flowModelContentNodeBody = body;
    v16->_presentationType = [type copyFixingSize];
    v16->_paginationResults = results;
    v16->_isForegroundPagination = pagination;
    v16->_delegate = delegate;
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

- (void)p_accumulateStorageUIDsForChildrenInObject:(id)object forRelativePageIndex:(unint64_t)index
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  childEnumerator = [object childEnumerator];
  v7 = [childEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(childEnumerator);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        v12 = TSUDynamicCast();
        if (v12)
        {
          -[THModelContentNodeReflowablePaginationResults assignRelativePageIndex:toStorageUID:](-[THReflowableContentPaginationOperation paginationResults](self, "paginationResults"), "assignRelativePageIndex:toStorageUID:", index, -[THModelContentNodeBody nodeUniqueIDForInfo:](-[THReflowableContentPaginationOperation flowModelContentNodeBody](self, "flowModelContentNodeBody"), "nodeUniqueIDForInfo:", [v12 containedStorage]));
        }

        else if (objc_opt_respondsToSelector())
        {
          [(THReflowableContentPaginationOperation *)self p_accumulateStorageUIDsForChildrenInObject:v11 forRelativePageIndex:index];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [childEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    infos = [(THModelContentNodeBody *)self->_flowModelContentNodeBody infos];
    v5 = [infos countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(infos);
          }

          [(THModelContentNodeBody *)self->_paginatedModelContentNodeBody setNodeUniqueID:[(THModelContentNodeBody *)self->_flowModelContentNodeBody nodeUniqueIDForInfo:*(*(&v20 + 1) + 8 * v8)] forInfo:*(*(&v20 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [infos countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          p_addPageToContentBody = [(THReflowableContentPaginationOperation *)self p_addPageToContentBody];
          v11 = [(THModelContentNodeReflowablePaginationResults *)[(THReflowableContentPaginationOperation *)self paginationResults] hintRangeForRelativePageIndex:v9];
          v13 = v12;
          [p_addPageToContentBody setPageStartCharIndex:v11];
          [p_addPageToContentBody setPageEndCharIndex:&v11[v13]];
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
        bodyStorage = [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage];
        v16 = objc_opt_class();
        range = [(THWPStorage *)bodyStorage range];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_49930;
        v19[3] = &unk_45BA80;
        v19[4] = self;
        [(THWPStorage *)bodyStorage enumerateAttachmentsOfClass:v16 inTextRange:range usingBlock:v18, v19];
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
  context = [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] gutterDrawableStorage] context];
  v4 = [[THModelPageInfo alloc] initWithContext:context];
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
  v18 = [[THModelBodyTextInfo alloc] initWithContext:context geometry:v17];

  v19 = [[TSSPropertyMap alloc] initWithCapacity:3];
  [v19 setObject:+[TSWPPadding padding](TSWPPadding forProperty:{"padding"), 145}];
  columnCount = [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] columnCount];
  if (columnCount < 2)
  {
    [v19 setObject:+[TSWPColumns columns](TSWPColumns forProperty:{"columns"), 148}];
  }

  else
  {
    v21 = columnCount;
    [(THPresentationType *)[(THReflowableContentPaginationOperation *)self presentationType] gutterWidth];
    v23 = [[TSWPColumns alloc] initWithEqualColumnCount:v21 gapFraction:v22 / v15];
    [v19 setObject:v23 forProperty:148];
  }

  v24 = [[TSWPColumnStyle alloc] initWithContext:context name:0 overridePropertyMap:v19 isVariation:0];
  [(THModelBodyTextInfo *)v18 setColumnStyle:v24];

  [(THModelBodyTextInfo *)v18 setExteriorTextWrap:+[TSDExteriorTextWrap exteriorTextWrap]];
  [(THModelPageInfo *)v4 addBodyBoxInfo:v18 insertContext:0];
  drawablesZOrder = [(THModelPageInfo *)v4 drawablesZOrder];
  [(THDrawablesZOrder *)drawablesZOrder addDrawable:[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage]];
  [(THDrawablesZOrder *)drawablesZOrder addDrawable:v18];
  [(THModelPageInfo *)v4 setParent:[(THReflowableContentPaginationOperation *)self contentNode]];

  return v4;
}

- (CGSize)pageSizeForPagePositionController:(id)controller
{
  presentationType = [(THReflowableContentPaginationOperation *)self presentationType];

  [(THPresentationType *)presentationType pageSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGPoint)canvasOriginForPageController:(id)controller
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (unint64_t)pageCountForPageController:(id)controller presentationType:(id)type
{
  v5 = [(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody:controller] pages] count];
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
          range = [(THWPStorage *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] bodyStorage] range];
          v11 = &range[v10];
          range2 = [(NSNull *)v8 range];
          if (v11 <= &range2[v13])
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

- (id)bodyStorageForPageController:(id)controller presentationType:(id)type
{
  v4 = [(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody:controller];

  return [(THModelContentNodeBody *)v4 bodyStorage];
}

- (id)pageInfoForPageController:(id)controller pageIndex:(unint64_t)index presentationType:(id)type
{
  if ([(THReflowableContentPaginationOperation *)self pageController:controller]!= controller)
  {
    return 0;
  }

  if ([(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] count]<= index || ![(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] objectAtIndex:index])
  {
    v8 = [(NSArray *)[(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages] count];
    if (v8 <= index)
    {
      v9 = v8;
      do
      {
        [(THReflowableContentPaginationOperation *)self p_addPageToContentBody];
        ++v9;
      }

      while (v9 <= index);
    }
  }

  pages = [(THModelContentNodeBody *)[(THReflowableContentPaginationOperation *)self paginatedModelContentNodeBody] pages];

  return [(NSArray *)pages objectAtIndex:index];
}

@end