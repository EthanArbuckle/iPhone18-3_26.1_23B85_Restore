@interface CADisplayPowerAssertion
- (id)_initWithDisplayId:(unsigned int)id reason:(int64_t)reason identifier:(id)identifier;
- (id)description;
- (void)_acquireAndWait:(BOOL)wait;
- (void)_ensureValid;
- (void)cancel;
- (void)dealloc;
- (void)initializeClientPort;
- (void)invalidate;
@end

@implementation CADisplayPowerAssertion

- (void)initializeClientPort
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4.flags = xmmword_183E31BB0;
  v4.reserved[1] = 0;
  v3 = mach_port_construct(*MEMORY[0x1E69E9A60], &v4, self->_identifier, &self->_client_port);
  CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v3, self->_client_port);
}

- (void)_ensureValid
{
  if (self->_invalidated)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplayPowerAssertion" format:{@"The %@ assertion (%@) is already invalidated.", NSStringFromCADisplayPowerAssertionReason(self->_reason), self->_identifier}];
  }
}

- (void)invalidate
{
  [(CADisplayPowerAssertion *)self _ensureValid];
  if (self->_active)
  {
    [(CADisplayPowerAssertion *)self cancel];
  }

  self->_invalidated = 1;
}

- (void)cancel
{
  v10 = *MEMORY[0x1E69E9840];
  [(CADisplayPowerAssertion *)self _ensureValid];
  if (!self->_active)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplayPowerAssertion" format:{@"The %@ assertion (%@) is not active.", NSStringFromCADisplayPowerAssertionReason(self->_reason), self->_identifier}];
  }

  display_id = self->_display_id;
  server_port = self->_server_port;
  client_port = self->_client_port;
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[28] = client_port;
  v7 = 1245184;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = display_id;
  *msg = -2147483629;
  *&msg[8] = server_port;
  *&msg[20] = 0x100009D5CLL;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  mach_msg(msg, 1, 0x34u, 0, 0, 0, 0);
  self->_active = 0;
}

- (void)_acquireAndWait:(BOOL)wait
{
  waitCopy = wait;
  v19 = *MEMORY[0x1E69E9840];
  [(CADisplayPowerAssertion *)self _ensureValid];
  if (self->_active)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplayPowerAssertion" format:{@"The %@ assertion (%@) is already active.", NSStringFromCADisplayPowerAssertionReason(self->_reason), self->_identifier}];
  }

  server_port = self->_server_port;
  display_id = self->_display_id;
  v7 = getpid();
  client_port = self->_client_port;
  reason = self->_reason;
  if (waitCopy)
  {
    memset(&msg[4], 0, 32);
    *&msg[24] = 1;
    *&msg[28] = client_port;
    v14 = 1245184;
    v15 = *MEMORY[0x1E69E99E0];
    v16 = display_id;
    v17 = v7;
    v18 = reason;
    reply_port = mig_get_reply_port();
    *&msg[8] = server_port;
    *&msg[12] = reply_port;
    *msg = -2147478253;
    *&msg[16] = 0x9D5B00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v11 = *&msg[12];
    }

    else
    {
      v11 = reply_port;
    }

    v12 = mach_msg(msg, 3, 0x3Cu, 0x2Cu, v11, 0, 0);
    if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else if (v12)
    {
      mig_dealloc_reply_port(*&msg[12]);
    }

    else if (*&msg[20] != 40383 || (*msg & 0x80000000) != 0 || *&msg[4] != 36 || *&msg[8] || *&msg[32])
    {
      mach_msg_destroy(msg);
    }
  }

  else
  {
    memset(&msg[4], 0, 32);
    *&msg[28] = client_port;
    v14 = 1245184;
    v15 = *MEMORY[0x1E69E99E0];
    v16 = display_id;
    v17 = v7;
    v18 = reason;
    *msg = -2147483629;
    *&msg[8] = server_port;
    *&msg[20] = 0x100009D5ALL;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
    }

    mach_msg(msg, 1, 0x3Cu, 0, 0, 0, 0);
  }

  self->_active = 1;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [string appendFormat:@"<%@:%p; ", NSStringFromClass(v4), self];
  [string appendFormat:@"active: %i, invalidated: %i, reason: %@, identifier: %@", self->_active, self->_invalidated, NSStringFromCADisplayPowerAssertionReason(self->_reason), self->_identifier];
  [string appendString:@">"];
  return string;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplayPowerAssertion" format:{@"The %@ assertion (%@) is deallocated without calling -invalidate first.", NSStringFromCADisplayPowerAssertionReason(self->_reason), self->_identifier}];
  }

  server_port = self->_server_port;
  v4 = MEMORY[0x1E69E9A60];
  if (server_port + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], server_port);
  }

  mach_port_destruct(*v4, self->_client_port, -1, self->_identifier);

  v5.receiver = self;
  v5.super_class = CADisplayPowerAssertion;
  [(CADisplayPowerAssertion *)&v5 dealloc];
}

- (id)_initWithDisplayId:(unsigned int)id reason:(int64_t)reason identifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CADisplayPowerAssertion;
  v8 = [(CADisplayPowerAssertion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_display_id = id;
    v8->_reason = reason;
    v8->_identifier = [identifier copy];
    ServerPort = CARenderServerGetServerPort(0);
    v9->_server_port = ServerPort;
    if (ServerPort)
    {
      [(CADisplayPowerAssertion *)v9 initializeClientPort];
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

@end