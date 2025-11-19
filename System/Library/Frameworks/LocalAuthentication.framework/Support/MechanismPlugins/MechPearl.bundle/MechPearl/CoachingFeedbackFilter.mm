@interface CoachingFeedbackFilter
- (CoachingFeedbackFilter)initWithDelegate:(id)a3 feedbackSet:(id)a4 feedbackDuration:(double)a5 iconDuration:(double)a6;
- (LACRemoteUI)delegate;
- (double)_timeoutForFeedback:(int64_t)a3;
- (void)_dispatchPendingBlocks;
- (void)_doneWaiting;
- (void)_sendFeedback:(int64_t)a3;
- (void)dispatchNowOrWhenFeedbackDurationAchieved:(BOOL)a3 finish:(BOOL)a4 block:(id)a5;
- (void)scheduleFeedback:(int64_t)a3;
@end

@implementation CoachingFeedbackFilter

- (CoachingFeedbackFilter)initWithDelegate:(id)a3 feedbackSet:(id)a4 feedbackDuration:(double)a5 iconDuration:(double)a6
{
  v10 = a3;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = CoachingFeedbackFilter;
  v12 = [(CoachingFeedbackFilter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v10);
    objc_storeStrong(&v13->_feedbackSet, a4);
    v13->_feedbackDuration = a5;
    v13->_iconDuration = a6;
    v14 = objc_opt_new();
    pendingBlocks = v13->_pendingBlocks;
    v13->_pendingBlocks = v14;
  }

  return v13;
}

- (void)scheduleFeedback:(int64_t)a3
{
  v5 = sub_1114();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_7144();
  }

  if (self->_finished)
  {
    v6 = sub_1114();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "ignoring feedback (already finished)", v14, 2u);
    }

LABEL_10:

    return;
  }

  feedbackSet = self->_feedbackSet;
  v8 = [NSNumber numberWithInteger:a3];
  LODWORD(feedbackSet) = [(NSSet *)feedbackSet containsObject:v8];

  if (!feedbackSet)
  {
    return;
  }

  lastFeedback = self->_lastFeedback;
  v10 = [NSNumber numberWithInteger:a3];
  LODWORD(lastFeedback) = [(NSNumber *)lastFeedback isEqualToNumber:v10];

  if (lastFeedback)
  {
    v6 = sub_1114();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_722C();
    }

    goto LABEL_10;
  }

  v11 = [NSNumber numberWithInteger:a3];
  v12 = self->_lastFeedback;
  self->_lastFeedback = v11;

  if (self->_waiting)
  {
    v13 = sub_1114();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_71B8();
    }
  }

  else
  {
    [(CoachingFeedbackFilter *)self _sendFeedback:[(NSNumber *)self->_lastFeedback integerValue]];
  }
}

- (double)_timeoutForFeedback:(int64_t)a3
{
  result = dbl_9550[a3 == 8];
  if (a3 == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)_sendFeedback:(int64_t)a3
{
  self->_waiting = 1;
  v5 = [NSNumber numberWithInteger:?];
  lastSentFeedback = self->_lastSentFeedback;
  self->_lastSentFeedback = v5;

  [(CoachingFeedbackFilter *)self _timeoutForFeedback:a3];
  v8 = v7;
  v9 = sub_1114();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v22 = a3;
    v23 = 2048;
    v24 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "sending feedback: %d, will wait %.2f sec", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = &off_10A98;
  v11 = [NSNumber numberWithInteger:a3];
  v20 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [WeakRetained noResponseEventWithParams:v12];

  v13 = objc_loadWeakRetained(&self->_delegate);
  v14 = [NSNumber numberWithInteger:a3];
  [v13 mechanismEvent:14 value:v14 reply:&stru_102D8];

  v15 = dispatch_time(0, (v8 * 1000000000.0));
  v16 = +[DaemonUtils sharedInstance];
  v17 = [v16 serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13C4;
  block[3] = &unk_10300;
  block[4] = self;
  dispatch_after(v15, v17, block);
}

- (void)_doneWaiting
{
  p_lastFeedback = &self->_lastFeedback;
  v4 = [(NSNumber *)self->_lastFeedback isEqualToNumber:self->_lastSentFeedback];
  v5 = sub_1114();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      sub_72FC();
    }

    self->_waiting = 0;
    [(CoachingFeedbackFilter *)self _dispatchPendingBlocks];
  }

  else
  {
    if (v6)
    {
      sub_727C(p_lastFeedback);
    }

    [(CoachingFeedbackFilter *)self _sendFeedback:[(NSNumber *)self->_lastFeedback integerValue]];
  }
}

- (void)dispatchNowOrWhenFeedbackDurationAchieved:(BOOL)a3 finish:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = sub_1114();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[CoachingFeedbackFilter dispatchNowOrWhenFeedbackDurationAchieved:finish:block:]";
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v5;
    v22 = 2112;
    v23 = self;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s %d, %d on %@", &v16, 0x22u);
  }

  if (self->_finished)
  {
    v10 = sub_1114();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "won't dispatch, already finished", &v16, 2u);
    }

    goto LABEL_19;
  }

  if (!v6 && self->_waiting)
  {
    v11 = sub_1114();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_7338(self);
    }

    pendingBlocks = self->_pendingBlocks;
    v13 = objc_retainBlock(v8);
    [(NSMutableArray *)pendingBlocks addObject:v13];

    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_16:
    v15 = sub_1114();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_73F4();
    }

    self->_finished = v5;
    goto LABEL_19;
  }

  v14 = sub_1114();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_73B8();
  }

  v8[2](v8);
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_19:
}

- (void)_dispatchPendingBlocks
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_pendingBlocks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = sub_1114();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v16 = v5;
          _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "scheduling pending block[%d]", buf, 8u);
          ++v5;
        }

        (*(v8 + 16))(v8);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
}

- (LACRemoteUI)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end