@interface ATXNotificationContextResponse
- (ATXNotificationContextResponse)initWithCoder:(id)a3;
- (ATXNotificationContextResponse)initWithNotificationSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 notificationFeatureDictionary:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationContextResponse

- (ATXNotificationContextResponse)initWithNotificationSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 notificationFeatureDictionary:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ATXNotificationContextResponse;
  v10 = [(ATXNotificationContextResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notificationSenderImportance = a3;
    v10->_importanceConfidenceScore = a4;
    objc_storeStrong(&v10->_notificationFeatureDictionary, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[ATXNotificationContextResponse notificationSenderImportance](self forKey:{"notificationSenderImportance"), @"notificationSenderImportance"}];
  [(ATXNotificationContextResponse *)self importanceConfidenceScore];
  [v4 encodeDouble:@"importanceConfidenceScore" forKey:?];
  v5 = [(ATXNotificationContextResponse *)self notificationFeatureDictionary];
  [v4 encodeObject:v5 forKey:@"notificationFeatureDictionary"];
}

- (ATXNotificationContextResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"notificationSenderImportance"];
  [v4 decodeDoubleForKey:@"importanceConfidenceScore"];
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"notificationFeatureDictionary"];

  v10 = [(ATXNotificationContextResponse *)self initWithNotificationSenderImportance:v5 importanceConfidenceScore:v9 notificationFeatureDictionary:v7];
  return v10;
}

@end