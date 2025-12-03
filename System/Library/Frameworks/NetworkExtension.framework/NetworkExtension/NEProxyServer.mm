@interface NEProxyServer
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)needToUpdateKeychain;
- (NEProxyServer)initWithCoder:(id)coder;
- (NEProxyServer)initWithType:(int64_t)type address:(id)address port:(int64_t)port;
- (id)copyPassword;
- (id)copyWithZone:(_NSZone *)zone;
- (void)copyProtectionSpace;
- (void)encodeWithCoder:(id)coder;
- (void)removeFromKeychain;
- (void)syncWithKeychain;
@end

@implementation NEProxyServer

- (id)copyPassword
{
  copyProtectionSpace = [(NEProxyServer *)self copyProtectionSpace];
  if (copyProtectionSpace)
  {
    mEMORY[0x1E696AF38] = [MEMORY[0x1E696AF38] sharedCredentialStorage];
    v4 = [mEMORY[0x1E696AF38] defaultCredentialForProtectionSpace:copyProtectionSpace];

    if (v4)
    {
      password = [v4 password];
    }

    else
    {
      password = 0;
    }
  }

  else
  {
    password = 0;
  }

  return password;
}

- (void)copyProtectionSpace
{
  selfCopy = self;
  if (self)
  {
    v2 = [self type] - 1;
    if (v2 <= 4 && ((0x17u >> v2) & 1) != 0)
    {
      v3 = **(&unk_1E7F0AA00 + v2);
      if (v3)
      {
        address = [selfCopy address];
        v5 = [address length];

        if (v5)
        {
          v6 = objc_alloc(MEMORY[0x1E696AF50]);
          address2 = [selfCopy address];
          port = [selfCopy port];
          selfCopy = [v6 initWithProxyHost:address2 port:port type:v3 realm:0 authenticationMethod:*MEMORY[0x1E696A948]];

LABEL_9:
          return selfCopy;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    selfCopy = 0;
    goto LABEL_9;
  }

  return selfCopy;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  address = [(NEProxyServer *)self address];

  if (!address)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  return address != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEProxyServer allocWithZone:zone];
  type = [(NEProxyServer *)self type];
  address = [(NEProxyServer *)self address];
  v7 = [(NEProxyServer *)v4 initWithType:type address:address port:[(NEProxyServer *)self port]];

  [(NEProxyServer *)v7 setAuthenticationRequired:[(NEProxyServer *)self authenticationRequired]];
  username = [(NEProxyServer *)self username];
  [(NEProxyServer *)v7 setUsername:username];

  password = [(NEProxyServer *)self password];
  [(NEProxyServer *)v7 setPassword:password];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NEProxyServer type](self forKey:{"type"), @"Type"}];
  address = [(NEProxyServer *)self address];
  [coderCopy encodeObject:address forKey:@"Address"];

  [coderCopy encodeInt32:-[NEProxyServer port](self forKey:{"port"), @"Port"}];
  [coderCopy encodeBool:-[NEProxyServer authenticationRequired](self forKey:{"authenticationRequired"), @"AuthenticationRequired"}];
  username = [(NEProxyServer *)self username];
  [coderCopy encodeObject:username forKey:@"Username"];

  password = [(NEProxyServer *)self password];
  [coderCopy encodeObject:password forKey:@"Password"];
}

- (NEProxyServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEProxyServer;
  v5 = [(NEProxyServer *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
    address = v5->_address;
    v5->_address = v6;

    v5->_port = [coderCopy decodeInt32ForKey:@"Port"];
    v5->_authenticationRequired = [coderCopy decodeBoolForKey:@"AuthenticationRequired"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    password = v5->_password;
    v5->_password = v10;
  }

  return v5;
}

- (NEProxyServer)initWithType:(int64_t)type address:(id)address port:(int64_t)port
{
  addressCopy = address;
  v14.receiver = self;
  v14.super_class = NEProxyServer;
  v9 = [(NEProxyServer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v11 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v11;

    v10->_port = port;
  }

  return v10;
}

- (void)syncWithKeychain
{
  if (!self)
  {
    return;
  }

  copyProtectionSpace = [(NEProxyServer *)self copyProtectionSpace];
  if (!copyProtectionSpace)
  {
    goto LABEL_13;
  }

  if ([self authenticationRequired])
  {
    password = [self password];
    if ([password length])
    {
      username = [self username];
      v4 = [username length];

      if (v4)
      {
        v5 = objc_alloc(MEMORY[0x1E696AF30]);
        username2 = [self username];
        password2 = [self password];
        v8 = [v5 initWithUser:username2 password:password2 persistence:2];

        if (v8)
        {
          mEMORY[0x1E696AF38] = [MEMORY[0x1E696AF38] sharedCredentialStorage];
          [mEMORY[0x1E696AF38] setDefaultCredential:v8 forProtectionSpace:copyProtectionSpace];
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

  if (([self authenticationRequired] & 1) == 0)
  {
    mEMORY[0x1E696AF38]2 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
    v8 = [mEMORY[0x1E696AF38]2 defaultCredentialForProtectionSpace:copyProtectionSpace];

    if (v8)
    {
      mEMORY[0x1E696AF38] = [MEMORY[0x1E696AF38] sharedCredentialStorage];
      [mEMORY[0x1E696AF38] removeCredential:v8 forProtectionSpace:copyProtectionSpace];
      goto LABEL_12;
    }
  }

LABEL_13:
  [self setPassword:0];
}

- (BOOL)needToUpdateKeychain
{
  selfCopy = self;
  if (self)
  {
    password = [self password];
    if (password)
    {
      password2 = [selfCopy password];
      selfCopy = [password2 length] != 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)removeFromKeychain
{
  if (self)
  {
    copyProtectionSpace = [(NEProxyServer *)self copyProtectionSpace];
    if (copyProtectionSpace)
    {
      v5 = copyProtectionSpace;
      mEMORY[0x1E696AF38] = [MEMORY[0x1E696AF38] sharedCredentialStorage];
      v3 = [mEMORY[0x1E696AF38] defaultCredentialForProtectionSpace:v5];

      if (v3)
      {
        mEMORY[0x1E696AF38]2 = [MEMORY[0x1E696AF38] sharedCredentialStorage];
        [mEMORY[0x1E696AF38]2 removeCredential:v3 forProtectionSpace:v5];
      }

      copyProtectionSpace = v5;
    }
  }
}

@end