@interface ATXDistractionEvents
- (ATXDistractionEvents)initWithAllDeliveredNotifications:(id)a3 allInterruptingAppSessions:(id)a4;
- (ATXDistractionEvents)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDistractionEvents

- (ATXDistractionEvents)initWithAllDeliveredNotifications:(id)a3 allInterruptingAppSessions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXDistractionEvents;
  v8 = [(ATXDistractionEvents *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    allDeliveredNotifications = v8->_allDeliveredNotifications;
    v8->_allDeliveredNotifications = v9;

    v11 = [v7 copy];
    allInterruptingAppSessions = v8->_allInterruptingAppSessions;
    v8->_allInterruptingAppSessions = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXDistractionEvents *)self allDeliveredNotifications];
  [v4 encodeObject:v5 forKey:@"allDeliveredNotifications"];

  v6 = [(ATXDistractionEvents *)self allInterruptingAppSessions];
  [v4 encodeObject:v6 forKey:@"allInterruptingAppSessions"];
}

- (ATXDistractionEvents)initWithCoder:(id)a3
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
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"allDeliveredNotifications" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:v9];

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
    v18 = [v13 robustDecodeObjectOfClasses:v16 forKey:@"allInterruptingAppSessions" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v17, v21[0]}];

    v19 = [v4 error];

    if (v19)
    {
      v12 = 0;
    }

    else
    {
      self = [(ATXDistractionEvents *)self initWithAllDeliveredNotifications:v10 allInterruptingAppSessions:v18];
      v12 = self;
    }
  }

  return v12;
}

@end