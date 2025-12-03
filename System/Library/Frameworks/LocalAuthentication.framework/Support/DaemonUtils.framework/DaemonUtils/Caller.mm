@interface Caller
+ (id)current;
+ (id)pathFromPid:(int)pid;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAuditToken:(id *)token;
- (BOOL)isEqualToAuditTokenData:(id)data;
- (Caller)initWithConnection:(id)connection;
- (NSData)auditTokenData;
- (NSString)path;
- (NSXPCConnection)connection;
- (id)clientInfo;
- (id)description;
@end

@implementation Caller

+ (id)current
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection)
  {
    caller = [[Caller alloc] initWithConnection:currentConnection];
  }

  else
  {
    v4 = +[Request current];
    caller = [v4 caller];
  }

  return caller;
}

- (Caller)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = Caller;
  v5 = [(Caller *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    if (connectionCopy)
    {
      v6->_pid = [connectionCopy processIdentifier];
      v6->_euid = [connectionCopy effectiveUserIdentifier];
      v6->_asid = [connectionCopy auditSessionIdentifier];
      [connectionCopy auditToken];
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
  connection = [(Caller *)self connection];
  v5 = [v3 initWithConnection:connection];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (equalCopy)
      {
        [(Caller *)equalCopy auditToken];
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
      v6 = [(Caller *)&v8 isEqual:equalCopy];
    }

    v5 = v6;
  }

  return v5;
}

- (BOOL)isEqualToAuditToken:(id *)token
{
  [(Caller *)self auditToken];
  v4 = audit_token_to_pid(&v7);
  v5 = *&token->var0[4];
  *v7.val = *token->var0;
  *&v7.val[4] = v5;
  return v4 == audit_token_to_pid(&v7);
}

- (BOOL)isEqualToAuditTokenData:(id)data
{
  v5 = MEMORY[0x277CCAE60];
  dataCopy = data;
  v7 = [v5 valueWithBytes:objc_msgSend(data objCType:{"bytes"), "{?=[8I]}"}];
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
  path = [(Caller *)self path];
  v5 = [v3 stringWithFormat:@"<%@[%d] UID: %u>", path, -[Caller pid](self, "pid"), -[Caller euid](self, "euid")];

  return v5;
}

- (NSData)auditTokenData
{
  v3 = objc_alloc(MEMORY[0x277D23FF8]);
  [(Caller *)self auditToken];
  v4 = [v3 initWithRawValue:&v7];
  data = [v4 data];

  return data;
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

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(Caller *)self connection];
  if (connection)
  {
    connection2 = [(Caller *)self connection];
    v7 = [connection2 valueForEntitlement:entitlementCopy];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)pathFromPid:(int)pid
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = proc_pidpath(pid, buffer, 0x1000u);
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