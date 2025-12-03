@interface APSUser
- (APSUser)initWithUserName:(id)name;
- (id)initUserWithSystemMode:(unint64_t)mode;
- (int)bootstrapLookupForPortName:(const char *)name outConnectionPort:(unsigned int *)port;
@end

@implementation APSUser

- (id)initUserWithSystemMode:(unint64_t)mode
{
  v10.receiver = self;
  v10.super_class = APSUser;
  v4 = [(APSUser *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = mode == 0;
    if (v6)
    {
      v7 = APSDefaultUserName;
    }

    else
    {
      v7 = @"User";
    }

    objc_storeStrong(&v4->_name, v7);
    v5->_isDefaultUser = v6;
    v8 = CUTWeakLinkSymbol();
    objc_storeStrong(&v5->_pubSubName, *v8);
  }

  return v5;
}

- (APSUser)initWithUserName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = APSUser;
  v6 = [(APSUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v7->_isDefaultUser = [nameCopy isEqualToString:APSDefaultUserName];
    objc_storeStrong(&v7->_pubSubName, name);
  }

  return v7;
}

- (int)bootstrapLookupForPortName:(const char *)name outConnectionPort:(unsigned int *)port
{
  sp = 0;
  result = bootstrap_look_up(bootstrap_port, name, &sp);
  if (port)
  {
    *port = sp;
  }

  return result;
}

@end