@interface ATXDistractionEvents
- (ATXDistractionEvents)initWithAllDeliveredNotifications:(id)notifications allInterruptingAppSessions:(id)sessions;
- (ATXDistractionEvents)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDistractionEvents

- (ATXDistractionEvents)initWithAllDeliveredNotifications:(id)notifications allInterruptingAppSessions:(id)sessions
{
  notificationsCopy = notifications;
  sessionsCopy = sessions;
  v14.receiver = self;
  v14.super_class = ATXDistractionEvents;
  v8 = [(ATXDistractionEvents *)&v14 init];
  if (v8)
  {
    v9 = [notificationsCopy copy];
    allDeliveredNotifications = v8->_allDeliveredNotifications;
    v8->_allDeliveredNotifications = v9;

    v11 = [sessionsCopy copy];
    allInterruptingAppSessions = v8->_allInterruptingAppSessions;
    v8->_allInterruptingAppSessions = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allDeliveredNotifications = [(ATXDistractionEvents *)self allDeliveredNotifications];
  [coderCopy encodeObject:allDeliveredNotifications forKey:@"allDeliveredNotifications"];

  allInterruptingAppSessions = [(ATXDistractionEvents *)self allInterruptingAppSessions];
  [coderCopy encodeObject:allInterruptingAppSessions forKey:@"allInterruptingAppSessions"];
}

- (ATXDistractionEvents)initWithCoder:(id)coder
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
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"allDeliveredNotifications" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:v9];

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
    v18 = [v13 robustDecodeObjectOfClasses:v16 forKey:@"allInterruptingAppSessions" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v17, v21[0]}];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXDistractionEvents *)self initWithAllDeliveredNotifications:v10 allInterruptingAppSessions:v18];
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end