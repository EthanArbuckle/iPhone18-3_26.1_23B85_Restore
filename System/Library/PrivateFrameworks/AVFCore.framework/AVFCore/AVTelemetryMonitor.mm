@interface AVTelemetryMonitor
+ (id)shared;
- (AVTelemetryMonitor)init;
- (void)dealloc;
- (void)incrementBucketCount:(unint64_t)a3 executionTime:(int64_t)a4;
- (void)reportAllAggregatedCounts;
@end

@implementation AVTelemetryMonitor

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[AVTelemetryMonitor shared];
  }

  return shared_shared;
}

AVTelemetryMonitor *__28__AVTelemetryMonitor_shared__block_invoke()
{
  result = objc_alloc_init(AVTelemetryMonitor);
  shared_shared = result;
  return result;
}

- (AVTelemetryMonitor)init
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVTelemetryMonitor;
  v2 = [(AVTelemetryMonitor *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_timerActivated = 0;
    v2->_allAggregratedCount = malloc_type_calloc(0xBBuLL, 0x28uLL, 0x10000400A747E1EuLL);
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v3->_applicationIdentifier = v4;
    if (!v4)
    {
      v5 = getpid();
      proc_name(v5, buffer, 0x80u);
      v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s", buffer), "copy"];
      v7 = [(__CFString *)v6 length];
      v8 = @"NoAppID";
      if (v7)
      {
        v8 = v6;
      }

      v3->_applicationIdentifier = &v8->isa;
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.AVFoundation.caEventTriggerQueue", v10);
    v3->_queueCAEvents = v11;
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
    v3->_timerCAEvents = v12;
    if (v12)
    {
      v13 = v12;
      v14 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(v13, v14, 0x45D964B800uLL, 0x6FC23AC00uLL);
      timerCAEvents = v3->_timerCAEvents;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __26__AVTelemetryMonitor_init__block_invoke;
      handler[3] = &unk_1E7460C00;
      handler[4] = v3;
      dispatch_source_set_event_handler(timerCAEvents, handler);
      dispatch_activate(v3->_timerCAEvents);
      v3->_timerActivated = 1;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)incrementBucketCount:(unint64_t)a3 executionTime:(int64_t)a4
{
  if (a4 > 7999 && a4 >> 7 > 0x7C)
  {
    if (a4 > 0x80E7)
    {
      if (a4 > 0x101CF)
      {
        if (a4 > 0x40F0F)
        {
          FigAtomicIncrement32();
          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            return;
          }
        }

        else
        {
          FigAtomicIncrement32();
          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            return;
          }
        }
      }

      else
      {
        FigAtomicIncrement32();
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          return;
        }
      }
    }

    else
    {
      FigAtomicIncrement32();
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        return;
      }
    }
  }

  FigAtomicIncrement32();
}

- (void)reportAllAggregatedCounts
{
  v2 = 0;
  v3 = 36;
  v6 = self;
  do
  {
    allAggregratedCount = self->_allAggregratedCount;
    if (*(allAggregratedCount + v3 - 36) || *(allAggregratedCount + v3 - 28) || *(allAggregratedCount + v3 - 24) || *(allAggregratedCount + v3 - 20) || *(allAggregratedCount + v3 - 16))
    {
      v8 = v2;
      v7 = self->_allAggregratedCount;
      AnalyticsSendEventLazy();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      allAggregratedCount = v7;
      v2 = v8;
      self = v6;
    }

    if (*(allAggregratedCount + v3 - 12) || *(allAggregratedCount + v3 - 4) || *(&allAggregratedCount->var0 + v3))
    {
      v5 = v2;
      AnalyticsSendEventLazy();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      FigAtomicAdd32();
      v2 = v5;
      self = v6;
    }

    ++v2;
    v3 += 40;
  }

  while (v2 != 187);
}

uint64_t __47__AVTelemetryMonitor_reportAllAggregatedCounts__block_invoke(uint64_t a1)
{
  v7[10] = *MEMORY[0x1E69E9840];
  v6[0] = @"apiCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);
  v7[0] = v2;
  v7[1] = v3;
  v6[1] = @"bundleID";
  v6[2] = @"version";
  v7[2] = &unk_1F0AD3490;
  v6[3] = @"interval1";
  v7[3] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 44)];
  v6[4] = @"interval3";
  v7[4] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v6[5] = @"interval4";
  v7[5] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 52)];
  v6[6] = @"interval5";
  v7[6] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v6[7] = @"interval6";
  v7[7] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
  v6[8] = @"interval8";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v6[9] = @"blockingBackgroundThread";
  v7[8] = v4;
  v7[9] = MEMORY[0x1E695E110];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:10];
}

uint64_t __47__AVTelemetryMonitor_reportAllAggregatedCounts__block_invoke_46(uint64_t a1)
{
  v7[10] = *MEMORY[0x1E69E9840];
  v6[0] = @"apiCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);
  v7[0] = v2;
  v7[1] = v3;
  v6[1] = @"bundleID";
  v6[2] = @"version";
  v7[2] = &unk_1F0AD3490;
  v7[3] = &unk_1F0AD34A8;
  v6[3] = @"interval1";
  v6[4] = @"interval3";
  v7[4] = &unk_1F0AD34A8;
  v6[5] = @"interval4";
  v7[5] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 44)];
  v6[6] = @"interval5";
  v7[6] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v6[7] = @"interval6";
  v7[7] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 52)];
  v6[8] = @"interval8";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v6[9] = @"blockingBackgroundThread";
  v7[8] = v4;
  v7[9] = MEMORY[0x1E695E118];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:10];
}

- (void)dealloc
{
  timerCAEvents = self->_timerCAEvents;
  if (timerCAEvents)
  {
    dispatch_source_cancel(timerCAEvents);
    if (!self->_timerActivated)
    {
      dispatch_activate(self->_timerCAEvents);
    }

    dispatch_release(self->_timerCAEvents);
  }

  dispatch_release(self->_queueCAEvents);
  free(self->_allAggregratedCount);

  v4.receiver = self;
  v4.super_class = AVTelemetryMonitor;
  [(AVTelemetryMonitor *)&v4 dealloc];
}

@end