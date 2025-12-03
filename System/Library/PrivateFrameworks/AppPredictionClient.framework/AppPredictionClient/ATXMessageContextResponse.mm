@interface ATXMessageContextResponse
- (ATXMessageContextResponse)initWithCoder:(id)coder;
- (ATXMessageContextResponse)initWithMessageSenderImportance:(int)importance importanceConfidenceScore:(double)score messageFeatureDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMessageContextResponse

- (ATXMessageContextResponse)initWithMessageSenderImportance:(int)importance importanceConfidenceScore:(double)score messageFeatureDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ATXMessageContextResponse;
  v10 = [(ATXMessageContextResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_messageSenderImportance = importance;
    v10->_importanceConfidenceScore = score;
    objc_storeStrong(&v10->_messageFeatureDictionary, dictionary);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[ATXMessageContextResponse messageSenderImportance](self forKey:{"messageSenderImportance"), @"messageSenderImportance"}];
  [(ATXMessageContextResponse *)self importanceConfidenceScore];
  [coderCopy encodeDouble:@"importanceConfidenceScore" forKey:?];
  messageFeatureDictionary = [(ATXMessageContextResponse *)self messageFeatureDictionary];
  [coderCopy encodeObject:messageFeatureDictionary forKey:@"messageFeatureDictionary"];
}

- (ATXMessageContextResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"messageSenderImportance"];
  [coderCopy decodeDoubleForKey:@"importanceConfidenceScore"];
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"messageFeatureDictionary"];

  v10 = [(ATXMessageContextResponse *)self initWithMessageSenderImportance:v5 importanceConfidenceScore:v9 messageFeatureDictionary:v7];
  return v10;
}

@end