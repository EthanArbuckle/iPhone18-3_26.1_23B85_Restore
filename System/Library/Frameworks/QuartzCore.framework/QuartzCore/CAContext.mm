@interface CAContext
+ (CAContext)contextWithId:(unsigned int)id;
+ (id)allContexts;
+ (id)currentContext;
+ (id)localContextWithOptions:(id)options;
+ (id)objectForSlot:(unsigned int)slot;
+ (id)remoteContextWithOptions:(id)options;
+ (void)setCreateCacheBlock:(id)block;
+ (void)setDrawInContextBlock:(id)block;
+ (void)setFinalizeContextBlock:(id)block;
- (BOOL)addFence:(id)fence;
- (BOOL)addFence:(id)fence completion:(id)completion;
- (BOOL)addFence:(id)fence completionHandler:(id)handler;
- (BOOL)colorMatchUntaggedContent;
- (BOOL)isSecure;
- (BOOL)waitForCommitId:(unsigned int)id timeout:(double)timeout;
- (BOOL)waitForRenderingWithTimeout:(double)timeout;
- (CAContext)initWithOptions:(id)options localContext:(BOOL)context;
- (NSString)contentsFormat;
- (float)desiredDynamicRange;
- (id)debugDescription;
- (id)initRemoteWithOptions:(id)options;
- (unsigned)commitId;
- (unsigned)createFencePort;
- (unsigned)createImageSlot:(CGSize)slot hasAlpha:(BOOL)alpha;
- (unsigned)createSlot;
- (unsigned)hitTestContext:(CGPoint)context;
- (void)dealloc;
- (void)invalidateFences;
- (void)requestClientGlitch:(double)glitch;
- (void)requestServerGlitch:(double)glitch;
- (void)setAnnotation:(id)annotation;
- (void)setColorMatchUntaggedContent:(BOOL)content;
- (void)setColorSpace:(CGColorSpace *)space;
- (void)setContentsFormat:(id)format;
- (void)setDesiredDynamicRange:(float)range;
- (void)setFence:(unsigned int)fence count:(unsigned int)count;
- (void)setFencePort:(unsigned int)port;
- (void)setFencePort:(unsigned int)port commitHandler:(id)handler;
- (void)setLevel:(float)level;
- (void)setPayload:(id)Copy;
- (void)setSecure:(BOOL)secure;
- (void)setZombifyOnInvalidate:(BOOL)invalidate;
- (void)transferSlot:(unsigned int)slot toContextWithId:(unsigned int)id;
@end

@implementation CAContext

- (unsigned)createSlot
{
  reply_port_12[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v3 = *(impl + 13);
  if (!v3)
  {
    if ((*(impl + 257) & 2) != 0)
    {
      goto LABEL_35;
    }

    v5 = *(impl + 40);
    memset(reply_port_12 + 4, 0, 28);
    reply_port = 0;
    v6 = mig_get_reply_port();
    reply_port_4 = __PAIR64__(v6, v5);
    v14 = 5395;
    reply_port_12[0] = 0x9D1300000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v14);
      v7 = HIDWORD(reply_port_4);
    }

    else
    {
      v7 = v6;
    }

    v8 = mach_msg(&v14, 3, 0x18u, 0x30u, v7, 0, 0);
    v4 = v8;
    if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(reply_port_4));
LABEL_28:
      if (!v4)
      {
        return v4;
      }

      if (v4 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v4);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v10 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v12 = *(impl + 1);
        v13 = mach_error_string(v4);
        v14 = 67109634;
        reply_port = v12;
        LOWORD(reply_port_4) = 1024;
        *(&reply_port_4 + 2) = v4;
        HIWORD(reply_port_4) = 2080;
        reply_port_12[0] = v13;
        _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Failed to create slot (client=0x%x) [0x%x %s]", &v14, 0x18u);
      }

LABEL_35:
      LODWORD(v4) = 0;
      return v4;
    }

    if (v8)
    {
      mig_dealloc_reply_port(HIDWORD(reply_port_4));
      goto LABEL_28;
    }

    if (HIDWORD(reply_port_12[0]) == 71)
    {
      v4 = 4294966988;
    }

    else if (HIDWORD(reply_port_12[0]) == 40311)
    {
      if ((v14 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v4 = LODWORD(reply_port_12[2]);
            if (!LODWORD(reply_port_12[2]))
            {
              LODWORD(v4) = HIDWORD(reply_port_12[2]);
              return v4;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v9 = 1;
          }

          else
          {
            v9 = LODWORD(reply_port_12[2]) == 0;
          }

          if (v9)
          {
            v4 = 4294966996;
          }

          else
          {
            v4 = LODWORD(reply_port_12[2]);
          }

          goto LABEL_27;
        }
      }

      v4 = 4294966996;
    }

    else
    {
      v4 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&v14);
    goto LABEL_28;
  }

  pthread_mutex_lock((v3 + 72));
  LODWORD(v4) = CA::Render::Context::new_slot(*(impl + 13));
  pthread_mutex_unlock((*(impl + 13) + 72));
  return v4;
}

