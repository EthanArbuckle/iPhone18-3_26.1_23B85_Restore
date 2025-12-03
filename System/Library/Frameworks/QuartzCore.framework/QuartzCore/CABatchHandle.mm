@interface CABatchHandle
+ (id)createFromXPCRepresentation:(id)representation;
- (CABatchHandle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createXPCRepresentation;
- (id)description;
- (void)_initWithPort:(uint64_t)port name:;
- (void)_initWithXPCRepresentation:(void *)representation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation CABatchHandle

- (void)_initWithPort:(uint64_t)port name:
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CABatchHandle;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (!v5)
  {
    __assert_rtn("[CABatchHandle _initWithPort:name:]", "CABatchHandle.mm", 162, "self");
  }

  v6 = v5;
  do
  {
    add = atomic_fetch_add(&[CABatchHandle _initWithPort:name:]::last_handle_name, 1uLL);
  }

  while (add == -1);
  v5[1] = add + 1;
  v5[2] = port;
  *(v5 + 6) = a2;
  kdebug_trace();
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle_name = self->_handle_name;
  batch_name = self->_batch_name;
  v6 = @"NO";
  if (self->_port + 1 >= 2)
  {
    os_unfair_lock_lock(&self->_lock);
    invalidated = self->_invalidated;
    os_unfair_lock_unlock(&self->_lock);
    if (!invalidated)
    {
      v6 = @"YES";
    }

    if (batch_name)
    {
      return [v3 stringWithFormat:@"<CABatchHandle:%p name=%llx batch=%llx usable=%@>", self, handle_name, batch_name, v6];
    }
  }

  else if (batch_name)
  {
    return [v3 stringWithFormat:@"<CABatchHandle:%p name=%llx batch=%llx usable=%@>", self, handle_name, batch_name, v6];
  }

  return [v3 stringWithFormat:@"<CABatchHandle:%p name=%llx usable=%@>", self, handle_name, v6, v9];
}

- (CABatchHandle)initWithCoder:(id)coder
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

  v8 = [(CABatchHandle *)self _initWithXPCRepresentation:v6];

  return v8;
}

- (void)_initWithXPCRepresentation:(void *)representation
{
  representationCopy = representation;
  if (representation)
  {
    if (a2 && object_getClass(a2) == MEMORY[0x1E69E9E80])
    {
      uint64 = xpc_dictionary_get_uint64(a2, "f");
      xpc_dictionary_get_uint64(a2, "e");
      v5 = xpc_dictionary_copy_mach_send();
    }

    else
    {
      uint64 = 0;
      v5 = 0;
    }

    representationCopy = [(CABatchHandle *)representationCopy _initWithPort:v5 name:uint64];
    kdebug_trace();
  }

  return representationCopy;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CABatchHandle encodeWithCoder:]", "CABatchHandle.mm", 318, "[coder isKindOfClass:[NSXPCCoder class]]");
  }

  createXPCRepresentation = [(CABatchHandle *)self createXPCRepresentation];
  if (createXPCRepresentation)
  {
    v6 = createXPCRepresentation;
    [coder encodeXPCObject:createXPCRepresentation forKey:@"x"];

    xpc_release(v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self && self->_port + 1 >= 2)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_invalidated || mach_port_insert_right(*MEMORY[0x1E69E9A60], self->_port, self->_port, 0x13u))
    {
      port = 0;
    }

    else
    {
      port = self->_port;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    port = 0;
  }

  v6 = [[CABatchHandle allocWithZone:?]name:port, self->_batch_name];
  kdebug_trace();
  return v6;
}

- (id)createXPCRepresentation
{
  if (self->_port + 1 < 2)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    port = 0;
  }

  else
  {
    port = self->_port;
  }

  v2 = encode_batch_handle_port(self->_handle_name, self->_batch_name, port);
  os_unfair_lock_unlock(&self->_lock);
  return v2;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
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
  v5 = *MEMORY[0x1E69E9840];
  if (!self || (os_unfair_lock_lock(&self->_lock), invalidated = self->_invalidated, os_unfair_lock_unlock(&self->_lock), !invalidated))
  {
    __assert_rtn("[CABatchHandle dealloc]", "CABatchHandle.mm", 207, "[self isInvalidated]");
  }

  v4.receiver = self;
  v4.super_class = CABatchHandle;
  [(CABatchHandle *)&v4 dealloc];
}

+ (id)createFromXPCRepresentation:(id)representation
{
  v4 = [CABatchHandle alloc];

  return [(CABatchHandle *)v4 _initWithXPCRepresentation:representation];
}

@end