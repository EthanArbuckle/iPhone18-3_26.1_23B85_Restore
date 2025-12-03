@interface ATXMailContextResponse
- (ATXMailContextResponse)initWithCoder:(id)coder;
- (ATXMailContextResponse)initWithMailSenderImportance:(int)importance importanceConfidenceScore:(double)score mailFeatureDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMailContextResponse

- (ATXMailContextResponse)initWithMailSenderImportance:(int)importance importanceConfidenceScore:(double)score mailFeatureDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ATXMailContextResponse;
  v10 = [(ATXMailContextResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_mailSenderImportance = importance;
    v10->_importanceConfidenceScore = score;
    objc_storeStrong(&v10->_mailFeatureDictionary, dictionary);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[ATXMailContextResponse mailSenderImportance](self forKey:{"mailSenderImportance"), @"mailSenderImportance"}];
  [(ATXMailContextResponse *)self importanceConfidenceScore];
  [coderCopy encodeDouble:@"importanceConfidenceScore" forKey:?];
  mailFeatureDictionary = [(ATXMailContextResponse *)self mailFeatureDictionary];
  [coderCopy encodeObject:mailFeatureDictionary forKey:@"mailFeatureDictionary"];
}

- (ATXMailContextResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"mailSenderImportance"];
  [coderCopy decodeDoubleForKey:@"importanceConfidenceScore"];
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"mailFeatureDictionary"];

  v10 = [(ATXMailContextResponse *)self initWithMailSenderImportance:v5 importanceConfidenceScore:v9 mailFeatureDictionary:v7];
  return v10;
}

@end