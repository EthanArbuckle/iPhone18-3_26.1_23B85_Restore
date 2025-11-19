@interface TUIFeedData
+ (id)feedDataWithDictionary:(id)a3;
- (TUIFeedData)initWithDictionary:(id)a3;
@end

@implementation TUIFeedData

+ (id)feedDataWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[TUIFeedData alloc] initWithDictionary:v3];

  return v4;
}

- (TUIFeedData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIFeedData;
  v5 = [(TUIFeedData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end