- (unsigned)commitId
{
  impl = self->_impl;
  pthread_mutex_lock((impl + 16));
  v3 = *(impl + 32);
  pthread_mutex_unlock((impl + 16));
  return v3;
}

- (unsigned)createFencePort
{
  v24 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  name = 0;
  v16 = 0;
  if (*(impl + 13))
  {
    if (CA::Render::Fence::create_fence_port(&name, &v16, v2))
    {
      v5 = name;
      goto LABEL_13;
    }

    return 0;
  }

  if ((*(impl + 257) & 2) != 0)
  {
    return 0;
  }

  v6 = _CASCreateFencePort(*(impl + 40), &name, &v16);
  if (v6)
  {
    v7 = v6;
    if (v6 == 268435459)
    {
      *(impl + 257) |= 2u;
    }

    CAVerifyServerReturn(v6);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v8 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(impl + 1);
      v15 = mach_error_string(v7);
      *buf = 67109634;
      v19 = v14;
      v20 = 1024;
      v21 = v7;
      v22 = 2080;
      v23 = v15;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Failed to create fence port (client=0x%x) [0x%x %s]", buf, 0x18u);
    }
  }

  v5 = name;
  if (name - 1 > 0xFFFFFFFD)
  {
    if (name)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name);
    }

    return 0;
  }

LABEL_13:
  v9 = [CAFenceHandle _newFenceWithPort:v5 name:v16];
  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  _copyPort = [(CAFenceHandle *)v9 _copyPort];
  if (_copyPort)
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v12)
    {
      v12 = CA::Transaction::create(0);
    }

    if ((CA::Transaction::add_fence(v12, *(self->_impl + 2), v10, 0) & 1) == 0)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], _copyPort);
      _copyPort = 0;
    }
  }

  [v10 invalidate];

  return _copyPort;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    CA::Context::set_objc_context(impl, 0);
    CA::Context::invalidate(self->_impl);
    CA::Context::unref(self->_impl, 0);
  }

  v4.receiver = self;
  v4.super_class = CAContext;
  [(CAContext *)&v4 dealloc];
}

- (BOOL)waitForCommitId:(unsigned int)id timeout:(double)timeout
{
  if (timeout >= INFINITY)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = (timeout * 1000.0 + 0.5);
  }

  if (timeout <= INFINITY)
  {
    v7 = v6;
  }

  else
  {
    v7 = (timeout * 1000.0 + 0.5);
  }

  v8 = CA::Context::synchronize(self->_impl, id, v7, 0);
  if (v8)
  {
    CA::Context::ping(self->_impl);
  }

  return v8;
}

- (void)requestServerGlitch:(double)glitch
{
  v3 = *(self->_impl + 2);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:glitch];

  CA::Transaction::add_command(0x1B, v3, 0, v4, v5);
}

- (void)requestClientGlitch:(double)glitch
{
  v3 = *(self->_impl + 2);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:glitch];

  CA::Transaction::add_command(0x1A, v3, 0, v4, v5);
}

- (void)setAnnotation:(id)annotation
{
  impl = self->_impl;
  pthread_mutex_lock((impl + 16));
  v5 = *(impl + 31);
  if (v5)
  {
    CFRelease(v5);
  }

  if (annotation)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], annotation);
  }

  else
  {
    Copy = 0;
  }

  *(impl + 31) = Copy;
  *(impl + 257) |= 0x40u;

  pthread_mutex_unlock((impl + 16));
}

- (unsigned)hitTestContext:(CGPoint)context
{
  y = context.y;
  x = context.x;
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v6 = *(impl + 13);
  if (!v6)
  {
    if ((*(impl + 257) & 2) != 0)
    {
      goto LABEL_35;
    }

    v9 = *(impl + 40);
    *v19 = *MEMORY[0x1E69E99E0];
    *&v19[8] = context;
    reply_port = mig_get_reply_port();
    *&v18.msgh_bits = 5395;
    v18.msgh_remote_port = v9;
    v18.msgh_local_port = reply_port;
    *&v18.msgh_voucher_port = 0x9D1B00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v18);
      msgh_local_port = v18.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v12 = mach_msg(&v18, 3, 0x30u, 0x30u, msgh_local_port, 0, 0);
    v8 = v12;
    if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(v18.msgh_local_port);
LABEL_28:
      if (!v8)
      {
        return v8;
      }

      if (v8 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v8);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v14 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v16 = *(impl + 1);
        v17 = mach_error_string(v8);
        v18.msgh_bits = 134219010;
        *&v18.msgh_size = x;
        LOWORD(v18.msgh_local_port) = 2048;
        *(&v18.msgh_local_port + 2) = y;
        HIWORD(v18.msgh_id) = 1024;
        *v19 = v16;
        *&v19[4] = 1024;
        *&v19[6] = v8;
        *&v19[10] = 2080;
        *&v19[12] = v17;
        _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Failed to hit test (%g, %g) (client=0x%x) [0x%x %s]", &v18, 0x2Cu);
      }

