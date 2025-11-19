@interface ATXMailContextResponse
- (ATXMailContextResponse)initWithCoder:(id)a3;
- (ATXMailContextResponse)initWithMailSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 mailFeatureDictionary:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMailContextResponse

- (ATXMailContextResponse)initWithMailSenderImportance:(int)a3 importanceConfidenceScore:(double)a4 mailFeatureDictionary:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ATXMailContextResponse;
  v10 = [(ATXMailContextResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_mailSenderImportance = a3;
    v10->_importanceConfidenceScore = a4;
    objc_storeStrong(&v10->_mailFeatureDictionary, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[ATXMailContextResponse mailSenderImportance](self forKey:{"mailSenderImportance"), @"mailSenderImportance"}];
  [(ATXMailContextResponse *)self importanceConfidenceScore];
  [v4 encodeDouble:@"importanceConfidenceScore" forKey:?];
  v5 = [(ATXMailContextResponse *)self mailFeatureDictionary];
  [v4 encodeObject:v5 forKey:@"mailFeatureDictionary"];
}

- (ATXMailContextResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"mailSenderImportance"];
  [v4 decodeDoubleForKey:@"importanceConfidenceScore"];
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"mailFeatureDictionary"];

  v10 = [(ATXMailContextResponse *)self initWithMailSenderImportance:v5 importanceConfidenceScore:v9 mailFeatureDictionary:v7];
  return v10;
}

@end