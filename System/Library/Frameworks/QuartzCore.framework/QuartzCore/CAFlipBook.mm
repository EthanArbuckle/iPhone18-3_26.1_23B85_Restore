@interface CAFlipBook
- (id).cxx_construct;
- (id)_frameById:(unint64_t)a3;
- (id)_initWithDisplayId:(unsigned int)a3 options:(id)a4;
- (id)activeFrames;
- (id)cancelWithError:(id *)a3;
- (id)copyCurrentFrame;
- (id)frameAtTime:(unint64_t)a3;
- (id)renderForTime:(unint64_t)a3 options:(id)a4 userInfo:(id)a5 error:(id *)a6;
- (unint64_t)memoryUsage;
- (void)_collectFlipBookFrames;
- (void)_notifyRenderBegin;
- (void)_notifyRenderCompletedForTime:(unint64_t)a3 status:(unsigned int)a4 frameId:(unint64_t)a5 oldestFrameId:(unint64_t)a6 apl:(float)a7 aplDimming:(float)a8 memoryUsage:(unint64_t)a9 rawSurfacePort:(unsigned int)a10 rawSurfaceDestRect:(CGRect)a11;
- (void)dealloc;
- (void)renderForTime:(unint64_t)a3 options:(id)a4 userInfo:(id)a5 onRenderBegin:(id)a6 onRenderComplete:(id)a7;
@end

@implementation CAFlipBook

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 26) = 0;
  *(self + 34) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 160) = 0;
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(CAFlipBook *)self purge];
  serverPort = self->_serverPort;
  if (serverPort + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], serverPort);
    self->_serverPort = 0;
  }

  os_unfair_lock_lock(&self->_framesLock);

  self->_frames = 0;
  os_unfair_lock_unlock(&self->_framesLock);
  os_unfair_lock_lock(&self->_onRenderCBLock);

  self->_onRenderInfo = 0;
  _Block_release(self->_onRenderBegunCB);
  self->_onRenderBegunCB = 0;
  _Block_release(self->_onRenderCompletedCB);
  self->_onRenderCompletedCB = 0;
  os_unfair_lock_unlock(&self->_onRenderCBLock);
  CA::MachPortUtil::ClientIPC::destroy(&self->_onRenderBeginClientIpc);
  flipbook = 0;
  v4.receiver = self;
  v4.super_class = CAFlipBook;
  [(CAFlipBook *)&v4 dealloc];
}

