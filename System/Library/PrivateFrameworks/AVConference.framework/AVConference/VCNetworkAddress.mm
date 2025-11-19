@interface VCNetworkAddress
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)getSockaddrStorage:(sockaddr_storage *)a3 size:(unint64_t *)a4;
- (void)dealloc;
@end

@implementation VCNetworkAddress

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCNetworkAddress;
  [(VCNetworkAddress *)&v3 dealloc];
}

- (BOOL)isValid
{
  ip = self->_ip;
  if (ip)
  {
    LOBYTE(ip) = ![(NSString *)ip isEqualToString:&stru_1F570E008]&& self->_port && (self->_ipVersion & 0xFFFD) == 4;
  }

  return ip;
}

- (BOOL)isEqual:(id)a3
{
  v5 = -[NSString isEqual:](self->_ip, "isEqual:", [a3 ip]);
  if (v5)
  {
    port = self->_port;
    if (port == [a3 port])
    {
      ipVersion = self->_ipVersion;
      if (ipVersion == [a3 ipVersion])
      {
        if (-[NSString isEqual:](self->_interfaceName, "isEqual:", [a3 interfaceName]))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        if (!self->_interfaceName)
        {
          LOBYTE(v5) = [a3 interfaceName] == 0;
          return v5;
        }
      }
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCNetworkAddress;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@:%d", -[VCNetworkAddress description](&v3, sel_description), self->_ip, self->_port];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VCNetworkAddress allocWithZone:a3];
  [(VCNetworkAddress *)v4 setIp:self->_ip];
  [(VCNetworkAddress *)v4 setPort:self->_port];
  [(VCNetworkAddress *)v4 setIpVersion:self->_ipVersion];
  [(VCNetworkAddress *)v4 setInterfaceName:self->_interfaceName];
  return v4;
}

- (int)getSockaddrStorage:(sockaddr_storage *)a3 size:(unint64_t *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14.ai_addrlen = v4;
  *&v14.ai_addr = v4;
  *&v14.ai_flags = v4;
  v13 = 0;
  if (a3)
  {
    if (a4)
    {
      memset(&v14, 0, sizeof(v14));
      if (self->_ipVersion == 6)
      {
        v8 = 30;
      }

      else
      {
        v8 = 2;
      }

      v14.ai_family = v8;
      v14.ai_socktype = 2;
      v9 = [(NSString *)self->_ip UTF8String];
      if (getaddrinfo(v9, [objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedShort:{self->_port), "stringValue"), "UTF8String"}], &v14, &v13) == -1)
      {
        [VCNetworkAddress getSockaddrStorage:? size:?];
      }

      else
      {
        v10 = v13;
        if (v13)
        {
          if (*a4 >= v13->ai_addrlen)
          {
            memcpy(a3, v13->ai_addr, v13->ai_addrlen);
            v11 = 0;
            *a4 = v10->ai_addrlen;
            goto LABEL_10;
          }

          [(VCNetworkAddress *)v13->ai_addrlen getSockaddrStorage:a4 size:&v15];
        }

        else
        {
          [VCNetworkAddress getSockaddrStorage:? size:?];
        }
      }
    }

    else
    {
      [VCNetworkAddress getSockaddrStorage:? size:?];
    }
  }

  else if (([VCNetworkAddress getSockaddrStorage:? size:?]& 1) != 0)
  {
    return -2143879167;
  }

  v11 = v15;
LABEL_10:
  if (v13)
  {
    freeaddrinfo(v13);
  }

  return v11;
}

- (void)getSockaddrStorage:(_DWORD *)a3 size:.cold.1(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = a1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a3 = -2143879105;
}

- (void)getSockaddrStorage:(_DWORD *)a1 size:.cold.2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2143879164;
}

- (void)getSockaddrStorage:(_DWORD *)a1 size:.cold.3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *a1 = -1;
}

- (void)getSockaddrStorage:(_DWORD *)a1 size:.cold.4(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2143879167;
}

- (uint64_t)getSockaddrStorage:(_DWORD *)a1 size:.cold.5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2143879167;
  return result;
}

@end