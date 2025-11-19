@interface BYODEmailListResult
- (BYODEmailListResult)initWithDictionary:(id)a3;
@end

@implementation BYODEmailListResult

- (BYODEmailListResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BYODEmailListResult;
  v5 = [(BYODEmailListResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"emails"];
    emails = v5->_emails;
    v5->_emails = v6;

    v8 = [v4 objectForKey:@"defaultSendFromEmail"];
    defaultSendFromEmail = v5->_defaultSendFromEmail;
    v5->_defaultSendFromEmail = v8;
  }

  return v5;
}

@end