LABEL_35:
      LODWORD(v8) = 0;
      return v8;
    }

    if (v12)
    {
      mig_dealloc_reply_port(v18.msgh_local_port);
      goto LABEL_28;
    }

    if (v18.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v18.msgh_id == 40319)
    {
      if ((v18.msgh_bits & 0x80000000) == 0)
      {
        if (v18.msgh_size == 40)
        {
          if (!v18.msgh_remote_port)
          {
            v8 = *&v19[8];
            if (!*&v19[8])
            {
              LODWORD(v8) = *&v19[12];
              return v8;
            }

            goto LABEL_27;
          }
        }

        else if (v18.msgh_size == 36)
        {
          if (v18.msgh_remote_port)
          {
            v13 = 1;
          }

          else
          {
            v13 = *&v19[8] == 0;
          }

          if (v13)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&v19[8];
          }

          goto LABEL_27;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&v18);
    goto LABEL_28;
  }

  pthread_mutex_lock((v6 + 72));
  v7 = *(impl + 13);
  *&v18.msgh_bits = x;
  *&v18.msgh_remote_port = y;
  LODWORD(v8) = CA::Render::Context::hit_test_context(v7);
  pthread_mutex_unlock((*(impl + 13) + 72));
  return v8;
}

- (void)transferSlot:(unsigned int)slot toContextWithId:(unsigned int)id
{
  v9 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  valuePtr = id;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CA::Transaction::add_command(0xD, impl[2], slot, v6, v7);
  CFRelease(v6);
}

- (unsigned)createImageSlot:(CGSize)slot hasAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  height = slot.height;
  width = slot.width;
  if (CADeviceUseCIF10::once != -1)
  {
    dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
  }

  v8 = CADeviceUseCIF10::enable_cif10;
  impl = self->_impl;

  return CA::Context::new_image_slot(impl, width, height, alphaCopy, v8);
}

- (void)invalidateFences
{
  v10 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 257) & 2) == 0)
  {
    v3 = *(impl + 40);
    v9.msgh_size = 0;
    v9.msgh_bits = 19;
    v9.msgh_remote_port = v3;
    v9.msgh_local_port = 0;
    *&v9.msgh_voucher_port = 0x9D1200000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v9);
    }

    v4 = mach_msg(&v9, 1, 0x18u, 0, 0, 0, 0);
    if (v4)
    {
      v5 = v4;
      if (v4 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v4);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v6 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v7 = *(impl + 1);
        v8 = mach_error_string(v5);
        v9.msgh_bits = 67109634;
        v9.msgh_size = v7;
        LOWORD(v9.msgh_remote_port) = 1024;
        *(&v9.msgh_remote_port + 2) = v5;
        HIWORD(v9.msgh_local_port) = 2080;
        *&v9.msgh_voucher_port = v8;
        _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "Failed to remove context from fences (client=0x%x) [0x%x %s]", &v9, 0x18u);
      }
    }
  }
}

- (void)setFence:(unsigned int)fence count:(unsigned int)count
{
  v6 = *MEMORY[0x1E69E9840];
  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v4 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "[CAContext setFence:count:] is deprecated. Ignoring!", v5, 2u);
  }
}

- (void)setFencePort:(unsigned int)port commitHandler:(id)handler
{
  v6 = [CAFenceHandle _newEphemeralHandleWithPort:port];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 576);
  v10 = v6;
  if (!v8)
  {
    v8 = CA::Transaction::create(0);
    v6 = v10;
  }

  if (CA::Transaction::add_fence(v8, *(self->_impl + 2), v6, 0))
  {
    v9 = *(StatusReg + 576);
    if (!v9)
    {
      v9 = CA::Transaction::create(0);
    }

    CA::Transaction::add_commit_handler(v9, handler, 3);
  }

  [v10 invalidate];
}

- (void)setFencePort:(unsigned int)port
{
  v4 = [CAFenceHandle _newEphemeralHandleWithPort:port];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  v6 = v4;
  if (!v5)
  {
    v5 = CA::Transaction::create(0);
    v4 = v6;
  }

  CA::Transaction::add_fence(v5, *(self->_impl + 2), v4, 0);
  [v6 invalidate];
}

- (BOOL)addFence:(id)fence completion:(id)completion
{
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v7)
  {
    v7 = CA::Transaction::create(0);
  }

  v8 = *(self->_impl + 2);

  return CA::Transaction::add_fence(v7, v8, fence, completion);
}

- (BOOL)addFence:(id)fence completionHandler:(id)handler
{
  v8[5] = *MEMORY[0x1E69E9840];
  v5 = *(self->_impl + 2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CAContext_addFence_completionHandler___block_invoke;
  v8[3] = &unk_1E6DFA538;
  v8[4] = handler;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(0);
  }

  return CA::Transaction::add_fence(v6, v5, fence, v8);
}

