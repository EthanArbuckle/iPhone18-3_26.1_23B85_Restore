@interface ATXMailContextRequest
- (ATXMailContextRequest)initWithCoder:(id)a3;
- (ATXMailContextRequest)initWithMailMessage:(id)a3 additionalContextSignals:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMailContextRequest

- (ATXMailContextRequest)initWithMailMessage:(id)a3 additionalContextSignals:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXMailContextRequest;
  v9 = [(ATXMailContextRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailMessage, a3);
    objc_storeStrong(&v10->_contextRequestSignals, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXMailContextRequest *)self mailMessage];
  [v4 encodeObject:v5 forKey:@"mailMessage"];

  v6 = [(ATXMailContextRequest *)self contextRequestSignals];
  [v4 encodeObject:v6 forKey:@"contextRequestSignals"];
}

- (ATXMailContextRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_categorization();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"mailMessage" withCoder:v4 expectNonNull:1 errorDomain:@"ATXMailContextRequestErrorDomain" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_categorization();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"contextRequestSignals" withCoder:v4 expectNonNull:0 errorDomain:@"ATXMailContextRequestErrorDomain" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      self = [(ATXMailContextRequest *)self initWithMailMessage:v8 additionalContextSignals:v14];
      v10 = self;
    }
  }

  return v10;
}

@end