@interface APSUser
- (APSUser)initWithUserName:(id)a3;
- (id)initUserWithSystemMode:(unint64_t)a3;
- (int)bootstrapLookupForPortName:(const char *)a3 outConnectionPort:(unsigned int *)a4;
@end

@implementation APSUser

- (id)initUserWithSystemMode:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = APSUser;
  v4 = [(APSUser *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = a3 == 0;
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

- (APSUser)initWithUserName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APSUser;
  v6 = [(APSUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v7->_isDefaultUser = [v5 isEqualToString:APSDefaultUserName];
    objc_storeStrong(&v7->_pubSubName, a3);
  }

  return v7;
}

- (int)bootstrapLookupForPortName:(const char *)a3 outConnectionPort:(unsigned int *)a4
{
  sp = 0;
  result = bootstrap_look_up(bootstrap_port, a3, &sp);
  if (a4)
  {
    *a4 = sp;
  }

  return result;
}

@end