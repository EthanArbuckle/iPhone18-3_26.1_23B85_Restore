@interface NEProcessIdentity
- (NEProcessIdentity)initWithCoder:(id)a3;
- (NEProcessIdentity)initWithPID:(int)a3 auditToken:(id *)a4;
- (id)initFromXPCConnection:(id)a3;
- (id)initFromXPCMessage:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEProcessIdentity

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[NEProcessIdentity pid](self forKey:{"pid"), @"pid"}];
  [v4 encodeInt32:-[NEProcessIdentity pidVersion](self forKey:{"pidVersion"), @"pidVersion"}];
  v5 = [(NEProcessIdentity *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(NEProcessIdentity *)self auditTokenData];
  [v4 encodeObject:v6 forKey:@"auditToken"];
}

- (NEProcessIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEProcessIdentity;
  v5 = [(NEProcessIdentity *)&v11 init];
  if (v5)
  {
    v5->_pid = [v4 decodeIntForKey:@"pid"];
    v5->_pidVersion = [v4 decodeInt32ForKey:@"pidVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v8;
  }

  return v5;
}

- (id)initFromXPCMessage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NEProcessIdentity;
  v5 = [(NEProcessIdentity *)&v18 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  if (!v4 || MEMORY[0x1BFAFC5E0](v4) != MEMORY[0x1E69E9E80])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  memset(buffer, 0, 32);
  xpc_dictionary_get_audit_token();
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buffer length:32];
  v7 = DWORD1(buffer[1]);
  if (!DWORD1(buffer[1]) || (v20 = 0, memset(buffer, 0, sizeof(buffer)), proc_pidinfo(v7, 17, 1uLL, buffer, 56) != 56))
  {
LABEL_5:
    v8 = 0;
    v9 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
  v9 = buffer[2];
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v9 && v8 && v6)
  {
    v5->_pid = v7;
    v5->_pidVersion = v9;
    uuid = v5->_uuid;
    v5->_uuid = v8;
    v11 = v8;

    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v6;
    v13 = v6;

LABEL_10:
    v14 = v5;
    goto LABEL_17;
  }

LABEL_14:
  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buffer[0]) = 67109890;
    DWORD1(buffer[0]) = v7;
    WORD4(buffer[0]) = 1024;
    *(buffer + 10) = v9;
    HIWORD(buffer[0]) = 2112;
    *&buffer[1] = v8;
    WORD4(buffer[1]) = 2112;
    *(&buffer[1] + 10) = v6;
    _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to derive the extension's identity data from xpc message: %d, %d, %@, %@", buffer, 0x22u);
  }

  v14 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)initFromXPCConnection:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  if (a3)
  {
    v4 = a3;
    pid = xpc_connection_get_pid(v4);
    xpc_connection_get_audit_token();
  }

  else
  {
    pid = 0;
  }

  v7[0] = v8;
  v7[1] = v9;
  return [(NEProcessIdentity *)self initWithPID:pid auditToken:v7];
}

- (NEProcessIdentity)initWithPID:(int)a3 auditToken:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NEProcessIdentity;
  v6 = [(NEProcessIdentity *)&v19 init];
  if (!v6)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v21 = 0;
    memset(buffer, 0, sizeof(buffer));
    if (proc_pidinfo(a3, 17, 1uLL, buffer, 56) == 56)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
      v8 = buffer[2];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:32];
    v9 = v10;
    if (v8 && v7 && v10)
    {
      v6->_pid = a3;
      v6->_pidVersion = v8;
      uuid = v6->_uuid;
      v6->_uuid = v7;
      v12 = v7;

      auditTokenData = v6->_auditTokenData;
      v6->_auditTokenData = v9;
      v14 = v9;

LABEL_11:
      v15 = v6;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buffer[0]) = 67109890;
    DWORD1(buffer[0]) = a3;
    WORD4(buffer[0]) = 1024;
    *(buffer + 10) = v8;
    HIWORD(buffer[0]) = 2112;
    *&buffer[1] = v7;
    WORD4(buffer[1]) = 2112;
    *(&buffer[1] + 10) = v9;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Failed to derive the extension's identity data from xpc connection: %d, %d, %@, %@", buffer, 0x22u);
  }

  v15 = 0;
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end