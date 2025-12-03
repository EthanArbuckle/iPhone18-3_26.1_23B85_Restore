@interface THModelPageInfo
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (CGSize)autosizeMargin;
- (NSArray)floatingDrawables;
- (NSArray)modelBodyInfos;
- (THModelPageInfo)initWithContext:(id)context;
- (THWPStorage)bodyStorage;
- (_NSRange)bodyStorageRange;
- (id)childEnumerator;
- (unint64_t)absolutePageIndex;
- (unint64_t)relativePageIndexInParent;
- (void)addBodyBoxInfo:(id)info insertContext:(id)context;
- (void)addFloatingDrawable:(id)drawable insertContext:(id)context;
- (void)dealloc;
- (void)setAutosizeMargin:(CGSize)margin;
- (void)setBodyBoxInfos:(id)infos;
- (void)setDrawablesZOrder:(id)order;
- (void)setFloatingDrawableStorage:(id)storage;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
- (void)setParentInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation THModelPageInfo

- (CGSize)autosizeMargin
{
  width = self->mAutosizeMargin.width;
  height = self->mAutosizeMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setAutosizeMargin:(CGSize)margin
{
  height = margin.height;
  width = margin.width;
  [(THModelPageInfo *)self willModify];
  self->mAutosizeMargin.width = width;
  self->mAutosizeMargin.height = height;
}

- (void)setBodyBoxInfos:(id)infos
{
  [(THModelPageInfo *)self willModify];
  infosCopy = infos;

  self->mBodyBoxInfos = infos;
}

- (void)setDrawablesZOrder:(id)order
{
  [(THModelPageInfo *)self willModify];
  orderCopy = order;

  self->mDrawablesZOrder = order;
}

- (void)setFloatingDrawableStorage:(id)storage
{
  [(THModelPageInfo *)self willModify];
  storageCopy = storage;

  self->mFloatingDrawableStorage = storage;
}

- (void)setGeometry:(id)geometry
{
  [(THModelPageInfo *)self willModify];
  geometryCopy = geometry;

  self->mGeometry = geometry;
}

- (THModelPageInfo)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = THModelPageInfo;
  v3 = [(THModelPageInfo *)&v5 initWithContext:context];
  if (v3)
  {
    [(THModelPageInfo *)v3 setFloatingDrawableStorage:[[THDrawableStorage alloc] initWithContext:[(THModelPageInfo *)v3 context]]];
    [(THModelPageInfo *)v3 setDrawablesZOrder:[[THDrawablesZOrder alloc] initWithContext:[(THModelPageInfo *)v3 context]]];
    [(THModelPageInfo *)v3 setBodyBoxInfos:+[NSMutableArray array]];
    [(THModelPageInfo *)v3 setPageStartCharIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THModelPageInfo *)v3 setPageEndCharIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mBodyBoxInfos = self->mBodyBoxInfos;
  v4 = [(NSMutableArray *)mBodyBoxInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mBodyBoxInfos);
        }

        [*(*(&v9 + 1) + 8 * i) setParentInfo:0];
      }

      v5 = [(NSMutableArray *)mBodyBoxInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->mBodyBoxInfos = 0;
  self->mFloatingDrawableStorage = 0;

  self->mDrawablesZOrder = 0;
  self->mGeometry = 0;
  v8.receiver = self;
  v8.super_class = THModelPageInfo;
  [(THModelPageInfo *)&v8 dealloc];
}

- (NSArray)floatingDrawables
{
  floatingDrawableStorage = [(THModelPageInfo *)self floatingDrawableStorage];

  return [(THDrawableStorage *)floatingDrawableStorage drawables];
}

- (NSArray)modelBodyInfos
{
  bodyBoxInfos = [(THModelPageInfo *)self bodyBoxInfos];

  return [NSArray arrayWithArray:bodyBoxInfos];
}

- (THWPStorage)bodyStorage
{
  parentContentNodeBody = [(THModelPageInfo *)self parentContentNodeBody];

  return [(THModelContentNodeBody *)parentContentNodeBody bodyStorage];
}

- (_NSRange)bodyStorageRange
{
  v3 = NSInvalidRange[0];
  v4 = NSInvalidRange[1];
  mPageStartCharIndex = self->mPageStartCharIndex;
  if (mPageStartCharIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    mPageEndCharIndex = self->mPageEndCharIndex;
    if (mPageEndCharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = mPageEndCharIndex - mPageStartCharIndex;
      v3 = mPageStartCharIndex;
    }
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (unint64_t)relativePageIndexInParent
{
  parentContentNodeBody = [(THModelPageInfo *)self parentContentNodeBody];

  return [(THModelContentNodeBody *)parentContentNodeBody relativeIndexOfPageInfo:self];
}

- (unint64_t)absolutePageIndex
{
  relativePageIndexInParent = [(THModelPageInfo *)self relativePageIndexInParent];
  parent = [(THModelPageInfo *)self parent];

  return [(THModelNode *)parent absolutePageIndexForRelativePageIndex:relativePageIndexInParent];
}

- (void)addFloatingDrawable:(id)drawable insertContext:(id)context
{
  [drawable setParentInfo:self];
  floatingDrawableStorage = [(THModelPageInfo *)self floatingDrawableStorage];

  [(THDrawableStorage *)floatingDrawableStorage addDrawable:drawable insertContext:context];
}

- (void)addBodyBoxInfo:(id)info insertContext:(id)context
{
  documentRoot = [(THModelPageInfo *)self documentRoot];
  if (documentRoot)
  {
    v8 = documentRoot;
    [info willBeAddedToDocumentRoot:documentRoot context:context];
    [info setParentInfo:self];
    [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] addObject:info];

    [info wasAddedToDocumentRoot:v8 context:context];
  }

  else
  {
    [info setParentInfo:self];
    bodyBoxInfos = [(THModelPageInfo *)self bodyBoxInfos];

    [(NSMutableArray *)bodyBoxInfos addObject:info];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] willBeAddedToDocumentRoot:root context:context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3B140;
  v7[3] = &unk_45B930;
  v7[4] = root;
  v7[5] = context;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v7];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] wasAddedToDocumentRoot:root context:context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3B1EC;
  v7[3] = &unk_45B930;
  v7[4] = root;
  v7[5] = context;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v7];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] willBeRemovedFromDocumentRoot:root];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3B288;
  v5[3] = &unk_45B958;
  v5[4] = root;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v5];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] wasRemovedFromDocumentRoot:root];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3B324;
  v5[3] = &unk_45B958;
  v5[4] = root;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v5];
}

- (void)setOwningAttachment:(id)attachment
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THModelPageInfo setOwningAttachment:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelPageInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:193 description:@"Can't set owning attachment on page info. It's a page."];
}

- (void)setParentInfo:(id)info
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THModelPageInfo setParentInfo:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelPageInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:205 description:@"THModelPageInfos have no info parent"];
}

- (id)childEnumerator
{
  childInfos = [(THModelPageInfo *)self childInfos];

  return [childInfos objectEnumerator];
}

- (BOOL)isAnchoredToText
{
  owningAttachment = [(THModelPageInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)owningAttachment isAnchored];
}

- (BOOL)isInlineWithText
{
  if ([(THModelPageInfo *)self isFloatingAboveText])
  {
    return 0;
  }

  else
  {
    return ![(THModelPageInfo *)self isAnchoredToText];
  }
}

@end