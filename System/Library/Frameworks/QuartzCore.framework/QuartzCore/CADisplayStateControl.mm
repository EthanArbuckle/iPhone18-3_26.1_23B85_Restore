@interface CADisplayStateControl
- (char)_copyAllPowerAssertionInfo;
- (char)_copyStateInfo;
- (id).cxx_construct;
- (id)_initWithDisplayId:(unsigned int)id;
- (id)createPowerAssertionWithReason:(int64_t)reason identifier:(id)identifier;
- (void)acquireWirelessDisplayStateControl;
- (void)dealloc;
- (void)initializeClientPort;
- (void)transitionToCloningState:(int64_t)state withCompletion:(id)completion;
- (void)transitionToDisplayState:(int64_t)state withCompletion:(id)completion;
@end

@implementation CADisplayStateControl

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)initializeClientPort
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  *__str = 0u;
  v6 = 0u;
  snprintf(__str, 0x40uLL, "CADisplayStateControl.%i", self->_display_id);
  v3 = CA::MachPortUtil::ClientIPC::create(&self->_client_ipc, __str);
  CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v3, self->_client_ipc._port);
  source = self->_client_ipc._source;
  if (source)
  {
    dispatch_activate(source);
  }
}

- (id)createPowerAssertionWithReason:(int64_t)reason identifier:(id)identifier
{
  v7 = [CADisplayPowerAssertion alloc];
  display_id = self->_display_id;

  return [(CADisplayPowerAssertion *)v7 _initWithDisplayId:display_id reason:reason identifier:identifier];
}

- (void)acquireWirelessDisplayStateControl
{
  v10[7] = *MEMORY[0x1E69E9840];
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v3 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    display_id = self->_display_id;
    LODWORD(v10[0]) = 67109120;
    HIDWORD(v10[0]) = display_id;
    _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "CADisplayStateControl acquireWirelessDisplayStateControl for display %u", v10, 8u);
  }

  server_port = self->_server_port;
  v6 = self->_display_id;
  *(&v10[4] + 4) = 0;
  memset(v10 + 4, 0, 32);
  v10[3] = *MEMORY[0x1E69E99E0];
  LODWORD(v10[4]) = v6;
  reply_port = mig_get_reply_port();
  v10[1] = __PAIR64__(reply_port, server_port);
  LODWORD(v10[0]) = 5395;
  v10[2] = 0x9D6000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(v10);
    v8 = HIDWORD(v10[1]);
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(v10, 3, 0x24u, 0x2Cu, v8, 0, 0);
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(HIDWORD(v10[1]));
  }

  else if (v9)
  {
    mig_dealloc_reply_port(HIDWORD(v10[1]));
  }

  else if (HIDWORD(v10[2]) != 40388 || (v10[0] & 0x80000000) != 0 || *(v10 + 4) != 36 || LODWORD(v10[4]))
  {
    mach_msg_destroy(v10);
  }
}

- (void)transitionToCloningState:(int64_t)state withCompletion:(id)completion
{
  cloning_state_transition = self->_cloning_state_transition;
  cloningState = [(CADisplayStateControl *)self cloningState];

  Transition::begin(cloning_state_transition, cloningState, state, completion);
}

