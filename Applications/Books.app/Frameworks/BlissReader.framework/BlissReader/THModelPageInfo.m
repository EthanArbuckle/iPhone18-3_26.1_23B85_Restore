@interface THModelPageInfo
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (CGSize)autosizeMargin;
- (NSArray)floatingDrawables;
- (NSArray)modelBodyInfos;
- (THModelPageInfo)initWithContext:(id)a3;
- (THWPStorage)bodyStorage;
- (_NSRange)bodyStorageRange;
- (id)childEnumerator;
- (unint64_t)absolutePageIndex;
- (unint64_t)relativePageIndexInParent;
- (void)addBodyBoxInfo:(id)a3 insertContext:(id)a4;
- (void)addFloatingDrawable:(id)a3 insertContext:(id)a4;
- (void)dealloc;
- (void)setAutosizeMargin:(CGSize)a3;
- (void)setBodyBoxInfos:(id)a3;
- (void)setDrawablesZOrder:(id)a3;
- (void)setFloatingDrawableStorage:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setOwningAttachment:(id)a3;
- (void)setParentInfo:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
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

- (void)setAutosizeMargin:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(THModelPageInfo *)self willModify];
  self->mAutosizeMargin.width = width;
  self->mAutosizeMargin.height = height;
}

- (void)setBodyBoxInfos:(id)a3
{
  [(THModelPageInfo *)self willModify];
  v5 = a3;

  self->mBodyBoxInfos = a3;
}

- (void)setDrawablesZOrder:(id)a3
{
  [(THModelPageInfo *)self willModify];
  v5 = a3;

  self->mDrawablesZOrder = a3;
}

- (void)setFloatingDrawableStorage:(id)a3
{
  [(THModelPageInfo *)self willModify];
  v5 = a3;

  self->mFloatingDrawableStorage = a3;
}

- (void)setGeometry:(id)a3
{
  [(THModelPageInfo *)self willModify];
  v5 = a3;

  self->mGeometry = a3;
}

- (THModelPageInfo)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THModelPageInfo;
  v3 = [(THModelPageInfo *)&v5 initWithContext:a3];
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
  v2 = [(THModelPageInfo *)self floatingDrawableStorage];

  return [(THDrawableStorage *)v2 drawables];
}

- (NSArray)modelBodyInfos
{
  v2 = [(THModelPageInfo *)self bodyBoxInfos];

  return [NSArray arrayWithArray:v2];
}

- (THWPStorage)bodyStorage
{
  v2 = [(THModelPageInfo *)self parentContentNodeBody];

  return [(THModelContentNodeBody *)v2 bodyStorage];
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
  v3 = [(THModelPageInfo *)self parentContentNodeBody];

  return [(THModelContentNodeBody *)v3 relativeIndexOfPageInfo:self];
}

- (unint64_t)absolutePageIndex
{
  v3 = [(THModelPageInfo *)self relativePageIndexInParent];
  v4 = [(THModelPageInfo *)self parent];

  return [(THModelNode *)v4 absolutePageIndexForRelativePageIndex:v3];
}

- (void)addFloatingDrawable:(id)a3 insertContext:(id)a4
{
  [a3 setParentInfo:self];
  v7 = [(THModelPageInfo *)self floatingDrawableStorage];

  [(THDrawableStorage *)v7 addDrawable:a3 insertContext:a4];
}

- (void)addBodyBoxInfo:(id)a3 insertContext:(id)a4
{
  v7 = [(THModelPageInfo *)self documentRoot];
  if (v7)
  {
    v8 = v7;
    [a3 willBeAddedToDocumentRoot:v7 context:a4];
    [a3 setParentInfo:self];
    [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] addObject:a3];

    [a3 wasAddedToDocumentRoot:v8 context:a4];
  }

  else
  {
    [a3 setParentInfo:self];
    v9 = [(THModelPageInfo *)self bodyBoxInfos];

    [(NSMutableArray *)v9 addObject:a3];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] willBeAddedToDocumentRoot:a3 context:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3B140;
  v7[3] = &unk_45B930;
  v7[4] = a3;
  v7[5] = a4;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v7];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] wasAddedToDocumentRoot:a3 context:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3B1EC;
  v7[3] = &unk_45B930;
  v7[4] = a3;
  v7[5] = a4;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v7];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] willBeRemovedFromDocumentRoot:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3B288;
  v5[3] = &unk_45B958;
  v5[4] = a3;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v5];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  [(THDrawableStorage *)[(THModelPageInfo *)self floatingDrawableStorage] wasRemovedFromDocumentRoot:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3B324;
  v5[3] = &unk_45B958;
  v5[4] = a3;
  [(NSMutableArray *)[(THModelPageInfo *)self bodyBoxInfos] enumerateObjectsUsingBlock:v5];
}

- (void)setOwningAttachment:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THModelPageInfo setOwningAttachment:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelPageInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:193 description:@"Can't set owning attachment on page info. It's a page."];
}

- (void)setParentInfo:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THModelPageInfo setParentInfo:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelPageInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:205 description:@"THModelPageInfos have no info parent"];
}

- (id)childEnumerator
{
  v2 = [(THModelPageInfo *)self childInfos];

  return [v2 objectEnumerator];
}

- (BOOL)isAnchoredToText
{
  v2 = [(THModelPageInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)v2 isAnchored];
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