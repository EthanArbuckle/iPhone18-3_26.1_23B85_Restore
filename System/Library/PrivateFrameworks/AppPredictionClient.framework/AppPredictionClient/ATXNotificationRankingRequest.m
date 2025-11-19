@interface ATXNotificationRankingRequest
- (ATXNotificationRankingRequest)initWithCoder:(id)a3;
- (ATXNotificationRankingRequest)initWithUserNotifications:(id)a3 useLLM:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationRankingRequest

- (ATXNotificationRankingRequest)initWithUserNotifications:(id)a3 useLLM:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ATXNotificationRankingRequest;
  v7 = [(ATXNotificationRankingRequest *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    userNotifications = v7->_userNotifications;
    v7->_userNotifications = v8;

    v7->_useLLM = a4;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  userNotifications = self->_userNotifications;
  v5 = a3;
  [v5 encodeObject:userNotifications forKey:@"userNotifications"];
  [v5 encodeBool:self->_useLLM forKey:@"useLLM"];
}

- (ATXNotificationRankingRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"userNotifications" withCoder:v4 expectNonNull:1 errorDomain:@"ATXNotificationRankingRequestErrorDomain" errorCode:-1 logHandle:{v9, v14[0]}];

  v11 = [v4 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    self = -[ATXNotificationRankingRequest initWithUserNotifications:useLLM:](self, "initWithUserNotifications:useLLM:", v10, [v4 decodeBoolForKey:@"useLLM"]);
    v12 = self;
  }

  return v12;
}

@end