- (void)transitionToDisplayState:(int64_t)state withCompletion:(id)completion
{
  display_state_transition = self->_display_state_transition;
  displayState = [(CADisplayStateControl *)self displayState];

  Transition::begin(display_state_transition, displayState, state, completion);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  server_port = self->_server_port;
  if (server_port + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], server_port);
  }

  CA::MachPortUtil::ClientIPC::destroy(&self->_client_ipc);
  shmem = self->_shmem;
  if (shmem)
  {
    self->_display_state = 0;
    if (atomic_fetch_add(shmem + 2, 0xFFFFFFFF) == 1)
    {
      (*(*shmem + 16))(shmem);
    }
  }

  os_unfair_lock_lock(&_controls_lock);
  for (i = _controls; i != qword_1EA84E7A8; ++i)
  {
    if (*i == self)
    {
      *i = *(qword_1EA84E7A8 - 8);
      if (qword_1EA84E7A8 <= _controls)
      {
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }

      qword_1EA84E7A8 -= 8;
      break;
    }
  }

  os_unfair_lock_unlock(&_controls_lock);
  display_state_transition = self->_display_state_transition;
  if (display_state_transition)
  {
    Transition::~Transition(display_state_transition);
    MEMORY[0x1865EA9A0]();
  }

  cloning_state_transition = self->_cloning_state_transition;
  if (cloning_state_transition)
  {
    Transition::~Transition(cloning_state_transition);
    MEMORY[0x1865EA9A0]();
  }

  v8.receiver = self;
  v8.super_class = CADisplayStateControl;
  [(CADisplayStateControl *)&v8 dealloc];
}

- (id)_initWithDisplayId:(unsigned int)id
{
  msg[8] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CADisplayStateControl;
  v4 = [(CADisplayStateControl *)&v14 init];
  if (v4)
  {
    ServerPort = CARenderServerGetServerPort(0);
    v4->_server_port = ServerPort;
    if (ServerPort)
    {
      v4->_display_id = id;
      [(CADisplayStateControl *)v4 initializeClientPort];
      server_port = v4->_server_port;
      display_id = v4->_display_id;
      memset(msg + 4, 0, 60);
      msg[3] = *MEMORY[0x1E69E99E0];
      LODWORD(msg[4]) = display_id;
      reply_port = mig_get_reply_port();
      msg[1] = __PAIR64__(reply_port, server_port);
      LODWORD(msg[0]) = 5395;
      msg[2] = 0x9D5700000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(msg);
        v9 = HIDWORD(msg[1]);
      }

      else
      {
        v9 = reply_port;
      }

      v10 = mach_msg(msg, 3, 0x24u, 0x40u, v9, 0, 0);
      if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(HIDWORD(msg[1]));
      }

      else if (v10)
      {
        mig_dealloc_reply_port(HIDWORD(msg[1]));
      }

      else if (HIDWORD(msg[2]) == 40379 && (msg[0] & 0x80000000) != 0 && LODWORD(msg[3]) == 1 && *(msg + 4) == 56 && HIWORD(msg[4]) << 16 == 1114112)
      {
        v11 = HIDWORD(msg[3]);
        if (HIDWORD(msg[3]))
        {
          v12 = CA::Render::Shmem::new_shmem(HIDWORD(msg[3]), msg[6], 0, 3);
          if (v12)
          {
            v4->_shmem = v12;
            v4->_display_state = v12[3];
            operator new();
          }

          mach_port_deallocate(*MEMORY[0x1E69E9A60], v11);

          return 0;
        }
      }

      else
      {
        mach_msg_destroy(msg);
      }
    }

    return 0;
  }

  return v4;
}

