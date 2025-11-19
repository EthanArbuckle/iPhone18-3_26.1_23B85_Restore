@interface _LSAppLinkOpenState
- (_LSAppLinkOpenState)initWithCoder:(id)a3;
- (const)auditToken;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setAuditToken:(id *)a3;
- (void)setXPCConnection:(id)a3;
@end

@implementation _LSAppLinkOpenState

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 40) = 0;
  return self;
}

- (const)auditToken
{
  if (self->_auditToken.__engaged_)
  {
    return &self->_auditToken;
  }

  else
  {
    return 0;
  }
}

- (void)setAuditToken:(id *)a3
{
  if (a3)
  {
    engaged = self->_auditToken.__engaged_;
    v4 = *&a3->var0[4];
    *&self->_auditToken.var0.__null_state_ = *a3->var0;
    *&self->_auditToken.var0.val[4] = v4;
    if (!engaged)
    {
      self->_auditToken.__engaged_ = 1;
    }
  }

  else if (self->_auditToken.__engaged_)
  {
    self->_auditToken.__engaged_ = 0;
  }

  XPCConnection = self->_XPCConnection;
  self->_XPCConnection = 0;
}

- (void)setXPCConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(NSXPCConnection *)v4 auditToken];
    engaged = self->_auditToken.__engaged_;
    *&self->_auditToken.var0.__null_state_ = v8;
    *&self->_auditToken.var0.val[4] = v9;
    if (!engaged)
    {
      self->_auditToken.__engaged_ = 1;
    }
  }

  else if (self->_auditToken.__engaged_)
  {
    self->_auditToken.__engaged_ = 0;
  }

  XPCConnection = self->_XPCConnection;
  self->_XPCConnection = v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _LSAppLinkOpenState;
  v4 = [(_LSAppLinkOpenState *)&v11 description];
  v5 = [(_LSAppLinkOpenState *)self URL];
  v6 = [(_LSAppLinkOpenState *)self browserState];
  v7 = [v6 count];
  v8 = [(_LSAppLinkOpenState *)self openConfiguration];
  v9 = [v3 stringWithFormat:@"%@ { URL = %@, browserState = %lu, openconfig = %@ }", v4, v5, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(NSURL *)self->_URL copy];
    v6 = *(v4 + 64);
    *(v4 + 64) = v5;

    v7 = [(NSString *)self->_bundleIdentifier copy];
    v8 = *(v4 + 72);
    *(v4 + 72) = v7;

    v9 = [(_LSOpenConfiguration *)self->_openConfiguration copy];
    v10 = *(v4 + 80);
    *(v4 + 80) = v9;

    v11 = [(NSDictionary *)self->_browserState copy];
    v12 = *(v4 + 88);
    *(v4 + 88) = v11;

    objc_storeStrong((v4 + 48), self->_XPCConnection);
    *(v4 + 56) = self->_includeLinksForCallingApplication;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(_LSAppLinkOpenState *)self URL];
  [v7 encodeObject:v4 forKey:@"URL"];

  v5 = [(_LSAppLinkOpenState *)self openConfiguration];
  [v7 encodeObject:v5 forKey:@"openConfiguration"];

  v6 = [(_LSAppLinkOpenState *)self browserState];
  [v7 encodeObject:v6 forKey:@"browserState"];

  [v7 encodeBool:-[_LSAppLinkOpenState includeLinksForCallingApplication](self forKey:{"includeLinksForCallingApplication"), @"includeLinksForCallingApplication"}];
}

- (_LSAppLinkOpenState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_LSAppLinkOpenState *)self init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    [(_LSAppLinkOpenState *)v5 setURL:v6];

    v7 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"openConfiguration"];
    [(_LSAppLinkOpenState *)v5 setOpenConfiguration:v7];

    v8 = objc_opt_class();
    v9 = XNSGetPropertyListClasses();
    v10 = [v4 ls_decodeDictionaryWithKeysOfClass:v8 valuesOfClasses:v9 forKey:@"browserState"];
    [(_LSAppLinkOpenState *)v5 setBrowserState:v10];

    -[_LSAppLinkOpenState setIncludeLinksForCallingApplication:](v5, "setIncludeLinksForCallingApplication:", [v4 decodeBoolForKey:@"includeLinksForCallingApplication"]);
  }

  return v5;
}

@end