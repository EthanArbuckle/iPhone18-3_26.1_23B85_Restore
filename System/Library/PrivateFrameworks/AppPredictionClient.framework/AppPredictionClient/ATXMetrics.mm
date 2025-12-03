@interface ATXMetrics
+ (id)_sharedInstance;
+ (void)logActionExecuteForType:(int64_t)type inContext:(int64_t)context;
+ (void)logActionViewForType:(int64_t)type inContext:(int64_t)context;
+ (void)logError:(int64_t)error inContext:(int64_t)context;
- (ATXMetrics)init;
- (void)_logActionExecuteForType:(int64_t)type inContext:(int64_t)context;
- (void)_logActionViewForType:(int64_t)type inContext:(int64_t)context;
- (void)_logError:(int64_t)error inContext:(int64_t)context;
@end

@implementation ATXMetrics

+ (void)logError:(int64_t)error inContext:(int64_t)context
{
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _logError:error inContext:context];
}

+ (void)logActionViewForType:(int64_t)type inContext:(int64_t)context
{
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _logActionViewForType:type inContext:context];
}

+ (void)logActionExecuteForType:(int64_t)type inContext:(int64_t)context
{
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _logActionExecuteForType:type inContext:context];
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[ATXMetrics _sharedInstance];
  }

  v3 = _sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __29__ATXMetrics__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXMetrics);
  v1 = _sharedInstance_sSharedInstance;
  _sharedInstance_sSharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXMetrics)init
{
  v33[6] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = ATXMetrics;
  v2 = [(ATXMetrics *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create(uTF8String, v7);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v8;

    v32[0] = &unk_1F3E60498;
    v32[1] = &unk_1F3E604B0;
    v33[0] = @"unknown";
    v33[1] = @"atxnsua";
    v32[2] = &unk_1F3E604C8;
    v32[3] = &unk_1F3E604E0;
    v33[2] = @"atxintent";
    v33[3] = @"nsua";
    v32[4] = &unk_1F3E604F8;
    v32[5] = &unk_1F3E60510;
    v33[4] = @"intent";
    v33[5] = @"vs";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
    v23 = [MEMORY[0x1E69C5B40] propertyWithName:@"type" enumMapping:v24];
    v30[0] = &unk_1F3E60498;
    v30[1] = &unk_1F3E604C8;
    v31[0] = @"unknown";
    v31[1] = @"search";
    v30[2] = &unk_1F3E604B0;
    v31[2] = @"notif";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v11 = [MEMORY[0x1E69C5B40] propertyWithName:@"ctx" enumMapping:v10];
    v29[0] = v23;
    v29[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v27[0] = &unk_1F3E60498;
    v27[1] = &unk_1F3E604C8;
    v28[0] = @"unknown";
    v28[1] = @"other";
    v27[2] = &unk_1F3E604B0;
    v27[3] = &unk_1F3E604F8;
    v28[2] = @"dump";
    v28[3] = @"cia";
    v27[4] = &unk_1F3E604E0;
    v27[5] = &unk_1F3E60510;
    v28[4] = @"exttimeout";
    v28[5] = @"extint";
    v27[6] = &unk_1F3E60528;
    v27[7] = &unk_1F3E60540;
    v28[6] = @"proxyop";
    v28[7] = @"wfstop";
    v27[8] = &unk_1F3E60558;
    v27[9] = &unk_1F3E60570;
    v28[8] = @"cardcom";
    v28[9] = @"cardreq";
    v27[10] = &unk_1F3E60588;
    v27[11] = &unk_1F3E605A0;
    v28[10] = @"infail";
    v28[11] = @"nilapp";
    v27[12] = &unk_1F3E605B8;
    v27[13] = &unk_1F3E605D0;
    v28[12] = @"deser";
    v28[13] = @"feedbk";
    v27[14] = &unk_1F3E605E8;
    v28[14] = @"noappname";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:15];
    v14 = [MEMORY[0x1E69C5B40] propertyWithName:@"err" enumMapping:v13];
    v26[0] = v14;
    v26[1] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v16 = [objc_alloc(MEMORY[0x1E69C5B58]) initWithFeatureId:@"AppPredictionUI" event:@"View" registerProperties:v12];
    viewTracker = v2->_viewTracker;
    v2->_viewTracker = v16;

    v18 = [objc_alloc(MEMORY[0x1E69C5B58]) initWithFeatureId:@"AppPredictionUI" event:@"Execute" registerProperties:v12];
    executeTracker = v2->_executeTracker;
    v2->_executeTracker = v18;

    v20 = [objc_alloc(MEMORY[0x1E69C5B58]) initWithFeatureId:@"AppPredictionUI" event:@"Error" registerProperties:v15];
    errorTracker = v2->_errorTracker;
    v2->_errorTracker = v20;
  }

  return v2;
}

- (void)_logError:(int64_t)error inContext:(int64_t)context
{
  loggingQueue = self->_loggingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ATXMetrics__logError_inContext___block_invoke;
  block[3] = &unk_1E80C0E10;
  block[4] = self;
  block[5] = error;
  block[6] = context;
  dispatch_async(loggingQueue, block);
}

void __34__ATXMetrics__logError_inContext___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v6[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [v2 trackEventWithPropertyValues:v5];
}

- (void)_logActionViewForType:(int64_t)type inContext:(int64_t)context
{
  loggingQueue = self->_loggingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ATXMetrics__logActionViewForType_inContext___block_invoke;
  block[3] = &unk_1E80C0E10;
  block[4] = self;
  block[5] = type;
  block[6] = context;
  dispatch_async(loggingQueue, block);
}

void __46__ATXMetrics__logActionViewForType_inContext___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v6[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [v2 trackEventWithPropertyValues:v5];
}

- (void)_logActionExecuteForType:(int64_t)type inContext:(int64_t)context
{
  loggingQueue = self->_loggingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ATXMetrics__logActionExecuteForType_inContext___block_invoke;
  block[3] = &unk_1E80C0E10;
  block[4] = self;
  block[5] = type;
  block[6] = context;
  dispatch_async(loggingQueue, block);
}

void __49__ATXMetrics__logActionExecuteForType_inContext___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v6[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [v2 trackEventWithPropertyValues:v5];
}

@end