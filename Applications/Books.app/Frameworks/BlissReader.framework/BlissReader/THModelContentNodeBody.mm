@interface THModelContentNodeBody
- (THModelContentNodeBody)initWithContext:(id)a3;
- (id)childEnumerator;
- (id)expandableInfoForWidgetInfo:(id)a3;
- (id)gutterDrawables;
- (id)infoForNodeUniqueID:(id)a3;
- (id)infos;
- (id)nodeUniqueIDForInfo:(id)a3;
- (unint64_t)bodyCharIndexOfGutterDrawable:(id)a3;
- (unint64_t)relativeIndexOfPageInfo:(id)a3;
- (unint64_t)relativePageIndexForInfo:(id)a3;
- (void)addGutterDrawable:(id)a3 positioning:(id)a4 insertContext:(id)a5;
- (void)addPageInfo:(id)a3;
- (void)clearNodeUniqueIDForInfo:(id)a3;
- (void)dealloc;
- (void)p_clearFlushableMembers;
- (void)setExpandedDrawable:(id)a3 forWidgetInfo:(id)a4;
- (void)setNodeUniqueID:(id)a3 forInfo:(id)a4;
- (void)setRelativePageIndex:(unint64_t)a3 forInfo:(id)a4;
- (void)unload;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation THModelContentNodeBody

- (THModelContentNodeBody)initWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = THModelContentNodeBody;
  v4 = [(THModelContentNodeBody *)&v6 init];
  if (v4)
  {
    [(THModelContentNodeBody *)v4 setPages:+[NSMutableArray array]];
    [(THModelContentNodeBody *)v4 setGutterDrawableStorage:[[THWGutterDrawableStorage alloc] initWithContext:a3]];
    [(THModelContentNodeBody *)v4 setInfosForIDs:+[NSMutableDictionary dictionary]];
    [(THModelContentNodeBody *)v4 setIDsForInfos:+[TSUPointerKeyDictionary dictionary]];
    [(THModelContentNodeBody *)v4 setPageIndexesForInfos:+[TSUNoCopyDictionary dictionary]];
    [(THModelContentNodeBody *)v4 setDrawablesForWidgetInfos:+[TSUNoCopyDictionary dictionary]];
  }

  return v4;
}

- (void)dealloc
{
  [(THModelContentNodeBody *)self p_clearFlushableMembers];
  v3.receiver = self;
  v3.super_class = THModelContentNodeBody;
  [(THModelContentNodeBody *)&v3 dealloc];
}

- (void)p_clearFlushableMembers
{
  self->mBodyStorage = 0;

  self->mGutterDrawableStorage = 0;
  self->mStylesheet = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mPages = self->mPages;
  v4 = [(NSMutableArray *)mPages countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mPages);
        }

        [*(*(&v8 + 1) + 8 * i) setParentContentNodeBody:0];
      }

      v5 = [(NSMutableArray *)mPages countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mPages = 0;
  self->mInfosForID = 0;

  self->mIDsForInfos = 0;
  self->mPageIndexesForInfos = 0;

  self->mDrawablesForWidgetInfos = 0;
}

- (void)unload
{
  [(THModelContentNodeBody *)self p_clearFlushableMembers];
  mParent = self->mParent;

  [(THModelContentNode *)mParent i_flushingBody:self];
}

- (void)setNodeUniqueID:(id)a3 forInfo:(id)a4
{
  v7 = [(NSMutableDictionary *)[(THModelContentNodeBody *)self infosForIDs] objectForKey:a3];
  if (v7)
  {
    [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] removeObjectForKey:v7];
  }

  [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] setObject:a3 forUncopiedKey:a4];
  v8 = [(THModelContentNodeBody *)self infosForIDs];

  [(NSMutableDictionary *)v8 setObject:a4 forKey:a3];
}

- (void)clearNodeUniqueIDForInfo:(id)a3
{
  v5 = [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] objectForKey:a3];
  if (v5)
  {
    [(NSMutableDictionary *)[(THModelContentNodeBody *)self infosForIDs] removeObjectForKey:v5];
    v6 = [(THModelContentNodeBody *)self IDsForInfos];

    [(TSUPointerKeyDictionary *)v6 removeObjectForKey:a3];
  }
}

- (id)nodeUniqueIDForInfo:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(THModelContentNodeBody *)self IDsForInfos];

  return [(TSUPointerKeyDictionary *)v4 objectForKey:a3];
}