- (BOOL)addFence:(id)fence
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(0);
  }

  v6 = *(self->_impl + 2);

  return CA::Transaction::add_fence(v5, v6, fence, 0);
}

- (BOOL)waitForRenderingWithTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v4 = 0;
  }

  else if (timeout <= 2147483.0)
  {
    v4 = (timeout * 1000.0);
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  v5 = CA::Context::synchronize(self->_impl, 0, v4, 0);
  if (v5)
  {
    CA::Context::ping(self->_impl);
  }

  return v5;
}

- (float)desiredDynamicRange
{
  reply_port_12[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v3 = *(impl + 13);
  if (v3)
  {
    pthread_mutex_lock((v3 + 72));
    v4 = *(impl + 13);
    v5 = *(v4 + 308);
    pthread_mutex_unlock((v4 + 72));
    return v5;
  }

  v5 = 1.0;
  if ((*(impl + 257) & 2) != 0)
  {
    return v5;
  }

  v6 = *(impl + 40);
  memset(reply_port_12 + 4, 0, 28);
  reply_port = 0;
  v7 = mig_get_reply_port();
  reply_port_4 = __PAIR64__(v7, v6);
  v16 = 5395;
  reply_port_12[0] = 0x9D1900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    v8 = HIDWORD(reply_port_4);
  }

  else
  {
    v8 = v7;
  }

  v9 = mach_msg(&v16, 3, 0x18u, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(HIDWORD(reply_port_4));
    goto LABEL_28;
  }

  if (v9)
  {
    mig_dealloc_reply_port(HIDWORD(reply_port_4));
    goto LABEL_28;
  }

  if (HIDWORD(reply_port_12[0]) == 71)
  {
    v10 = 4294966988;
  }

  else if (HIDWORD(reply_port_12[0]) == 40317)
  {
    if ((v16 & 0x80000000) == 0)
    {
      if (reply_port == 40)
      {
        if (!reply_port_4)
        {
          v10 = LODWORD(reply_port_12[2]);
          if (!LODWORD(reply_port_12[2]))
          {
            return *(&reply_port_12[2] + 1);
          }

          goto LABEL_27;
        }
      }

      else if (reply_port == 36)
      {
        if (reply_port_4)
        {
          v11 = 1;
        }

        else
        {
          v11 = LODWORD(reply_port_12[2]) == 0;
        }

        if (v11)
        {
          v10 = 4294966996;
        }

        else
        {
          v10 = LODWORD(reply_port_12[2]);
        }

        goto LABEL_27;
      }
    }

    v10 = 4294966996;
  }

  else
  {
    v10 = 4294966995;
  }

LABEL_27:
  mach_msg_destroy(&v16);
LABEL_28:
  if (v10)
  {
    if (v10 == 268435459)
    {
      *(impl + 257) |= 2u;
    }

    CAVerifyServerReturn(v10);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v12 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(impl + 1);
      v15 = mach_error_string(v10);
      v16 = 67109634;
      reply_port = v14;
      LOWORD(reply_port_4) = 1024;
      *(&reply_port_4 + 2) = v10;
      HIWORD(reply_port_4) = 2080;
      reply_port_12[0] = v15;
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "Failed to query EDR headroom (client=0x%x) [0x%x %s]", &v16, 0x18u);
    }
  }

  return v5;
}

- (void)setDesiredDynamicRange:(float)range
{
  v18 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = *(impl + 13);
  if (v5)
  {
    pthread_mutex_lock((v5 + 72));
    v6 = *(impl + 13);
    *(v6 + 308) = range;

    pthread_mutex_unlock((v6 + 72));
  }

  else
  {
    if ((*(impl + 257) & 2) != 0)
    {
      return;
    }

    v7 = *(impl + 40);
    *&reply_port[16] = 0u;
    v17 = 0;
    *reply_port = 0u;
    *&reply_port[20] = *MEMORY[0x1E69E99E0];
    *&reply_port[28] = range;
    v8 = mig_get_reply_port();
    *&reply_port[4] = v7;
    *&reply_port[8] = v8;
    v15 = 5395;
    *&reply_port[12] = 0x9D1A00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v15);
      v9 = *&reply_port[8];
    }

    else
    {
      v9 = v8;
    }

    v10 = mach_msg(&v15, 3, 0x24u, 0x2Cu, v9, 0, 0);
    v11 = v10;
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&reply_port[8]);
    }

    else if (v10)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
    }

    else
    {
      if (*&reply_port[16] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port[16] == 40318)
      {
        v11 = 4294966996;
        if ((v15 & 0x80000000) == 0 && *reply_port == 36 && !*&reply_port[4])
        {
          v11 = *&reply_port[28];
          if (!*&reply_port[28])
          {
            return;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v15);
    }

    if (v11)
    {
      if (v11 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v11);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v12 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v13 = *(impl + 1);
        v14 = mach_error_string(v11);
        v15 = 134218754;
        *reply_port = range;
        *&reply_port[8] = 1024;
        *&reply_port[10] = v13;
        *&reply_port[14] = 1024;
        *&reply_port[16] = v11;
        *&reply_port[20] = 2080;
        *&reply_port[22] = v14;
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "Failed to set EDR headroom=%g (client=0x%x) [0x%x %s]", &v15, 0x22u);
      }
    }
  }
}

