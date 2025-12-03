@interface CABatchInfo
+ (CABatchInfo)_newInfoWithUnownedPort:(unint64_t)port name:;
- (id)newBatchHandle;
- (id)newXPCBatchHandle;
- (void)dealloc;
@end

@implementation CABatchInfo

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    __assert_rtn("[CABatchInfo dealloc]", "CABatchHandle.mm", 129, "_invalidated");
  }

  v2.receiver = self;
  v2.super_class = CABatchInfo;
  [(CABatchInfo *)&v2 dealloc];
}

- (id)newBatchHandle
{
  os_unfair_lock_lock(&self->_lock);
  port = self->_port;
  if (port + 1 >= 2 && !self->_invalidated && !mach_port_insert_right(*MEMORY[0x1E69E9A60], port, self->_port, 0x13u))
  {
    v6 = self->_port;
    batch_name = self->_batch_name;
    objc_opt_self();
    if (v6 + 1 < 2)
    {
      v8 = "MACH_PORT_VALID (port)";
      v9 = 151;
    }

    else
    {
      if (batch_name)
      {
        v4 = [[CABatchHandle alloc] _initWithPort:v6 name:batch_name];
        goto LABEL_3;
      }

      v8 = "name > 0";
      v9 = 152;
    }

    __assert_rtn("+[CABatchHandle _newBatchWithPort:name:]", "CABatchHandle.mm", v9, v8);
  }

  v4 = 0;
LABEL_3:
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)newXPCBatchHandle
{
  os_unfair_lock_lock(&self->_lock);
  port = self->_port;
  if (port + 1 < 2 || self->_invalidated)
  {
    v4 = 0;
  }

  else
  {
    v4 = encode_batch_handle_port(0, self->_batch_name, port);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

+ (CABatchInfo)_newInfoWithUnownedPort:(unint64_t)port name:
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = [CABatchInfo alloc];
  if (result)
  {
    v6.receiver = result;
    v6.super_class = CABatchInfo;
    result = objc_msgSendSuper2(&v6, sel_init);
    if (!result)
    {
      __assert_rtn("[CABatchInfo _initWithUnownedPort:name:]", "CABatchHandle.mm", 83, "self");
    }

    if (a2 + 1 <= 1)
    {
      __assert_rtn("[CABatchInfo _initWithUnownedPort:name:]", "CABatchHandle.mm", 84, "MACH_PORT_VALID (port)");
    }

    result->_batch_name = port;
    result->_port = a2;
    result->_invalidated = 0;
  }

  return result;
}

@end