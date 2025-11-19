@interface BYODEmail
- (BYODEmail)initWithDictionary:(id)a3;
@end

@implementation BYODEmail

- (BYODEmail)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BYODEmail;
  v5 = [(BYODEmail *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"email"];
    email = v5->_email;
    v5->_email = v6;

    v8 = [v4 objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v8;
  }

  return v5;
}

@end