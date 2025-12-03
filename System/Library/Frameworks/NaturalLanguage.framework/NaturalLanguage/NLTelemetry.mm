@interface NLTelemetry
+ (id)sharedInstance;
- (NLTelemetry)init;
- (void)_registerPayload:(id)payload forEvent:(id)event;
- (void)reportEmbeddingLoadedWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier useANE:(BOOL)e status:(int64_t)status;
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

- (void)_registerPayload:(id)payload forEvent:(id)event
{
  payloadCopy = payload;
  eventCopy = event;
  analyticsQueue = self->_analyticsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__NLTelemetry__registerPayload_forEvent___block_invoke;
  v11[3] = &unk_1E76297D0;
  v12 = eventCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = eventCopy;
  dispatch_async(analyticsQueue, v11);
}

- (void)reportEmbeddingLoadedWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier useANE:(BOOL)e status:(int64_t)status
{
  eCopy = e;
  v10 = MEMORY[0x1E695DF90];
  localeIdentifierCopy = localeIdentifier;
  identifierCopy = identifier;
  dictionary = [v10 dictionary];
  [dictionary setObject:identifierCopy forKeyedSubscript:@"identifier"];

  [dictionary setObject:localeIdentifierCopy forKeyedSubscript:@"locale"];
  if (eCopy)
  {
    v13 = @"ane";
  }

  else
  {
    v13 = @"cpu";
  }

  [dictionary setObject:v13 forKeyedSubscript:@"engine"];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [dictionary setObject:v14 forKeyedSubscript:@"status"];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v17 = bundleIdentifier;
  }

  else
  {
    v17 = @"unknown";
  }

  [dictionary setObject:v17 forKeyedSubscript:@"app_bundle"];
  [(NLTelemetry *)self _registerPayload:dictionary forEvent:@"com.apple.NaturalLanguage.EmbeddingStatus"];
}

@end