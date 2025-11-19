@interface NEDNSProxy
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEDNSProxy)init;
- (NEDNSProxy)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSProxy

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEDNSProxy *)self protocol];
  v6 = v5 != 0;

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v7 = [(NEDNSProxy *)self protocol];
  if (v7)
  {
    v8 = v7;
    v9 = v5 != 0;
    v10 = [(NEDNSProxy *)self protocol];
    v11 = [v10 checkValidityAndCollectErrors:v4];

    v6 = v11 & v9;
  }

  v12 = [(NEDNSProxy *)self perApp];
  if (v12)
  {
    v13 = v12;
    v14 = [(NEDNSProxy *)self perApp];
    v15 = [v14 checkValidityAndCollectErrors:v4];

    v6 &= v15;
  }

  return v6 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEDNSProxy allocWithZone:?]];
  [(NEDNSProxy *)v4 setEnabled:[(NEDNSProxy *)self isEnabled]];
  v5 = [(NEDNSProxy *)self protocol];
  [(NEDNSProxy *)v4 setProtocol:v5];

  v6 = [(NEDNSProxy *)self perApp];
  [(NEDNSProxy *)v4 setPerApp:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NEDNSProxy isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  v5 = [(NEDNSProxy *)self protocol];
  [v4 encodeObject:v5 forKey:@"Protocol"];

  v6 = [(NEDNSProxy *)self perApp];
  [v4 encodeObject:v6 forKey:@"PerApp"];
}

- (NEDNSProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEDNSProxy;
  v5 = [(NEDNSProxy *)&v11 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
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