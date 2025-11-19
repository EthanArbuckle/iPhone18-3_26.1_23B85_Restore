@interface AMSUserNotificationAuthorizationResult
- (AMSUserNotificationAuthorizationResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSUserNotificationAuthorizationResult

- (AMSUserNotificationAuthorizationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSUserNotificationAuthorizationResult;
  v5 = [(AMSUserNotificationAuthorizationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v6;

    v5->_authorizationStatus = [v4 decodeIntegerForKey:@"kCodingKeyAuthorizationStatus"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(AMSUserNotificationAuthorizationResult *)self request];
  [v5 encodeObject:v4 forKey:@"kCodingKeyRequest"];

  [v5 encodeInteger:-[AMSUserNotificationAuthorizationResult authorizationStatus](self forKey:{"authorizationStatus"), @"kCodingKeyAuthorizationStatus"}];
}

@end