- (id)cancelWithError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = atomic_load(&self->_renderInProgress);
  if (v5)
  {
    os_unfair_lock_lock(&self->_framesLock);
    self->_cancelTimestamp = self->_renderTimestamp;
    os_unfair_lock_unlock(&self->_framesLock);
  }

  v6 = [(CAFlipBook *)self maximumMemoryUsageForDiagnostics];
  serverPort = self->_serverPort;
  displayId = self->_displayId;
  *&msg[0].msgh_id = 0u;
  memset(&msg[1].msgh_local_port, 0, 28);
  *&msg[0].msgh_size = 0u;
  *&msg[1].msgh_bits = *MEMORY[0x1E69E99E0];
  msg[1].msgh_remote_port = displayId;
  LOBYTE(msg[1].msgh_local_port) = v6 != 0;
  *(&msg[1].msgh_local_port + 1) = 0;
  HIBYTE(msg[1].msgh_local_port) = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = serverPort;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x9D3700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(msg, 3, 0x28u, 0x40u, msgh_local_port, 0, 0);
  msgh_remote_port = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg[0].msgh_local_port);
    if (!a3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v11)
  {
    mig_dealloc_reply_port(msg[0].msgh_local_port);
    if (!a3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (msg[0].msgh_id == 71)
  {
    msgh_remote_port = 4294966988;
    goto LABEL_30;
  }

  if (msg[0].msgh_id != 40347)
  {
    msgh_remote_port = 4294966995;
    goto LABEL_30;
  }

  if ((msg[0].msgh_bits & 0x80000000) == 0)
  {
    if (msg[0].msgh_size == 36)
    {
      msgh_remote_port = 4294966996;
      if (msg[1].msgh_remote_port)
      {
        if (msg[0].msgh_remote_port)
        {
          msgh_remote_port = 4294966996;
        }

        else
        {
          msgh_remote_port = msg[1].msgh_remote_port;
        }
      }

LABEL_30:
      mach_msg_destroy(msg);
      if (!a3)
      {
LABEL_32:
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v17 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          v20 = mach_error_string(msgh_remote_port);
          msg[0].msgh_bits = 136315394;
          *&msg[0].msgh_size = v20;
          LOWORD(msg[0].msgh_local_port) = 1024;
          *(&msg[0].msgh_local_port + 2) = msgh_remote_port;
          _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "-cancel failed with %s [0x%x]", msg, 0x12u);
        }

        return 0;
      }

LABEL_31:
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IPC Error %s [0x%x]", mach_error_string(msgh_remote_port), msgh_remote_port];
      v21 = *MEMORY[0x1E696A578];
      v22 = v16;
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreanimation.flipbook" code:6 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  msgh_remote_port = 4294966996;
  if (msg[1].msgh_bits != 1 || msg[0].msgh_size != 56 || msg[0].msgh_remote_port)
  {
    goto LABEL_30;
  }

  if (HIWORD(msg[1].msgh_local_port) << 16 != 1114112)
  {
LABEL_29:
    msgh_remote_port = 4294966996;
    goto LABEL_30;
  }

  v13 = *&msg[2].msgh_bits;
  msgh_size = msg[1].msgh_size;
  if (msg[1].msgh_size)
  {
    v15 = IOSurfaceLookupFromMachPort(msg[1].msgh_size);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_size);
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_lock(&self->_framesLock);
  v18 = [(CAFlipBook *)self _frameById:v13];
  if (v18)
  {
    [(NSMutableArray *)self->_frames removeAllObjects];
    [(NSMutableArray *)self->_frames addObject:v18];
    [v18 setSurface:v15];
  }

  ++self->_generation;
  os_unfair_lock_unlock(&self->_framesLock);
  if (v15)
  {
    CFRelease(v15);
  }

  return v18;
}

- (unint64_t)memoryUsage
{
  v10 = *MEMORY[0x1E69E9840];
  serverPort = self->_serverPort;
  displayId = self->_displayId;
  *&msg[20] = 0u;
  v9 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = displayId;
  reply_port = mig_get_reply_port();
  *&msg[8] = serverPort;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D3500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x24u, 0x34u, v5, 0, 0);
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
  }

  else
  {
    if (*&msg[20] == 40345 && (*msg & 0x80000000) == 0 && *&msg[4] == 44 && !*&msg[8] && !*&msg[32])
    {
      return v9;
    }

    mach_msg_destroy(msg);
  }

  return 0;
}

- (id)activeFrames
{
  os_unfair_lock_lock(&self->_framesLock);
  v3 = mach_continuous_time();
  for (i = 0; i < [(NSMutableArray *)self->_frames count]; ++i)
  {
    v5 = [(NSMutableArray *)self->_frames objectAtIndex:i];
    if ([v5 presentationTime] > v3 && objc_msgSend(v5, "generation") == self->_generation)
    {
      break;
    }
  }

  if (i && [-[NSMutableArray objectAtIndex:](self->_frames objectAtIndex:{i - 1), "generation"}] == self->_generation)
  {
    --i;
  }

  v6 = [(NSMutableArray *)self->_frames subarrayWithRange:i, [(NSMutableArray *)self->_frames count]- i];
  os_unfair_lock_unlock(&self->_framesLock);
  return v6;
}

