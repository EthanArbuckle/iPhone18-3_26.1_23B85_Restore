@interface VCNWConnectionInfo
- (BOOL)isSameRemoteAddress:(id)address;
- (OS_nw_parameters)parameters;
- (VCNetworkAddress)remoteAddress;
- (id)newParametersFromConnection;
- (id)newRemoteAddressFromConnection;
- (void)dealloc;
- (void)newRemoteAddressFromConnection;
- (void)setConnection:(id)connection;
- (void)setParameters:(id)parameters;
- (void)setRemoteAddress:(id)address;
@end

@implementation VCNWConnectionInfo

- (void)setConnection:(id)connection
{
  connection = self->_connection;
  self->_connection = nw_retain(connection);

  nw_release(connection);
}

- (void)setParameters:(id)parameters
{
  parameters = self->_parameters;
  self->_parameters = nw_retain(parameters);

  nw_release(parameters);
}

- (void)setRemoteAddress:(id)address
{
  remoteAddress = self->_remoteAddress;
  self->_remoteAddress = [address copy];
}

- (VCNetworkAddress)remoteAddress
{
  result = self->_remoteAddress;
  if (!result)
  {
    result = [(VCNWConnectionInfo *)self newRemoteAddressFromConnection];
    self->_remoteAddress = result;
  }

  return result;
}

- (OS_nw_parameters)parameters
{
  result = self->_parameters;
  if (!result)
  {
    result = [(VCNWConnectionInfo *)self newParametersFromConnection];
    self->_parameters = result;
  }

  return result;
}

- (id)newRemoteAddressFromConnection
{
  obj[1] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    [VCNWConnectionInfo newRemoteAddressFromConnection];
LABEL_15:
    nw_release(obj[0]);
    return 0;
  }

  v3 = nw_connection_copy_endpoint(connection);
  if (!v3)
  {
    [VCNWConnectionInfo newRemoteAddressFromConnection];
    goto LABEL_15;
  }

  v4 = v3;
  v5 = nw_endpoint_copy_address_string(v3);
  if (!v5)
  {
    [(VCNWConnectionInfo *)v4 newRemoteAddressFromConnection];
    goto LABEL_15;
  }

  v6 = v5;
  address = nw_endpoint_get_address(v4);
  if (address)
  {
    v8 = address;
    v9 = objc_opt_new();
    if (v9)
    {
      v10 = v9;
      [v9 setIp:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v6)}];
      [v10 setPort:nw_endpoint_get_port(v4)];
      if (v8->sa_family == 30)
      {
        v11 = 6;
      }

      else
      {
        v11 = 4;
      }

      [v10 setIpVersion:v11];
      goto LABEL_10;
    }

    [VCNWConnectionInfo newRemoteAddressFromConnection];
  }

  else
  {
    [VCNWConnectionInfo newRemoteAddressFromConnection];
  }

  v10 = obj[0];
LABEL_10:
  nw_release(v4);
  free(v6);
  return v10;
}

- (BOOL)isSameRemoteAddress:(id)address
{
  v5 = -[NSString isEqualToString:](-[VCNetworkAddress ip](-[VCNWConnectionInfo remoteAddress](self, "remoteAddress"), "ip"), "isEqualToString:", [address ip]);
  if (v5)
  {
    port = [(VCNetworkAddress *)[(VCNWConnectionInfo *)self remoteAddress] port];
    if (port == [address port])
    {
      ipVersion = [(VCNetworkAddress *)[(VCNWConnectionInfo *)self remoteAddress] ipVersion];
      LOBYTE(v5) = ipVersion == [address ipVersion];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  nw_release(self->_connection);
  nw_release(self->_parameters);

  v3.receiver = self;
  v3.super_class = VCNWConnectionInfo;
  [(VCObject *)&v3 dealloc];
}

- (id)newParametersFromConnection
{
  v8 = *MEMORY[0x1E69E9840];
  result = self->_connection;
  if (result)
  {
    result = nw_connection_copy_parameters(result);
    if (!result)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v5 = 136315650;
          v6 = v3;
          OUTLINED_FUNCTION_0();
          v7 = 95;
          _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retrieve the nw parameters", &v5, 0x1Cu);
        }
      }

      return 0;
    }
  }

  return result;
}

- (void)newRemoteAddressFromConnection
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d connection is invalid", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

@end