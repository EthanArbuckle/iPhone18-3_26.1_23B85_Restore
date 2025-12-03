@interface THSectionInfo
- (THModelContentNode)contentNode;
- (THModelPageInfo)lastPage;
- (id)childInfos;
- (void)dealloc;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
- (void)setParentInfo:(id)info;
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

- (void)setOwningAttachment:(id)attachment
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setOwningAttachment:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:47 description:@"Can't put a section info in an attachment. What does that even mean!"];
}

- (void)setParentInfo:(id)info
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setParentInfo:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:83 description:@"Can't set the parent info of a THSectionInfo"];
}

- (void)setGeometry:(id)geometry
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionInfo setGeometry:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionInfo.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:91 description:@"Can't set geometry on TSDInfoGeometry"];
}

- (id)childInfos
{
  pages = [(THSectionInfo *)self pages];

  return [NSArray arrayWithArray:pages];
}

- (THModelPageInfo)lastPage
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pages = [(THSectionInfo *)self pages];
  v3 = [(NSArray *)pages countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(pages);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if (v5)
      {
        relativePageIndexInParent = [*(*(&v11 + 1) + 8 * i) relativePageIndexInParent];
        if (relativePageIndexInParent <= [(THModelPageInfo *)v5 relativePageIndexInParent])
        {
          continue;
        }
      }

      v5 = v8;
    }

    v4 = [(NSArray *)pages countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v5;
}

- (THModelContentNode)contentNode
{
  pageController = [(THSectionInfo *)self pageController];

  return [(THPageController *)pageController contentNode];
}

@end