@interface ATXMailContextRequest
- (ATXMailContextRequest)initWithCoder:(id)coder;
- (ATXMailContextRequest)initWithMailMessage:(id)message additionalContextSignals:(id)signals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMailContextRequest

- (ATXMailContextRequest)initWithMailMessage:(id)message additionalContextSignals:(id)signals
{
  messageCopy = message;
  signalsCopy = signals;
  v12.receiver = self;
  v12.super_class = ATXMailContextRequest;
  v9 = [(ATXMailContextRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailMessage, message);
    objc_storeStrong(&v10->_contextRequestSignals, signals);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mailMessage = [(ATXMailContextRequest *)self mailMessage];
  [coderCopy encodeObject:mailMessage forKey:@"mailMessage"];

  contextRequestSignals = [(ATXMailContextRequest *)self contextRequestSignals];
  [coderCopy encodeObject:contextRequestSignals forKey:@"contextRequestSignals"];
}

- (ATXMailContextRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_categorization();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"mailMessage" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXMailContextRequestErrorDomain" errorCode:-1 logHandle:v7];

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
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"contextRequestSignals" withCoder:coderCopy expectNonNull:0 errorDomain:@"ATXMailContextRequestErrorDomain" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXMailContextRequest *)self initWithMailMessage:v8 additionalContextSignals:v14];
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end