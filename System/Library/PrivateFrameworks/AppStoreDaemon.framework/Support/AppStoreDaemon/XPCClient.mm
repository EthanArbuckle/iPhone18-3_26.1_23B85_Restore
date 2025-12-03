@interface XPCClient
+ (id)clientIDForConnection:(id)connection;
- (BOOL)isEqual:(id)equal;
- (XPCClient)initWithApplicationID:(id)d;
- (XPCClient)initWithConnection:(id)connection;
- (id)description;
@end

@implementation XPCClient

- (XPCClient)initWithApplicationID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = XPCClient;
  v5 = [(XPCClient *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 URL];
      if (v9)
      {
        v10 = CFBundleCreate(0, v9);
        if (v10)
        {
          v11 = v10;
          sub_100214250(v5, v10);
          CFRelease(v11);
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    if (!v5->_clientID)
    {
      v12 = [dCopy copy];
      clientID = v5->_clientID;
      v5->_clientID = v12;

      clientVersion = v5->_clientVersion;
      v5->_clientVersion = @"1.0";
    }

    sub_1000038E0(v5);
  }

  return v5;
}

- (XPCClient)initWithConnection:(id)connection
{
  v3 = __chkstk_darwin(self);
  v5 = v4;
  v19[0].receiver = v3;
  v19[0].super_class = XPCClient;
  v6 = [(objc_super *)v19 init];
  if (v6)
  {
    if (!v5)
    {
LABEL_16:
      sub_1000038E0(v6);
      goto LABEL_17;
    }

    clientVersion = v5;
    objc_opt_self();
    v19[1] = 0u;
    *pid = 0u;
    [(NSString *)clientVersion auditToken];
    v8 = proc_pidpath(pid[1], buffer, 0x1000u);
    if (v8 <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [[NSString alloc] initWithBytes:buffer length:v8 encoding:4];

      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = CFURLCreateWithFileSystemPath(0, v9, kCFURLPOSIXPathStyle, 0);
      if (v10)
      {
        v11 = v10;
        v12 = _CFBundleCopyBundleURLForExecutableURL();
        if (v12)
        {
          v13 = v12;
          v14 = CFBundleCreate(0, v12);
          if (v14)
          {
            v15 = v14;
            sub_100214250(v6, v14);
            CFRelease(v15);
          }

          CFRelease(v13);
        }

        CFRelease(v11);
      }

      if (v6->_clientID)
      {
        goto LABEL_15;
      }

      lastPathComponent = [(__CFString *)v9 lastPathComponent];
      clientID = v6->_clientID;
      v6->_clientID = lastPathComponent;

      clientVersion = v6->_clientVersion;
      v6->_clientVersion = @"1.0";
    }

LABEL_15:
    goto LABEL_16;
  }

LABEL_17:

  return v6;
}

+ (id)clientIDForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[XPCClient alloc] initWithConnection:connectionCopy];

  clientID = [(XPCClient *)v4 clientID];

  return clientID;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = XPCClient;
  v3 = [(XPCClient *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %@", v3, self->_clientID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    clientID = self->_clientID;
    clientID = [equalCopy clientID];
    v6 = [(NSString *)clientID isEqual:clientID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end