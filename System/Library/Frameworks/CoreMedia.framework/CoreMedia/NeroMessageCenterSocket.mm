@interface NeroMessageCenterSocket
- (BOOL)sendMemoryBlock:(void *)a3 withLength:(unint64_t)a4;
- (NeroMessageCenterSocket)initWithIDSService:(id)a3 connection:(OpaqueFigTransportConnection *)a4;
- (int)activateConnection;
- (void)deactivateConnection;
- (void)dealloc;
- (void)mainLoop;
- (void)readPackage;
- (void)sendPackage;
@end

@implementation NeroMessageCenterSocket

- (NeroMessageCenterSocket)initWithIDSService:(id)a3 connection:(OpaqueFigTransportConnection *)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NeroMessageCenterSocket;
  v6 = [(NeroMessageCenterSocket *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_connection = a4;
    v6->_service = a3;
    v11[0] = *ids_IDSOpenSocketOptionTransportKey;
    v12[0] = &unk_1F0B8F630;
    v11[1] = *ids_IDSOpenSocketOptionPriorityKey;
    v12[1] = &unk_1F0B8F648;
    v11[2] = *ids_IDSOpenSocketOptionScopeKey;
    v12[2] = &unk_1F0B8F630;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    v7->_outgoingPackageQueue.stqh_first = 0;
    v7->_options = v8;
    v7->_idsDevice = 0;
    v7->_outgoingPackageQueue.stqh_last = &v7->_outgoingPackageQueue.stqh_first;
    v7->_outgoingQueueHeadBytesSent = 0;
    pthread_mutex_init(&v7->_outgoingQueueMutex, 0);
    v7->_receivalQueue = dispatch_queue_create([@"FigTransportConnectionIDS.socketReceiver" UTF8String], 0);
    v7->_isActive = 0;
  }

  return v7;
}

- (int)activateConnection
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_create(0);
  if (self->_isActive)
  {
LABEL_22:
    v21 = 0;
    if (self->_pollfd.fd != -1)
    {
      return v21;
    }

    goto LABEL_20;
  }

  v4 = v3;
  v36[0] = *_MergedGlobals_30;
  v37[0] = &unk_1F0B8F5E8;
  service = self->_service;
  v36[1] = *qword_1ED4CC948;
  v37[1] = &unk_1F0B8F600;
  v36[2] = *qword_1ED4CC950;
  v37[2] = &unk_1F0B8F600;
  -[IDSService setLinkPreferences:](service, "setLinkPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3]);
  self->_idsDevice = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(IDSService *)self->_service devices];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if ([(IDSDevice *)v11 isDefaultPairedDevice])
        {
          self->_idsDevice = v11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v8);
  }

  if (!self->_idsDevice)
  {
    v21 = -12052;
    goto LABEL_20;
  }

  self->_pollfd.fd = -1;
  v27 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v27, &type);
  v13 = v27;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 0xFFFFFFFE;
  }

  if (v15)
  {
    v32 = 136315138;
    v33 = "[NeroMessageCenterSocket activateConnection]";
    v16 = _os_log_send_and_compose_impl();
    LOBYTE(v13) = v27;
  }

  else
  {
    v16 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v16, v16 != &v34, v13, 0, v14);
  v17 = [ids_IDSDeviceConnectionClass alloc];
  idsDevice = self->_idsDevice;
  options = self->_options;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__NeroMessageCenterSocket_activateConnection__block_invoke;
  v25[3] = &unk_1E74A0218;
  v25[4] = self;
  v25[5] = v4;
  self->_deviceConnection = [v17 initSocketWithDevice:idsDevice options:options completionHandler:v25 queue:self->_receivalQueue];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  fd = self->_pollfd.fd;
  if (fd == -1)
  {
    v21 = -12057;
    goto LABEL_20;
  }

  v21 = fcntl(fd, 4, 4);
  if (!v21)
  {
    self->_pollfd.events = 5;
    dispatch_release(v4);
    self->_isActive = 1;
    receivalQueue = self->_receivalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__NeroMessageCenterSocket_activateConnection__block_invoke_167;
    block[3] = &unk_1E749CE18;
    block[4] = self;
    dispatch_async(receivalQueue, block);
    goto LABEL_22;
  }

LABEL_20:
  notify_post("com.apple.fignero.CameraPreviewIDSSocketCreationFailed");
  return v21;
}

intptr_t __45__NeroMessageCenterSocket_activateConnection__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v12, &type);
    v6 = v12[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v12[1] = 136315394;
      v13 = "[NeroMessageCenterSocket activateConnection]_block_invoke";
      v14 = 1024;
      v15 = a2;
      v9 = _os_log_send_and_compose_impl();
      LOBYTE(v6) = v12[0];
    }

    else
    {
      v9 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v9, v9 != &v16, v6, 0, v7);
    *(*(a1 + 32) + 48) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __47__NeroMessageCenterSocket_deactivateConnection__block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    v3 = (i + 88);
    v4 = *(i + 88);
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    *v3 = *v4;
    if (!v5)
    {
      *(*(a1 + 32) + 96) = *(a1 + 32) + 88;
    }

    free(v4[1]);
    free(v4);
  }

  v6 = *(i + 80);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 32) + 80) = 0;
    *(*(a1 + 32) + 72) = 0;
    *(*(a1 + 32) + 64) = 0;
  }
}

