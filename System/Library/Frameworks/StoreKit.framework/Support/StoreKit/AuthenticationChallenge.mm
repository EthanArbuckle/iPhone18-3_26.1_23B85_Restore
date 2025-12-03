@interface AuthenticationChallenge
+ (id)_messageForProtectionSpace:(id)space;
+ (id)_titleForProtectionSpace:(id)space;
- (AuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge;
- (NSString)user;
@end

@implementation AuthenticationChallenge

- (AuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  v6 = [(AuthenticationChallenge *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_challenge, challenge);
    protectionSpace = [challengeCopy protectionSpace];
    v9 = [objc_opt_class() _messageForProtectionSpace:protectionSpace];
    localizedMessage = v7->_localizedMessage;
    v7->_localizedMessage = v9;

    v11 = [objc_opt_class() _titleForProtectionSpace:protectionSpace];
    localizedTitle = v7->_localizedTitle;
    v7->_localizedTitle = v11;
  }

  return v7;
}

- (NSString)user
{
  proposedCredential = [(NSURLAuthenticationChallenge *)self->_challenge proposedCredential];
  user = [proposedCredential user];

  return user;
}

+ (id)_messageForProtectionSpace:(id)space
{
  spaceCopy = space;
  v4 = +[NSMutableString string];
  host = [spaceCopy host];
  port = [spaceCopy port];
  if (port <= 0)
  {
    v7 = host;
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@:%ld", host, port];
  }

  v8 = v7;
  if ([spaceCopy isProxy])
  {
    v9 = ASDLocalizedString();
    protocol = [spaceCopy protocol];
    v11 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, protocol, v8];
    [v4 appendString:v11];
  }

  else
  {
    v9 = ASDLocalizedString();
    protocol = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v8];
    [v4 appendString:protocol];
  }

  [spaceCopy receivesCredentialSecurely];
  v12 = ASDLocalizedString();
  [v4 appendFormat:@" %@", v12];

  return v4;
}

+ (id)_titleForProtectionSpace:(id)space
{
  [space isProxy];

  return ASDLocalizedString();
}

@end