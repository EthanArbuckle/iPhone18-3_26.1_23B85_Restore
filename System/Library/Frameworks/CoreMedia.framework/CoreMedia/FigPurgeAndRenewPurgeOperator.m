@interface FigPurgeAndRenewPurgeOperator
+ (id)operatorForClientPID:(int)a3 notificationQueue:(id)a4 withPurgeBlock:(id)a5;
- (BOOL)setPurgeSuspended:(BOOL)a3;
- (id)_initWithClientPID:(int)a3 withPurgeBlock:(id)a4 notificationQueue:(id)a5;
- (void)checkAppStateAndPurgeObjectsBasedOnSuspensionTime:(int64_t)a3;
- (void)dealloc;
- (void)handleProcessIsNoLongerSuspendedOnQueue;
- (void)handleprocessDidSuspendOnQueue;
- (void)hintProcessMayNeedPurgeTimerRestart;
- (void)processDidSuspend;
- (void)processDidTerminate;
- (void)processIsNoLongerSuspended;
- (void)restartPurgeTimerIfNecessary;
@end

@implementation FigPurgeAndRenewPurgeOperator

+ (id)operatorForClientPID:(int)a3 notificationQueue:(id)a4 withPurgeBlock:(id)a5
{
  v5 = [[a1 alloc] _initWithClientPID:*&a3 withPurgeBlock:a5 notificationQueue:a4];

  return v5;
}

- (id)_initWithClientPID:(int)a3 withPurgeBlock:(id)a4 notificationQueue:(id)a5
{
  v9 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigPurgeAndRenewProcessStateTracker[1], @"processtatetracker_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", v9, 0, gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 1u, 0, &qword_1EAF1CC60);
  v13.receiver = self;
  v13.super_class = FigPurgeAndRenewPurgeOperator;
  v10 = [(FigPurgeAndRenewPurgeOperator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_clientPID = a3;
    v10->_queue = a5;
    dispatch_retain(a5);
    v11->_purgeBlock = [a4 copy];
    v11->_isSuspended = 0;
    v11->_lastSuspensionTimeNs = 0;
    v11->_purgeTimeoutSeconds = FigGetCFPreferenceNumberWithDefault(@"purge_timeout_seconds", @"com.apple.coremedia", 600);
    *&v11->_purgeSuspended = 0;
  }

  return v11;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = FigPurgeAndRenewPurgeOperator;
  [(FigPurgeAndRenewPurgeOperator *)&v3 dealloc];
}

- (void)restartPurgeTimerIfNecessary
{
  location[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v21 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v21, &type);
    v4 = v21;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v22 = 136315650;
      v23 = "[FigPurgeAndRenewPurgeOperator restartPurgeTimerIfNecessary]";
      v24 = 1024;
      v25 = clientPID;
      v26 = 2048;
      v27 = self;
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v4) = v21;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v8, v8 != location, v4, 0, v5);
  }

  if (self->_purgeSuspended)
  {
    if (dword_1EAF1CC68)
    {
      v21 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v21, &type);
      v10 = v21;
      if (os_log_type_enabled(v9, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = self->_clientPID;
        v22 = 136315650;
        v23 = "[FigPurgeAndRenewPurgeOperator restartPurgeTimerIfNecessary]";
        v24 = 1024;
        v25 = v13;
        v26 = 2048;
        v27 = self;
        v14 = _os_log_send_and_compose_impl();
        LOBYTE(v10) = v21;
      }

      else
      {
        v14 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v14, v14 != location, v10, 0, v11);
    }
  }

  else
  {
    objc_initWeak(location, self);
    lastSuspensionTimeNs = self->_lastSuspensionTimeNs;
    v16 = dispatch_time(0x8000000000000000, 1000000000 * self->_purgeTimeoutSeconds);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FigPurgeAndRenewPurgeOperator_restartPurgeTimerIfNecessary__block_invoke;
    block[3] = &unk_1E749CDF0;
    objc_copyWeak(v19, location);
    v19[1] = lastSuspensionTimeNs;
    dispatch_after(v16, queue, block);
    objc_destroyWeak(v19);
    objc_destroyWeak(location);
  }
}

id __61__FigPurgeAndRenewPurgeOperator_restartPurgeTimerIfNecessary__block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = *(a1 + 40);

    return [result checkAppStateAndPurgeObjectsBasedOnSuspensionTime:v3];
  }

  return result;
}

