@interface NLTelemetry
+ (id)sharedInstance;
- (NLTelemetry)init;
- (void)_registerPayload:(id)a3 forEvent:(id)a4;
- (void)reportEmbeddingLoadedWithIdentifier:(id)a3 localeIdentifier:(id)a4 useANE:(BOOL)a5 status:(int64_t)a6;
@end

@implementation NLTelemetry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NLTelemetry sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __29__NLTelemetry_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(NLTelemetry);

  return MEMORY[0x1EEE66BB8]();
}

- (NLTelemetry)init
{
  v6.receiver = self;
  v6.super_class = NLTelemetry;
  v2 = [(NLTelemetry *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NaturalLanguage.NLTelemetry", 0);
    analyticsQueue = v2->_analyticsQueue;
    v2->_analyticsQueue = v3;
  }

  return v2;
}

- (void)_registerPayload:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsQueue = self->_analyticsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__NLTelemetry__registerPayload_forEvent___block_invoke;
  v11[3] = &unk_1E76297D0;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(analyticsQueue, v11);
}

- (void)reportEmbeddingLoadedWithIdentifier:(id)a3 localeIdentifier:(id)a4 useANE:(BOOL)a5 status:(int64_t)a6
{
  v7 = a5;
  v10 = MEMORY[0x1E695DF90];
  v11 = a4;
  v12 = a3;
  v18 = [v10 dictionary];
  [v18 setObject:v12 forKeyedSubscript:@"identifier"];

  [v18 setObject:v11 forKeyedSubscript:@"locale"];
  if (v7)
  {
    v13 = @"ane";
  }

  else
  {
    v13 = @"cpu";
  }

  [v18 setObject:v13 forKeyedSubscript:@"engine"];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  [v18 setObject:v14 forKeyedSubscript:@"status"];

  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"unknown";
  }

  [v18 setObject:v17 forKeyedSubscript:@"app_bundle"];
  [(NLTelemetry *)self _registerPayload:v18 forEvent:@"com.apple.NaturalLanguage.EmbeddingStatus"];
}

@end