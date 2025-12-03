@interface AXMultiplexConnectionHandler
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (int)pid;
@end

@implementation AXMultiplexConnectionHandler

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  connection = [(AXMultiplexConnectionHandler *)self connection];
  if (connection)
  {
    v6 = connection;
    connection2 = [equalCopy connection];

    if (connection2)
    {
      connection3 = [(AXMultiplexConnectionHandler *)self connection];
      connection4 = [equalCopy connection];
      v10 = xpc_equal(connection3, connection4);
LABEL_8:
      LOBYTE(processHandle2) = v10;
      goto LABEL_9;
    }
  }

  serviceConnection = [(AXMultiplexConnectionHandler *)self serviceConnection];
  if (serviceConnection)
  {
    v12 = serviceConnection;
    serviceConnection2 = [equalCopy serviceConnection];

    if (serviceConnection2)
    {
      connection3 = [(AXMultiplexConnectionHandler *)self serviceConnection];
      connection4 = [equalCopy serviceConnection];
      v10 = [connection3 isEqual:connection4];
      goto LABEL_8;
    }
  }

  processHandle = [(AXMultiplexConnectionHandler *)self processHandle];
  if (!processHandle)
  {
LABEL_13:
    LOBYTE(processHandle2) = 0;
    goto LABEL_14;
  }

  v16 = processHandle;
  processHandle2 = [equalCopy processHandle];

  if (!processHandle2)
  {
    goto LABEL_14;
  }

  connection3 = [(AXMultiplexConnectionHandler *)self processHandle];
  LODWORD(processHandle2) = [connection3 pid];
  connection4 = [equalCopy processHandle];
  LOBYTE(processHandle2) = processHandle2 == [connection4 pid];
LABEL_9:

LABEL_14:
  return processHandle2;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  connection = [(AXMultiplexConnectionHandler *)self connection];

  if (connection)
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
    connection2 = [(AXMultiplexConnectionHandler *)self connection];
    xpc_connection_get_audit_token();
  }

  else
  {
    connection2 = [(AXMultiplexConnectionHandler *)self processHandle];
    auditToken = [connection2 auditToken];
    v7 = auditToken;
    if (auditToken)
    {
      [auditToken realToken];
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
  connection = [(AXMultiplexConnectionHandler *)self connection];

  if (connection)
  {
    connection2 = [(AXMultiplexConnectionHandler *)self connection];
    pid = xpc_connection_get_pid(connection2);
  }

  else
  {
    connection2 = [(AXMultiplexConnectionHandler *)self processHandle];
    pid = [(_xpc_connection_s *)connection2 pid];
  }

  v6 = pid;

  return v6;
}

@end