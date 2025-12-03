@interface CAFenceHandle
+ (id)handleForPort:(unsigned int)port fenceId:(unint64_t)id;
+ (id)handleFromXPCRepresentation:(id)representation;
+ (id)handleFromXPCRepresentation:(id)representation error:(id *)error;
+ (id)handleWithPort:(unsigned int)port data:(id)data error:(id *)error;
+ (id)newFenceFromDefaultServer;
+ (void)_newEphemeralHandleWithPort:(uint64_t)port;
+ (void)_newFenceFromServer:(uint64_t)server;
+ (void)_newFenceWithPort:(uint64_t)port name:;
- (BOOL)isInvalidated;
- (BOOL)isUsable;
- (CAFenceHandle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)_accessMachPort:(uint64_t)result;
- (uint64_t)_copyPort;
- (uint64_t)_copyUntrackedPort;
- (void)_createXPCObjForCoding:(uint64_t)coding;
- (void)_initWithPort:(uint64_t)port name:(int)name tracing:;
- (void)_initWithXPCObj:(uint64_t)obj coding:;
- (void)dealloc;
- (void)encodeWithBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation CAFenceHandle

- (uint64_t)_copyPort
{
  if (result)
  {
    if (!*(result + 8))
    {
      __assert_rtn("[CAFenceHandle _copyPort]", "CAFenceHandle.mm", 517, "_handle_name");
    }

    _copyUntrackedPort = [(CAFenceHandle *)result _copyUntrackedPort];
    kdebug_trace();
    return _copyUntrackedPort;
  }

  return result;
}

- (uint64_t)_copyUntrackedPort
{
  if (!self || (*(self + 24) + 1) < 2)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 96));
  if ((*(self + 100) & 1) != 0 || mach_port_insert_right(*MEMORY[0x1E69E9A60], *(self + 24), *(self + 24), 0x13u))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(self + 24);
  }

  os_unfair_lock_unlock((self + 96));
  return v2;
}

- (void)invalidate
{
  pthread_mutex_lock(&self->_invalidation_mutex._m);
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);

    pthread_mutex_unlock(&self->_invalidation_mutex._m);
  }

  else
  {
    self->_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    pthread_mutex_unlock(&self->_invalidation_mutex._m);
    port = self->_port;
    if (port)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], port);
    }

    if (self->_handle_name)
    {

      kdebug_trace();
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_invalidate_on_dealloc)
  {
    [(CAFenceHandle *)self invalidate];
  }

  else if (![(CAFenceHandle *)self isInvalidated])
  {
    __assert_rtn("[CAFenceHandle dealloc]", "CAFenceHandle.mm", 213, "[self isInvalidated]");
  }

  v3.receiver = self;
  v3.super_class = CAFenceHandle;
  [(CAFenceHandle *)&v3 dealloc];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (BOOL)isUsable
{
  if (self->_port + 1 >= 2)
  {
    os_unfair_lock_lock(&self->_lock);
    v2 = !self->_invalidated;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    return 0;
  }

  return v2;
}

