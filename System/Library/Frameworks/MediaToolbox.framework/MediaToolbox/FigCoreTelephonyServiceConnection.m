@interface FigCoreTelephonyServiceConnection
+ (id)sharedInstance;
- (FigCoreTelephonyServiceConnection)init;
- (OpaqueFigCoreTelephonyStatus)currentStatus;
- (int)registerListener:(void *)a3 callback:(void *)a4 queue:(id)a5;
- (void)_handleCTNotification:(__CFString *)a3 notificationInfo:(__CFDictionary *)a4;
- (void)_setupConnection;
- (void)_teardownConnection;
- (void)dealloc;
- (void)deregisterListener:(void *)a3;
- (void)processDataStatusBasic:(id)a3;
@end

@implementation FigCoreTelephonyServiceConnection

- (OpaqueFigCoreTelephonyStatus)currentStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2810000000;
  v9 = "";
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FigCoreTelephonyServiceConnection_currentStatus__block_invoke;
  block[3] = &unk_1E7483AF8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(queue, block);
  v3.hasHighSpeedHighPower = *(v7 + 32);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)registerListener:(void *)a3 callback:(void *)a4 queue:(id)a5
{
  if (a3)
  {
    v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004016944D70uLL);
    if (v9)
    {
      v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v9[2] = v10;
      if (v10)
      {
        v9[1] = a3;
        v9[3] = a4;
        dispatch_retain(a5);
        v9[4] = a5;
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__FigCoreTelephonyServiceConnection_registerListener_callback_queue___block_invoke;
        block[3] = &unk_1E7483B48;
        block[4] = self;
        block[5] = v9;
        dispatch_async(queue, block);
        return 0;
      }

      [FigCoreTelephonyServiceConnection registerListener:? callback:? queue:?];
    }

    else
    {
      [FigCoreTelephonyServiceConnection registerListener:? callback:? queue:?];
    }
  }

  else
  {
    [FigCoreTelephonyServiceConnection registerListener:? callback:? queue:?];
    v9 = 0;
  }

  v12 = v15;
  if (v15)
  {
    FigCoreTelephonyMonitorCallbackEntryFree(v9);
  }

  return v12;
}

uint64_t __69__FigCoreTelephonyServiceConnection_registerListener_callback_queue___block_invoke(uint64_t a1)
{
  **(a1 + 40) = 0;
  v2 = *(a1 + 40);
  **(*(a1 + 32) + 64) = v2;
  *(*(a1 + 32) + 64) = v2;
  v3 = *(a1 + 32);
  if (v3[2])
  {
    dispatch_source_cancel(v3[2]);
    dispatch_release(*(*(a1 + 32) + 16));
    *(*(a1 + 32) + 16) = 0;
    v3 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v3 _setupConnection];
}

- (void)deregisterListener:(void *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke;
  v4[3] = &unk_1E7483B48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 56);
  if (!v3)
  {
    goto LABEL_6;
  }

  do
  {
    v5 = *v3;
    if (v3[1] == *(a1 + 40))
    {
      __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke_cold_1(v2, v3);
    }

    v3 = v5;
  }

  while (v5);
  v1 = *v2;
  if (!*(*v2 + 56))
  {
LABEL_6:
    *(*v2 + 16) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v1 + 8));
    v6 = *(*v2 + 16);
    v7 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v8 = *v2;
    v9 = *(*v2 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke_2;
    handler[3] = &unk_1E7482608;
    handler[4] = v8;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(*v2 + 16));
  }
}

void __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    [v2 _teardownConnection];
    v2 = *(a1 + 32);
  }

  v3 = v2[2];
  if (v3)
  {
    dispatch_release(v3);
    *(*(a1 + 32) + 16) = 0;
  }
}

- (void)_handleCTNotification:(__CFString *)a3 notificationInfo:(__CFDictionary *)a4
{
  v6 = getkCTConnectionInvalidatedNotification[0]();
  if (CFEqual(a3, v6))
  {
    [(FigCoreTelephonyServiceConnection *)self _teardownConnection];
    for (i = self->_callbackEntries.stqh_first; i; i = *i)
    {
      FigCoreTelephonyMonitorCallbackEntryDoCallback(i, self->_currentStatus.hasHighSpeedHighPower);
    }

    v8 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__FigCoreTelephonyServiceConnection__handleCTNotification_notificationInfo___block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_after(v8, queue, block);
  }
}

