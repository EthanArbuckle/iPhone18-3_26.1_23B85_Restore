@interface AWEventStatistics
+ (id)sharedStatistics;
- (AWEventStatistics)init;
- (void)logEvent:(unint64_t)event;
@end

@implementation AWEventStatistics

void __25__AWEventStatistics_init__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = [MEMORY[0x1E696AD60] string];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  v4 = [v3 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v9 integerValue];
        v11 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v9];
        v12 = [v11 integerValue];

        if (v12)
        {
          v13 = getEventMaskDescription(v10);
          [v36 appendFormat:@"%llu %@ ", v12, v13];

          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v5);

    [*(*(a1 + 32) + 48) removeAllObjects];
    if (v6)
    {
      if (currentLogLevel == 5)
      {
        v14 = _AALog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = absTimeNS();
          if (v15 == -1)
          {
            v16 = INFINITY;
          }

          else
          {
            v16 = v15 / 1000000000.0;
          }

          v21 = *(a1 + 32);
          v22 = *(v21 + 32);
          if (v22 == -1)
          {
            v23 = INFINITY;
          }

          else
          {
            v23 = v22 / 1000000000.0;
          }

          v24 = *(v21 + 40);
          *buf = 134218754;
          v42 = v16;
          v43 = 2112;
          *v44 = v36;
          *&v44[8] = 2048;
          *&v44[10] = v23;
          *&v44[18] = 2112;
          *&v44[20] = v24;
          v25 = "%13.5f: %@since %13.5f (%@)";
          v26 = v14;
          v27 = 42;
LABEL_36:
          _os_log_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        }

LABEL_37:

        goto LABEL_38;
      }

      if (currentLogLevel >= 6)
      {
        v14 = _AALog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/EventStatistics.m";
          for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/EventStatistics.m"; ; ++j)
          {
            if (*(j - 1) == 47)
            {
              v17 = j;
            }

            else if (!*(j - 1))
            {
              v19 = absTimeNS();
              if (v19 == -1)
              {
                v20 = INFINITY;
              }

              else
              {
                v20 = v19 / 1000000000.0;
              }

              v28 = *(a1 + 32);
              v29 = *(v28 + 32);
              if (v29 == -1)
              {
                v30 = INFINITY;
              }

              else
              {
                v30 = v29 / 1000000000.0;
              }

              v31 = *(v28 + 40);
              *buf = 136316418;
              v42 = *&v17;
              v43 = 1024;
              *v44 = 48;
              *&v44[4] = 2048;
              *&v44[6] = v20;
              *&v44[14] = 2112;
              *&v44[16] = v36;
              *&v44[24] = 2048;
              *&v44[26] = v30;
              v45 = 2112;
              v46 = v31;
              v25 = "%30s:%-4d: %13.5f: %@since %13.5f (%@)";
              v26 = v14;
              v27 = 58;
              goto LABEL_36;
            }
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {

    [*(*(a1 + 32) + 48) removeAllObjects];
  }

LABEL_38:
  *(*(a1 + 32) + 32) = absTimeNS();
  v32 = [MEMORY[0x1E695DF00] date];
  v33 = *(a1 + 32);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  dispatch_suspend(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 24) = 0;

  v35 = *MEMORY[0x1E69E9840];
}

+ (id)sharedStatistics
{
  if (sharedStatistics_onceToken != -1)
  {
    dispatch_once(&sharedStatistics_onceToken, &__block_literal_global_58);
  }

  v3 = sharedStatistics_statistics;

  return v3;
}

- (void)logEvent:(unint64_t)event
{
  dispatch_assert_queue_V2(self->_queue);
  stats = self->_stats;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:event];
  v12 = [(NSMutableDictionary *)stats objectForKeyedSubscript:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue") + 1}];
  v8 = self->_stats;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:event];
  [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];

  if (!self->_timerResumed)
  {
    timer = self->_timer;
    v11 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(timer, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_timer);
    self->_timerResumed = 1;
  }
}

- (AWEventStatistics)init
{
  v16.receiver = self;
  v16.super_class = AWEventStatistics;
  v2 = [(AWEventStatistics *)&v16 init];
  if (v2)
  {
    v3 = awQueue(1);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(v2 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __25__AWEventStatistics_init__block_invoke;
    handler[3] = &unk_1E7F38038;
    v8 = v2;
    v15 = v8;
    dispatch_source_set_event_handler(v7, handler);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = v8[6];
    v8[6] = dictionary;

    v8[4] = absTimeNS();
    date = [MEMORY[0x1E695DF00] date];
    v12 = v8[5];
    v8[5] = date;
  }

  return v2;
}

uint64_t __37__AWEventStatistics_sharedStatistics__block_invoke()
{
  sharedStatistics_statistics = objc_alloc_init(AWEventStatistics);

  return MEMORY[0x1EEE66BB8]();
}

@end