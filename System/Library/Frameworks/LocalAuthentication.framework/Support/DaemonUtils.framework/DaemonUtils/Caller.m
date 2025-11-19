@interface Caller
+ (id)current;
+ (id)pathFromPid:(int)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAuditToken:(id *)a3;
- (BOOL)isEqualToAuditTokenData:(id)a3;
- (Caller)initWithConnection:(id)a3;
- (NSData)auditTokenData;
- (NSString)path;
- (NSXPCConnection)connection;
- (id)clientInfo;
- (id)description;
@end

@implementation Caller

+ (id)current
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  if (v2)
  {
    v3 = [[Caller alloc] initWithConnection:v2];
  }

  else
  {
    v4 = +[Request current];
    v3 = [v4 caller];
  }

  return v3;
}

- (Caller)initWithConnection:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = Caller;
  v5 = [(Caller *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    if (v4)
    {
      v6->_pid = [v4 processIdentifier];
      v6->_euid = [v4 effectiveUserIdentifier];
      v6->_asid = [v4 auditSessionIdentifier];
      [v4 auditToken];
      *v6->_auditToken.val = v8;
      *&v6->_auditToken.val[4] = v9;
    }

    else
    {
      v6->_pid = getpid();
      v6->_euid = geteuid();
      v6->_asid = 0;
      *v6->_auditToken.val = 0u;
      *&v6->_auditToken.val[4] = 0u;
    }
  }

  return v6;
}

- (id)clientInfo
{
  v3 = objc_alloc(MEMORY[0x277D24120]);
  v4 = [(Caller *)self connection];
  v5 = [v3 initWithConnection:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        [(Caller *)v4 auditToken];
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      v6 = [(Caller *)self isEqualToAuditToken:v9];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = Caller;
      v6 = [(Caller *)&v8 isEqual:v4];
    }

    v5 = v6;
  }

  return v5;
}

- (BOOL)isEqualToAuditToken:(id *)a3
{
  [(Caller *)self auditToken];
  v4 = audit_token_to_pid(&v7);
  v5 = *&a3->var0[4];
  *v7.val = *a3->var0;
  *&v7.val[4] = v5;
  return v4 == audit_token_to_pid(&v7);
}

- (BOOL)isEqualToAuditTokenData:(id)a3
{
  v5 = MEMORY[0x277CCAE60];
  v6 = a3;
  v7 = [v5 valueWithBytes:objc_msgSend(a3 objCType:{"bytes"), "{?=[8I]}"}];
  v8 = v7;
  if (v7)
  {
    v13 = 0u;
    v14 = 0u;
    [v7 getValue:&v13];
    v12[0] = v13;
    v12[1] = v14;
    v9 = [(Caller *)self isEqualToAuditToken:v12];
  }

  else
  {
    if (LA_LOG_Caller_once != -1)
    {
      [Caller isEqualToAuditTokenData:];
    }

    v10 = LA_LOG_Caller_log;
    if (os_log_type_enabled(LA_LOG_Caller_log, OS_LOG_TYPE_ERROR))
    {
      [Caller isEqualToAuditTokenData:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(Caller *)self path];
  v5 = [v3 stringWithFormat:@"<%@[%d] UID: %u>", v4, -[Caller pid](self, "pid"), -[Caller euid](self, "euid")];

  return v5;
}

- (NSData)auditTokenData
{
  v3 = objc_alloc(MEMORY[0x277D23FF8]);
  [(Caller *)self auditToken];
  v4 = [v3 initWithRawValue:&v7];
  v5 = [v4 data];

  return v5;
}

- (NSString)path
{
  path = self->_path;
  if (!path)
  {
    v4 = [Caller pathFromPid:[(Caller *)self pid]];
    v5 = self->_path;
    self->_path = v4;

    path = self->_path;
  }

  return path;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(Caller *)self connection];
  if (v5)
  {
    v6 = [(Caller *)self connection];
    v7 = [v6 valueForEntitlement:v4];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)pathFromPid:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = proc_pidpath(a3, buffer, 0x1000u);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v3 encoding:4];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end