@interface FRWebArticlePrefetchOperation
- (id)executeWithArticleContentPool:(id)pool completionHandler:(id)handler;
@end

@implementation FRWebArticlePrefetchOperation

- (id)executeWithArticleContentPool:(id)pool completionHandler:(id)handler
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10005E260;
  v15 = &unk_1000C5D40;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  poolCopy = pool;
  v8 = objc_retainBlock(&v12);
  v9 = [(FRArticlePrefetchOperation *)self headline:v12];
  v10 = FCDispatchQueueForQualityOfService();
  [poolCopy fetchContentForHeadline:v9 completionQueue:v10 completionHandler:v8];

  return self;
}

@end