- (id)copyCurrentFrame
{
  v29 = *MEMORY[0x1E69E9840];
  serverPort = self->_serverPort;
  displayId = self->_displayId;
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = displayId;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = serverPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D3600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x40u, v6, 0, 0);
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
    return 0;
  }

  if (v7)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
    return 0;
  }

  if (*&msg_4[16] != 40346 || (msg & 0x80000000) == 0 || *&msg_4[20] != 1 || *msg_4 != 56 || *&msg_4[4] || *&msg_4[34] << 16 != 1114112)
  {
    mach_msg_destroy(&msg);
    return 0;
  }

  v8 = *&msg_4[24];
  if (!*&msg_4[24])
  {
    return 0;
  }

  v9 = *&msg_4[44];
  v10 = IOSurfaceLookupFromMachPort(*&msg_4[24]);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
  if (!v10)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_framesLock);
  v11 = [(CAFlipBook *)self _frameById:v9];
  if (v11)
  {
    v12 = [CAFlipBookFrame alloc];
    v13 = [v11 presentationTime];
    v14 = [v11 frameId];
    v15 = [v11 generation];
    [v11 apl];
    v17 = v16;
    [v11 aplDimming];
    v19 = v18;
    v20 = [v11 memoryUsage];
    v21 = [v11 isInverted];
    v22 = [v11 userInfo];
    LODWORD(v23) = v17;
    LODWORD(v24) = v19;
    v25 = [(CAFlipBookFrame *)v12 _initWithPresentationTime:v13 frameId:v14 generation:v15 apl:v20 aplDimming:v21 memoryUsage:v22 inverted:v23 userInfo:v24];
    [v25 setRawSurface:{objc_msgSend(v11, "rawSurface")}];
    [v11 rawSurfaceFrame];
    [v25 setRawSurfaceFrame:?];
    [v25 setSurface:v10];
  }

  else
  {
    v25 = 0;
  }

  os_unfair_lock_unlock(&self->_framesLock);
  CFRelease(v10);
  return v25;
}

- (id)frameAtTime:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  serverPort = self->_serverPort;
  displayId = self->_displayId;
  *&reply_port[16] = 0u;
  v18 = 0u;
  v19 = 0;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = displayId;
  *&v18 = a3;
  v6 = mig_get_reply_port();
  *&reply_port[4] = serverPort;
  *&reply_port[8] = v6;
  v16 = 5395;
  *&reply_port[12] = 0x9D3400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    v7 = *&reply_port[8];
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(&v16, 3, 0x2Cu, 0x3Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
      goto LABEL_20;
    }

    if (*&reply_port[16] == 71)
    {
      v9 = -308;
    }

    else if (*&reply_port[16] == 40344)
    {
      if (v16 < 0)
      {
        goto LABEL_29;
      }

      if (*reply_port != 52)
      {
        if (*reply_port == 36)
        {
          if (*&reply_port[4])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&reply_port[28] == 0;
          }

          if (v10)
          {
            v9 = -300;
          }

          else
          {
            v9 = *&reply_port[28];
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (*&reply_port[4])
      {
LABEL_29:
        v9 = -300;
        goto LABEL_30;
      }

      v9 = *&reply_port[28];
      if (!*&reply_port[28])
      {
        v15 = v18;
        self->_lastFrameId = *(&v18 + 1);
        goto LABEL_32;
      }
    }

    else
    {
      v9 = -301;
    }

LABEL_30:
    mach_msg_destroy(&v16);
    if (v9)
    {
      goto LABEL_20;
    }

    v15 = 0;
LABEL_32:
    os_unfair_lock_lock(&self->_framesLock);
    [(CAFlipBook *)self _collectFlipBookFrames];
    v12 = [(CAFlipBook *)self _frameById:v15];
    os_unfair_lock_unlock(&self->_framesLock);
    return v12;
  }

  mig_put_reply_port(*&reply_port[8]);
LABEL_20:
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v11 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    v14 = mach_error_string(v9);
    v16 = 67109378;
    *reply_port = v9;
    *&reply_port[4] = 2080;
    *&reply_port[6] = v14;
    _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "[CAFlipBook frameAtTime:] IPC failed 0x%x - %s", &v16, 0x12u);
  }

  return 0;
}

