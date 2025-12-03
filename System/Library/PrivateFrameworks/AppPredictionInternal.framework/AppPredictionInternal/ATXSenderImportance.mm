@interface ATXSenderImportance
- (ATXSenderImportance)initWithSenderImportanceScore:(double)score featureDictionary:(id)dictionary;
@end

@implementation ATXSenderImportance

- (ATXSenderImportance)initWithSenderImportanceScore:(double)score featureDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ATXSenderImportance;
  v8 = [(ATXSenderImportance *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_senderImportanceScore = score;
    objc_storeStrong(&v8->_featureDictionary, dictionary);
  }

  return v9;
}

@end