- (char)_copyStateInfo
{
  v20[3] = *MEMORY[0x1E69E9840];
  memset(v20, 0, 24);
  displayState = [(CADisplayStateControl *)self displayState];
  cloningState = [(CADisplayStateControl *)self cloningState];
  powerState = [(CADisplayStateControl *)self powerState];
  targetDisplayState = [(CADisplayStateControl *)self targetDisplayState];
  targetCloningState = [(CADisplayStateControl *)self targetCloningState];
  targetPowerState = [(CADisplayStateControl *)self targetPowerState];
  if (targetDisplayState == displayState)
  {
    if (displayState > 3)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_1E6DF6248[displayState];
    }

    [(__CFString *)v9 cStringUsingEncoding:4];
    X::Stream::printf(v20, "\tdisplayState: %s\n");
  }

  else
  {
    if (displayState > 3)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1E6DF6248[displayState];
    }

    [(__CFString *)v10 cStringUsingEncoding:4];
    if (targetDisplayState > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E6DF6248[targetDisplayState];
    }

    [(__CFString *)v11 cStringUsingEncoding:4];
    X::Stream::printf(v20, "\tdisplayState: %s -> %s\n");
  }

  if (targetCloningState == cloningState)
  {
    if (cloningState > 2)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_1E6DF6268[cloningState];
    }

    [(__CFString *)v12 cStringUsingEncoding:4];
    X::Stream::printf(v20, "\tcloningState: %s\n");
  }

  else
  {
    if (cloningState > 2)
    {
      v13 = @"unknown";
    }

    else
    {
      v13 = off_1E6DF6268[cloningState];
    }

    [(__CFString *)v13 cStringUsingEncoding:4];
    if (targetCloningState > 2)
    {
      v14 = @"unknown";
    }

    else
    {
      v14 = off_1E6DF6268[targetCloningState];
    }

    [(__CFString *)v14 cStringUsingEncoding:4];
    X::Stream::printf(v20, "\tcloningState: %s -> %s\n");
  }

  if (powerState == 1)
  {
    v15 = @"on";
  }

  else
  {
    v15 = @"unknown";
  }

  if (powerState)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"off";
  }

  [(__CFString *)v16 cStringUsingEncoding:4];
  if (targetPowerState == powerState)
  {
    X::Stream::printf(v20, "\tpowerState: %s\n");
  }

  else
  {
    if (targetPowerState == 1)
    {
      v17 = @"on";
    }

    else
    {
      v17 = @"unknown";
    }

    if (targetPowerState)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"off";
    }

    [(__CFString *)v18 cStringUsingEncoding:4];
    X::Stream::printf(v20, "\tpowerState: %s -> %s\n");
  }

  return x_stream_finish(v20);
}

- (char)_copyAllPowerAssertionInfo
{
  v17 = *MEMORY[0x1E69E9840];
  server_port = self->_server_port;
  display_id = self->_display_id;
  *&reply_port[16] = 0u;
  memset(v16, 0, sizeof(v16));
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = display_id;
  v4 = mig_get_reply_port();
  *&reply_port[4] = server_port;
  *&reply_port[8] = v4;
  v14 = 5395;
  *&reply_port[12] = 0x9D5D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v14);
    v5 = *&reply_port[8];
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v14, 3, 0x24u, 0x40u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
LABEL_30:
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v12 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      *reply_port = v7;
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "Unable to get power assertions 0x%x", &v14, 8u);
    }

    return 0;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&reply_port[8]);
    goto LABEL_30;
  }

  if (*&reply_port[16] == 71)
  {
    v7 = -308;
LABEL_29:
    mach_msg_destroy(&v14);
    goto LABEL_30;
  }

  if (*&reply_port[16] != 40385)
  {
    v7 = -301;
    goto LABEL_29;
  }

  if ((v14 & 0x80000000) == 0)
  {
    if (*reply_port == 36)
    {
      v7 = -300;
      if (*&reply_port[28])
      {
        if (*&reply_port[4])
        {
          v7 = -300;
        }

        else
        {
          v7 = *&reply_port[28];
        }
      }

      goto LABEL_29;
    }

LABEL_28:
    v7 = -300;
    goto LABEL_29;
  }

  v7 = -300;
  if (*&reply_port[20] != 1 || *reply_port != 56 || *&reply_port[4] || HIBYTE(v16[0]) != 1)
  {
    goto LABEL_29;
  }

  v8 = v16[1];
  if (v16[1] != v16[4])
  {
    goto LABEL_28;
  }

  v9 = *&reply_port[24];
  if (!*&reply_port[24])
  {
    return 0;
  }

  v10 = malloc_type_malloc((v16[1] + 1), 0x100004077774924uLL);
  v11 = v10;
  if (v10)
  {
    memcpy(v10, v9, v8);
    v11[v8] = 0;
  }

  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v9, v8);
  return v11;
}

@end