- (void)renderForTime:(unint64_t)a3 options:(id)a4 userInfo:(id)a5 onRenderBegin:(id)a6 onRenderComplete:(id)a7
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    [MEMORY[0x1E695DF30] raise:@"CAFlipBook" format:@"renderForTime called without render completed callback."];
  }

  v12 = atomic_load(&self->_renderInProgress);
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"renderForTime called before render completed.", a4];
    (*(a7 + 2))(a7, 0, [v13 errorWithDomain:@"com.apple.coreanimation.flipbook" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, &v35, 1)}]);
  }

  else
  {
    atomic_store(1u, &self->_renderInProgress);
    os_unfair_lock_lock(&self->_onRenderCBLock);
    if (a5)
    {
      self->_onRenderInfo = a5;
    }

    _Block_release(self->_onRenderBegunCB);
    self->_onRenderBegunCB = _Block_copy(a6);
    _Block_release(self->_onRenderCompletedCB);
    self->_onRenderCompletedCB = _Block_copy(a7);
    os_unfair_lock_unlock(&self->_onRenderCBLock);
    if ([(CAFlipBook *)self wantsTransform])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(CAFlipBook *)self isInverted];
    v16 = v14 | 2;
    if (!v15)
    {
      v16 = v14;
    }

    if (self->_onRenderBegunCB)
    {
      v17 = v16 | 8;
    }

    else
    {
      v17 = v16;
    }

    os_unfair_lock_lock(&self->_framesLock);
    self->_renderTimestamp = a3;
    os_unfair_lock_unlock(&self->_framesLock);
    port = self->_onRenderBeginClientIpc._port;
    serverPort = self->_serverPort;
    displayId = self->_displayId;
    v21 = [(CAFlipBook *)self contextId];
    *&msg[20] = 0u;
    *&msg[4] = 0u;
    *&msg[28] = port;
    v27 = 1245184;
    v28 = *MEMORY[0x1E69E99E0];
    v29 = displayId;
    v30 = v21;
    v31 = a3;
    v32 = v17;
    *msg = -2147483629;
    *&msg[8] = serverPort;
    *&msg[20] = 0x100009D33;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
    }

    v22 = mach_msg(msg, 1, 0x44u, 0, 0, 0, 0);
    if (v22)
    {
      v23 = v22;
      os_unfair_lock_lock(&self->_onRenderCBLock);
      v24 = _Block_copy(self->_onRenderCompletedCB);
      os_unfair_lock_unlock(&self->_onRenderCBLock);
      if (v24)
      {
        v25 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A578];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IPC Error %d", v23];
        v24[2](v24, 0, [v25 errorWithDomain:@"com.apple.coreanimation.flipbook" code:6 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}]);
        _Block_release(v24);
      }

      self->_onRenderInfo = 0;
      os_unfair_lock_lock(&self->_onRenderCBLock);
      _Block_release(self->_onRenderBegunCB);
      self->_onRenderBegunCB = 0;
      _Block_release(self->_onRenderCompletedCB);
      self->_onRenderCompletedCB = 0;
      os_unfair_lock_unlock(&self->_onRenderCBLock);
      atomic_store(0, &self->_renderInProgress);
    }
  }
}

