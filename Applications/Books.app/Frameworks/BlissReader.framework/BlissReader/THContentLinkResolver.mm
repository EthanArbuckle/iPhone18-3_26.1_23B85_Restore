@interface THContentLinkResolver
+ (id)contentLinkResolverWithContentNode:(id)node presentationType:(id)type;
+ (id)navigableAnchorFromLink:(id)link withContentNode:(id)node presentationType:(id)type;
- (BOOL)p_linkContentNodeIsConsistentWithOurs:(id)ours;
- (THContentLinkResolver)initWithContentNode:(id)node presentationType:(id)type;
- (id)navigableAnchorFromLink:(id)link;
- (id)p_contentNodeAnchorFromLink:(id)link;
- (id)p_pageAnchorFromLink:(id)link;
- (id)p_storageAnchorFromFixedAnchor:(id)anchor;
- (id)p_storageAnchorFromLink:(id)link;
- (void)dealloc;
@end

@implementation THContentLinkResolver

+ (id)contentLinkResolverWithContentNode:(id)node presentationType:(id)type
{
  v4 = [objc_alloc(objc_opt_class()) initWithContentNode:node presentationType:type];

  return v4;
}

- (THContentLinkResolver)initWithContentNode:(id)node presentationType:(id)type
{
  v8.receiver = self;
  v8.super_class = THContentLinkResolver;
  v6 = [(THContentLinkResolver *)&v8 init];
  if (v6)
  {
    v6->mPresentationType = type;
    v6->mContentNode = node;
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

- (id)navigableAnchorFromLink:(id)link
{
  result = [(THContentLinkResolver *)self p_storageAnchorFromLink:?];
  if (!result)
  {
    result = [(THContentLinkResolver *)self p_contentNodeAnchorFromLink:link];
    if (!result)
    {

      return [(THContentLinkResolver *)self p_pageAnchorFromLink:link];
    }
  }

  return result;
}

+ (id)navigableAnchorFromLink:(id)link withContentNode:(id)node presentationType:(id)type
{
  v6 = [THContentLinkResolver contentLinkResolverWithContentNode:node presentationType:type];

  return [(THContentLinkResolver *)v6 navigableAnchorFromLink:link];
}

- (BOOL)p_linkContentNodeIsConsistentWithOurs:(id)ours
{
  docRelativePath = [ours docRelativePath];
  if (!docRelativePath || (v5 = [docRelativePath isEqualToString:{-[THModelContentNode applePubRelativePath](-[THContentLinkResolver contentNode](self, "contentNode"), "applePubRelativePath")}]) != 0)
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)p_pageAnchorFromLink:(id)link
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:link])
  {
    return 0;
  }

  v5 = [[THModelPageAnchor alloc] initWithContentNode:[(THContentLinkResolver *)self contentNode] relativePageIndex:0 presentationType:[(THContentLinkResolver *)self presentationType]];
  if (![link isCustom])
  {
    return v5;
  }

  if (![link isCustomPage])
  {
    return v5;
  }

  customPageIndex = [link customPageIndex];
  if (customPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  v7 = customPageIndex;
  v8 = [(THModelNode *)[(THContentLinkResolver *)self contentNode] absolutePageRangeForPresentationType:[(THContentLinkResolver *)self presentationType]];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v7 < v8 || v7 - v8 >= v9)
  {
    return v5;
  }

  v10 = [[THModelPageAnchor alloc] initWithContentNode:[(THContentLinkResolver *)self contentNode] relativePageIndex:[(THModelNode *)[(THContentLinkResolver *)self contentNode] relativePageIndexForAbsolutePageIndex:v7 forPresentationType:[(THContentLinkResolver *)self presentationType]] presentationType:[(THContentLinkResolver *)self presentationType]];

  return v10;
}

- (id)p_storageAnchorFromLink:(id)link
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:link])
  {
    return 0;
  }

  if ([link isOrdinary])
  {
    v5 = -[THModelFixedAnchor initWithContentNode:elementId:]([THModelFixedAnchor alloc], "initWithContentNode:elementId:", -[THContentLinkResolver contentNode](self, "contentNode"), [link fragment]);

    return [(THContentLinkResolver *)self p_storageAnchorFromFixedAnchor:v5];
  }

  if (![link isDynamic])
  {
    return 0;
  }

  v6 = [objc_msgSend(link "fragment")];
  if ([v6 count] != &dword_0 + 2)
  {
    return 0;
  }

  v7 = -[THModelDynamicAnchor initWithContentNode:startXPointer:endXPointer:]([THModelDynamicAnchor alloc], "initWithContentNode:startXPointer:endXPointer:", -[THContentLinkResolver contentNode](self, "contentNode"), [v6 objectAtIndex:0], objc_msgSend(v6, "objectAtIndex:", 1));

  return [(THContentLinkResolver *)self p_storageAnchorFromDynamicAnchor:v7];
}

- (id)p_storageAnchorFromFixedAnchor:(id)anchor
{
  contentNode = [(THContentLinkResolver *)self contentNode];
  elementId = [anchor elementId];

  return [(THModelContentNode *)contentNode storageAnchorForAnchorId:elementId];
}

- (id)p_contentNodeAnchorFromLink:(id)link
{
  if (![(THContentLinkResolver *)self p_linkContentNodeIsConsistentWithOurs:?])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!-[THContentLinkResolver p_linkContentNodeIsConsistentWithOurs:](self, "p_linkContentNodeIsConsistentWithOurs:", link) || ![link isOrdinary] || objc_msgSend(objc_msgSend(link, "fragment"), "length"))
  {
    return 0;
  }

  contentNode = [(THContentLinkResolver *)self contentNode];

  return [THModelContentNodeAnchor contentNodeAnchorWithContentNode:contentNode];
}

@end