@interface TimingCollection
- (BOOL)hasKey:(int)key;
- (BOOL)isValidTimingForKey:(int)key;
- (TimingCollection)init;
- (double)timingForKey:(int)key;
- (double)totalTimeForKey:(int)key;
- (id)description;
- (void)dealloc;
- (void)removeTimingForKey:(int)key;
- (void)setStartTime:(double)time forKey:(int)key;
- (void)setStopTime:(double)time forKey:(int)key;
- (void)setTiming:(double)timing forKey:(int)key;
- (void)startTimingForKey:(int)key;
- (void)stopTimingForKey:(int)key;
@end

@implementation TimingCollection

- (TimingCollection)init
{
  v4.receiver = self;
  v4.super_class = TimingCollection;
  v2 = [(TimingCollection *)&v4 init];
  if (v2)
  {
    v2->queue = dispatch_queue_create("com.apple.VideoConference.TimingCollection", 0);
    v2->timings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:15];
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->queue);
  v3.receiver = self;
  v3.super_class = TimingCollection;
  [(TimingCollection *)&v3 dealloc];
}

- (void)startTimingForKey:(int)key
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = micro();
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TimingCollection_startTimingForKey___block_invoke;
  block[3] = &unk_278BD5008;
  block[4] = self;
  keyCopy = key;
  *&block[5] = v5;
  dispatch_async(queue, block);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR(8u);
    v8 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[TimingCollection startTimingForKey:]";
        v16 = 1024;
        v17 = 79;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 1024;
        keyCopy3 = key;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p Started timing for key %d", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[TimingCollection startTimingForKey:]";
      v16 = 1024;
      v17 = 79;
      v18 = 2048;
      selfCopy2 = self;
      v20 = 1024;
      keyCopy3 = key;
      _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %p Started timing for key %d", buf, 0x2Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __38__TimingCollection_startTimingForKey___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  if (v2)
  {
    v3 = v2;
    [v2 setStartTiming:*(a1 + 40)];
    [v3 setStopTiming:*(a1 + 40)];
  }

  else
  {
    v3 = [TimingInstance createTimingInstanceWithStartTime:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  }

  return [v3 setIsRunning:1];
}

- (void)setTiming:(double)timing forKey:(int)key
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TimingCollection_setTiming_forKey___block_invoke;
  block[3] = &unk_278BD5008;
  *&block[5] = timing;
  block[4] = self;
  keyCopy = key;
  dispatch_async(queue, block);
}

void __37__TimingCollection_setTiming_forKey___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(TimingInstance);
  [(TimingInstance *)v2 setStartTiming:0.0];
  [(TimingInstance *)v2 setStopTiming:*(a1 + 40)];
  [(TimingInstance *)v2 setIsRunning:0];
  [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
}

- (void)setStartTime:(double)time forKey:(int)key
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TimingCollection_setStartTime_forKey___block_invoke;
  block[3] = &unk_278BD5008;
  block[4] = self;
  keyCopy = key;
  *&block[5] = time;
  dispatch_async(queue, block);
}

uint64_t __40__TimingCollection_setStartTime_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  if (!v2)
  {
    v2 = [TimingInstance createTimingInstanceWithStartTime:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  }

  [v2 setStartTiming:*(a1 + 40)];
  [v2 setStopTiming:*(a1 + 40)];

  return [v2 setIsRunning:1];
}

- (void)setStopTime:(double)time forKey:(int)key
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TimingCollection_setStopTime_forKey___block_invoke;
  block[3] = &unk_278BD5008;
  block[4] = self;
  keyCopy = key;
  *&block[5] = time;
  dispatch_async(queue, block);
}

void *__39__TimingCollection_setStopTime_forKey___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  if (result)
  {
    v3 = result;
    if ([result isRunning])
    {
      [v3 setStopTiming:*(a1 + 40)];
      [v3 stopTiming];
      v5 = v4;
      [v3 startTiming];
      v7 = v5 - v6;
      [v3 totalTime];
      [v3 setTotalTime:v8 + v7];
    }

    return [v3 setIsRunning:0];
  }

  return result;
}

- (void)stopTimingForKey:(int)key
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = micro();
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TimingCollection_stopTimingForKey___block_invoke;
  block[3] = &unk_278BD5008;
  block[4] = self;
  keyCopy = key;
  *&block[5] = v5;
  dispatch_async(queue, block);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR(8u);
    v8 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[TimingCollection stopTimingForKey:]";
        v16 = 1024;
        v17 = 136;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 1024;
        keyCopy3 = key;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p Stopped timing for key %d", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[TimingCollection stopTimingForKey:]";
      v16 = 1024;
      v17 = 136;
      v18 = 2048;
      selfCopy2 = self;
      v20 = 1024;
      keyCopy3 = key;
      _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %p Stopped timing for key %d", buf, 0x2Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void *__37__TimingCollection_stopTimingForKey___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  if (result)
  {
    v3 = result;
    if ([result isRunning])
    {
      [v3 setStopTiming:*(a1 + 40)];
      [v3 stopTiming];
      v5 = v4;
      [v3 startTiming];
      v7 = v5 - v6;
      [v3 totalTime];
      [v3 setTotalTime:v8 + v7];
    }

    return [v3 setIsRunning:0];
  }

  return result;
}

- (BOOL)isValidTimingForKey:(int)key
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TimingCollection_isValidTimingForKey___block_invoke;
  block[3] = &unk_278BD5408;
  keyCopy = key;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __40__TimingCollection_isValidTimingForKey___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  if ([v3 isRunning])
  {
    [v3 totalTime];
    if (v2 == 0.0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (double)timingForKey:(int)key
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TimingCollection_timingForKey___block_invoke;
  block[3] = &unk_278BD5408;
  keyCopy = key;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __33__TimingCollection_timingForKey___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  [v5 stopTiming];
  v3 = v2;
  [v5 startTiming];
  *(*(*(a1 + 40) + 8) + 24) = v3 - v4;
}

- (double)totalTimeForKey:(int)key
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TimingCollection_totalTimeForKey___block_invoke;
  block[3] = &unk_278BD5408;
  keyCopy = key;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __36__TimingCollection_totalTimeForKey___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  [v3 totalTime];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (void)removeTimingForKey:(int)key
{
  queue = self->queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TimingCollection_removeTimingForKey___block_invoke;
  v4[3] = &unk_278BD4D98;
  v4[4] = self;
  keyCopy = key;
  dispatch_async(queue, v4);
}

uint64_t __39__TimingCollection_removeTimingForKey___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [MEMORY[0x277CCABA8] numberWithInt:*(a1 + 40)];

  return [v1 removeObjectForKey:v2];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TimingCollection_description__block_invoke;
  block[3] = &unk_278BD4C10;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(queue, block);
  v3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", v7[5]];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__TimingCollection_description__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) description];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)hasKey:(int)key
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__TimingCollection_hasKey___block_invoke;
  block[3] = &unk_278BD4890;
  block[4] = self;
  block[5] = &v8;
  keyCopy = key;
  dispatch_sync(queue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __27__TimingCollection_hasKey___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

@end