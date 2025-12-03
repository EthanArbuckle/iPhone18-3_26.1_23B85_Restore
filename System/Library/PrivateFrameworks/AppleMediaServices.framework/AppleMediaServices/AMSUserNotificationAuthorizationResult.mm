@interface AMSUserNotificationAuthorizationResult
- (AMSUserNotificationAuthorizationResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSUserNotificationAuthorizationResult

- (AMSUserNotificationAuthorizationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AMSUserNotificationAuthorizationResult;
  v5 = [(AMSUserNotificationAuthorizationResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v6;

    v5->_authorizationStatus = [coderCopy decodeIntegerForKey:@"kCodingKeyAuthorizationStatus"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  request = [(AMSUserNotificationAuthorizationResult *)self request];
  [coderCopy encodeObject:request forKey:@"kCodingKeyRequest"];

  [coderCopy encodeInteger:-[AMSUserNotificationAuthorizationResult authorizationStatus](self forKey:{"authorizationStatus"), @"kCodingKeyAuthorizationStatus"}];
}

@end