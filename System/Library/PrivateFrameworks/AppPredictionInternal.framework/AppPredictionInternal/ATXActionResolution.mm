@interface ATXActionResolution
- (ATXActionResolution)init;
- (ATXActionResolution)initWithSlotResolver:(id)resolver predictionContextBuilder:(id)builder;
- (id)statisticsForActionKey:(id)key;
- (id)statisticsForActionKey:(id)key context:(id)context;
@end

@implementation ATXActionResolution

- (ATXActionResolution)init
{
  v3 = objc_opt_new();
  v4 = +[ATXPredictionContextBuilder sharedInstance];
  v5 = [(ATXActionResolution *)self initWithSlotResolver:v3 predictionContextBuilder:v4];

  return v5;
}

- (ATXActionResolution)initWithSlotResolver:(id)resolver predictionContextBuilder:(id)builder
{
  resolverCopy = resolver;
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ATXActionResolution;
  v9 = [(ATXActionResolution *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotResolver, resolver);
    objc_storeStrong(&v10->_predictionContextBuilder, builder);
  }

  return v10;
}

- (id)statisticsForActionKey:(id)key
{
  keyCopy = key;
  slotResolver = self->_slotResolver;
  predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  v7 = [(ATXSlotResolution *)slotResolver statisticsForActionKey:keyCopy context:predictionContextForCurrentContext];

  return v7;
}

- (id)statisticsForActionKey:(id)key context:(id)context
{
  keyCopy = key;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = [(ATXSlotResolution *)self->_slotResolver statisticsForActionKey:keyCopy context:contextCopy];
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXActionResolution statisticsForActionKey:v9 context:?];
    }

    v8 = 0;
  }

  return v8;
}

@end