@interface THModelNode
- (BOOL)isEqual:(id)equal;
- (THModelNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context;
- (_NSRange)absolutePageRangeForPresentationType:(id)type;
- (id)modelLinkWithFragment:(id)fragment;
- (id)nextSibling;
- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)index presentationType:(id)type;
- (id)previousSibling;
- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index;
- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)precedingPageCountForPresentationType:(id)type;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type;
- (void)addMappingFromGUIDToNodeToDictionary:(id)dictionary;
- (void)dealloc;
- (void)enterAddedState:(id)state;
- (void)enterAddingState:(id)state;
- (void)enterRemovedState:(id)state;
- (void)enterRemovingState:(id)state;
- (void)setNodeGUID:(id)d;
- (void)setPageCount:(unint64_t)count forPresentationType:(id)type;
- (void)setTitle:(id)title;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation THModelNode

- (void)setNodeGUID:(id)d
{
  [(THModelNode *)self willModify];
  dCopy = d;

  self->mGUID = d;
}

- (void)setTitle:(id)title
{
  [(THModelNode *)self willModify];
  titleCopy = title;

  self->mTitle = title;
}

- (THModelNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context
{
  cCopy = c;
  v11.receiver = self;
  v11.super_class = THModelNode;
  v8 = [(THModelNode *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    [(THModelNode *)v8 setState:0];
    [(THModelNode *)v9 setNodeGUID:+[NSString tsu_stringWithUUID]];
    [(THModelNode *)v9 setTitle:title];
    [(THModelNode *)v9 setIncludeInTOC:cCopy];
    [(THModelNode *)v9 setPaginatedPresentationType:[THPresentationType paginatedPresentationTypeInContext:context]];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  nodeGUID = [(THModelNode *)self nodeGUID];
  nodeGUID2 = [equal nodeGUID];

  return [(NSString *)nodeGUID isEqualToString:nodeGUID2];
}

- (unint64_t)precedingPageCountForPresentationType:(id)type
{
  v5 = [[(THModelNode *)self parent] precedingPageCountForPresentationType:type];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    previousSibling = [(THModelNode *)self previousSibling];
    if (previousSibling)
    {
      previousSibling2 = previousSibling;
      v6 = v7;
      while (1)
      {
        v10 = [previousSibling2 pageCountForPresentationType:type];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v6 += v10;
        previousSibling2 = [previousSibling2 previousSibling];
        if (!previousSibling2)
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

- (void)setPageCount:(unint64_t)count forPresentationType:(id)type
{
  mPageCountByPresentationType = self->mPageCountByPresentationType;
  if (mPageCountByPresentationType)
  {
    [-[TSUNoCopyDictionary objectForKey:](mPageCountByPresentationType objectForKey:{type), "integerValue"}];
    v8 = self->mPageCountByPresentationType;
  }

  else
  {
    v8 = [[TSUNoCopyDictionary alloc] initWithCapacity:2];
    self->mPageCountByPresentationType = v8;
  }

  v9 = [NSNumber numberWithUnsignedInteger:count];

  [(TSUNoCopyDictionary *)v8 setObject:v9 forUncopiedKey:type];
}

- (_NSRange)absolutePageRangeForPresentationType:(id)type
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
    v6 = [(THModelNode *)self precedingPageCountForPresentationType:type];
  }

  v8 = v7;
  result.length = v8;
  result.location = v6;
  return result;
}

- (void)addMappingFromGUIDToNodeToDictionary:(id)dictionary
{
  nodeGUID = [(THModelNode *)self nodeGUID];

  [dictionary setObject:self forKey:nodeGUID];
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if ([(THModelNode *)self parent])
  {
    index = [[(THModelNode *)self parent] relativePageIndexForAbsolutePageIndex:index forPresentationType:type];
    previousSibling = [(THModelNode *)self previousSibling];
    if (previousSibling)
    {
      previousSibling2 = previousSibling;
      do
      {
        index -= [previousSibling2 pageCountForPresentationType:type];
        previousSibling2 = [previousSibling2 previousSibling];
      }

      while (previousSibling2);
    }
  }

  return index;
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index
{
  paginatedPresentationType = [(THModelNode *)self paginatedPresentationType];

  return [(THModelNode *)self relativePageIndexForAbsolutePageIndex:index forPresentationType:paginatedPresentationType];
}

- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  v5 = [(THModelNode *)self precedingPageCountForPresentationType:type];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v5 + index;
  }
}

- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index
{
  paginatedPresentationType = [(THModelNode *)self paginatedPresentationType];

  return [(THModelNode *)self absolutePageIndexForRelativePageIndex:index forPresentationType:paginatedPresentationType];
}

- (id)modelLinkWithFragment:(id)fragment
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

  v7 = -[THModelLink initWithPath:fragment:context:]([THModelLink alloc], "initWithPath:fragment:context:", v5, fragment, [-[THModelNode documentRoot](self "documentRoot")]);

  return v7;
}

- (void)enterAddingState:(id)state
{
  if (!state)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:1];
}

- (void)enterAddedState:(id)state
{
  if (!state)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:2];
}

- (void)enterRemovingState:(id)state
{
  if (!state)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:3];
}

- (void)enterRemovedState:(id)state
{
  if (!state)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelNode *)self setState:4];
}

- (id)nextSibling
{
  parent = [(THModelNode *)self parent];

  return [(THModelContainerNode *)parent nodeAfterNode:self];
}

- (id)previousSibling
{
  parent = [(THModelNode *)self parent];

  return [(THModelContainerNode *)parent nodeBeforeNode:self];
}

- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)index presentationType:(id)type
{
  v7 = [THBundle() localizedStringForKey:@"-" value:&stru_471858 table:0];
  v8 = [(THModelNode *)self relativePageIndexForAbsolutePageIndex:index forPresentationType:type];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v9 = [(THModelNode *)self contentNodeForRelativePageIndex:v8 forPresentationType:type]) == 0)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v7;
    }

    else
    {
      return [NSString localizedStringWithFormat:@"%lu", index + 1];
    }
  }

  else
  {

    return [v9 pageNumberStringForAbsolutePageIndex:index presentationType:type];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
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

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
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

- (void)willBeRemovedFromDocumentRoot:(id)root
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

- (void)wasRemovedFromDocumentRoot:(id)root
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