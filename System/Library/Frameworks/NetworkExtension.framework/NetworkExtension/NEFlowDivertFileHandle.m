@interface NEFlowDivertFileHandle
- (id)description;
- (id)dictionary;
- (id)getUnitForSocket:(int)a1;
- (id)initFlowDivertControlSocketWithParams:(BOOL)a3 order:(int)a4;
- (id)initFlowDivertDataSocket;
- (id)initFromDictionary:(id)a3;
@end

@implementation NEFlowDivertFileHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NEFileHandle *)self handle];
  v5 = [v4 fileDescriptor];
  v6 = [(NEFlowDivertFileHandle *)self controlUnit];
  v7 = [v3 stringWithFormat:@"Flow Divert socket (%d) control unit %@", v5, v6];

  return v7;
}

- (id)dictionary
{
  v11.receiver = self;
  v11.super_class = NEFlowDivertFileHandle;
  v3 = [(NEFileHandle *)&v11 dictionary];
  v4 = [(NEFlowDivertFileHandle *)self controlUnit];
  xpc_dictionary_set_uint64(v3, "control-unit", [v4 unsignedLongLongValue]);

  v5 = [(NEFlowDivertFileHandle *)self keyMaterial];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(NEFlowDivertFileHandle *)self keyMaterial];
    v8 = [v7 bytes];
    v9 = [(NEFlowDivertFileHandle *)self keyMaterial];
    xpc_dictionary_set_data(v3, "key-material", v8, [v9 length]);
  }

  return v3;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NEFlowDivertFileHandle;
  v5 = [(NEFileHandle *)&v14 initFromDictionary:v4];
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "control-unit");
    length = 0;
    data = xpc_dictionary_get_data(v4, "key-material", &length);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
    v9 = v5[3];
    v5[3] = v8;

    if (data)
    {
      if (length)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
        v11 = v5[4];
        v5[4] = v10;
      }
    }
  }

  return v5;
}

- (id)initFlowDivertDataSocket
{
  KernelControlSocket = NEHelperGetKernelControlSocket();
  if ((KernelControlSocket & 0x80000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v4 = KernelControlSocket;
    v10.receiver = self;
    v10.super_class = NEFlowDivertFileHandle;
    v5 = [(NEFileHandle *)&v10 initWithFileDescriptor:KernelControlSocket launchOwnerWhenReadable:1];
    if (v5)
    {
      v6 = [NEFlowDivertFileHandle getUnitForSocket:v4];
      controlUnit = v5->_controlUnit;
      v5->_controlUnit = v6;
    }

    self = v5;
    v8 = self;
  }

  return v8;
}

- (id)getUnitForSocket:(int)a1
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 32;
  v8 = 0;
  v9 = 0u;
  if (getpeername(a1, &v8, &v7))
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v11 = v6;
      _os_log_error_impl(&dword_1BA83C000, v1, OS_LOG_TYPE_ERROR, "getpeername on control socket failed: %s", buf, 0xCu);
    }

    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v8.sa_data[6]];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)initFlowDivertControlSocketWithParams:(BOOL)a3 order:(int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a4;
  KernelControlSocket = NEHelperGetKernelControlSocket();
  if ((KernelControlSocket & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v6 = KernelControlSocket;
  v18.receiver = self;
  v18.super_class = NEFlowDivertFileHandle;
  self = [(NEFileHandle *)&v18 initWithFileDescriptor:KernelControlSocket launchOwnerWhenReadable:1];
  if (!self)
  {
    goto LABEL_10;
  }

  v7 = [NEFlowDivertFileHandle getUnitForSocket:v6];
  controlUnit = self->_controlUnit;
  self->_controlUnit = v7;

  arc4random_buf(__buf, 0x100uLL);
  v9 = NEFlowTLVMsgCreate();
  NEFlowTLVAdd();
  nelog_is_debug_logging_enabled();
  NEFlowTLVAdd();
  NEFlowTLVAdd();
  NEFlowTLVAdd();
  v10 = send(v6, v9, 0, 0);
  if (v10 < 0)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315138;
      v21 = v17;
      _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, "Failed to send the FLOW_DIVERT_PKT_GROUP_INIT message: %s", buf, 0xCu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__buf length:256];
    p_super = &self->_keyMaterial->super;
    self->_keyMaterial = v11;
  }

  if (v9)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v9);
  }

  if (v10 < 0)
  {
LABEL_11:
    v13 = 0;
  }

  else
  {
LABEL_10:
    self = self;
    v13 = self;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end