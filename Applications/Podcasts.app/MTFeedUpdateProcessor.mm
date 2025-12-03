@interface MTFeedUpdateProcessor
- (BOOL)_isLPMEnabled;
- (BOOL)start;
- (double)_feedUpdateInterval;
- (id)predicate;
- (void)_fetchBatchFetchEnabled;
- (void)_lpmDidChange;
- (void)_reCheck;
- (void)checkAutoDownloadsForUuids:(id)uuids;
- (void)startIfNeeded;
- (void)stop;
@end

@implementation MTFeedUpdateProcessor

- (void)startIfNeeded
{
  if (![(MTBaseProcessor *)self isRunning])
  {

    [(MTFeedUpdateProcessor *)self start];
  }
}

- (BOOL)start
{
  v7.receiver = self;
  v7.super_class = MTFeedUpdateProcessor;
  start = [(MTBaseProcessor *)&v7 start];
  if (start)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_lpmDidChange" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_fetchBatchFetchEnabled" name:AMSBagChangedNotification object:0];

    self->_isBatchFetchEnabledBagValue = 0;
    [(MTFeedUpdateProcessor *)self _fetchBatchFetchEnabled];
  }

  return start;
}

- (void)_fetchBatchFetchEnabled
{
  objc_initWeak(&location, self);
  v3 = +[IMURLBag sharedInstance];
  batchFeedFetchIsEnabled = [v3 batchFeedFetchIsEnabled];
  workQueue = [(MTBaseProcessor *)self workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100120FA0;
  v6[3] = &unk_1004DD160;
  objc_copyWeak(&v7, &location);
  [batchFeedFetchIsEnabled asyncValueOnQueue:workQueue withCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)predicate
{
  if (self->_isBatchFetchEnabledBagValue)
  {
    v2 = +[MTPodcast predicateForPeriodicallyUpdatablePodcasts];
    v3 = [MTPodcast predicateForAreMediaAPI:0];
    v4 = [v2 AND:v3];

    v5 = [MTPodcast predicateForImporting:1];
    v6 = +[MTPodcast predicateForNotHiddenPodcasts];
    v7 = [v4 OR:v5];
    v8 = [v6 AND:v7];
  }

  else
  {
    v4 = +[MTPodcast predicateForNotHiddenPodcasts];
    v5 = +[MTPodcast predicateForPeriodicallyUpdatablePodcasts];
    v8 = [v4 AND:v5];
  }

  return v8;
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = MTFeedUpdateProcessor;
  [(MTBaseProcessor *)&v4 stop];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)checkAutoDownloadsForUuids:(id)uuids
{
  uuidsCopy = uuids;
  if ([uuidsCopy count])
  {
    if ([(MTFeedUpdateProcessor *)self _isLPMEnabled])
    {
      v5 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = [uuidsCopy count];
        v6 = "Skipping feed update for %lu podcasts because of Low Power Mode";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      }
    }

    else
    {
      [(MTFeedUpdateProcessor *)self updatePredicateDuration];
      if (v7 != 0.0)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100120C0C;
        v8[3] = &unk_1004D8358;
        v9 = uuidsCopy;
        [(MTBaseProcessor *)self enqueueWorkBlock:v8];
        v5 = v9;
        goto LABEL_10;
      }

      v5 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = [uuidsCopy count];
        v6 = "Skipping feed update for %lu podcasts because the feed update interval is 0.";
        goto LABEL_8;
      }
    }

LABEL_10:
  }
}

- (double)_feedUpdateInterval
{
  v2 = +[IMURLBag sharedInstance];
  v3 = [v2 syncValueForKey:kBagKeyFeedUpdateProcessorInterval];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_isLPMEnabled
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_reCheck
{
  if ([(MTFeedUpdateProcessor *)self _isLPMEnabled])
  {
    v3 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping _reCheck because of Low Power Mode", buf, 2u);
    }
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100120E58;
    v4[3] = &unk_1004D8358;
    v4[4] = self;
    [(MTBaseProcessor *)self enqueueWorkBlock:v4];
  }
}

- (void)_lpmDidChange
{
  v3 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Low Power Mode did change. Checking for feed updates", v4, 2u);
  }

  [(MTFeedUpdateProcessor *)self _reCheck];
}

@end