- (void)_setupConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (*(v5 + 56) && !*(v5 + 24))
  {
    v17[5] = v4;
    v17[6] = v3;
    v17[11] = v1;
    v17[12] = v2;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    v10 = *(v8 + 8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke_2;
    v17[3] = &unk_1E74971D8;
    v17[4] = v8;
    *(*(a1 + 32) + 24) = (softLink_CTServerConnectionCreateOnTargetQueue[0])(v9, @"com.apple.coremedia", v10, v17);
    v11 = *(a1 + 32);
    if (!v11[3] || (*(*(a1 + 32) + 32) = [objc_alloc(getCoreTelephonyClientClass[0]()) initWithQueue:*(*(a1 + 32) + 8)], objc_msgSend(*(*(a1 + 32) + 32), "setDelegate:"), v12 = *(*(a1 + 32) + 24), v13 = getkCTConnectionInvalidatedNotification[0](), v14 = (softLink_CTServerConnectionRegisterForNotification[0])(v12, v13), v11 = *(a1 + 32), HIDWORD(v14)))
    {
      [v11 _teardownConnection];
    }

    else
    {
      v15 = v11[4];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke_3;
      v16[3] = &unk_1E7497200;
      v16[4] = v11;
      [v15 getDataStatusBasic:0 completion:v16];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleCTNotification:a2 notificationInfo:a3];

  objc_autoreleasePoolPop(v6);
}

void __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__FigCoreTelephonyServiceConnection__setupConnection__block_invoke_4;
  v4[3] = &unk_1E7483A30;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

- (void)_teardownConnection
{
  v3 = objc_autoreleasePoolPush();
  ctClient = self->_ctClient;
  if (ctClient)
  {
    [(CoreTelephonyClient *)ctClient setDelegate:0];

    self->_ctClient = 0;
  }

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    (softLink_CTServerConnectionUnregisterForAllNotifications[0])(ctServerConnection);
    CFRelease(self->_ctServerConnection);
    self->_ctServerConnection = 0;
  }

  self->_ctDataStatus = 0;
  self->_currentStatus.hasHighSpeedHighPower = 0;

  objc_autoreleasePoolPop(v3);
}

+ (id)sharedInstance
{
  if (sharedInstance_sFigCoreTelephonyServiceConnectionOnceToken != -1)
  {
    +[FigCoreTelephonyServiceConnection sharedInstance];
  }

  return sharedInstance_sFigCoreTelephonyServiceConnection;
}

FigCoreTelephonyServiceConnection *__51__FigCoreTelephonyServiceConnection_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigCoreTelephonyServiceConnection);
  sharedInstance_sFigCoreTelephonyServiceConnection = result;
  return result;
}

- (void)processDataStatusBasic:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__FigCoreTelephonyServiceConnection_processDataStatusBasic___block_invoke;
  v4[3] = &unk_1E7483A30;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(queue, v4);
}

void __60__FigCoreTelephonyServiceConnection_processDataStatusBasic___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) newRadioCoverage];
  v4 = [*(*(a1 + 40) + 40) newRadioCoverage];
  v5 = *(a1 + 40);
  if (v3 != v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      LOBYTE(v6) = [v6 newRadioCoverage];
    }

    *(v5 + 48) = v6;
    v5 = *(a1 + 40);
    v7 = *(v5 + 56);
    if (v7)
    {
      do
      {
        FigCoreTelephonyMonitorCallbackEntryDoCallback(v7, *(*(a1 + 40) + 48));
        v7 = *v7;
      }

      while (v7);
      v5 = *(a1 + 40);
    }
  }

  *(*(a1 + 40) + 40) = *(a1 + 32);

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  do
  {
    v6 = a3;
    a3 = *a3;
    v7 = *a2;
    if (*a2 == v6)
    {
      v8 = *v7;
      *a2 = v8;
      v9 = a2;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      do
      {
        v9 = v7;
        v7 = *v7;
      }

      while (v7 != v6);
      v10 = *v7;
      *v9 = v10;
      if (!v10)
      {
LABEL_6:
        *(a1 + 64) = v9;
      }
    }

    FigCoreTelephonyMonitorCallbackEntryFree(v6);
  }

  while (a3);
}

- (FigCoreTelephonyServiceConnection)init
{
  v6.receiver = self;
  v6.super_class = FigCoreTelephonyServiceConnection;
  v2 = [(FigCoreTelephonyServiceConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_allocator = *MEMORY[0x1E695E480];
    v4 = FigDispatchQueueCreateWithPriority();
    v3->_queue = v4;
    if (v4)
    {
      v3->_callbackEntries.stqh_first = 0;
      v3->_callbackEntries.stqh_last = &v3->_callbackEntries.stqh_first;
      v3->_currentStatus.hasHighSpeedHighPower = 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (uint64_t)registerListener:(_DWORD *)a1 callback:queue:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)registerListener:(_DWORD *)a1 callback:queue:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)registerListener:(_DWORD *)a1 callback:queue:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __56__FigCoreTelephonyServiceConnection_deregisterListener___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = *(*a1 + 56);
  if (v2 == a2)
  {
    v3 = *v2;
    *(*a1 + 56) = v3;
    if (!v3)
    {
      v4 = *a1;
      v5 = (*a1 + 56);
LABEL_7:
      *(v4 + 64) = v5;
    }
  }

  else
  {
    do
    {
      v5 = v2;
      v2 = *v2;
    }

    while (v2 != a2);
    v6 = *v2;
    *v5 = v6;
    if (!v6)
    {
      v4 = *a1;
      goto LABEL_7;
    }
  }

  FigCoreTelephonyMonitorCallbackEntryFree(a2);
}

@end