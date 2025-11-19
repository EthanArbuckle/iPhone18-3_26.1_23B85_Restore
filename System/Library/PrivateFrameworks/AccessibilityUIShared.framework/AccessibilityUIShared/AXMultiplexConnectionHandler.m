@interface AXMultiplexConnectionHandler
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (int)pid;
@end

@implementation AXMultiplexConnectionHandler

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [(AXMultiplexConnectionHandler *)self connection];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 connection];

    if (v7)
    {
      v8 = [(AXMultiplexConnectionHandler *)self connection];
      v9 = [v4 connection];
      v10 = xpc_equal(v8, v9);
LABEL_8:
      LOBYTE(v14) = v10;
      goto LABEL_9;
    }
  }

  v11 = [(AXMultiplexConnectionHandler *)self serviceConnection];
  if (v11)
  {
    v12 = v11;
    v13 = [v4 serviceConnection];

    if (v13)
    {
      v8 = [(AXMultiplexConnectionHandler *)self serviceConnection];
      v9 = [v4 serviceConnection];
      v10 = [v8 isEqual:v9];
      goto LABEL_8;
    }
  }

  v15 = [(AXMultiplexConnectionHandler *)self processHandle];
  if (!v15)
  {
LABEL_13:
    LOBYTE(v14) = 0;
    goto LABEL_14;
  }

  v16 = v15;
  v14 = [v4 processHandle];

  if (!v14)
  {
    goto LABEL_14;
  }

  v8 = [(AXMultiplexConnectionHandler *)self processHandle];
  LODWORD(v14) = [v8 pid];
  v9 = [v4 processHandle];
  LOBYTE(v14) = v14 == [v9 pid];
LABEL_9:

LABEL_14:
  return v14;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v5 = [(AXMultiplexConnectionHandler *)self connection];

  if (v5)
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
    v9 = [(AXMultiplexConnectionHandler *)self connection];
    xpc_connection_get_audit_token();
  }

  else
  {
    v9 = [(AXMultiplexConnectionHandler *)self processHandle];
    v6 = [v9 auditToken];
    v7 = v6;
    if (v6)
    {
      [v6 realToken];
    }

    else
    {
      *retstr->var0 = 0u;
      *&retstr->var0[4] = 0u;
    }
  }

  return result;
}

- (int)pid
{
  v3 = [(AXMultiplexConnectionHandler *)self connection];

  if (v3)
  {
    v4 = [(AXMultiplexConnectionHandler *)self connection];
    pid = xpc_connection_get_pid(v4);
  }

  else
  {
    v4 = [(AXMultiplexConnectionHandler *)self processHandle];
    pid = [(_xpc_connection_s *)v4 pid];
  }

  v6 = pid;

  return v6;
}

@end