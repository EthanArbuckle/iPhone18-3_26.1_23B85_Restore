@interface ATXDeviceUsageEvents
- (ATXDeviceUsageEvents)initWithCoder:(id)coder;
- (ATXDeviceUsageEvents)initWithContinuousDeviceUsageEvent:(id)event mindlessCyclingEvents:(id)events;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDeviceUsageEvents

- (ATXDeviceUsageEvents)initWithContinuousDeviceUsageEvent:(id)event mindlessCyclingEvents:(id)events
{
  eventCopy = event;
  eventsCopy = events;
  v14.receiver = self;
  v14.super_class = ATXDeviceUsageEvents;
  v8 = [(ATXDeviceUsageEvents *)&v14 init];
  if (v8)
  {
    v9 = [eventCopy copy];
    continuousDeviceUsageEvents = v8->_continuousDeviceUsageEvents;
    v8->_continuousDeviceUsageEvents = v9;

    v11 = [eventsCopy copy];
    mindlessCyclingEvents = v8->_mindlessCyclingEvents;
    v8->_mindlessCyclingEvents = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  continuousDeviceUsageEvents = [(ATXDeviceUsageEvents *)self continuousDeviceUsageEvents];
  [coderCopy encodeObject:continuousDeviceUsageEvents forKey:@"continuousDeviceUsageEvents"];

  mindlessCyclingEvents = [(ATXDeviceUsageEvents *)self mindlessCyclingEvents];
  [coderCopy encodeObject:mindlessCyclingEvents forKey:@"mindlessCyclingEvents"];
}

- (ATXDeviceUsageEvents)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_usage_insights();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"continuousDeviceUsageEvents" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:v9];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
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
    v18 = [v13 robustDecodeObjectOfClasses:v16 forKey:@"mindlessCyclingEvents" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v17, v21[0]}];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXDeviceUsageEvents *)self initWithContinuousDeviceUsageEvent:v10 mindlessCyclingEvents:v18];
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end