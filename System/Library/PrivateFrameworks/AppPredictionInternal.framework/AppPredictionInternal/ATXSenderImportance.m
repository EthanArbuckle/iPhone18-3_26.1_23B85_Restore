@interface ATXSenderImportance
- (ATXSenderImportance)initWithSenderImportanceScore:(double)a3 featureDictionary:(id)a4;
@end

@implementation ATXSenderImportance

- (ATXSenderImportance)initWithSenderImportanceScore:(double)a3 featureDictionary:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXSenderImportance;
  v8 = [(ATXSenderImportance *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_senderImportanceScore = a3;
    objc_storeStrong(&v8->_featureDictionary, a4);
  }

  return v9;
}

@end