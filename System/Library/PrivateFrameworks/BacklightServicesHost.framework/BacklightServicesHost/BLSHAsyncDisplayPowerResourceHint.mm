@interface BLSHAsyncDisplayPowerResourceHint
+ (id)hintWithHint:(id)hint;
+ (id)sharedHighPriorityQueue;
- (BLSHAsyncDisplayPowerResourceHint)initWithHint:(id)hint;
- (BOOL)updateState:(unint64_t)state;
@end

@implementation BLSHAsyncDisplayPowerResourceHint

+ (id)sharedHighPriorityQueue
{
  if (sharedHighPriorityQueue_onceToken != -1)
  {
    +[BLSHAsyncDisplayPowerResourceHint sharedHighPriorityQueue];
  }

  v3 = sharedHighPriorityQueue_sharedQueue;

  return v3;
}

uint64_t __60__BLSHAsyncDisplayPowerResourceHint_sharedHighPriorityQueue__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("BLSHAsyncDisplayPowerResourceHint workloop");
  v1 = sharedHighPriorityQueue_rootWorkloop;
  sharedHighPriorityQueue_rootWorkloop = inactive;

  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(sharedHighPriorityQueue_rootWorkloop);
  sharedHighPriorityQueue_sharedQueue = dispatch_queue_create_with_target_V2("BLSHAsyncDisplayPowerResourceHintQueue", 0, sharedHighPriorityQueue_rootWorkloop);

  return MEMORY[0x2821F96F8]();
}

+ (id)hintWithHint:(id)hint
{
  hintCopy = hint;
  v5 = [[self alloc] initWithHint:hintCopy];

  return v5;
}

- (BLSHAsyncDisplayPowerResourceHint)initWithHint:(id)hint
{
  hintCopy = hint;
  v9.receiver = self;
  v9.super_class = BLSHAsyncDisplayPowerResourceHint;
  v6 = [(BLSHAsyncDisplayPowerResourceHint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hint, hint);
  }

  return v7;
}

- (BOOL)updateState:(unint64_t)state
{
  v4 = self->_hint;
  v5 = +[BLSHAsyncDisplayPowerResourceHint sharedHighPriorityQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__BLSHAsyncDisplayPowerResourceHint_updateState___block_invoke;
  v8[3] = &unk_27841E8B8;
  v9 = v4;
  stateCopy = state;
  v6 = v4;
  dispatch_async(v5, v8);

  return 1;
}

@end