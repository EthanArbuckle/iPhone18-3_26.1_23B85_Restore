@interface THModelNode
- (BOOL)isEqual:(id)a3;
- (THModelNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5;
- (_NSRange)absolutePageRangeForPresentationType:(id)a3;
- (id)modelLinkWithFragment:(id)a3;
- (id)nextSibling;
- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)a3 presentationType:(id)a4;
- (id)previousSibling;
- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)a3;
- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (unint64_t)precedingPageCountForPresentationType:(id)a3;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)a3;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (void)addMappingFromGUIDToNodeToDictionary:(id)a3;
- (void)dealloc;
- (void)enterAddedState:(id)a3;
- (void)enterAddingState:(id)a3;
- (void)enterRemovedState:(id)a3;
- (void)enterRemovingState:(id)a3;
- (void)setNodeGUID:(id)a3;
- (void)setPageCount:(unint64_t)a3 forPresentationType:(id)a4;
- (void)setTitle:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation THModelNode

- (void)setNodeGUID:(id)a3
{
  [(THModelNode *)self willModify];
  v5 = a3;

  self->mGUID = a3;
}

- (void)setTitle:(id)a3
{
  [(THModelNode *)self willModify];
  v5 = a3;

  self->mTitle = a3;
}

- (THModelNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = THModelNode;
  v8 = [(THModelNode *)&v11 initWithContext:a5];
  v9 = v8;
  if (v8)
  {
    [(THModelNode *)v8 setState:0];
    [(THModelNode *)v9 setNodeGUID:+[NSString tsu_stringWithUUID]];
    [(THModelNode *)v9 setTitle:a3];
    [(THModelNode *)v9 setIncludeInTOC:v6];
    [(THModelNode *)v9 setPaginatedPresentationType:[THPresentationType paginatedPresentationTypeInContext:a5]];
  }

  return v9;
}

- (void)dealloc
{
  self->mGUID = 0;

  self->mTitle = 0;
  self->mPageCountByPresentationType = 0;

  self->mPaginatedPresentationType = 0;
  self->mParent = 0;
  v3.receiver = self;
  v3.super_class = THModelNode;
  [(THModelNode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(THModelNode *)self nodeGUID];
  v6 = [a3 nodeGUID];

  return [(NSString *)v5 isEqualToString:v6];
}

- (unint64_t)precedingPageCountForPresentationType:(id)a3
{
  v5 = [[(THModelNode *)self parent] precedingPageCountForPresentationType:a3];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [(THModelNode *)self previousSibling];
    if (v8)
    {
      v9 = v8;
      v6 = v7;
      while (1)
      {
        v10 = [v9 pageCountForPresentationType:a3];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v6 += v10;
        v9 = [v9 previousSibling];
        if (!v9)
        {
          return v6;
        }
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }

  return v6;
}

- (void)setPageCount:(unint64_t)a3 forPresentationType:(id)a4
{
  mPageCountByPresentationType = self->mPageCountByPresentationType;
  if (mPageCountByPresentationType)
  {
    [-[TSUNoCopyDictionary objectForKey:](mPageCountByPresentationType objectForKey:{a4), "integerValue"}];
    v8 = self->mPageCountByPresentationType;
  }

  else
  {
    v8 = [[TSUNoCopyDictionary alloc] initWithCapacity:2];
    self->mPageCountByPresentationType = v8;
  }

  v9 = [NSNumber numberWithUnsignedInteger:a3];

  [(TSUNoCopyDictionary *)v8 setObject:v9 forUncopiedKey:a4];
}

- (_NSRange)absolutePageRangeForPresentationType:(id)a3
{
  v5 = [(THModelNode *)self pageCountForPresentationType:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = NSInvalidRange[0];
    v7 = NSInvalidRange[1];
  }

  else
  {
    v7 = v5;
    v6 = [(THModelNode *)self precedingPageCountForPresentationType:a3];
  }

  v8 = v7;
  result.length = v8;
  result.location = v6;
  return result;
}

- (void)addMappingFromGUIDToNodeToDictionary:(id)a3
{
  v5 = [(THModelNode *)self nodeGUID];

  [a3 setObject:self forKey:v5];
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  if ([(THModelNode *)self parent])
  {
    a3 = [[(THModelNode *)self parent] relativePageIndexForAbsolutePageIndex:a3 forPresentationType:a4];
    v7 = [(THModelNode *)self previousSibling];
    if (v7)
    {
      v8 = v7;
      do
      {
        a3 -= [v8 pageCountForPresentationType:a4];
        v8 = [v8 previousSibling];
      }

      while (v8);
    }
  }

  return a3;
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)a3
{
  v5 = [(THModelNode *)self paginatedPresentationType];

  return [(THModelNode *)self relativePageIndexForAbsolutePageIndex:a3 forPresentationType:v5];
}

- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  v5 = [(THModelNode *)self precedingPageCountForPresentationType:a4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v5 + a3;
  }
}

- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)a3
{
  v5 = [(THModelNode *)self paginatedPresentationType];

  return [(THModelNode *)self absolutePageIndexForRelativePageIndex:a3 forPresentationType:v5];
}

