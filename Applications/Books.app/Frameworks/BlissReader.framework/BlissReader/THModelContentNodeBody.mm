@interface THModelContentNodeBody
- (THModelContentNodeBody)initWithContext:(id)context;
- (id)childEnumerator;
- (id)expandableInfoForWidgetInfo:(id)info;
- (id)gutterDrawables;
- (id)infoForNodeUniqueID:(id)d;
- (id)infos;
- (id)nodeUniqueIDForInfo:(id)info;
- (unint64_t)bodyCharIndexOfGutterDrawable:(id)drawable;
- (unint64_t)relativeIndexOfPageInfo:(id)info;
- (unint64_t)relativePageIndexForInfo:(id)info;
- (void)addGutterDrawable:(id)drawable positioning:(id)positioning insertContext:(id)context;
- (void)addPageInfo:(id)info;
- (void)clearNodeUniqueIDForInfo:(id)info;
- (void)dealloc;
- (void)p_clearFlushableMembers;
- (void)setExpandedDrawable:(id)drawable forWidgetInfo:(id)info;
- (void)setNodeUniqueID:(id)d forInfo:(id)info;
- (void)setRelativePageIndex:(unint64_t)index forInfo:(id)info;
- (void)unload;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation THModelContentNodeBody

- (THModelContentNodeBody)initWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = THModelContentNodeBody;
  v4 = [(THModelContentNodeBody *)&v6 init];
  if (v4)
  {
    [(THModelContentNodeBody *)v4 setPages:+[NSMutableArray array]];
    [(THModelContentNodeBody *)v4 setGutterDrawableStorage:[[THWGutterDrawableStorage alloc] initWithContext:context]];
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

- (void)setNodeUniqueID:(id)d forInfo:(id)info
{
  v7 = [(NSMutableDictionary *)[(THModelContentNodeBody *)self infosForIDs] objectForKey:d];
  if (v7)
  {
    [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] removeObjectForKey:v7];
  }

  [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] setObject:d forUncopiedKey:info];
  infosForIDs = [(THModelContentNodeBody *)self infosForIDs];

  [(NSMutableDictionary *)infosForIDs setObject:info forKey:d];
}

- (void)clearNodeUniqueIDForInfo:(id)info
{
  v5 = [(TSUPointerKeyDictionary *)[(THModelContentNodeBody *)self IDsForInfos] objectForKey:info];
  if (v5)
  {
    [(NSMutableDictionary *)[(THModelContentNodeBody *)self infosForIDs] removeObjectForKey:v5];
    iDsForInfos = [(THModelContentNodeBody *)self IDsForInfos];

    [(TSUPointerKeyDictionary *)iDsForInfos removeObjectForKey:info];
  }
}

- (id)nodeUniqueIDForInfo:(id)info
{
  if (!info)
  {
    return 0;
  }

  iDsForInfos = [(THModelContentNodeBody *)self IDsForInfos];

  return [(TSUPointerKeyDictionary *)iDsForInfos objectForKey:info];
}

- (id)infoForNodeUniqueID:(id)d
{
  infosForIDs = [(THModelContentNodeBody *)self infosForIDs];

  return [(NSMutableDictionary *)infosForIDs objectForKey:d];
}

- (id)infos
{
  iDsForInfos = [(THModelContentNodeBody *)self IDsForInfos];

  return [(TSUPointerKeyDictionary *)iDsForInfos allKeys];
}

- (void)addPageInfo:(id)info
{
  [(NSMutableArray *)self->mPages addObject:?];

  [info setParentContentNodeBody:self];
}

- (unint64_t)relativeIndexOfPageInfo:(id)info
{
  pages = [(THModelContentNodeBody *)self pages];

  return [(NSArray *)pages indexOfObject:info];
}

- (unint64_t)relativePageIndexForInfo:(id)info
{
  if (!info)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  infoCopy = info;
  while (1)
  {
    objc_opt_class();
    [(TSUPointerKeyDictionary *)self->mPageIndexesForInfos objectForKey:infoCopy];
    v5 = TSUDynamicCast();
    if (v5)
    {
      break;
    }

    infoCopy = [infoCopy parentInfo];
    if (!infoCopy)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return [v5 unsignedIntValue];
}

- (void)setRelativePageIndex:(unint64_t)index forInfo:(id)info
{
  mPageIndexesForInfos = self->mPageIndexesForInfos;
  v6 = [NSNumber numberWithInteger:index];

  [(TSUPointerKeyDictionary *)mPageIndexesForInfos setObject:v6 forUncopiedKey:info];
}

- (void)addGutterDrawable:(id)drawable positioning:(id)positioning insertContext:(id)context
{
  gutterDrawableStorage = [(THModelContentNodeBody *)self gutterDrawableStorage];

  [(THWGutterDrawableStorage *)gutterDrawableStorage addDrawable:drawable positioning:positioning insertContext:context];
}

- (unint64_t)bodyCharIndexOfGutterDrawable:(id)drawable
{
  v3 = [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] positioningOfDrawable:drawable];

  return [v3 bodyCharIndex];
}

- (id)gutterDrawables
{
  gutterDrawableStorage = [(THModelContentNodeBody *)self gutterDrawableStorage];

  return [(THWGutterDrawableStorage *)gutterDrawableStorage drawables];
}

- (id)expandableInfoForWidgetInfo:(id)info
{
  if (info)
  {
    return [(TSUPointerKeyDictionary *)self->mDrawablesForWidgetInfos objectForKey:?];
  }

  else
  {
    return 0;
  }
}

- (void)setExpandedDrawable:(id)drawable forWidgetInfo:(id)info
{
  if (drawable && info)
  {
    mDrawablesForWidgetInfos = self->mDrawablesForWidgetInfos;

    [TSUPointerKeyDictionary setObject:"setObject:forUncopiedKey:" forUncopiedKey:?];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] willBeAddedToDocumentRoot:root dolcContext:context];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] willBeAddedToDocumentRoot:root context:context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_510AC;
  v7[3] = &unk_45B930;
  v7[4] = root;
  v7[5] = context;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v7];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] wasAddedToDocumentRoot:root dolcContext:context];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] wasAddedToDocumentRoot:root context:context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5116C;
  v7[3] = &unk_45B930;
  v7[4] = root;
  v7[5] = context;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v7];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] willBeRemovedFromDocumentRoot:root];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] willBeRemovedFromDocumentRoot:root];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_51218;
  v5[3] = &unk_45B958;
  v5[4] = root;
  [(NSArray *)[(THModelContentNodeBody *)self pages] enumerateObjectsUsingBlock:v5];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  [(THWPStorage *)[(THModelContentNodeBody *)self bodyStorage] wasRemovedFromDocumentRoot:root];
  [(THWGutterDrawableStorage *)[(THModelContentNodeBody *)self gutterDrawableStorage] wasRemovedFromDocumentRoot:root];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_512C4;
  v5[3] = &unk_45B958;
  v5[4] = root;
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