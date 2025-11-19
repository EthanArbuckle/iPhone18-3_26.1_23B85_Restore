@interface THContentLinkResolver
+ (id)contentLinkResolverWithContentNode:(id)a3 presentationType:(id)a4;
+ (id)navigableAnchorFromLink:(id)a3 withContentNode:(id)a4 presentationType:(id)a5;
- (BOOL)p_linkContentNodeIsConsistentWithOurs:(id)a3;
- (THContentLinkResolver)initWithContentNode:(id)a3 presentationType:(id)a4;
- (id)navigableAnchorFromLink:(id)a3;
- (id)p_contentNodeAnchorFromLink:(id)a3;
- (id)p_pageAnchorFromLink:(id)a3;
- (id)p_storageAnchorFromFixedAnchor:(id)a3;
- (id)p_storageAnchorFromLink:(id)a3;
- (void)dealloc;
@end

@implementation THContentLinkResolver

+ (id)contentLinkResolverWithContentNode:(id)a3 presentationType:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithContentNode:a3 presentationType:a4];

  return v4;
}

- (THContentLinkResolver)initWithContentNode:(id)a3 presentationType:(id)a4
{
  v8.receiver = self;
  v8.super_class = THContentLinkResolver;
  v6 = [(THContentLinkResolver *)&v8 init];
  if (v6)
  {
    v6->mPresentationType = a4;
    v6->mContentNode = a3;
  }

  return v6;
}

- (void)dealloc
{
  self->mContentNode = 0;

  self->mPresentationType = 0;
  v3.receiver = self;
  v3.super_class = THContentLinkResolver;
  [(THContentLinkResolver *)&v3 dealloc];
}

- (id)navigableAnchorFromLink:(id)a3
{
  result = [(THContentLinkResolver *)self p_storageAnchorFromLink:?];
  if (!result)
  {
    result = [(THContentLinkResolver *)self p_contentNodeAnchorFromLink:a3];
    if (!result)
    {

      return [(THContentLinkResolver *)self p_pageAnchorFromLink:a3];
    }
  }

  return result;
}

+ (id)navigableAnchorFromLink:(id)a3 withContentNode:(id)a4 presentationType:(id)a5
{
  v6 = [THContentLinkResolver contentLinkResolverWithContentNode:a4 presentationType:a5];

  return [(THContentLinkResolver *)v6 navigableAnchorFromLink:a3];
}

- (BOOL)p_linkContentNodeIsConsistentWithOurs:(id)a3
{
  v4 = [a3 docRelativePath];
  if (!v4 || (v5 = [v4 isEqualToString:{-[THModelContentNode applePubRelativePath](-[THContentLinkResolver contentNode](self, "contentNode"), "applePubRelativePath")}]) != 0)
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)p_pageAnchorFromLink:(id)a3
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:a3])
  {
    return 0;
  }

  v5 = [[THModelPageAnchor alloc] initWithContentNode:[(THContentLinkResolver *)self contentNode] relativePageIndex:0 presentationType:[(THContentLinkResolver *)self presentationType]];
  if (![a3 isCustom])
  {
    return v5;
  }

  if (![a3 isCustomPage])
  {
    return v5;
  }

  v6 = [a3 customPageIndex];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  v7 = v6;
  v8 = [(THModelNode *)[(THContentLinkResolver *)self contentNode] absolutePageRangeForPresentationType:[(THContentLinkResolver *)self presentationType]];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v7 < v8 || v7 - v8 >= v9)
  {
    return v5;
  }

  v10 = [[THModelPageAnchor alloc] initWithContentNode:[(THContentLinkResolver *)self contentNode] relativePageIndex:[(THModelNode *)[(THContentLinkResolver *)self contentNode] relativePageIndexForAbsolutePageIndex:v7 forPresentationType:[(THContentLinkResolver *)self presentationType]] presentationType:[(THContentLinkResolver *)self presentationType]];

  return v10;
}

- (id)p_storageAnchorFromLink:(id)a3
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:a3])
  {
    return 0;
  }

  if ([a3 isOrdinary])
  {
    v5 = -[THModelFixedAnchor initWithContentNode:elementId:]([THModelFixedAnchor alloc], "initWithContentNode:elementId:", -[THContentLinkResolver contentNode](self, "contentNode"), [a3 fragment]);

    return [(THContentLinkResolver *)self p_storageAnchorFromFixedAnchor:v5];
  }

  if (![a3 isDynamic])
  {
    return 0;
  }

  v6 = [objc_msgSend(a3 "fragment")];
  if ([v6 count] != &dword_0 + 2)
  {
    return 0;
  }

  v7 = -[THModelDynamicAnchor initWithContentNode:startXPointer:endXPointer:]([THModelDynamicAnchor alloc], "initWithContentNode:startXPointer:endXPointer:", -[THContentLinkResolver contentNode](self, "contentNode"), [v6 objectAtIndex:0], objc_msgSend(v6, "objectAtIndex:", 1));

  return [(THContentLinkResolver *)self p_storageAnchorFromDynamicAnchor:v7];
}

- (id)p_storageAnchorFromFixedAnchor:(id)a3
{
  v4 = [(THContentLinkResolver *)self contentNode];
  v5 = [a3 elementId];

  return [(THModelContentNode *)v4 storageAnchorForAnchorId:v5];
}

- (id)p_contentNodeAnchorFromLink:(id)a3
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!-[THContentLinkResolver p_linkContentNodeIsConsistentWithOurs:](self, "p_linkContentNodeIsConsistentWithOurs:", a3) || ![a3 isOrdinary] || objc_msgSend(objc_msgSend(a3, "fragment"), "length"))
  {
    return 0;
  }

  v6 = [(THContentLinkResolver *)self contentNode];

  return [THModelContentNodeAnchor contentNodeAnchorWithContentNode:v6];
}

@end