- (id)modelLinkWithFragment:(id)a3
{
  v5 = [@"/" stringByAppendingPathComponent:{objc_msgSend(-[THModelNode documentRoot](self, "documentRoot"), "applePubDocId")}];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  while (1)
  {
    v9 = TSUDynamicCast();
    v10 = v9;
    if (!v9)
    {
      break;
    }

    if (![v9 count])
    {
      break;
    }

    [v10 nodeAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    objc_opt_class();
    [v10 nodeAtIndex:0];
  }

  if ([v10 count])
  {
    objc_opt_class();
    [v10 nodeAtIndex:0];
    v6 = TSUDynamicCast();
    if (v6)
    {
LABEL_2:
      v5 = [v5 stringByAppendingPathComponent:{objc_msgSend(v6, "applePubRelativePath")}];
    }
  }

  v7 = -[THModelLink initWithPath:fragment:context:]([THModelLink alloc], "initWithPath:fragment:context:", v5, a3, [-[THModelNode documentRoot](self "documentRoot")]);

  return v7;
}

- (void)enterAddingState:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:1];
}

- (void)enterAddedState:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:2];
}

- (void)enterRemovingState:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:3];
}

- (void)enterRemovedState:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:4];
}

- (id)nextSibling
{
  v3 = [(THModelNode *)self parent];

  return [(THModelContainerNode *)v3 nodeAfterNode:self];
}

- (id)previousSibling
{
  v3 = [(THModelNode *)self parent];

  return [(THModelContainerNode *)v3 nodeBeforeNode:self];
}

- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)a3 presentationType:(id)a4
{
  v7 = [THBundle() localizedStringForKey:@"-" value:&stru_471858 table:0];
  v8 = [(THModelNode *)self relativePageIndexForAbsolutePageIndex:a3 forPresentationType:a4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v9 = [(THModelNode *)self contentNodeForRelativePageIndex:v8 forPresentationType:a4]) == 0)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v7;
    }

    else
    {
      return [NSString localizedStringWithFormat:@"%lu", a3 + 1];
    }
  }

  else
  {

    return [v9 pageNumberStringForAbsolutePageIndex:a3 presentationType:a4];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  if (([(THModelNode *)self state]| 4) == 4)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();

    [(THModelNode *)self enterAddingState:v5];
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THModelNode willBeAddedToDocumentRoot:context:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelNode.m"];

    [v6 handleFailureInFunction:v7 file:v8 lineNumber:313 description:@"Invalid DOLC state transition willBeAddedToDocument"];
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  if ([(THModelNode *)self state]== 1)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();

    [(THModelNode *)self enterAddedState:v5];
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THModelNode wasAddedToDocumentRoot:context:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelNode.m"];

    [v6 handleFailureInFunction:v7 file:v8 lineNumber:327 description:@"Invalid DOLC state transition wasAddedToDocument"];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  if ([(THModelNode *)self state]== 2)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();

    [(THModelNode *)self enterRemovingState:v4];
  }

  else
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THModelNode willBeRemovedFromDocumentRoot:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelNode.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:342 description:@"Invalid DOLC state transition willBeRemovedFromDocument"];
  }
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  if ([(THModelNode *)self state]== 4)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();

    [(THModelNode *)self enterRemovedState:v4];
  }

  else
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THModelNode wasRemovedFromDocumentRoot:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelNode.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:356 description:@"Invalid DOLC state transition wasRemovedFromDocument"];
  }
}

@end