@interface THDocumentLinkResolver
- (NSDictionary)pathToNodeIndex;
- (THDocumentLinkResolver)initWithDocumentRoot:(id)root;
- (id)absoluteLink:(id)link withContentNode:(id)node;
- (id)anchorFromAbsoluteLink:(id)link presentationType:(id)type;
- (id)anchorFromCustomLink:(id)link presentationType:(id)type;
- (id)contentNodeFromLink:(id)link;
- (id)nodeFromLink:(id)link;
- (id)p_anchorFromChapterLink:(id)link presentationType:(id)type;
- (id)p_anchorFromPageLink:(id)link presentationType:(id)type;
- (id)p_buildPathToNodeIndex;
- (id)p_modelLinkFromChapterLink:(id)link;
- (unint64_t)absolutePageNumberFromCustomLink:(id)link presentationType:(id)type;
- (void)dealloc;
- (void)invalidatePaginationResults;
- (void)updatePaginationResults;
@end

@implementation THDocumentLinkResolver

- (THDocumentLinkResolver)initWithDocumentRoot:(id)root
{
  v7.receiver = self;
  v7.super_class = THDocumentLinkResolver;
  v4 = [(THDocumentLinkResolver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mDocumentRoot = root;
    v4->_displayPageNumberMap = objc_alloc_init(THDisplayPageNumberMap);
  }

  return v5;
}

- (void)dealloc
{
  self->mPathToNodeIndex = 0;

  self->_displayPageNumberMap = 0;
  v3.receiver = self;
  v3.super_class = THDocumentLinkResolver;
  [(THDocumentLinkResolver *)&v3 dealloc];
}

- (void)updatePaginationResults
{
  displayPageNumberMap = [(THDocumentLinkResolver *)self displayPageNumberMap];
  mDocumentRoot = self->mDocumentRoot;

  [(THDisplayPageNumberMap *)displayPageNumberMap buildDisplayPageMapsWithDocumentRoot:mDocumentRoot];
}

- (void)invalidatePaginationResults
{
  displayPageNumberMap = [(THDocumentLinkResolver *)self displayPageNumberMap];
  mDocumentRoot = self->mDocumentRoot;

  [(THDisplayPageNumberMap *)displayPageNumberMap clearDisplayPageMapsWithDocumentRoot:mDocumentRoot];
}

- (NSDictionary)pathToNodeIndex
{
  result = self->mPathToNodeIndex;
  if (!result)
  {
    result = [(THDocumentLinkResolver *)self p_buildPathToNodeIndex];
    self->mPathToNodeIndex = result;
  }

  return result;
}

- (id)nodeFromLink:(id)link
{
  docRelativePath = [link docRelativePath];
  pathToNodeIndex = [(THDocumentLinkResolver *)self pathToNodeIndex];

  return [(NSDictionary *)pathToNodeIndex objectForKey:docRelativePath];
}

- (id)contentNodeFromLink:(id)link
{
  [(THDocumentLinkResolver *)self nodeFromLink:link];
  objc_opt_class();
  result = TSUDynamicCast();
  if (!result)
  {
    objc_opt_class();
    result = TSUDynamicCast();
    if (result)
    {
      v4 = result;
      do
      {
        if (![v4 count])
        {
          break;
        }

        [v4 nodeAtIndex:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        objc_opt_class();
        [v4 nodeAtIndex:0];
        v4 = TSUDynamicCast();
      }

      while (v4);
      result = [v4 count];
      if (result)
      {
        objc_opt_class();
        [v4 nodeAtIndex:0];

        return TSUDynamicCast();
      }
    }
  }

  return result;
}

- (id)absoluteLink:(id)link withContentNode:(id)node
{
  docRelativePath = [link docRelativePath];
  if (docRelativePath && [docRelativePath length])
  {
    node = [(THDocumentLinkResolver *)self contentNodeFromLink:link];
    if (!node)
    {
      return 0;
    }
  }

  else if (!node)
  {
    return 0;
  }

  fragment = [link fragment];

  return [node modelLinkWithFragment:fragment];
}

- (id)anchorFromAbsoluteLink:(id)link presentationType:(id)type
{
  if ([link isPageLink])
  {

    return [(THDocumentLinkResolver *)self p_anchorFromPageLink:link presentationType:?];
  }

  else if (([link isChapterLink] & 1) != 0 || objc_msgSend(link, "isChapterGuidLink"))
  {

    return [(THDocumentLinkResolver *)self p_anchorFromChapterLink:link presentationType:?];
  }

  else
  {
    result = [(THDocumentLinkResolver *)self contentNodeFromLink:link];
    if (result)
    {
      v7 = [THContentLinkResolver contentLinkResolverWithContentNode:result presentationType:type];

      return [(THContentLinkResolver *)v7 navigableAnchorFromLink:link];
    }
  }

  return result;
}

- (id)p_anchorFromPageLink:(id)link presentationType:(id)type
{
  v6 = -[THDisplayPageNumberMap absolutePageIndexForDisplayPageNumber:](-[THDocumentLinkResolver displayPageNumberMap](self, "displayPageNumberMap"), "absolutePageIndexForDisplayPageNumber:", [link pageNumberString]);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [(THModelNode *)[(THDocumentRoot *)self->mDocumentRoot rootNode] contentNodeForRelativePageIndex:0 forPresentationType:type];
  v10 = -[THModelPageAnchor initWithContentNode:relativePageIndex:presentationType:]([THModelPageAnchor alloc], "initWithContentNode:relativePageIndex:presentationType:", v9, [v9 relativePageIndexForAbsolutePageIndex:v8 forPresentationType:type], type);

  return v10;
}

- (id)p_anchorFromChapterLink:(id)link presentationType:(id)type
{
  v6 = [(THDocumentLinkResolver *)self p_modelLinkFromChapterLink:link];
  result = [(THDocumentLinkResolver *)self contentNodeFromLink:v6];
  if (result)
  {
    v8 = [THContentLinkResolver contentLinkResolverWithContentNode:result presentationType:type];

    return [(THContentLinkResolver *)v8 navigableAnchorFromLink:v6];
  }

  return result;
}

- (id)anchorFromCustomLink:(id)link presentationType:(id)type
{
  if (![link targetIsiBooks])
  {
    return 0;
  }

  if ([link isPageLink])
  {

    return [(THDocumentLinkResolver *)self p_anchorFromPageLink:link presentationType:type];
  }

  if (([link isChapterLink] & 1) != 0 || objc_msgSend(link, "isChapterGuidLink"))
  {

    return [(THDocumentLinkResolver *)self p_anchorFromChapterLink:link presentationType:type];
  }

  v7 = [objc_msgSend(link "fragment")];
  if (![v7 length] || !-[NSDictionary objectForKey:](-[THTOCModel figureReference](-[THDocumentRoot tocModel](self->mDocumentRoot, "tocModel"), "figureReference"), "objectForKey:", v7))
  {
    return 0;
  }

  v8 = -[THModelLink initWithTarget:context:]([THModelLink alloc], "initWithTarget:context:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"apub:///0/0/0%@", [@"/OPS/" stringByAppendingString:{-[NSDictionary objectForKey:](-[THTOCModel figureReference](-[THDocumentRoot tocModel](self->mDocumentRoot, "tocModel"), "figureReference"), "objectForKey:", v7)}]), -[THDocumentRoot context](self->mDocumentRoot, "context"));

  return [(THDocumentLinkResolver *)self anchorFromAbsoluteLink:v8 presentationType:type];
}

- (id)p_modelLinkFromChapterLink:(id)link
{
  isChapterGuidLink = [link isChapterGuidLink];
  v6 = isChapterGuidLink;
  if (isChapterGuidLink)
  {
    chapterGuidString = [link chapterGuidString];
  }

  else
  {
    chapterGuidString = [link chapterString];
  }

  v8 = chapterGuidString;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(THTOCModel *)[(THDocumentRoot *)self->mDocumentRoot tocModel] tiles];
  result = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        portraitEntries = [v13 portraitEntries];
        v15 = [portraitEntries countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(portraitEntries);
            }

            v19 = *(*(&v22 + 1) + 8 * v18);
            v20 = (v6 & 1) != 0 ? [v19 nodeGUID] : objc_msgSend(v19, "sectionIdentifier");
            if ([v20 isEqualToString:v8])
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [portraitEntries countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v16)
              {
                goto LABEL_11;
              }

              goto LABEL_22;
            }
          }

          result = [v19 modelLink];
          if (result)
          {
            return result;
          }
        }

