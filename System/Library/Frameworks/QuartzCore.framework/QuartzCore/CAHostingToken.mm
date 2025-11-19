@interface CAHostingToken
+ (id)_newTokenWithPort:(int)a3 sid:(int)a4 cid:;
+ (id)tokenFromXPCRepresentation:(id)a3 error:(id *)a4;
+ (id)tokenWithPort:(unsigned int)a3 data:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (CAHostingToken)initWithCoder:(id)a3;
- (id)_initWithPort:(_DWORD *)a3 data:;
- (id)_initWithPort:(_DWORD *)a3 data:(char)a4 lenient:(void *)a5 error:;
- (id)_initWithXPCRepresentation:(char)a3 lenient:(void *)a4 error:;
- (id)createXPCRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAHostingToken

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  xPort = self->_xPort;
  if (xPort)
  {
    xpc_release(xPort);
  }

  v4.receiver = self;
  v4.super_class = CAHostingToken;
  [(CAHostingToken *)&v4 dealloc];
}

- (id)description
{
  type = self->_data.type;
  if (type == 561541219)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CAHostingToken:%u-%i-%x>", self->_data.sid, self->_data.pid, self->_data.cid, v8];
  }

  if (type == 1818454372)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CAHostingToken:%x>", self->_data.cid, v6, v7, v8];
  }

  port = self->_port;
  if ((port + 1) >= 2)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CAHostingToken:%u-%i-%x p=%x>", self->_data.sid, self->_data.pid, self->_data.cid, port];
  }

  if (port)
  {
    v5 = @"DEAD";
  }

  else
  {
    v5 = @"NULL";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CAHostingToken:%u-%i-%x %@>", self->_data.sid, self->_data.pid, self->_data.cid, v5];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_data.cid != *(a3 + 6) || self->_data.type != *(a3 + 7) || self->_data.sid != *(a3 + 4) || self->_data.pid != *(a3 + 5))
  {
    return 0;
  }

  port = self->_port;
  if (port + 1 >= 2)
  {
    return port == *(a3 + 8);
  }

  else
  {
    return (*(a3 + 8) + 1) < 2;
  }
}

- (unint64_t)hash
{
  port = self->_port;
  if (port + 1 > 1)
  {
    return self->_data.cid ^ port;
  }

  else
  {
    return self->_data.cid;
  }
}

- (CAHostingToken)initWithCoder:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = objc_autoreleasePoolPush(), v6 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"x"], v7 = v6, objc_autoreleasePoolPop(v5), v6))
  {
    v8 = [(CAHostingToken *)self _initWithXPCRepresentation:v6 lenient:1 error:0];

    return v8;
  }

  else
  {
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"f"];
    if (v10 && (v11 = v10, [v10 length] == 16))
    {
      v12 = [v11 bytes];

      return [(CAHostingToken *)self _initWithPort:v12 data:1 lenient:0 error:?];
    }

    else
    {

      return 0;
    }
  }
}

- (id)_initWithXPCRepresentation:(char)a3 lenient:(void *)a4 error:
{
  if (!a1)
  {
    return 0;
  }

  if (!a2 || object_getClass(a2) != MEMORY[0x1E69E9E80] || (value = xpc_dictionary_get_value(a2, "p"), (v10 = xpc_dictionary_get_value(a2, "d")) == 0) || (v11 = v10, object_getClass(v10) != MEMORY[0x1E69E9E70]) || xpc_data_get_length(v11) != 16)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
    }

    return 0;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v11);

  return [(CAHostingToken *)a1 _initWithPort:bytes_ptr data:a3 lenient:a4 error:?];
}

- (id)_initWithPort:(_DWORD *)a3 data:(char)a4 lenient:(void *)a5 error:
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!a3)
    {
      __assert_rtn("[CAHostingToken _initWithPort:data:lenient:error:]", "CAHostingToken.m", 146, "data");
    }

    v9 = result;
    if (!CAHostingTokenDataIsValid(a3))
    {
      goto LABEL_9;
    }

    if (a3[3] == 1886351988)
    {
      if (a2)
      {
        if (a4)
        {
          return [(CAHostingToken *)v9 _initWithPort:a2 data:a3];
        }

        right = xpc_mach_send_get_right();
        if (right - 1 <= 0xFFFFFFFD)
        {
          ptype = 0;
          if (mach_port_type(*MEMORY[0x1E69E9A60], right, &ptype))
          {
            __assert_rtn("_validateSendRight", "CAHostingToken.m", 131, "r == KERN_SUCCESS");
          }

          if ((ptype & 0x110000) == 0)
          {
            __assert_rtn("_validateSendRight", "CAHostingToken.m", 134, "(t & MACH_PORT_TYPE_DEAD_NAME) == MACH_PORT_TYPE_DEAD_NAME");
          }

          if ((ptype & 0x10000) != 0)
          {
            return [(CAHostingToken *)v9 _initWithPort:a2 data:a3];
          }
        }

        if (!a5)
        {
          goto LABEL_12;
        }

        v10 = MEMORY[0x1E696ABC0];
        v11 = *MEMORY[0x1E696A250];
        v12 = 4865;
        goto LABEL_11;
      }

LABEL_9:
      if (!a5)
      {
LABEL_12:

        return 0;
      }

      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v12 = 4866;
LABEL_11:
      *a5 = [v10 errorWithDomain:v11 code:v12 userInfo:0];
      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_9;
    }

    return [(CAHostingToken *)v9 _initWithPort:a3 data:?];
  }

  return result;
}

