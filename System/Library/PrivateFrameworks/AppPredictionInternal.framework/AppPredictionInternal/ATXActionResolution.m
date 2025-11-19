@interface ATXActionResolution
- (ATXActionResolution)init;
- (ATXActionResolution)initWithSlotResolver:(id)a3 predictionContextBuilder:(id)a4;
- (id)statisticsForActionKey:(id)a3;
- (id)statisticsForActionKey:(id)a3 context:(id)a4;
@end

@implementation ATXActionResolution

- (ATXActionResolution)init
{
  v3 = objc_opt_new();
  v4 = +[ATXPredictionContextBuilder sharedInstance];
  v5 = [(ATXActionResolution *)self initWithSlotResolver:v3 predictionContextBuilder:v4];

  return v5;
}

- (ATXActionResolution)initWithSlotResolver:(id)a3 predictionContextBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXActionResolution;
  v9 = [(ATXActionResolution *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotResolver, a3);
    objc_storeStrong(&v10->_predictionContextBuilder, a4);
  }

  return v10;
}

- (id)statisticsForActionKey:(id)a3
{
  v4 = a3;
  slotResolver = self->_slotResolver;
  v6 = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  v7 = [(ATXSlotResolution *)slotResolver statisticsForActionKey:v4 context:v6];

  return v7;
}

- (id)statisticsForActionKey:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXSlotResolution *)self->_slotResolver statisticsForActionKey:v6 context:v7];
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