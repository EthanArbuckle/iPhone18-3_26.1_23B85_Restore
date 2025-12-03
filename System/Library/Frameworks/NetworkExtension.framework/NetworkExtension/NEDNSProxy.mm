@interface NEDNSProxy
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEDNSProxy)init;
- (NEDNSProxy)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSProxy

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  protocol = [(NEDNSProxy *)self protocol];
  v6 = protocol != 0;

  if (!protocol)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  protocol2 = [(NEDNSProxy *)self protocol];
  if (protocol2)
  {
    v8 = protocol2;
    v9 = protocol != 0;
    protocol3 = [(NEDNSProxy *)self protocol];
    v11 = [protocol3 checkValidityAndCollectErrors:errorsCopy];

    v6 = v11 & v9;
  }

  perApp = [(NEDNSProxy *)self perApp];
  if (perApp)
  {
    v13 = perApp;
    perApp2 = [(NEDNSProxy *)self perApp];
    v15 = [perApp2 checkValidityAndCollectErrors:errorsCopy];

    v6 &= v15;
  }

  return v6 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEDNSProxy allocWithZone:?]];
  [(NEDNSProxy *)v4 setEnabled:[(NEDNSProxy *)self isEnabled]];
  protocol = [(NEDNSProxy *)self protocol];
  [(NEDNSProxy *)v4 setProtocol:protocol];

  perApp = [(NEDNSProxy *)self perApp];
  [(NEDNSProxy *)v4 setPerApp:perApp];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEDNSProxy isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  protocol = [(NEDNSProxy *)self protocol];
  [coderCopy encodeObject:protocol forKey:@"Protocol"];

  perApp = [(NEDNSProxy *)self perApp];
  [coderCopy encodeObject:perApp forKey:@"PerApp"];
}

- (NEDNSProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NEDNSProxy;
  v5 = [(NEDNSProxy *)&v11 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
    perApp = v5->_perApp;
    v5->_perApp = v8;
  }

  return v5;
}

- (NEDNSProxy)init
{
  v5.receiver = self;
  v5.super_class = NEDNSProxy;
  v2 = [(NEDNSProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEDNSProxy *)v2 setEnabled:0];
  }

  return v3;
}

@end