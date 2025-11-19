@interface SearchResultsImpressionsLogger
- (SearchResultsImpressionsLogger)init;
- (void)logImpressionElementDidEnter:(id)a3 onDate:(id)a4;
- (void)logImpressionElementDidExit:(id)a3 usingEnterDate:(id)a4 exitDate:(id)a5;
@end

@implementation SearchResultsImpressionsLogger

- (void)logImpressionElementDidExit:(id)a3 usingEnterDate:(id)a4 exitDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  impressionsLoggingQueue = self->_impressionsLoggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CCD5E8;
  block[3] = &unk_101661A40;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(impressionsLoggingQueue, block);
}

- (void)logImpressionElementDidEnter:(id)a3 onDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  impressionsLoggingQueue = self->_impressionsLoggingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CCD858;
  v11[3] = &unk_101661A90;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(impressionsLoggingQueue, v11);
}

- (SearchResultsImpressionsLogger)init
{
  v6.receiver = self;
  v6.super_class = SearchResultsImpressionsLogger;
  v2 = [(SearchResultsImpressionsLogger *)&v6 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    impressionsLoggingQueue = v2->_impressionsLoggingQueue;
    v2->_impressionsLoggingQueue = v3;
  }

  return v2;
}

@end