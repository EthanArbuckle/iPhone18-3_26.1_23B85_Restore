@interface AuthenticationChallenge
+ (id)_messageForProtectionSpace:(id)a3;
+ (id)_titleForProtectionSpace:(id)a3;
- (AuthenticationChallenge)initWithAuthenticationChallenge:(id)a3;
- (NSString)user;
@end

@implementation AuthenticationChallenge

- (AuthenticationChallenge)initWithAuthenticationChallenge:(id)a3
{
  v5 = a3;
  v6 = [(AuthenticationChallenge *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_challenge, a3);
    v8 = [v5 protectionSpace];
    v9 = [objc_opt_class() _messageForProtectionSpace:v8];
    localizedMessage = v7->_localizedMessage;
    v7->_localizedMessage = v9;

    v11 = [objc_opt_class() _titleForProtectionSpace:v8];
    localizedTitle = v7->_localizedTitle;
    v7->_localizedTitle = v11;
  }

  return v7;
}

- (NSString)user
{
  v2 = [(NSURLAuthenticationChallenge *)self->_challenge proposedCredential];
  v3 = [v2 user];

  return v3;
}

+ (id)_messageForProtectionSpace:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 host];
  v6 = [v3 port];
  if (v6 <= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@:%ld", v5, v6];
  }

  v8 = v7;
  if ([v3 isProxy])
  {
    v9 = ASDLocalizedString();
    v10 = [v3 protocol];
    v11 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v10, v8];
    [v4 appendString:v11];
  }

  else
  {
    v9 = ASDLocalizedString();
    v10 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v8];
    [v4 appendString:v10];
  }

  [v3 receivesCredentialSecurely];
  v12 = ASDLocalizedString();
  [v4 appendFormat:@" %@", v12];

  return v4;
}

+ (id)_titleForProtectionSpace:(id)a3
{
  [a3 isProxy];

  return ASDLocalizedString();
}

@end