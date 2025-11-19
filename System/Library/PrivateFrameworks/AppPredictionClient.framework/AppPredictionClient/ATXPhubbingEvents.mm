@interface ATXPhubbingEvents
- (ATXPhubbingEvents)initWithCoder:(id)a3;
- (ATXPhubbingEvents)initWithPhubbingSessions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPhubbingEvents

- (ATXPhubbingEvents)initWithPhubbingSessions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXPhubbingEvents;
  v5 = [(ATXPhubbingEvents *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    phubbingSessions = v5->_phubbingSessions;
    v5->_phubbingSessions = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPhubbingEvents *)self phubbingSessions];
  [v4 encodeObject:v5 forKey:@"phubbingSessions"];
}

- (ATXPhubbingEvents)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5D78];
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = __atxlog_handle_usage_insights();
  v10 = [v4 robustDecodeObjectOfClasses:v8 forKey:@"phubbingSessions" withCoder:v6 expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v9, v14[0]}];

  v11 = [v6 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    self = [(ATXPhubbingEvents *)self initWithPhubbingSessions:v10];
    v12 = self;
  }

  return v12;
}

@end