@interface _LSAppLinkOpenState
- (_LSAppLinkOpenState)initWithCoder:(id)coder;
- (const)auditToken;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setAuditToken:(id *)token;
- (void)setXPCConnection:(id)connection;
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

- (void)setAuditToken:(id *)token
{
  if (token)
  {
    engaged = self->_auditToken.__engaged_;
    v4 = *&token->var0[4];
    *&self->_auditToken.var0.__null_state_ = *token->var0;
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

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  if (connectionCopy)
  {
    [(NSXPCConnection *)connectionCopy auditToken];
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
  browserState = [(_LSAppLinkOpenState *)self browserState];
  v7 = [browserState count];
  openConfiguration = [(_LSAppLinkOpenState *)self openConfiguration];
  v9 = [v3 stringWithFormat:@"%@ { URL = %@, browserState = %lu, openconfig = %@ }", v4, v5, v7, openConfiguration];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(_LSAppLinkOpenState *)self URL];
  [coderCopy encodeObject:v4 forKey:@"URL"];

  openConfiguration = [(_LSAppLinkOpenState *)self openConfiguration];
  [coderCopy encodeObject:openConfiguration forKey:@"openConfiguration"];

  browserState = [(_LSAppLinkOpenState *)self browserState];
  [coderCopy encodeObject:browserState forKey:@"browserState"];

  [coderCopy encodeBool:-[_LSAppLinkOpenState includeLinksForCallingApplication](self forKey:{"includeLinksForCallingApplication"), @"includeLinksForCallingApplication"}];
}

- (_LSAppLinkOpenState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_LSAppLinkOpenState *)self init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    [(_LSAppLinkOpenState *)v5 setURL:v6];

    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"openConfiguration"];
    [(_LSAppLinkOpenState *)v5 setOpenConfiguration:v7];

    v8 = objc_opt_class();
    v9 = XNSGetPropertyListClasses();
    v10 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v8 valuesOfClasses:v9 forKey:@"browserState"];
    [(_LSAppLinkOpenState *)v5 setBrowserState:v10];

    -[_LSAppLinkOpenState setIncludeLinksForCallingApplication:](v5, "setIncludeLinksForCallingApplication:", [coderCopy decodeBoolForKey:@"includeLinksForCallingApplication"]);
  }

  return v5;
}

@end