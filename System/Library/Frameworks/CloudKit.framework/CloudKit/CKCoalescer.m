@interface CKCoalescer
- (CKCoalescer)initWithActivityDelay:(unint64_t)a3 maxActivityDelay:(unint64_t)a4 coalescingInterval:(unint64_t)a5 processingDelay:(unint64_t)a6 notifyBlock:(id)a7;
- (void)coalesce:(id)a3;
- (void)dealloc;
- (void)delayPostBy:(unint64_t)a3;
- (void)finish:(id)a3;
- (void)mutate:(id)a3;
- (void)postFinishedNotice;
- (void)postNotice;
- (void)processingComplete;
@end

@implementation CKCoalescer

- (void)dealloc
{
  if (self->_delegateProcessingInProgress)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"CKCoalescer deallocated while delegate processing in progress. (Did the delegate invoke the processingComplete block?)");
  }

  dispatch_source_cancel(self->_fireTimer);
  if (!self->_coalesceStart)
  {
    dispatch_resume(self->_fireTimer);
  }

  v3.receiver = self;
  v3.super_class = CKCoalescer;
  [(CKCoalescer *)&v3 dealloc];
}

- (void)postNotice
{
  pthread_mutex_lock(&self->_lock);
  if (!self->_finished)
  {
    v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    fireDelay = self->_fireDelay;
    v5 = v3 - self->_coalesceStart;
    if (fireDelay <= v5)
    {
      self->_coalesceStart = 0;
      self->_fireDelay = 0;
      dispatch_suspend(self->_fireTimer);
      v10 = objc_msgSend_coalescingInterval(self, v8, v9);
      if (v10)
      {
        objc_msgSend_delayPostBy_(self, v11, v10);
      }

      dispatch_suspend(self->_fireTimer);
      self->_delegateProcessingInProgress = 1;
      notifyBlock = self->_notifyBlock;
      if (notifyBlock)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = sub_188448B8C;
        v15[3] = &unk_1E70BC388;
        v15[4] = self;
        (*(notifyBlock + 2))(notifyBlock, 0, v15);
      }

      else
      {
        objc_msgSend_processingComplete(self, v12, v13);
      }
    }

    else
    {
      fireTimer = self->_fireTimer;
      v7 = dispatch_time(0, fireDelay - v5);
      dispatch_source_set_timer(fireTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)processingComplete
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188448C24;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_async(v3, block);
}

- (CKCoalescer)initWithActivityDelay:(unint64_t)a3 maxActivityDelay:(unint64_t)a4 coalescingInterval:(unint64_t)a5 processingDelay:(unint64_t)a6 notifyBlock:(id)a7
{
  v12 = a7;
  v25.receiver = self;
  v25.super_class = CKCoalescer;
  v13 = [(CKCoalescer *)&v25 init];
  v14 = v13;
  if (v13)
  {
    pthread_mutex_init(&v13->_lock, 0);
    v15 = _Block_copy(v12);
    notifyBlock = v14->_notifyBlock;
    v14->_notifyBlock = v15;

    v14->_activityDelay = a3;
    v14->_maxActivityDelay = a4;
    v14->_coalescingInterval = a5;
    v14->_processingDelay = a6;
    v17 = dispatch_get_global_queue(17, 0);
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17);
    fireTimer = v14->_fireTimer;
    v14->_fireTimer = v18;

    objc_initWeak(&location, v14);
    v20 = v14->_fireTimer;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1886A4FBC;
    v22[3] = &unk_1E70BC680;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v20, v22);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)delayPostBy:(unint64_t)a3
{
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  coalesceStart = self->_coalesceStart;
  if (coalesceStart)
  {
    v7 = v5 - coalesceStart;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + a3;
  if (v7 + a3 > self->_fireDelay)
  {
    fireTimer = self->_fireTimer;
    v10 = dispatch_time(0, a3);
    dispatch_source_set_timer(fireTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    self->_fireDelay = v8;
  }
}

- (void)postFinishedNotice
{
  v3 = _Block_copy(self->_notifyBlock);
  if (v3)
  {
    v4 = dispatch_get_global_queue(17, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1886A5134;
    v5[3] = &unk_1E70BC940;
    v5[4] = self;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)coalesce:(id)a3
{
  v22 = a3;
  pthread_mutex_lock(&self->_lock);
  if (self->_finished)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v7, v10, v8, @"%@ called on an already finished coalescer. Ignored.", v9);

    goto LABEL_21;
  }

  if (v22)
  {
    v22[2](v22);
  }

  v11 = objc_msgSend_activityDelay(self, v5, v6);
  v14 = objc_msgSend_maxActivityDelay(self, v12, v13);
  v16 = v14;
  coalesceStart = self->_coalesceStart;
  if (!coalesceStart || v14)
  {
    v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (!coalesceStart)
    {
      self->_coalesceStart = v18;
    }

    if (v11 && v16)
    {
      v19 = v18 - self->_coalesceStart;
      if (v19 + v11 <= v16)
      {
        goto LABEL_18;
      }

      v20 = v16 >= v19;
      v21 = v16 - v19;
      if (v20)
      {
        v11 = v21;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  if (!coalesceStart || v11)
  {
LABEL_18:
    objc_msgSend_delayPostBy_(self, v15, v11);
    if (!coalesceStart)
    {
      dispatch_resume(self->_fireTimer);
    }
  }

  ++self->_eventCount;
LABEL_21:
  pthread_mutex_unlock(&self->_lock);
}

- (void)mutate:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  if (v4)
  {
    v4[2]();
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)finish:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  if (self->_finished)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "-finish: called on an already finished coalescer. Ignored.", v9, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v4[2](v4);
    }

    self->_finished = 1;
    if (!self->_delegateProcessingInProgress)
    {
      objc_msgSend_postFinishedNotice(self, v5, v6);
    }

    notifyBlock = self->_notifyBlock;
    self->_notifyBlock = 0;
  }

  pthread_mutex_unlock(&self->_lock);
}

@end