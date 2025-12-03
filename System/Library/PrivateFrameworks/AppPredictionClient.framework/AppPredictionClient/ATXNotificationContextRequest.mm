@interface ATXNotificationContextRequest
- (ATXNotificationContextRequest)initWithCoder:(id)coder;
- (ATXNotificationContextRequest)initWithUserNotification:(id)notification additionalContextSignals:(id)signals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationContextRequest

- (ATXNotificationContextRequest)initWithUserNotification:(id)notification additionalContextSignals:(id)signals
{
  notificationCopy = notification;
  signalsCopy = signals;
  v12.receiver = self;
  v12.super_class = ATXNotificationContextRequest;
  v9 = [(ATXNotificationContextRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userNotification, notification);
    objc_storeStrong(&v10->_contextRequestSignals, signals);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userNotification = [(ATXNotificationContextRequest *)self userNotification];
  [coderCopy encodeObject:userNotification forKey:@"userNotification"];

  contextRequestSignals = [(ATXNotificationContextRequest *)self contextRequestSignals];
  [coderCopy encodeObject:contextRequestSignals forKey:@"contextRequestSignals"];
}

- (ATXNotificationContextRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_categorization();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"userNotification" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXNotificationContextRequestErrorDomain" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_categorization();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"contextRequestSignals" withCoder:coderCopy expectNonNull:0 errorDomain:@"ATXNotificationContextRequestErrorDomain" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXNotificationContextRequest *)self initWithUserNotification:v8 additionalContextSignals:v14];
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end