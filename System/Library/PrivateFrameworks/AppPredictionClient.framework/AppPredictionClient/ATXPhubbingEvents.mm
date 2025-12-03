@interface ATXPhubbingEvents
- (ATXPhubbingEvents)initWithCoder:(id)coder;
- (ATXPhubbingEvents)initWithPhubbingSessions:(id)sessions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPhubbingEvents

- (ATXPhubbingEvents)initWithPhubbingSessions:(id)sessions
{
  sessionsCopy = sessions;
  v9.receiver = self;
  v9.super_class = ATXPhubbingEvents;
  v5 = [(ATXPhubbingEvents *)&v9 init];
  if (v5)
  {
    v6 = [sessionsCopy copy];
    phubbingSessions = v5->_phubbingSessions;
    v5->_phubbingSessions = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phubbingSessions = [(ATXPhubbingEvents *)self phubbingSessions];
  [coderCopy encodeObject:phubbingSessions forKey:@"phubbingSessions"];
}

- (ATXPhubbingEvents)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5D78];
  v5 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = __atxlog_handle_usage_insights();
  v10 = [v4 robustDecodeObjectOfClasses:v8 forKey:@"phubbingSessions" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.UsageInsights" errorCode:-1 logHandle:{v9, v14[0]}];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXPhubbingEvents *)self initWithPhubbingSessions:v10];
    selfCopy = self;
  }

  return selfCopy;
}

@end