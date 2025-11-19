@interface THSectionInfo
- (THModelContentNode)contentNode;
- (THModelPageInfo)lastPage;
- (id)childInfos;
- (void)dealloc;
- (void)setGeometry:(id)a3;
- (void)setOwningAttachment:(id)a3;
- (void)setParentInfo:(id)a3;
@end

@implementation THSectionInfo

- (void)dealloc
{
  [(THSectionInfo *)self setPages:0];
  [(THSectionInfo *)self setPageController:0];

  v3.receiver = self;
  v3.super_class = THSectionInfo;
  [(THSectionInfo *)&v3 dealloc];
}

- (void)setOwningAttachment:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setOwningAttachment:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:47 description:@"Can't put a section info in an attachment. What does that even mean!"];
}

- (void)setParentInfo:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setParentInfo:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:83 description:@"Can't set the parent info of a THSectionInfo"];
}

- (void)setGeometry:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setGeometry:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:91 description:@"Can't set geometry on TSDInfoGeometry"];
}

- (id)childInfos
{
  v2 = [(THSectionInfo *)self pages];

  return [NSArray arrayWithArray:v2];
}

- (THModelPageInfo)lastPage
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(THSectionInfo *)self pages];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if (v5)
      {
        v9 = [*(*(&v11 + 1) + 8 * i) relativePageIndexInParent];
        if (v9 <= [(THModelPageInfo *)v5 relativePageIndexInParent])
        {
          continue;
        }
      }

      v5 = v8;
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v5;
}

- (THModelContentNode)contentNode
{
  v2 = [(THSectionInfo *)self pageController];

  return [(THPageController *)v2 contentNode];
}

@end