- (id)_initWithPort:(_DWORD *)a3 data:
{
  v3 = a1;
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a3)
    {
      __assert_rtn("[CAHostingToken _initWithPort:data:]", "CAHostingToken.m", 87, "data");
    }

    if (!CAHostingTokenDataIsValid(a3))
    {
      __assert_rtn("[CAHostingToken _initWithPort:data:]", "CAHostingToken.m", 88, "CAHostingTokenDataIsValid (data)");
    }

    if (a3[3] == 1886351988)
    {
      if (!a2)
      {
        __assert_rtn("[CAHostingToken _initWithPort:data:]", "CAHostingToken.m", 90, "xPort");
      }
    }

    else if (a2)
    {
      __assert_rtn("[CAHostingToken _initWithPort:data:]", "CAHostingToken.m", 92, "!xPort");
    }

    v9.receiver = v3;
    v9.super_class = CAHostingToken;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    if (!v6)
    {
      __assert_rtn("[CAHostingToken _initWithPort:data:]", "CAHostingToken.m", 95, "self");
    }

    v3 = v6;
    if (a2)
    {
      v6[1] = xpc_retain(a2);
      right = xpc_mach_send_get_right();
    }

    else
    {
      right = 0;
      *(v3 + 1) = 0;
    }

    *(v3 + 8) = right;
    *(v3 + 1) = *a3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAHostingToken *)self createXPCRepresentation];
    if (v5)
    {
      v6 = v5;
      [a3 encodeXPCObject:v5 forKey:@"x"];

      xpc_release(v6);
    }
  }

  else
  {
    v8 = *&self->_data.sid;
    cid = self->_data.cid;
    v10 = 561541219;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v8 length:16];
    [a3 encodeObject:v7 forKey:@"f"];
  }
}

- (void)encodeWithBlock:(id)a3
{
  if (!a3)
  {
    __assert_rtn("[CAHostingToken encodeWithBlock:]", "CAHostingToken.m", 307, "block");
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self->_data length:16];
  if (self->_xPort)
  {
    v7 = xpc_mach_send_copy_right();
    if (v7 != -1)
    {
      goto LABEL_6;
    }

    mach_port_deallocate(*MEMORY[0x1E69E9A60], 0xFFFFFFFF);
  }

  v7 = 0;
LABEL_6:
  (*(a3 + 2))(a3, v7, v6);

  objc_autoreleasePoolPop(v5);
}

- (id)createXPCRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  xPort = self->_xPort;
  if (xPort)
  {
    xpc_dictionary_set_value(v3, "p", xPort);
  }

  xpc_dictionary_set_data(v4, "d", &self->_data, 0x10uLL);
  return v4;
}

+ (id)tokenWithPort:(unsigned int)a3 data:(id)a4 error:(id *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  ptype = 0;
  if (mach_port_type(*MEMORY[0x1E69E9A60], a3, &ptype))
  {
    __assert_rtn("+[CAHostingToken tokenWithPort:data:error:]", "CAHostingToken.m", 340, "r == KERN_SUCCESS");
  }

  if ((ptype & 0x10000) != 0)
  {
    v7 = xpc_mach_send_create_with_disposition();
    if ((ptype & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = 0;
  if ((ptype & 0x100000) != 0)
  {
LABEL_8:
    v7 = xpc_mach_send_create_with_disposition();
  }

LABEL_9:
  if (!v7)
  {
    __assert_rtn("+[CAHostingToken tokenWithPort:data:error:]", "CAHostingToken.m", 348, "xp");
  }

LABEL_10:
  if (a4 && [a4 length] == 16)
  {
    v8 = [a4 bytes];
    v9 = v8;
    if (!v7)
    {
      if (*(v8 + 12) == 1886351988)
      {
        v7 = xpc_mach_send_create();
      }

      else
      {
        v7 = 0;
      }
    }

    v12 = [[CAHostingToken alloc] _initWithPort:v7 data:v9 lenient:0 error:a5];
    if (v7)
    {
      xpc_release(v7);
    }

    return v12;
  }

  else
  {
    if (v7)
    {
      xpc_release(v7);
    }

    if (a5)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
      result = 0;
      *a5 = v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)tokenFromXPCRepresentation:(id)a3 error:(id *)a4
{
  v4 = [[CAHostingToken alloc] _initWithXPCRepresentation:a3 lenient:0 error:a4];

  return v4;
}

+ (id)_newTokenWithPort:(int)a3 sid:(int)a4 cid:
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a4)
  {
    __assert_rtn("+[CAHostingToken _newTokenWithPort:sid:cid:]", "CAHostingToken.m", 208, "cid != 0");
  }

  v6 = xpc_mach_send_create_with_disposition();
  if (!v6)
  {
    __assert_rtn("+[CAHostingToken _newTokenWithPort:sid:cid:]", "CAHostingToken.m", 211, "xp");
  }

  v7 = v6;
  v10[0] = a3;
  v10[1] = getpid();
  v10[2] = a4;
  v10[3] = 1886351988;
  v8 = [[CAHostingToken alloc] _initWithPort:v7 data:v10];
  xpc_release(v7);
  return v8;
}

@end