@interface SearchResultsImpressionsLogger
- (SearchResultsImpressionsLogger)init;
- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date;
- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate;
@end

@implementation SearchResultsImpressionsLogger

- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate
{
  exitCopy = exit;
  dateCopy = date;
  exitDateCopy = exitDate;
  impressionsLoggingQueue = self->_impressionsLoggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CCD5E8;
  block[3] = &unk_101661A40;
  v16 = dateCopy;
  v17 = exitDateCopy;
  v18 = exitCopy;
  v12 = exitCopy;
  v13 = exitDateCopy;
  v14 = dateCopy;
  dispatch_async(impressionsLoggingQueue, block);
}

- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date
{
  enterCopy = enter;
  dateCopy = date;
  impressionsLoggingQueue = self->_impressionsLoggingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CCD858;
  v11[3] = &unk_101661A90;
  v12 = dateCopy;
  v13 = enterCopy;
  v9 = enterCopy;
  v10 = dateCopy;
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