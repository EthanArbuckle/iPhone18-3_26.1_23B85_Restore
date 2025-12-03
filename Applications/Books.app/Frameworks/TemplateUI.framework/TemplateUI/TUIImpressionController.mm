@interface TUIImpressionController
+ (BOOL)debugEnabled;
+ (void)setDebugEnabled:(BOOL)enabled;
- (TUIImpressionController)initWithFeedId:(id)id delegate:(id)delegate tracker:(id)tracker queue:(id)queue;
- (TUIImpressionControllerDelegate)delegate;
- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsAtTime:(double)time withCompletion:(id)completion;
- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion;
- (void)collectVisibleImpressionsWithCompletion:(id)completion;
- (void)q_collectImpressions:(id)impressions time:(double)time flush:(BOOL)flush stats:(id)stats;
- (void)q_collectImpressions:(id)impressions time:(double)time threshold:(double)threshold flush:(BOOL)flush stats:(id)stats;
- (void)q_scheduleRefreshIfNeeded;
- (void)q_updateSnapshot;
- (void)q_updateSnapshotIfNeededWithTime:(double)time;
- (void)reset;
- (void)teardown;
- (void)visibleContentsChanged:(id)changed;
@end

@implementation TUIImpressionController

- (TUIImpressionController)initWithFeedId:(id)id delegate:(id)delegate tracker:(id)tracker queue:(id)queue
{
  delegateCopy = delegate;
  trackerCopy = tracker;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = TUIImpressionController;
  v13 = [(TUIImpressionController *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedId.uniqueIdentifier = id.var0;
    objc_storeStrong(&v13->_queue, queue);
    v15 = objc_alloc_init(TUIImpressionConfiguration);
    configuration = v14->_configuration;
    v14->_configuration = v15;

    v17 = objc_alloc_init(_TUIImpressionStats);
    q_stats = v14->_q_stats;
    v14->_q_stats = v17;

    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v14->_tracker, tracker);
    [trackerCopy addVisibilityObserver:v14];
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

- (void)q_updateSnapshotIfNeededWithTime:(double)time
{
  if (+[TUIImpressionController debugEnabled])
  {
    v5 = objc_opt_new();
    [(TUIImpressionConfiguration *)self->_configuration timingThreshold];
    [(TUIImpressionController *)self q_collectImpressions:v5 time:0 threshold:self->_q_stats flush:time stats:v6];
    v20 = v5;
    v7 = [[TUIImpressionSnapshot alloc] initWithMap:v5];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    impressions = [(TUIImpressionSnapshot *)self->_q_previousSnapshot impressions];
    v9 = [impressions countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(impressions);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 timingCount])
          {
            identifier = [v13 identifier];
            v15 = [(TUIImpressionSnapshot *)v7 impressionForIdentifier:identifier];

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

        v10 = [impressions countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (void)q_collectImpressions:(id)impressions time:(double)time flush:(BOOL)flush stats:(id)stats
{
  flushCopy = flush;
  configuration = self->_configuration;
  statsCopy = stats;
  impressionsCopy = impressions;
  [(TUIImpressionConfiguration *)configuration timingThreshold];
  [(TUIImpressionController *)self q_collectImpressions:impressionsCopy time:flushCopy threshold:statsCopy flush:time stats:v12];
}

- (void)q_collectImpressions:(id)impressions time:(double)time threshold:(double)threshold flush:(BOOL)flush stats:(id)stats
{
  flushCopy = flush;
  impressionsCopy = impressions;
  statsCopy = stats;
  impressions = [statsCopy impressions];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_21EFC;
  v19 = &unk_25E268;
  v23 = flushCopy;
  timeCopy = time;
  thresholdCopy = threshold;
  v14 = impressionsCopy;
  v20 = v14;
  [impressions enumerateKeysAndObjectsUsingBlock:&v16];

  if (flushCopy)
  {
    impressions2 = [statsCopy impressions];
    [impressions2 removeAllObjects];
  }
}

- (void)visibleContentsChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy timestamp];
  v6 = v5;
  [(TUIImpressionConfiguration *)self->_configuration timingThreshold];
  v8 = v7;
  rootNode = [changedCopy rootNode];
  sub_22088(rootNode, self->_q_stats, v6, v8);

  rootNode2 = [changedCopy rootNode];
  q_currentVisible = self->_q_currentVisible;
  self->_q_currentVisible = rootNode2;

  [changedCopy timestamp];
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

- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion
{
  flushCopy = flush;
  completionCopy = completion;
  [(TUIImpressionController *)self collectAndFlush:flushCopy accumulatedImpressionsAtTime:completionCopy withCompletion:sub_19F7C()];
}

- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsAtTime:(double)time withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_22748;
  v11[3] = &unk_25E290;
  timeCopy = time;
  flushCopy = flush;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)collectVisibleImpressionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = sub_19F7C();
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_228C8;
    block[3] = &unk_25E2B8;
    v9 = v5;
    block[4] = self;
    v8 = completionCopy;
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

+ (void)setDebugEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  byte_2E6040 = enabled;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:enabledCopy forKey:@"TUIOverlayImpressions"];
}

- (TUIImpressionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end