- (BOOL)isSecure
{
  reply_port_12[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v3 = *(impl + 13);
  if (!v3)
  {
    if ((*(impl + 257) & 2) != 0)
    {
      goto LABEL_35;
    }

    v6 = *(impl + 40);
    memset(reply_port_12 + 4, 0, 28);
    reply_port = 0;
    v7 = mig_get_reply_port();
    reply_port_4 = __PAIR64__(v7, v6);
    v15 = 5395;
    reply_port_12[0] = 0x9D1700000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v15);
      v8 = HIDWORD(reply_port_4);
    }

    else
    {
      v8 = v7;
    }

    v9 = mach_msg(&v15, 3, 0x18u, 0x30u, v8, 0, 0);
    v5 = v9;
    if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(reply_port_4));
LABEL_28:
      if (!v5)
      {
        return v5;
      }

      if (v5 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v5);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v11 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v13 = *(impl + 1);
        v14 = mach_error_string(v5);
        v15 = 67109634;
        reply_port = v13;
        LOWORD(reply_port_4) = 1024;
        *(&reply_port_4 + 2) = v5;
        HIWORD(reply_port_4) = 2080;
        reply_port_12[0] = v14;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Failed to query security (client=0x%x) [0x%x %s]", &v15, 0x18u);
      }

LABEL_35:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (v9)
    {
      mig_dealloc_reply_port(HIDWORD(reply_port_4));
      goto LABEL_28;
    }

    if (HIDWORD(reply_port_12[0]) == 71)
    {
      v5 = 4294966988;
    }

    else if (HIDWORD(reply_port_12[0]) == 40315)
    {
      if ((v15 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v5 = LODWORD(reply_port_12[2]);
            if (!LODWORD(reply_port_12[2]))
            {
              LOBYTE(v5) = HIDWORD(reply_port_12[2]) != 0;
              return v5;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v10 = 1;
          }

          else
          {
            v10 = LODWORD(reply_port_12[2]) == 0;
          }

          if (v10)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = LODWORD(reply_port_12[2]);
          }

          goto LABEL_27;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&v15);
    goto LABEL_28;
  }

  pthread_mutex_lock((v3 + 72));
  v4 = *(impl + 13);
  LODWORD(v5) = (*(v4 + 584) >> 2) & 1;
  pthread_mutex_unlock((v4 + 72));
  return v5;
}

- (void)setSecure:(BOOL)secure
{
  secureCopy = secure;
  v19 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = *(impl + 13);
  if (v5)
  {
    pthread_mutex_lock((v5 + 72));
    if (secureCopy)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(*(impl + 13) + 584) = *(*(impl + 13) + 584) & 0xFFFB | v6;
    v7 = (*(impl + 13) + 72);

    pthread_mutex_unlock(v7);
  }

  else
  {
    if ((*(impl + 257) & 2) != 0)
    {
      return;
    }

    v8 = *(impl + 40);
    *&reply_port[16] = 0u;
    v18 = 0;
    *reply_port = 0u;
    *&reply_port[20] = *MEMORY[0x1E69E99E0];
    *&reply_port[28] = secure;
    v9 = mig_get_reply_port();
    *&reply_port[4] = v8;
    *&reply_port[8] = v9;
    v16 = 5395;
    *&reply_port[12] = 0x9D1800000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v16);
      v10 = *&reply_port[8];
    }

    else
    {
      v10 = v9;
    }

    v11 = mach_msg(&v16, 3, 0x24u, 0x2Cu, v10, 0, 0);
    v12 = v11;
    if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&reply_port[8]);
    }

    else if (v11)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
    }

    else
    {
      if (*&reply_port[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&reply_port[16] == 40316)
      {
        v12 = 4294966996;
        if ((v16 & 0x80000000) == 0 && *reply_port == 36 && !*&reply_port[4])
        {
          v12 = *&reply_port[28];
          if (!*&reply_port[28])
          {
            return;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&v16);
    }

    if (v12)
    {
      if (v12 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v12);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v13 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v14 = *(impl + 1);
        v15 = mach_error_string(v12);
        v16 = 67109890;
        *reply_port = secureCopy;
        *&reply_port[4] = 1024;
        *&reply_port[6] = v14;
        *&reply_port[10] = 1024;
        *&reply_port[12] = v12;
        *&reply_port[16] = 2080;
        *&reply_port[18] = v15;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Failed to set secure=%d (client=0x%x) [0x%x %s]", &v16, 0x1Eu);
      }
    }
  }
}

