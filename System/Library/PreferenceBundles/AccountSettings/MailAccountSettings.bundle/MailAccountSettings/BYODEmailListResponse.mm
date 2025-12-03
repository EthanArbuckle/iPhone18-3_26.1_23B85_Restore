@interface BYODEmailListResponse
- (BYODEmailListResponse)initWithDictionary:(id)dictionary;
@end

@implementation BYODEmailListResponse

- (BYODEmailListResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODEmailListResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [BYODEmailListResult alloc];
    v7 = [dictionaryCopy objectForKey:@"result"];
    v8 = [(BYODEmailListResult *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end