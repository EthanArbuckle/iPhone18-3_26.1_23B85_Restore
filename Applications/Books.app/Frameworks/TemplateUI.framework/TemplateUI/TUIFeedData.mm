@interface TUIFeedData
+ (id)feedDataWithDictionary:(id)dictionary;
- (TUIFeedData)initWithDictionary:(id)dictionary;
@end

@implementation TUIFeedData

+ (id)feedDataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[TUIFeedData alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (TUIFeedData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = TUIFeedData;
  v5 = [(TUIFeedData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end