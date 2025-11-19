@interface ATXMessageContextResponse
- (ATXMessageContextResponse)initWithCoder:(id)a3;
- (ATXMessageContextResponse)initWithMessageSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 messageFeatureDictionary:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMessageContextResponse

- (ATXMessageContextResponse)initWithMessageSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 messageFeatureDictionary:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ATXMessageContextResponse;
  v10 = [(ATXMessageContextResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_messageSenderImportance = a3;
    v10->_importanceConfidenceScore = a4;
    objc_storeStrong(&v10->_messageFeatureDictionary, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[ATXMessageContextResponse messageSenderImportance](self forKey:{"messageSenderImportance"), @"messageSenderImportance"}];
  [(ATXMessageContextResponse *)self importanceConfidenceScore];
  [v4 encodeDouble:@"importanceConfidenceScore" forKey:?];
  v5 = [(ATXMessageContextResponse *)self messageFeatureDictionary];
  [v4 encodeObject:v5 forKey:@"messageFeatureDictionary"];
}

- (ATXMessageContextResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"messageSenderImportance"];
  [v4 decodeDoubleForKey:@"importanceConfidenceScore"];
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"messageFeatureDictionary"];

  v10 = [(ATXMessageContextResponse *)self initWithMessageSenderImportance:v5 importanceConfidenceScore:v9 messageFeatureDictionary:v7];
  return v10;
}

@end