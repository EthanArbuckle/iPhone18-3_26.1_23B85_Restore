@interface BYODEmailListResult
- (BYODEmailListResult)initWithDictionary:(id)dictionary;
@end

@implementation BYODEmailListResult

- (BYODEmailListResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODEmailListResult;
  v5 = [(BYODEmailListResult *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"emails"];
    emails = v5->_emails;
    v5->_emails = v6;

    v8 = [dictionaryCopy objectForKey:@"defaultSendFromEmail"];
    defaultSendFromEmail = v5->_defaultSendFromEmail;
    v5->_defaultSendFromEmail = v8;
  }

  return v5;
}

@end