- (id)renderForTime:(unint64_t)a3 options:(id)a4 userInfo:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__15103;
  v25 = __Block_byref_object_dispose__15104;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__15103;
  v19 = __Block_byref_object_dispose__15104;
  v20 = 0;
  v11 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__CAFlipBook_renderForTime_options_userInfo_error___block_invoke;
  v14[3] = &unk_1E6DF77E0;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[4] = v11;
  [(CAFlipBook *)self renderForTime:a3 options:a4 userInfo:a5 onRenderBegin:0 onRenderComplete:v14];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v11);
  if (a6)
  {
    *a6 = v16[5];
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

intptr_t __51__CAFlipBook_renderForTime_options_userInfo_error___block_invoke(void *a1, uint64_t a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

- (void)_notifyRenderCompletedForTime:(unint64_t)a3 status:(unsigned int)a4 frameId:(unint64_t)a5 oldestFrameId:(unint64_t)a6 apl:(float)a7 aplDimming:(float)a8 memoryUsage:(unint64_t)a9 rawSurfacePort:(unsigned int)a10 rawSurfaceDestRect:(CGRect)a11
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v47[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_framesLock);
  cancelTimestamp = self->_cancelTimestamp;
  generation = self->_generation;
  os_unfair_lock_unlock(&self->_framesLock);
  self->_lastFrameId = a6;
  if (a10)
  {
    v26 = IOSurfaceLookupFromMachPort(a10);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a10);
    if (a4)
    {
LABEL_8:
      if (a4)
      {
        os_unfair_lock_lock(&self->_onRenderCBLock);
        v29 = _Block_copy(self->_onRenderCompletedCB);
        os_unfair_lock_unlock(&self->_onRenderCBLock);
        if (v29)
        {
          v30 = MEMORY[0x1E696ABC0];
          v42 = *MEMORY[0x1E696A578];
          if (a4 > 7)
          {
            v31 = 0;
          }

          else
          {
            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:status_to_string::status_codes[a4]];
          }

          v43 = v31;
          v29[2](v29, 0, [v30 errorWithDomain:@"com.apple.coreanimation.flipbook" code:a4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v43, &v42, 1)}]);
          _Block_release(v29);
        }
      }

      else
      {
        if (!a5)
        {
          __assert_rtn("[CAFlipBook(Private) _notifyRenderCompletedForTime:status:frameId:oldestFrameId:apl:aplDimming:memoryUsage:rawSurfacePort:rawSurfaceDestRect:]", "CAFlipBook.mm", 773, "frameId != 0");
        }

        v32 = [CAFlipBookFrame alloc];
        *&v33 = a7;
        *&v34 = a8;
        v35 = [(CAFlipBookFrame *)v32 _initWithPresentationTime:a3 frameId:a5 generation:generation apl:a9 aplDimming:self->_inverted memoryUsage:self->_onRenderInfo inverted:v33 userInfo:v34];
        os_unfair_lock_lock(&self->_framesLock);
        v36 = self->_generation;
        if (v36 == generation)
        {
          [(CAFlipBook *)self _collectFlipBookFrames];
          [v35 setRawSurface:v26];
          [v35 setRawSurfaceFrame:{x, y, width, height}];
          [(NSMutableArray *)self->_frames addObject:v35];
        }

        os_unfair_lock_unlock(&self->_framesLock);
        os_unfair_lock_lock(&self->_onRenderCBLock);
        v37 = _Block_copy(self->_onRenderCompletedCB);
        os_unfair_lock_unlock(&self->_onRenderCBLock);
        if (v37)
        {
          if (v36 == generation)
          {
            v38 = v35;
            v39 = 0;
          }

          else
          {

            v40 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A578];
            v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"render cancel"];
            v39 = [v40 errorWithDomain:@"com.apple.coreanimation.flipbook" code:7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)}];
            v38 = 0;
          }

          v37[2](v37, v38, v39);
          _Block_release(v37);
        }

        else
        {
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    v26 = 0;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  if (cancelTimestamp != a3)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock(&self->_onRenderCBLock);
  v27 = _Block_copy(self->_onRenderCompletedCB);
  os_unfair_lock_unlock(&self->_onRenderCBLock);
  if (v27)
  {
    v28 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"render cancel"];
    v27[2](v27, 0, [v28 errorWithDomain:@"com.apple.coreanimation.flipbook" code:7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v47, &v46, 1)}]);
    _Block_release(v27);
  }

LABEL_23:
  onRenderInfo = self->_onRenderInfo;
  if (onRenderInfo)
  {

    self->_onRenderInfo = 0;
  }

  os_unfair_lock_lock(&self->_onRenderCBLock);
  _Block_release(self->_onRenderCompletedCB);
  self->_onRenderCompletedCB = 0;
  os_unfair_lock_unlock(&self->_onRenderCBLock);
  atomic_store(0, &self->_renderInProgress);
  if (v26)
  {
    CFRelease(v26);
  }
}

- (void)_notifyRenderBegin
{
  os_unfair_lock_lock(&self->_onRenderCBLock);
  onRenderBegunCB = self->_onRenderBegunCB;
  if (onRenderBegunCB)
  {
    onRenderBegunCB[2]();
    _Block_release(self->_onRenderBegunCB);
    self->_onRenderBegunCB = 0;
  }

  os_unfair_lock_unlock(&self->_onRenderCBLock);
}