+ (id)newFenceFromDefaultServer
{
  ServerPort = CARenderServerGetServerPort(0);
  if (ServerPort - 1 <= 0xFFFFFFFD)
  {
    v3 = [CAFenceHandle _newFenceFromServer:?];
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = [CAFenceHandle alloc];
  if (!v4)
  {
    v3 = 0;
    if (!ServerPort)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = [(CAFenceHandle *)v4 _initWithPort:0 name:2 tracing:?];
  if (ServerPort)
  {
LABEL_5:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle_name = self->_handle_name;
  fence_name = self->_fence_name;
  isUsable = [(CAFenceHandle *)self isUsable];
  v7 = @"NO";
  if (isUsable)
  {
    v7 = @"YES";
  }

  if (fence_name)
  {
    return [v3 stringWithFormat:@"<CAFenceHandle:%p name=%llx fence=%llx usable=%@>", self, handle_name, fence_name, v7];
  }

  else
  {
    return [v3 stringWithFormat:@"<CAFenceHandle:%p name=%llx usable=%@>", self, handle_name, v7, v9];
  }
}

- (CAFenceHandle)initWithCoder:(id)coder
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"x"];
    v7 = v6;
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = [(CAFenceHandle *)self _initWithXPCObj:v6 coding:1];
  v8->_invalidate_on_dealloc = 1;

  return v8;
}

- (void)_initWithXPCObj:(uint64_t)obj coding:
{
  selfCopy = self;
  if (self)
  {
    if (a2 && object_getClass(a2) == MEMORY[0x1E69E9E80])
    {
      uint64 = xpc_dictionary_get_uint64(a2, "f");
      v7 = xpc_dictionary_get_uint64(a2, "e");
      v8 = xpc_dictionary_copy_mach_send();
    }

    else
    {
      uint64 = 0;
      v7 = 0;
      v8 = 0;
    }

    if (obj != 3 || v7)
    {
      selfCopy = [(CAFenceHandle *)selfCopy _initWithPort:v8 name:uint64 tracing:2];
      if (v7)
      {
        kdebug_trace();
      }
    }

    else
    {
      v9 = [(CAFenceHandle *)selfCopy _initWithPort:v8 name:0 tracing:0];
      [v9 invalidate];

      return 0;
    }
  }

  return selfCopy;
}

- (void)_initWithPort:(uint64_t)port name:(int)name tracing:
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = CAFenceHandle;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  if (!v7)
  {
    __assert_rtn("[CAFenceHandle _initWithPort:name:tracing:]", "CAFenceHandle.mm", 96, "self");
  }

  v8 = v7;
  if (name)
  {
    os_unfair_lock_lock(&[CAFenceHandle _initWithPort:name:tracing:]::handle_name_lock);
    if ([CAFenceHandle _initWithPort:name:tracing:]::last_handle_name == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 1;
    }

    else
    {
      v9 = [CAFenceHandle _initWithPort:name:tracing:]::last_handle_name + 1;
    }

    [CAFenceHandle _initWithPort:name:tracing:]::last_handle_name = v9;
    v10 = v9 | 0x8000000000000000;
    if (name != 1)
    {
      v10 = v9;
    }

    v8[1] = v10;
    os_unfair_lock_unlock(&[CAFenceHandle _initWithPort:name:tracing:]::handle_name_lock);
  }

  else
  {
    v7[1] = 0;
  }

  v8[2] = port;
  pthread_mutex_init((v8 + 4), 0);
  *(v8 + 6) = a2;
  *(v8 + 100) = 0;
  if (v8[1])
  {
    kdebug_trace();
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CAFenceHandle encodeWithCoder:]", "CAFenceHandle.mm", 582, "[coder isKindOfClass:[NSXPCCoder class]]");
  }

  v5 = [CAFenceHandle _createXPCObjForCoding:?];
  if (v5)
  {
    v6 = v5;
    [coder encodeXPCObject:v5 forKey:@"x"];

    xpc_release(v6);
  }
}

- (void)_createXPCObjForCoding:(uint64_t)coding
{
  if (!coding)
  {
    return 0;
  }

  encode_id = _next_encode_id();
  kdebug_trace();
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  v5 = *(coding + 16);
  if (v5)
  {
    xpc_dictionary_set_uint64(v3, "f", v5);
  }

  xpc_dictionary_set_uint64(v4, "e", encode_id);
  if ((*(coding + 24) + 1) >= 2)
  {
    os_unfair_lock_lock((coding + 96));
    if ((*(coding + 100) & 1) == 0)
    {
      xpc_dictionary_set_mach_send();
    }

    os_unfair_lock_unlock((coding + 96));
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _copyUntrackedPort = [(CAFenceHandle *)self _copyUntrackedPort];
  v6 = [CAFenceHandle allocWithZone:zone];
  if (v6)
  {
    v7 = [(CAFenceHandle *)v6 _initWithPort:_copyUntrackedPort name:self->_fence_name tracing:2];
  }

  else
  {
    v7 = 0;
  }

  kdebug_trace();
  return v7;
}

- (uint64_t)_accessMachPort:(uint64_t)result
{
  if (result && a2)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    os_unfair_lock_lock((v3 + 96));
    v4 = *(v3 + 100);
    os_unfair_lock_unlock((v3 + 96));
    (*(a2 + 16))(a2, *(v3 + 24), v4);

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

- (void)encodeWithBlock:(id)block
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    __assert_rtn("[CAFenceHandle encodeWithBlock:]", "CAFenceHandle.mm", 350, "block");
  }

  encode_id = _next_encode_id();
  kdebug_trace();
  v9[0] = self->_fence_name;
  v9[1] = encode_id;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:16];
  v7 = objc_autoreleasePoolPush();
  _copyUntrackedPort = [(CAFenceHandle *)self _copyUntrackedPort];
  (*(block + 2))(block, _copyUntrackedPort, v6);
  objc_autoreleasePoolPop(v7);
}

+ (id)handleForPort:(unsigned int)port fenceId:(unint64_t)id
{
  v6 = [CAFenceHandle alloc];
  if (v6)
  {
    v6 = [(CAFenceHandle *)v6 _initWithPort:port name:id tracing:2];
  }

  return v6;
}

