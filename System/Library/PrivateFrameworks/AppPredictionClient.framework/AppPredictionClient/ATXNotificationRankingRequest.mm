@interface ATXNotificationRankingRequest
- (ATXNotificationRankingRequest)initWithCoder:(id)coder;
- (ATXNotificationRankingRequest)initWithUserNotifications:(id)notifications useLLM:(BOOL)m;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationRankingRequest

- (ATXNotificationRankingRequest)initWithUserNotifications:(id)notifications useLLM:(BOOL)m
{
  notificationsCopy = notifications;
  v11.receiver = self;
  v11.super_class = ATXNotificationRankingRequest;
  v7 = [(ATXNotificationRankingRequest *)&v11 init];
  if (v7)
  {
    v8 = [notificationsCopy copy];
    userNotifications = v7->_userNotifications;
    v7->_userNotifications = v8;

    v7->_useLLM = m;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  userNotifications = self->_userNotifications;
  coderCopy = coder;
  [coderCopy encodeObject:userNotifications forKey:@"userNotifications"];
  [coderCopy encodeBool:self->_useLLM forKey:@"useLLM"];
}

- (ATXNotificationRankingRequest)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"userNotifications" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXNotificationRankingRequestErrorDomain" errorCode:-1 logHandle:{v9, v14[0]}];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = -[ATXNotificationRankingRequest initWithUserNotifications:useLLM:](self, "initWithUserNotifications:useLLM:", v10, [coderCopy decodeBoolForKey:@"useLLM"]);
    selfCopy = self;
  }

  return selfCopy;
}

@end