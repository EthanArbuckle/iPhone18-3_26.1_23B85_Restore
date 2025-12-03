@interface CalBaseResponse
- (CalBaseResponse)initWithDictionary:(id)dictionary;
@end

@implementation CalBaseResponse

- (CalBaseResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CalBaseResponse;
  v5 = [(CalBaseResponse *)&v10 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [[CalError alloc] initWithDictionary:dictionaryCopy];
    calError = v6->_calError;
    v6->_calError = v7;
  }

  return v6;
}

@end