- (void)handleprocessDidSuspendOnQueue
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v10[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, v10, &type);
    v4 = v10[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v10[1] = 136315394;
      v11 = "[FigPurgeAndRenewPurgeOperator handleprocessDidSuspendOnQueue]";
      v12 = 1024;
      v13 = clientPID;
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v4) = v10[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v8, v8 != &v14, v4, 0, v5);
  }

  self->_isSuspended = 1;
  self->_lastSuspensionTimeNs = FigGetUpTimeNanoseconds();
  [(FigPurgeAndRenewPurgeOperator *)self restartPurgeTimerIfNecessary];
}

- (void)processDidSuspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FigPurgeAndRenewPurgeOperator_processDidSuspend__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleProcessIsNoLongerSuspendedOnQueue
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v10[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, v10, &type);
    v4 = v10[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v10[1] = 136315394;
      v11 = "[FigPurgeAndRenewPurgeOperator handleProcessIsNoLongerSuspendedOnQueue]";
      v12 = 1024;
      v13 = clientPID;
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v4) = v10[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v8, v8 != &v14, v4, 0, v5);
  }

  self->_isSuspended = 0;
  self->_lastSuspensionTimeNs = 0;
}

- (void)processIsNoLongerSuspended
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__FigPurgeAndRenewPurgeOperator_processIsNoLongerSuspended__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)processDidTerminate
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v13, &type);
    v4 = v13;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v14 = 136315394;
      v15 = "[FigPurgeAndRenewPurgeOperator processDidTerminate]";
      v16 = 1024;
      v17 = clientPID;
      LODWORD(v11) = 18;
      v10 = &v14;
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v4) = v13;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v8, v8 != &v18, v4, 0, v5);
  }

  v9 = [MEMORY[0x1E696AD80] notificationWithName:@"FigProcessStateTrackerClientProcessIsTerminated" object:self userInfo:{0, v10, v11}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (BOOL)setPurgeSuspended:(BOOL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  self->_purgeSuspended = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FigPurgeAndRenewPurgeOperator_setPurgeSuspended___block_invoke;
  block[3] = &unk_1E749CE40;
  block[4] = self;
  block[5] = &v20;
  v19 = a3;
  queue = self->_queue;
  if (queue == dispatch_get_current_queue())
  {
    purgeOccurred = self->_purgeOccurred;
    v23 = !purgeOccurred;
    v6 = !purgeOccurred;
    if (purgeOccurred)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_sync(queue, block);
    v6 = *(v21 + 24);
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    if (dword_1EAF1CC68)
    {
      v17 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v17, &type);
      v9 = v17;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v24 = 136315138;
        v25 = "[FigPurgeAndRenewPurgeOperator setPurgeSuspended:]";
        LODWORD(v15) = 12;
        v14 = &v24;
        v12 = _os_log_send_and_compose_impl();
        LOBYTE(v9) = v17;
      }

      else
      {
        v12 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v12, v12 != &v26, v9, 0, v10);
    }

    [(FigPurgeAndRenewPurgeOperator *)self hintProcessMayNeedPurgeTimerRestart:v14];
    v6 = *(v21 + 24);
  }

LABEL_15:
  _Block_object_dispose(&v20, 8);
  return v6 & 1;
}

uint64_t __51__FigPurgeAndRenewPurgeOperator_setPurgeSuspended___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = (*(v1 + 10) & 1) == 0 && *(v1 + 9) == *(result + 48);
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)hintProcessMayNeedPurgeTimerRestart
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__FigPurgeAndRenewPurgeOperator_hintProcessMayNeedPurgeTimerRestart__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)checkAppStateAndPurgeObjectsBasedOnSuspensionTime:(int64_t)a3
{
  if (self->_isSuspended && !self->_purgeSuspended && self->_lastSuspensionTimeNs == a3)
  {
    dispatch_assert_queue_V2(self->_queue);
    (*(self->_purgeBlock + 2))();
    *&self->_purgeSuspended = 256;
  }
}

_BYTE *__68__FigPurgeAndRenewPurgeOperator_hintProcessMayNeedPurgeTimerRestart__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result restartPurgeTimerIfNecessary];
  }

  return result;
}

@end