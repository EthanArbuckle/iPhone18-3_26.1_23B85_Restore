@interface NEProxyServer
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)needToUpdateKeychain;
- (NEProxyServer)initWithCoder:(id)a3;
- (NEProxyServer)initWithType:(int64_t)a3 address:(id)a4 port:(int64_t)a5;
- (id)copyPassword;
- (id)copyWithZone:(_NSZone *)a3;
- (void)copyProtectionSpace;
- (void)encodeWithCoder:(id)a3;
- (void)removeFromKeychain;
- (void)syncWithKeychain;
@end

@implementation NEProxyServer

- (id)copyPassword
{
  v2 = [(NEProxyServer *)self copyProtectionSpace];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
    v4 = [v3 defaultCredentialForProtectionSpace:v2];

    if (v4)
    {
      v5 = [v4 password];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)copyProtectionSpace
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 type] - 1;
    if (v2 <= 4 && ((0x17u >> v2) & 1) != 0)
    {
      v3 = **(&unk_1E7F0AA00 + v2);
      if (v3)
      {
        v4 = [v1 address];
        v5 = [v4 length];

        if (v5)
        {
          v6 = objc_alloc(MEMORY[0x1E696AF50]);
          v7 = [v1 address];
          v8 = [v1 port];
          v1 = [v6 initWithProxyHost:v7 port:v8 type:v3 realm:0 authenticationMethod:*MEMORY[0x1E696A948]];

LABEL_9:
          return v1;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v1 = 0;
    goto LABEL_9;
  }

  return v1;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEProxyServer *)self address];

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  return v5 != 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEProxyServer allocWithZone:a3];
  v5 = [(NEProxyServer *)self type];
  v6 = [(NEProxyServer *)self address];
  v7 = [(NEProxyServer *)v4 initWithType:v5 address:v6 port:[(NEProxyServer *)self port]];

  [(NEProxyServer *)v7 setAuthenticationRequired:[(NEProxyServer *)self authenticationRequired]];
  v8 = [(NEProxyServer *)self username];
  [(NEProxyServer *)v7 setUsername:v8];

  v9 = [(NEProxyServer *)self password];
  [(NEProxyServer *)v7 setPassword:v9];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[NEProxyServer type](self forKey:{"type"), @"Type"}];
  v5 = [(NEProxyServer *)self address];
  [v4 encodeObject:v5 forKey:@"Address"];

  [v4 encodeInt32:-[NEProxyServer port](self forKey:{"port"), @"Port"}];
  [v4 encodeBool:-[NEProxyServer authenticationRequired](self forKey:{"authenticationRequired"), @"AuthenticationRequired"}];
  v6 = [(NEProxyServer *)self username];
  [v4 encodeObject:v6 forKey:@"Username"];

  v7 = [(NEProxyServer *)self password];
  [v4 encodeObject:v7 forKey:@"Password"];
}

- (NEProxyServer)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEProxyServer;
  v5 = [(NEProxyServer *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt32ForKey:@"Type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
    address = v5->_address;
    v5->_address = v6;

    v5->_port = [v4 decodeInt32ForKey:@"Port"];
    v5->_authenticationRequired = [v4 decodeBoolForKey:@"AuthenticationRequired"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    password = v5->_password;
    v5->_password = v10;
  }

  return v5;
}

- (NEProxyServer)initWithType:(int64_t)a3 address:(id)a4 port:(int64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NEProxyServer;
  v9 = [(NEProxyServer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v11 = [v8 copy];
    address = v10->_address;
    v10->_address = v11;

    v10->_port = a5;
  }

  return v10;
}

- (void)syncWithKeychain
{
  if (!a1)
  {
    return;
  }

  v11 = [(NEProxyServer *)a1 copyProtectionSpace];
  if (!v11)
  {
    goto LABEL_13;
  }

  if ([a1 authenticationRequired])
  {
    v2 = [a1 password];
    if ([v2 length])
    {
      v3 = [a1 username];
      v4 = [v3 length];

      if (v4)
      {
        v5 = objc_alloc(MEMORY[0x1E696AF30]);
        v6 = [a1 username];
        v7 = [a1 password];
        v8 = [v5 initWithUser:v6 password:v7 persistence:2];

        if (v8)
        {
          v9 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
          [v9 setDefaultCredential:v8 forProtectionSpace:v11];
LABEL_12:

          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (([a1 authenticationRequired] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
    v8 = [v10 defaultCredentialForProtectionSpace:v11];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
      [v9 removeCredential:v8 forProtectionSpace:v11];
      goto LABEL_12;
    }
  }

LABEL_13:
  [a1 setPassword:0];
}

- (BOOL)needToUpdateKeychain
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 password];
    if (v2)
    {
      v3 = [v1 password];
      v1 = [v3 length] != 0;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)removeFromKeychain
{
  if (a1)
  {
    v1 = [(NEProxyServer *)a1 copyProtectionSpace];
    if (v1)
    {
      v5 = v1;
      v2 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
      v3 = [v2 defaultCredentialForProtectionSpace:v5];

      if (v3)
      {
        v4 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
        [v4 removeCredential:v3 forProtectionSpace:v5];
      }

      v1 = v5;
    }
  }
}

@end