- (void)setLevel:(float)level
{
  v7 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  valuePtr = level;
  if (*(impl + 54) != level)
  {
    *(impl + 54) = level;
    v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CA::Transaction::add_command(0xA, *(impl + 2), valuePtr, v4, v5);
    CFRelease(v4);
  }
}

- (void)setPayload:(id)Copy
{
  impl = self->_impl;
  pthread_mutex_lock((impl + 16));
  v6 = *(impl + 19);
  if (v6 != Copy)
  {
    if (Copy)
    {
      Copy = CFDictionaryCreateCopy(0, Copy);
      v6 = *(impl + 19);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    *(impl + 19) = Copy;
    CA::Transaction::add_command(7, *(impl + 2), 0, Copy, v5);
  }

  pthread_mutex_unlock((impl + 16));
}

- (void)setZombifyOnInvalidate:(BOOL)invalidate
{
  if (invalidate)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(self->_impl + 257) = *(self->_impl + 257) & 0xFEFF | v3;
}

- (void)setContentsFormat:(id)format
{
  v4 = CA::Render::Layer::contents_format_from_string(format, a2);
  impl = self->_impl;
  pthread_mutex_lock((impl + 16));
  if (impl[256] != v4)
  {
    impl[256] = v4;
    v6 = *(impl + 12);
    if (v6)
    {
      v7 = CA::Context::set_contents_format(CA::Render::LayerContentsFormat)::sel;
      if (!CA::Context::set_contents_format(CA::Render::LayerContentsFormat)::sel)
      {
        v7 = sel_registerName("_contentsFormatDidChange:");
        CA::Context::set_contents_format(CA::Render::LayerContentsFormat)::sel = v7;
        v6 = *(impl + 12);
      }

      CA::Layer::perform_selector(*(v6 + 16), v7, [MEMORY[0x1E696AD98] numberWithUnsignedChar:v4]);
    }
  }

  pthread_mutex_unlock((impl + 16));
}

- (NSString)contentsFormat
{
  if (*(self->_impl + 256) - 1 > 4)
  {
    v2 = &kCAContentsFormatRGBA8Uint;
  }

  else
  {
    v2 = off_1E6DECED8[(*(self->_impl + 256) - 1)];
  }

  return *v2;
}

- (void)setColorMatchUntaggedContent:(BOOL)content
{
  contentCopy = content;
  v19 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = *(impl + 13);
  if (v5)
  {
    pthread_mutex_lock((v5 + 72));
    if (contentCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(*(impl + 13) + 584) = *(*(impl + 13) + 584) & 0xFFFD | v6;
    v7 = (*(impl + 13) + 72);

    pthread_mutex_unlock(v7);
  }

  else
  {
    if ((*(impl + 257) & 2) != 0)
    {
      return;
    }

    v8 = *(impl + 40);
    *&reply_port[16] = 0u;
    v18 = 0;
    *reply_port = 0u;
    *&reply_port[20] = *MEMORY[0x1E69E99E0];
    *&reply_port[28] = content;
    v9 = mig_get_reply_port();
    *&reply_port[4] = v8;
    *&reply_port[8] = v9;
    v16 = 5395;
    *&reply_port[12] = 0x9D1600000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v16);
      v10 = *&reply_port[8];
    }

    else
    {
      v10 = v9;
    }

    v11 = mach_msg(&v16, 3, 0x24u, 0x2Cu, v10, 0, 0);
    v12 = v11;
    if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&reply_port[8]);
    }

    else if (v11)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
    }

    else
    {
      if (*&reply_port[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&reply_port[16] == 40314)
      {
        v12 = 4294966996;
        if ((v16 & 0x80000000) == 0 && *reply_port == 36 && !*&reply_port[4])
        {
          v12 = *&reply_port[28];
          if (!*&reply_port[28])
          {
            return;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&v16);
    }

    if (v12)
    {
      if (v12 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v12);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v13 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v14 = *(impl + 1);
        v15 = mach_error_string(v12);
        v16 = 67109890;
        *reply_port = contentCopy;
        *&reply_port[4] = 1024;
        *&reply_port[6] = v14;
        *&reply_port[10] = 1024;
        *&reply_port[12] = v12;
        *&reply_port[16] = 2080;
        *&reply_port[18] = v15;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Failed to set untagged matching = %d (client=0x%x) [0x%x %s]", &v16, 0x1Eu);
      }
    }
  }
}

- (BOOL)colorMatchUntaggedContent
{
  reply_port_12[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v3 = *(impl + 13);
  if (!v3)
  {
    if ((*(impl + 257) & 2) != 0)
    {
      goto LABEL_35;
    }

    v6 = *(impl + 40);
    memset(reply_port_12 + 4, 0, 28);
    reply_port = 0;
    v7 = mig_get_reply_port();
    reply_port_4 = __PAIR64__(v7, v6);
    v15 = 5395;
    reply_port_12[0] = 0x9D1500000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v15);
      v8 = HIDWORD(reply_port_4);
    }

    else
    {
      v8 = v7;
    }

    v9 = mach_msg(&v15, 3, 0x18u, 0x30u, v8, 0, 0);
    v5 = v9;
    if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(reply_port_4));