- (void)dealloc
{
  [(NeroMessageCenterSocket *)self deactivateConnection];
  pthread_mutex_destroy(&self->_outgoingQueueMutex);
  receivalQueue = self->_receivalQueue;
  if (receivalQueue)
  {
    dispatch_release(receivalQueue);
    self->_receivalQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = NeroMessageCenterSocket;
  [(NeroMessageCenterSocket *)&v4 dealloc];
}

- (void)deactivateConnection
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (self->_isActive)
  {
    self->_isActive = 0;
    self->_pollfd.events = 0;
    OUTLINED_FUNCTION_1();
    v5[1] = 3221225472;
    v5[2] = __47__NeroMessageCenterSocket_deactivateConnection__block_invoke;
    v5[3] = &unk_1E749CE18;
    v5[4] = self;
    dispatch_sync(v3, v5);
    [(IDSDeviceConnection *)self->_deviceConnection close];

    service = self->_service;
    v6[0] = *_MergedGlobals_30;
    v7[0] = &unk_1F0B8F618;
    v6[1] = *qword_1ED4CC950;
    v7[1] = &unk_1F0B8F618;
    v6[2] = *qword_1ED4CC948;
    v7[2] = &unk_1F0B8F618;
    -[IDSService setLinkPreferences:](service, "setLinkPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3]);
  }
}

- (BOOL)sendMemoryBlock:(void *)a3 withLength:(unint64_t)a4
{
  if (self->_isActive)
  {
    v7 = OUTLINED_FUNCTION_7_11();
    if (v7)
    {
      v8 = v7;
      *(v7 + 1) = a3;
      *(v7 + 2) = a4;
      pthread_mutex_lock(&self->_outgoingQueueMutex);
      *v8 = 0;
      *self->_outgoingPackageQueue.stqh_last = v8;
      self->_outgoingPackageQueue.stqh_last = v8;
      pthread_mutex_unlock(&self->_outgoingQueueMutex);
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)sendPackage
{
  pthread_mutex_lock(&self->_outgoingQueueMutex);
  p_outgoingPackageQueue = &self->_outgoingPackageQueue;
  stqh_first = self->_outgoingPackageQueue.stqh_first;
  if (stqh_first)
  {
    outgoingQueueHeadBytesSent = self->_outgoingQueueHeadBytesSent;
    v6 = *(stqh_first + 2);
    v7 = self->_outgoingPackageQueue.stqh_first;
    if (outgoingQueueHeadBytesSent >= v6)
    {
LABEL_6:
      self->_outgoingQueueHeadBytesSent = 0;
      v9 = *v7;
      self->_outgoingPackageQueue.stqh_first = *v7;
      if (!v9)
      {
        self->_outgoingPackageQueue.stqh_last = &p_outgoingPackageQueue->stqh_first;
      }

      free(*(stqh_first + 1));
      free(stqh_first);
    }

    else
    {
      while (1)
      {
        v8 = write(self->_pollfd.fd, (*(stqh_first + 1) + outgoingQueueHeadBytesSent), v6 - outgoingQueueHeadBytesSent);
        if (!v8)
        {
          break;
        }

        outgoingQueueHeadBytesSent = self->_outgoingQueueHeadBytesSent + v8;
        self->_outgoingQueueHeadBytesSent = outgoingQueueHeadBytesSent;
        v6 = *(stqh_first + 2);
        if (outgoingQueueHeadBytesSent >= v6)
        {
          v7 = p_outgoingPackageQueue->stqh_first;
          goto LABEL_6;
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_outgoingQueueMutex);
}

- (void)readPackage
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(self->_connection);
  numBytesReceivedForIncomingPackage = self->_numBytesReceivedForIncomingPackage;
  if (numBytesReceivedForIncomingPackage > 3)
  {
    v7 = 0;
    v6 = 0;
LABEL_7:
    lengthAtOffsetOut = v7;
    dataPointerOut = v6;
    p_incomingPackage = &self->_incomingPackage;
    if (self->_incomingPackage)
    {
      goto LABEL_8;
    }

    if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, self->_incomingPackageSize, *(DerivedStorage + 64), 0, 0, self->_incomingPackageSize, 1u, &self->_incomingPackage) && !CMBlockBufferReplaceDataBytes(&self->_incomingPackageSize, *p_incomingPackage, 0, 4uLL))
    {
      numBytesReceivedForIncomingPackage = self->_numBytesReceivedForIncomingPackage;
LABEL_8:
      while (1)
      {
        incomingPackageSize = self->_incomingPackageSize;
        if (numBytesReceivedForIncomingPackage >= incomingPackageSize)
        {
          break;
        }

        if (CMBlockBufferGetDataPointer(*p_incomingPackage, numBytesReceivedForIncomingPackage, &lengthAtOffsetOut, 0, &dataPointerOut))
        {
          return;
        }

        v11 = read(self->_pollfd.fd, dataPointerOut, lengthAtOffsetOut);
        if (v11 < 1)
        {
          return;
        }

        numBytesReceivedForIncomingPackage = self->_numBytesReceivedForIncomingPackage + v11;
        self->_numBytesReceivedForIncomingPackage = numBytesReceivedForIncomingPackage;
      }

      if (numBytesReceivedForIncomingPackage >= 4 && numBytesReceivedForIncomingPackage == incomingPackageSize)
      {
        ids_didReceivePackage(self->_connection, self->_incomingPackage);
        CFRelease(self->_incomingPackage);
        self->_incomingPackage = 0;
        self->_incomingPackageSize = 0;
        self->_numBytesReceivedForIncomingPackage = 0;
      }
    }
  }

  else
  {
    p_incomingPackageSize = &self->_incomingPackageSize;
    while (1)
    {
      v6 = p_incomingPackageSize + numBytesReceivedForIncomingPackage;
      v7 = 4 - numBytesReceivedForIncomingPackage;
      v8 = read(self->_pollfd.fd, p_incomingPackageSize + numBytesReceivedForIncomingPackage, 4 - numBytesReceivedForIncomingPackage);
      if (v8 < 1)
      {
        break;
      }

      numBytesReceivedForIncomingPackage = self->_numBytesReceivedForIncomingPackage + v8;
      self->_numBytesReceivedForIncomingPackage = numBytesReceivedForIncomingPackage;
      if (numBytesReceivedForIncomingPackage >= 4)
      {
        goto LABEL_7;
      }
    }
  }
}

- (void)mainLoop
{
  v62 = *MEMORY[0x1E69E9840];
  if (self->_isActive)
  {
    while (1)
    {
      v4 = poll(&self->_pollfd, 1u, 15);
      revents = self->_pollfd.revents;
      if ((revents & 8) != 0)
      {
        v14 = OUTLINED_FUNCTION_1_29(v4, v5, v6, v7, v8, v9, v10, v11, v43, v47, block, v52, v53, v54, v55, v56, v57, v58, v59);
        v22 = OUTLINED_FUNCTION_5_14(v14, v15, v16, v17, v18, v19, v20, v21, v44, v48, block, v52, v53, v54, v55, v56, v57, v58, v59);
        if (OUTLINED_FUNCTION_6_2(v22))
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if ((revents & 0x10) != 0)
      {
        v24 = OUTLINED_FUNCTION_1_29(v4, v5, v6, v7, v8, v9, v10, v11, v43, v47, block, v52, v53, v54, v55, v56, v57, v58, v59);
        v32 = OUTLINED_FUNCTION_5_14(v24, v25, v26, v27, v28, v29, v30, v31, v45, v49, block, v52, v53, v54, v55, v56, v57, v58, v59);
        if (OUTLINED_FUNCTION_6_2(v32))
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if ((revents & 0x20) != 0)
      {
        break;
      }

      if ((v4 & 0x80000000) != 0)
      {
        usleep(0x3A98u);
      }

      else
      {
        if (revents)
        {
          [(NeroMessageCenterSocket *)self readPackage];
          revents = self->_pollfd.revents;
        }

        if ((revents & 4) != 0)
        {
          [(NeroMessageCenterSocket *)self sendPackage];
        }
      }

      if (!self->_isActive)
      {
        goto LABEL_12;
      }
    }

    v33 = OUTLINED_FUNCTION_1_29(v4, v5, v6, v7, v8, v9, v10, v11, v43, v47, block, v52, v53, v54, v55, v56, v57, v58, v59);
    v41 = OUTLINED_FUNCTION_5_14(v33, v34, v35, v36, v37, v38, v39, v40, v46, v50, block, v52, v53, v54, v55, v56, v57, v58, v59);
    if (OUTLINED_FUNCTION_6_2(v41))
    {
LABEL_20:
      v60 = 136315138;
      OUTLINED_FUNCTION_0_44();
      v42 = _os_log_send_and_compose_impl();
      v2 = v59;
      goto LABEL_22;
    }

LABEL_21:
    v42 = 0;
LABEL_22:
    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v42, v42 != &v61, v2, 0, v23);
  }

LABEL_12:
  if (self->_isActive)
  {
    dispatch_get_global_queue(0, 0);
    OUTLINED_FUNCTION_0_40();
    v52 = 3221225472;
    v53 = __35__NeroMessageCenterSocket_mainLoop__block_invoke;
    v54 = &unk_1E749CE18;
    v55 = self;
    dispatch_async(v13, &block);
  }
}

@end