@interface ATXDeviceUsageEvents
- (ATXDeviceUsageEvents)initWithCoder:(id)a3;
- (ATXDeviceUsageEvents)initWithContinuousDeviceUsageEvent:(id)a3 mindlessCyclingEvents:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDeviceUsageEvents

- (ATXDeviceUsageEvents)initWithContinuousDeviceUsageEvent:(id)a3 mindlessCyclingEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXDeviceUsageEvents;
  v8 = [(ATXDeviceUsageEvents *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    continuousDeviceUsageEvents = v8->_continuousDeviceUsageEvents;
    v8->_continuousDeviceUsageEvents = v9;

    v11 = [v7 copy];
    mindlessCyclingEvents = v8->_mindlessCyclingEvents;
    v8->_mindlessCyclingEvents = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXDeviceUsageEvents *)self continuousDeviceUsageEvents];
  [v4 encodeObject:v5 forKey:@"continuousDeviceUsageEvents"];

  v6 = [(ATXDeviceUsageEvents *)self mindlessCyclingEvents];
  [v4 encodeObject:v6 forKey:@"mindlessCyclingEvents"];
}

- (ATXDeviceUsageEvents)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_usage_insights();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"continuousDeviceUsageEvents" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:v9];

  v11 = [v4 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x1E69C5D78];
    v14 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = __atxlog_handle_usage_insights();
    v18 = [v13 robustDecodeObjectOfClasses:v16 forKey:@"mindlessCyclingEvents" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v17, v21[0]}];

    v19 = [v4 error];

    if (v19)
    {
      v12 = 0;
    }

    else
    {
      self = [(ATXDeviceUsageEvents *)self initWithContinuousDeviceUsageEvent:v10 mindlessCyclingEvents:v18];
      v12 = self;
    }
  }

  return v12;
}

@end