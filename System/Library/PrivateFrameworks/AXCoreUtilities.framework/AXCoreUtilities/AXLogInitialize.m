@interface AXLogInitialize
@end

@implementation AXLogInitialize

uint64_t ___AXLogInitialize_block_invoke()
{
  v0 = dispatch_queue_create("_AXLogThresholdQueue", 0);
  v1 = _AXLogThresholdQueue;
  _AXLogThresholdQueue = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = _AXLogThresholdMap;
  _AXLogThresholdMap = v2;

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = _OSLogCache;
  _OSLogCache = v4;

  v6 = [AXDispatchTimer alloc];
  _AXLogThresholdCleanupTimer = [(AXDispatchTimer *)v6 initWithTargetSerialQueue:_AXLogThresholdQueue];

  return MEMORY[0x1EEE66BB8]();
}

@end