LABEL_28:
      if (!v5)
      {
        return v5;
      }

      if (v5 == 268435459)
      {
        *(impl + 257) |= 2u;
      }

      CAVerifyServerReturn(v5);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v11 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v13 = *(impl + 1);
        v14 = mach_error_string(v5);
        v15 = 67109634;
        reply_port = v13;
        LOWORD(reply_port_4) = 1024;
        *(&reply_port_4 + 2) = v5;
        HIWORD(reply_port_4) = 2080;
        reply_port_12[0] = v14;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Failed to query untagged content matching (client=0x%x) [0x%x %s]", &v15, 0x18u);
      }

LABEL_35:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (v9)
    {
      mig_dealloc_reply_port(HIDWORD(reply_port_4));
      goto LABEL_28;
    }

    if (HIDWORD(reply_port_12[0]) == 71)
    {
      v5 = 4294966988;
    }

    else if (HIDWORD(reply_port_12[0]) == 40313)
    {
      if ((v15 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v5 = LODWORD(reply_port_12[2]);
            if (!LODWORD(reply_port_12[2]))
            {
              LOBYTE(v5) = HIDWORD(reply_port_12[2]) != 0;
              return v5;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v10 = 1;
          }

          else
          {
            v10 = LODWORD(reply_port_12[2]) == 0;
          }

          if (v10)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = LODWORD(reply_port_12[2]);
          }

          goto LABEL_27;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&v15);
    goto LABEL_28;
  }

  pthread_mutex_lock((v3 + 72));
  v4 = *(impl + 13);
  LODWORD(v5) = (*(v4 + 584) >> 1) & 1;
  pthread_mutex_unlock((v4 + 72));
  return v5;
}

- (void)setColorSpace:(CGColorSpace *)space
{
  spaceCopy = space;
  v10 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!space)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(impl + 1);
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "NULL color space set on context (%x)\n", v9, 8u);
    }

    spaceCopy = CAGetColorSpace(36);
  }

  pthread_mutex_lock((impl + 16));
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CGColorSpaceRelease(*(impl + 14));
    *(impl + 14) = CGColorSpaceRetain(spaceCopy);
    *(impl + 257) |= 0x20u;
    v6 = *(impl + 12);
    if (v6)
    {
      v7 = CA::Context::set_colorspace(CGColorSpace *)::sel;
      if (!CA::Context::set_colorspace(CGColorSpace *)::sel)
      {
        v7 = sel_registerName("_colorSpaceDidChange");
        CA::Context::set_colorspace(CGColorSpace *)::sel = v7;
        v6 = *(impl + 12);
      }

      CA::Layer::perform_selector(*(v6 + 16), v7, 0);
    }
  }

  pthread_mutex_unlock((impl + 16));
}

- (id)initRemoteWithOptions:(id)options
{
  v3 = [(CAContext *)self initWithOptions:options localContext:0];
  p_isa = &v3->super.isa;
  if (v3)
  {
    v5 = CA::Context::connect_remote(v3->_impl);
    v6 = p_isa[1];
    if (v5)
    {
      CA::Context::did_connect(v6);
    }

    else
    {
      CA::Context::set_objc_context(v6, 0);
      CA::Context::unref(p_isa[1], 1);
      p_isa[1] = 0;

      return 0;
    }
  }

  return p_isa;
}

