@interface MTFeedUpdateBackgroundTask
+ (double)_backgroundFetchInterval;
- (void)cancel;
- (void)didFinishUpdatingAllFeedsNotification:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MTFeedUpdateBackgroundTask

+ (double)_backgroundFetchInterval
{
  v2 = +[IMURLBag sharedInstance];
  v3 = [v2 syncValueForKey:kBackgroundFetchInterval];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryFeedUpdate();
  v6 = os_signpost_id_generate(v5);

  v7 = _MTLogCategoryFeedUpdate();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "BACKGROUND_FEED_UPDATE", "", buf, 2u);
  }

  if ((+[MTLibraryMigrationUtil needsCoreDataMigration](MTLibraryMigrationUtil, "needsCoreDataMigration") & 1) != 0 || +[MTLibraryMigrationUtil needsDataMigration])
  {
    v9 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Skipping background task feed update because a CoreData migration is required", buf, 2u);
    }

    v10 = _MTLogCategoryFeedUpdate();
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v6, "BACKGROUND_FEED_UPDATE", "MIGRATION_REQUIRED", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    self->_signpostID = v6;
    v12 = +[MTFeedUpdateMetricsDataKey backgroundTask];
    [IMMetrics startTimer:v12];

    v13 = +[MTProcessorManager sharedInstance];
    [v13 startProcessorsForFeedUpdates];

    v14 = +[MTFeedUpdateManager sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100110460;
    v15[3] = &unk_1004DCC80;
    v15[4] = self;
    v16 = v4;
    [v14 updateAllPodcastsInBackgroundWithSource:0 started:v15];
  }
}

- (void)cancel
{
  v3 = [(MTFeedUpdateBackgroundTask *)self pendingCompletion];

  if (v3)
  {
    [(MTFeedUpdateBackgroundTask *)self setPendingCompletion:0];
  }

  v4 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Background task feed update was cancelled", buf, 2u);
  }

  v5 = _MTLogCategoryFeedUpdate();
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "BACKGROUND_FEED_UPDATE", "CANCELLED", v8, 2u);
  }
}

- (void)didFinishUpdatingAllFeedsNotification:(id)a3
{
  v4 = +[MTFeedUpdateMetricsDataKey backgroundTask];
  [IMMetrics endTimer:v4];

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  [(MTFeedUpdateBackgroundTask *)self feedUpdateBeginTime];
  v8 = v7;
  v9 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = [(MTFeedUpdateBackgroundTask *)self initialFeedUpdateCount];
    v17 = 2048;
    v18 = v6 - v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did finish updating %lld feeds for background task in %f", &v15, 0x16u);
  }

  v10 = [(MTFeedUpdateBackgroundTask *)self pendingCompletion];

  if (v10)
  {
    v11 = [(MTFeedUpdateBackgroundTask *)self pendingCompletion];
    v11[2](v11, 1);

    [(MTFeedUpdateBackgroundTask *)self setPendingCompletion:0];
  }

  v12 = _MTLogCategoryFeedUpdate();
  v13 = v12;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, signpostID, "BACKGROUND_FEED_UPDATE", "SUCCESS", &v15, 2u);
  }
}

@end