+ (id)handleWithPort:(unsigned int)port data:(id)data error:(id *)error
{
  portCopy = port;
  v15 = *MEMORY[0x1E69E9840];
  if (port - 1 <= 0xFFFFFFFD)
  {
    ptype[0] = 0;
    v8 = MEMORY[0x1E69E9A60];
    if (mach_port_type(*MEMORY[0x1E69E9A60], port, ptype))
    {
      __assert_rtn("+[CAFenceHandle handleWithPort:data:error:]", "CAFenceHandle.mm", 380, "r == KERN_SUCCESS");
    }

    if ((ptype[0] & 0x10000) == 0)
    {
      if ((ptype[0] & 0x100000) == 0)
      {
        __assert_rtn("+[CAFenceHandle handleWithPort:data:error:]", "CAFenceHandle.mm", 384, "(t & MACH_PORT_TYPE_DEAD_NAME) == MACH_PORT_TYPE_DEAD_NAME");
      }

      mach_port_deallocate(*v8, portCopy);
      portCopy = 0;
    }
  }

  if (!data || [data length] != 16)
  {
    if (portCopy)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], portCopy);
    }

    if (!error)
    {
      return 0;
    }

    goto LABEL_17;
  }

  *ptype = 0;
  v14 = 0;
  [data getBytes:ptype length:16];
  if (!v14)
  {
    if (portCopy)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], portCopy);
    }

    if (!error)
    {
      return 0;
    }

LABEL_17:
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
    result = 0;
    *error = v11;
    return result;
  }

  v9 = [CAFenceHandle alloc];
  if (v9)
  {
    v10 = [(CAFenceHandle *)v9 _initWithPort:portCopy name:*ptype tracing:2];
  }

  else
  {
    v10 = 0;
  }

  kdebug_trace();
  if (([v10 isUsable] & 1) == 0)
  {
    [v10 invalidate];

    v10 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    }
  }

  return v10;
}

+ (id)handleFromXPCRepresentation:(id)representation error:(id *)error
{
  v5 = [[CAFenceHandle alloc] _initWithXPCObj:representation coding:3];
  if (([v5 isUsable] & 1) == 0)
  {
    [v5 invalidate];

    v5 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    }
  }

  return v5;
}

+ (id)handleFromXPCRepresentation:(id)representation
{
  v3 = [[CAFenceHandle alloc] _initWithXPCObj:representation coding:2];

  return v3;
}

+ (void)_newFenceFromServer:(uint64_t)server
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ((a2 + 1) <= 1)
  {
    __assert_rtn("+[CAFenceHandle _newFenceFromServer:]", "CAFenceHandle.mm", 65, "MACH_PORT_VALID (port)");
  }

  v11 = 0;
  v10 = 0;
  v3 = _CASCreateFencePort(a2, &v11, &v10);
  v4 = v3;
  CAVerifyServerReturn(v3);
  v5 = v11;
  if (v4 || v11 - 1 > 0xFFFFFFFD)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v9 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v4;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Server failed to create port for fence (%u)", buf, 8u);
      if (!v5)
      {
        return 0;
      }
    }

    else if (!v5)
    {
      return 0;
    }

    mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
    return 0;
  }

  v6 = v10;
  v7 = v11;

  return [CAFenceHandle _newFenceWithPort:v7 name:v6];
}

+ (void)_newFenceWithPort:(uint64_t)port name:
{
  objc_opt_self();
  if ((a2 + 1) <= 1)
  {
    __assert_rtn("+[CAFenceHandle _newFenceWithPort:name:]", "CAFenceHandle.mm", 459, "MACH_PORT_VALID (port)");
  }

  if (!port)
  {
    __assert_rtn("+[CAFenceHandle _newFenceWithPort:name:]", "CAFenceHandle.mm", 460, "name > 0");
  }

  v5 = [CAFenceHandle alloc];
  if (v5)
  {
    v6 = [(CAFenceHandle *)v5 _initWithPort:a2 name:port tracing:2];
  }

  else
  {
    v6 = 0;
  }

  kdebug_trace();
  return v6;
}

+ (void)_newEphemeralHandleWithPort:(uint64_t)port
{
  objc_opt_self();
  if (a2 - 1 > 0xFFFFFFFD)
  {
    a2 = 0;
  }

  else if (mach_port_insert_right(*MEMORY[0x1E69E9A60], a2, a2, 0x13u))
  {
    a2 = 0;
  }

  v3 = [CAFenceHandle alloc];

  return [(CAFenceHandle *)v3 _initWithPort:a2 name:0 tracing:0];
}

@end