- (void)_collectFlipBookFrames
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    lastFrameId = self->_lastFrameId;
    v5 = 134217984;
    v6 = lastFrameId;
    _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "CAFlipBook collecting frames < %llu", &v5, 0xCu);
  }

  while (-[NSMutableArray count](self->_frames, "count") && [-[NSMutableArray objectAtIndex:](self->_frames objectAtIndex:{0), "frameId"}] < self->_lastFrameId)
  {
    [(NSMutableArray *)self->_frames removeObjectAtIndex:0];
  }
}

- (id)_frameById:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  frames = self->_frames;
  v6 = [(NSMutableArray *)frames countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(frames);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 frameId] == a3)
        {
          return v10;
        }
      }

      v7 = [(NSMutableArray *)frames countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v11 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    lastFrameId = self->_lastFrameId;
    v13 = [(NSMutableArray *)self->_frames count];
    v14 = [-[NSMutableArray firstObject](self->_frames "firstObject")];
    v15 = [-[NSMutableArray lastObject](self->_frames "lastObject")];
    v17 = 134218752;
    v18 = lastFrameId;
    v19 = 1024;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "CAFlipBook _frameById:%llu not found in _frames(size=%i, first=%llu, last=%llu)", &v17, 0x26u);
  }

  return 0;
}

- (id)_initWithDisplayId:(unsigned int)a3 options:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CAFlipBook;
  v6 = [(CAFlipBook *)&v19 init];
  if (v6)
  {
    if (flipbook)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *__str = 67109120;
        *&__str[4] = a3;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CAFlipBook initWithDisplayId=%u called but a global flipbook already exist.", __str, 8u);
      }
    }

    flipbook = v6;
    *(v6 + 2) = CARenderServerGetServerPort(0);
    *(v6 + 2) = 512;
    *(v6 + 6) = 0;
    *(v6 + 14) = 1065353216;
    *(v6 + 6) = 0;
    *(v6 + 7) = a3;
    *(v6 + 4) = 0;
    *(v6 + 10) = 0;
    *(v6 + 161) = 0;
    *(v6 + 44) = 0;
    *(v6 + 10) = objc_alloc_init(MEMORY[0x1E695DF70]);
    atomic_store(0, v6 + 160);
    v24 = 0u;
    v25 = 0u;
    *__str = 0u;
    v23 = 0u;
    snprintf(__str, 0x40uLL, "CAFlipBook.%i.renderNotification", *(v6 + 7));
    v8 = CA::MachPortUtil::ClientIPC::create(v6 + 136, __str);
    CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v8, *(v6 + 34));
    v9 = *(v6 + 19);
    if (v9)
    {
      dispatch_activate(v9);
    }

    v10 = [objc_msgSend(a4 objectForKey:{@"maximumSize", "intValue"}];
    if (v10 - 2 > 0x1FE)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v11 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v21 = v10;
        *&v21[4] = 2048;
        *&v21[6] = 512;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Maximum flipbook size %u ignored. Using %zu.", buf, 0x12u);
      }
    }

    else
    {
      _CASFlipBookModify(*(v6 + 2), *(v6 + 7), 0, v10);
      *(v6 + 2) = v10;
    }

    v12 = [objc_msgSend(a4 objectForKey:{@"maximumPoolMemory", "intValue"}];
    v13 = v12;
    if (v12 > 0x20000000)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v14 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v21 = v13;
        *&v21[4] = 2048;
        *&v21[6] = 0x20000000;
        _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Maximum flipbook pool size %u ignored. Using %zu.", buf, 0x12u);
      }
    }

    else
    {
      [v6 setMaximumPoolMemory:v12];
    }

    [objc_msgSend(a4 objectForKey:{@"overAllocationFactor", "floatValue"}];
    v16 = *&v15;
    if (*&v15 <= 1.0 || *&v15 > 2.0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v17 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v21 = v16;
        *&v21[8] = 2048;
        *&v21[10] = 0x3FF0000000000000;
        _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "Over Allocation Factor %f ignored. Using %f.", buf, 0x16u);
      }
    }

    else
    {
      [v6 setOverAllocationFactor:v15];
    }
  }

  return v6;
}

@end