LABEL_22:
        v12 = v12 + 1;
      }

      while (v12 != v10);
      result = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

- (unint64_t)absolutePageNumberFromCustomLink:(id)link presentationType:(id)type
{
  if ([link isPageLink])
  {
    displayPageNumberMap = [(THDocumentLinkResolver *)self displayPageNumberMap];
    pageNumberString = [link pageNumberString];

    return [(THDisplayPageNumberMap *)displayPageNumberMap absolutePageIndexForDisplayPageNumber:pageNumberString];
  }

  else if ((([link isChapterLink] & 1) != 0 || objc_msgSend(link, "isChapterGuidLink")) && (v10 = -[THDocumentLinkResolver p_modelLinkFromChapterLink:](self, "p_modelLinkFromChapterLink:", link)) != 0)
  {
    v11 = [(THDocumentLinkResolver *)self contentNodeFromLink:v10];
    navigationModel = [(THDocumentRoot *)self->mDocumentRoot navigationModel];

    return [(THDocumentNavigationModel *)navigationModel absolutePageIndexForContentNodeRelativePageIndex:0 inContentNode:v11 forPresentationType:type];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)p_buildPathToNodeIndex
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_5CEE8;
  v11 = sub_5CEF8;
  v12 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  [(THDocumentRoot *)self->mDocumentRoot rootNode];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5CF04;
    v6[3] = &unk_45BCF8;
    v6[4] = &v7;
    [v3 enumerateSubtreeUsingBlock:v6];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end