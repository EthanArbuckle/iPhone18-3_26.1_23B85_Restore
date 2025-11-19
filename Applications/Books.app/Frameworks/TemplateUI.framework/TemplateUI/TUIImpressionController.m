@interface TUIImpressionController
+ (BOOL)debugEnabled;
+ (void)setDebugEnabled:(BOOL)a3;
- (TUIImpressionController)initWithFeedId:(id)a3 delegate:(id)a4 tracker:(id)a5 queue:(id)a6;
- (TUIImpressionControllerDelegate)delegate;
- (void)collectAndFlush:(BOOL)a3 accumulatedImpressionsAtTime:(double)a4 withCompletion:(id)a5;
- (void)collectAndFlush:(BOOL)a3 accumulatedImpressionsWithCompletion:(id)a4;
- (void)collectVisibleImpressionsWithCompletion:(id)a3;
- (void)q_collectImpressions:(id)a3 time:(double)a4 flush:(BOOL)a5 stats:(id)a6;
- (void)q_collectImpressions:(id)a3 time:(double)a4 threshold:(double)a5 flush:(BOOL)a6 stats:(id)a7;
- (void)q_scheduleRefreshIfNeeded;
- (void)q_updateSnapshot;
- (void)q_updateSnapshotIfNeededWithTime:(double)a3;
- (void)reset;
- (void)teardown;
- (void)visibleContentsChanged:(id)a3;
@end

@implementation TUIImpressionController

- (TUIImpressionController)initWithFeedId:(id)a3 delegate:(id)a4 tracker:(id)a5 queue:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = TUIImpressionController;
  v13 = [(TUIImpressionController *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedId.uniqueIdentifier = a3.var0;
    objc_storeStrong(&v13->_queue, a6);
    v15 = objc_alloc_init(TUIImpressionConfiguration);
    configuration = v14->_configuration;
    v14->_configuration = v15;

    v17 = objc_alloc_init(_TUIImpressionStats);
    q_stats = v14->_q_stats;
    v14->_q_stats = v17;

    objc_storeWeak(&v14->_delegate, v10);
    objc_storeStrong(&v14->_tracker, a5);
    [v11 addVisibilityObserver:v14];
    if (+[TUIImpressionController debugEnabled])
    {
      v19 = [[TUIImpressionSnapshot alloc] initWithMap:0];
      WeakRetained = objc_loadWeakRetained(&v14->_delegate);
      [WeakRetained impressionController:v14 didUpdateSnapshot:v19];
    }
  }

  return v14;
}

- (void)teardown
{
  [(TUIVisibilityTracker *)self->_tracker removeVisibilityObserver:self];
  tracker = self->_tracker;
  self->_tracker = 0;
}

- (void)q_updateSnapshotIfNeededWithTime:(double)a3
{
  if (+[TUIImpressionController debugEnabled])
  {
    v5 = objc_opt_new();
    [(TUIImpressionConfiguration *)self->_configuration timingThreshold];
    [(TUIImpressionController *)self q_collectImpressions:v5 time:0 threshold:self->_q_stats flush:a3 stats:v6];
    v20 = v5;
    v7 = [[TUIImpressionSnapshot alloc] initWithMap:v5];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [(TUIImpressionSnapshot *)self->_q_previousSnapshot impressions];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 timingCount])
          {
            v14 = [v13 identifier];
            v15 = [(TUIImpressionSnapshot *)v7 impressionForIdentifier:v14];

            if (!v15 || ![v15 timingCount])
            {
              v16 = TUIDefaultLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                uniqueIdentifier = self->_feedId.uniqueIdentifier;
                *buf = 134217984;
                v26 = uniqueIdentifier;
                _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[fid:%lu] unexpected change in impression", buf, 0xCu);
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v10);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained impressionController:self didUpdateSnapshot:v7];

    q_previousSnapshot = self->_q_previousSnapshot;
    self->_q_previousSnapshot = v7;

    [(TUIImpressionController *)self q_scheduleRefreshIfNeeded];
  }
}

- (void)q_scheduleRefreshIfNeeded
{
  if (!self->_q_pendingRefresh)
  {
    self->_q_pendingRefresh = 1;
    objc_initWeak(&location, self);
    [(TUIImpressionConfiguration *)self->_configuration minUpdateInterval];
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_21CF0;
    v6[3] = &unk_25E240;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, queue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)q_updateSnapshot
{
  self->_q_pendingRefresh = 0;
  v3 = sub_19F7C();

  [(TUIImpressionController *)self q_updateSnapshotIfNeededWithTime:v3];
}

- (void)q_collectImpressions:(id)a3 time:(double)a4 flush:(BOOL)a5 stats:(id)a6
{
  v6 = a5;
  configuration = self->_configuration;
  v11 = a6;
  v13 = a3;
  [(TUIImpressionConfiguration *)configuration timingThreshold];
  [(TUIImpressionController *)self q_collectImpressions:v13 time:v6 threshold:v11 flush:a4 stats:v12];
}

- (void)q_collectImpressions:(id)a3 time:(double)a4 threshold:(double)a5 flush:(BOOL)a6 stats:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a7;
  v13 = [v12 impressions];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_21EFC;
  v19 = &unk_25E268;
  v23 = v8;
  v21 = a4;
  v22 = a5;
  v14 = v11;
  v20 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:&v16];

  if (v8)
  {
    v15 = [v12 impressions];
    [v15 removeAllObjects];
  }
}

- (void)visibleContentsChanged:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  v6 = v5;
  [(TUIImpressionConfiguration *)self->_configuration timingThreshold];
  v8 = v7;
  v9 = [v4 rootNode];
  sub_22088(v9, self->_q_stats, v6, v8);

  v10 = [v4 rootNode];
  q_currentVisible = self->_q_currentVisible;
  self->_q_currentVisible = v10;

  [v4 timestamp];
  v13 = v12;

  [(TUIImpressionController *)self q_updateSnapshotIfNeededWithTime:v13];
}

- (void)reset
{
  v3 = sub_19F7C();
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_223D0;
  v5[3] = &unk_25DED0;
  v5[4] = self;
  *&v5[5] = v3;
  dispatch_async(queue, v5);
}

- (void)collectAndFlush:(BOOL)a3 accumulatedImpressionsWithCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(TUIImpressionController *)self collectAndFlush:v4 accumulatedImpressionsAtTime:v6 withCompletion:sub_19F7C()];
}

- (void)collectAndFlush:(BOOL)a3 accumulatedImpressionsAtTime:(double)a4 withCompletion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_22748;
  v11[3] = &unk_25E290;
  v13 = a4;
  v14 = a3;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)collectVisibleImpressionsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_19F7C();
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_228C8;
    block[3] = &unk_25E2B8;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

+ (BOOL)debugEnabled
{
  if (qword_2E6038 != -1)
  {
    sub_1997E4();
  }

  return byte_2E6040;
}

+ (void)setDebugEnabled:(BOOL)a3
{
  v3 = a3;
  byte_2E6040 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:v3 forKey:@"TUIOverlayImpressions"];
}

- (TUIImpressionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end