- (CAContext)initWithOptions:(id)options localContext:(BOOL)context
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v8 = v7;
  v31 = *MEMORY[0x1E69E9840];
  v23.receiver = v9;
  v23.super_class = CAContext;
  v10 = [(CAContext *)&v23 init];
  if (!v10)
  {
    return v10;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v11 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x108uLL, 0xDEEC3011uLL);
  if (!v11)
  {
    *(v10 + 1) = 0;

    return 0;
  }

  v12 = v11;
  *v11 = 1;
  *(v11 + 10) = 0;
  v11[88] = 0;
  *(v11 + 19) = 0;
  *(v11 + 40) = 0;
  *(v11 + 21) = 0;
  *(v11 + 44) = 0;
  *(v11 + 48) = 0;
  *(v11 + 25) = 0;
  *(v11 + 26) = 0;
  *(v11 + 29) = &unk_1EF1F8680;
  *(v11 + 30) = v11;
  v11[256] = 0;
  *(v11 + 257) |= 0x20u;
  x_thread_init_mutex((v11 + 16), 1);
  if (v8)
  {
    *(v12 + 15) = v8;
    CFRetain(v8);
  }

  v13 = CAGetColorSpace(36);
  *(v12 + 14) = CGColorSpaceRetain(v13);
  os_unfair_lock_lock(&CA::Context::_lock);
  ++CA::Context::_context_count;
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1 && CA::Context::_context_count >= 0x201)
  {
    v14 = getpid();
    bzero(buffer, 0x1000uLL);
    proc_pidpath(v14, buffer, 0x1000u);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v15 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v25 = buffer;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = CA::Context::_context_count;
      _os_log_fault_impl(&dword_183AA6000, v15, OS_LOG_TYPE_FAULT, "Too many CAContexts! Biggest offender (%s [%d]) has %u contexts!", buf, 0x18u);
    }
  }

  v16 = CA::Context::_last_local_id;
  v17 = __CFADD__(CA::Context::_last_local_id++, 1);
  *(v12 + 2) = CA::Context::_last_local_id;
  if (v17)
  {
    CA::Context::_last_local_id = v16 + 2;
    *(v12 + 2) = v16 + 2;
  }

  os_unfair_lock_unlock(&CA::Context::_lock);
  *(v10 + 1) = v12;
  CA::Context::set_objc_context(v12, v10);
  if (!v6)
  {
    goto LABEL_25;
  }

  v18 = *(v10 + 1);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v19 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
  if (!v19)
  {
    *(v18 + 104) = 0;
    CA::Context::set_objc_context(*(v10 + 1), 0);
    CA::Context::unref(*(v10 + 1), 1);
    *(v10 + 1) = 0;

    return 0;
  }

  *(v18 + 104) = CA::Render::Context::Context(v19, *(v18 + 120), 0, 0, 0);
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    *(*(v18 + 104) + 12) |= 0x800u;
  }

  *(*(v18 + 104) + 584) &= ~0x40u;
  v20 = *(v18 + 104);
  *(v18 + 4) = *(v20 + 4);
  hosting_port = CA::Render::Context::make_hosting_port(v20);
  *(v18 + 168) = [CAHostingToken _newTokenWithPort:0 sid:*(v18 + 4) cid:?];
  CA::Context::did_connect(*(v10 + 1));
LABEL_25:
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  return v10;
}

- (id)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [string appendFormat:@"<%@:%p; contextId = 0x%x", NSStringFromClass(v4), self, -[CAContext contextId](self, "contextId")];
  if ([(CAContext *)self colorSpace])
  {
    v5 = CGColorSpaceCopyICCProfileDescription();
    if (v5)
    {
      v6 = v5;
      [string appendFormat:@"; colorSpace = %@", v5];
      CFRelease(v6);
    }
  }

  if ([(CAContext *)self commitPriority])
  {
    [string appendFormat:@"; commitPriority = %u", -[CAContext commitPriority](self, "commitPriority")];
  }

  [string appendFormat:@"; contentsFormat = %@", -[CAContext contentsFormat](self, "contentsFormat")];
  [(CAContext *)self level];
  if (v7 != 0.0)
  {
    [(CAContext *)self level];
    [string appendFormat:@"; level = %f", v8];
  }

  if ([(CAContext *)self isSecure])
  {
    [string appendString:@"; secure"];
  }

  [string appendString:@">"];
  return string;
}

+ (void)setCreateCacheBlock:(id)block
{
  if (CA::Context::_create_cache_callback != block)
  {
    _Block_release(CA::Context::_create_cache_callback);
    CA::Context::_create_cache_callback = _Block_copy(block);
  }
}

+ (void)setFinalizeContextBlock:(id)block
{
  if (CA::Context::_finalize_context_callback != block)
  {
    _Block_release(CA::Context::_finalize_context_callback);
    CA::Context::_finalize_context_callback = _Block_copy(block);
  }
}

+ (void)setDrawInContextBlock:(id)block
{
  if (CA::Context::_draw_in_context_callback != block)
  {
    _Block_release(CA::Context::_draw_in_context_callback);
    CA::Context::_draw_in_context_callback = _Block_copy(block);
  }
}

+ (id)objectForSlot:(unsigned int)slot
{
  v3 = [[CASlotProxy alloc] initWithName:*&slot];

  return v3;
}

+ (id)remoteContextWithOptions:(id)options
{
  v3 = [[CAContext alloc] initRemoteWithOptions:options];

  return v3;
}

+ (id)localContextWithOptions:(id)options
{
  v3 = [[CAContext alloc] initWithOptions:options localContext:1];

  return v3;
}

+ (id)currentContext
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 88) == 1)
  {
    return objc_loadWeak((v3 + 80));
  }

  return *(v3 + 80);
}

+ (CAContext)contextWithId:(unsigned int)id
{
  v3 = CA::Context::retain_context_with_client_id(*&id);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*(v3 + 88) == 1)
  {
    Weak = objc_loadWeak(v3 + 10);
  }

  else
  {
    Weak = *(v3 + 10);
  }

  CA::Context::unref(v4, 0);
  return Weak;
}

+ (id)allContexts
{
  result = CA::Context::retain_objc_contexts(self);
  if (result)
  {

    return result;
  }

  return result;
}

@end