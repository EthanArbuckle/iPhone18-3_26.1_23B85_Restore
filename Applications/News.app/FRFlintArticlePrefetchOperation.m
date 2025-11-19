@interface FRFlintArticlePrefetchOperation
- (id)executeWithArticleContentPool:(id)a3 completionHandler:(id)a4;
@end

@implementation FRFlintArticlePrefetchOperation

- (id)executeWithArticleContentPool:(id)a3 completionHandler:(id)a4
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10005D844;
  v15 = &unk_1000C5D18;
  v16 = self;
  v17 = a4;
  v6 = v17;
  v7 = a3;
  v8 = objc_retainBlock(&v12);
  v9 = [(FRArticlePrefetchOperation *)self headline:v12];
  v10 = FCDispatchQueueForQualityOfService();
  [v7 fetchFlintDataProviderForHeadline:v9 completionQueue:v10 completionHandler:v8];

  return self;
}

@end