- (id)infoForNodeUniqueID:(id)a3
{
  v4 = [(THModelContentNodeBody *)self infosForIDs];

  return [(NSMutableDictionary *)v4 objectForKey:a3];
}

- (id)infos
{
  v2 = [(THModelContentNodeBody *)self IDsForInfos];

  return [(TSUPointerKeyDictionary *)v2 allKeys];
}

- (void)addPageInfo:(id)a3
{
  [(NSMutableArray *)self->mPages addObject:?];

  [a3 setParentContentNodeBody:self];
}

- (unint64_t)relativeIndexOfPageInfo:(id)a3
{
  v4 = [(THModelContentNodeBody *)self pages];

  return [(NSArray *)v4 indexOfObject:a3];
}

- (unint64_t)relativePageIndexForInfo:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = a3;
  while (1)
  {
    objc_opt_class();
    [(TSUPointerKeyDictionary *)self->mPageIndexesForInfos objectForKey:v3];
    v5 = TSUDynamicCast();
    if (v5)
    {
      break;
    }

    v3 = [v3 parentInfo];
    if (!v3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return [v5 unsignedIntValue];
}

- (void)setRelativePageIndex:(unint64_t)a3 forInfo:(id)a4
{
  mPageIndexesForInfos = self->mPageIndexesForInfos;
  v6 = [NSNumber numberWithInteger:a3];

  [(TSUPointerKeyDictionary *)mPageIndexesForInfos setObject:v6 forUncopiedKey:a4];
}

- (void)addGutterDrawable:(id)a3 positioning:(id)a4 insertContext:(id)a5
{
  v8 = [(THModelContentNodeBody *)self gutterDrawableStorage];

  [(THWGutterDrawableStorage *)v8 addDrawable:a3 positioning:a4 insertContext:a5];
}

- (unint64_t)bodyCharIndexOfGutterDrawable:(id)a3
{
  v3 = [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] positioningOfDrawable:a3];

  return [v3 bodyCharIndex];
}

- (id)gutterDrawables
{
  v2 = [(THModelContentNodeBody *)self gutterDrawableStorage];

  return [(THWGutterDrawableStorage *)v2 drawables];
}

- (id)expandableInfoForWidgetInfo:(id)a3
{
  if (a3)
  {
    return [(TSUPointerKeyDictionary *)self->mDrawablesForWidgetInfos objectForKey:?];
  }

  else
  {
    return 0;
  }
}

- (void)setExpandedDrawable:(id)a3 forWidgetInfo:(id)a4
{
  if (a3 && a4)
  {
    mDrawablesForWidgetInfos = self->mDrawablesForWidgetInfos;

    [TSUPointerKeyDictionary setObject:"setObject:forUncopiedKey:" forUncopiedKey:?];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] willBeAddedToDocumentRoot:a3 dolcContext:a4];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] willBeAddedToDocumentRoot:a3 context:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_510AC;
  v7[3] = &unk_45B930;
  v7[4] = a3;
  v7[5] = a4;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v7];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] wasAddedToDocumentRoot:a3 dolcContext:a4];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] wasAddedToDocumentRoot:a3 context:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5116C;
  v7[3] = &unk_45B930;
  v7[4] = a3;
  v7[5] = a4;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v7];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] willBeRemovedFromDocumentRoot:a3];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] willBeRemovedFromDocumentRoot:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_51218;
  v5[3] = &unk_45B958;
  v5[4] = a3;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v5];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] wasRemovedFromDocumentRoot:a3];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] wasRemovedFromDocumentRoot:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_512C4;
  v5[3] = &unk_45B958;
  v5[4] = a3;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v5];
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  if ([(THModelContentNodeBody *)self bodyStorage])
  {
    [v3 addObject:{-[THModelContentNodeBody bodyStorage](self, "bodyStorage")}];
  }

  if ([(THModelContentNodeBody *)self gutterDrawableStorage])
  {
    [v3 addObjectsFromArray:{-[THWGutterDrawableStorage drawables](-[THModelContentNodeBody gutterDrawableStorage](self, "gutterDrawableStorage"), "drawables")}];
  }

  if ([(THModelContentNodeBody *)self pages])
  {
    [v3 addObjectsFromArray:{-[THModelContentNodeBody pages](self, "pages")}];
  }

  return [v3 objectEnumerator];
}

@end