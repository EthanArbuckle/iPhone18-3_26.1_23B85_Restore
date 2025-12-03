@interface BYODEmail
- (BYODEmail)initWithDictionary:(id)dictionary;
@end

@implementation BYODEmail

- (BYODEmail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODEmail;
  v5 = [(BYODEmail *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"email"];
    email = v5->_email;
    v5->_email = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v8;
  }

  return v5;
}

@end