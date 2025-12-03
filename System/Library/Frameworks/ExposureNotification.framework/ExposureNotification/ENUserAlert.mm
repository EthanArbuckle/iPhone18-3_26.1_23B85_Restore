@interface ENUserAlert
- (ENUserAlert)init;
- (void)_activateWithCompletionHandler:(id)handler;
- (void)_autoInvalidate;
- (void)_invalidated;
- (void)_responseCallback:(__CFUserNotification *)callback responseFlags:(unint64_t)flags;
- (void)activateWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ENUserAlert

- (ENUserAlert)init
{
  v6.receiver = self;
  v6.super_class = ENUserAlert;
  v2 = [(ENUserAlert *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    v2 = [ENExposureDetectionSession dealloc];
    [(ENUserAlert *)v2 activateWithCompletionHandler:v3, v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ENUserAlert;
    [(ENUserAlert *)&v5 dealloc];
  }
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ENUserAlert_activateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__ENUserAlert_activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v7 = ENErrorF(10);
    if (gLogCategory__ENUserAlert <= 90 && (gLogCategory__ENUserAlert != -1 || _LogCategory_Initialize()))
    {
      __45__ENUserAlert_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _autoInvalidate];
LABEL_11:

    return;
  }

  if (*(v2 + 9) == 1)
  {
    v7 = ENErrorF(10);
    if (gLogCategory__ENUserAlert <= 90 && (gLogCategory__ENUserAlert != -1 || _LogCategory_Initialize()))
    {
      __45__ENUserAlert_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  if (gLogCategory_ENUserAlert <= 30)
  {
    if (gLogCategory_ENUserAlert != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
    {
      v6 = *(v2 + 104);
      LogPrintF_safe();
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 8) = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  [v4 _activateWithCompletionHandler:v5];
}

- (void)_activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __46__ENUserAlert__activateWithCompletionHandler___block_invoke;
  v39[3] = &unk_278A4B888;
  v41 = &v42;
  v5 = handlerCopy;
  v39[4] = self;
  v40 = v5;
  v6 = MEMORY[0x2383EE560](v39);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = self->_titleKey;
  v9 = v8;
  if (v8)
  {
    v10 = ENLocalizedString(v8);
    v11 = self->_titleParameter;
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10, v11];

      v10 = v12;
    }

    v13 = *MEMORY[0x277CBF188];

    [v7 setObject:v10 forKeyedSubscript:v13];
  }

  v14 = self->_subTitleKey;
  v15 = v14;
  if (v14)
  {
    v16 = ENLocalizedString(v14);
    v17 = self->_subTitleParameter;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16, -[NSObject unsignedIntValue](v17, "unsignedIntValue")];
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16, v17];
      }

      v19 = v18;

      v16 = v19;
    }

    v20 = *MEMORY[0x277CBF198];

    [v7 setObject:v16 forKeyedSubscript:v20];
  }

  v21 = self->_defaultButtonTitleKey;
  v22 = v21;
  if (v21)
  {
    v23 = ENLocalizedString(v21);
    [v7 setObject:v23 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  v24 = self->_alternativeButtonTitleKey;
  v25 = v24;
  if (v24)
  {
    v26 = ENLocalizedString(v24);
    [v7 setObject:v26 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  if (self->_showOnLockScreen)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67348]];
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67328]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D672A0]];
  }

  error = 0;
  v27 = CFUserNotificationCreate(0, self->_timeoutSeconds, 2uLL, &error, v7);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_24;
  }

  self->_userNotification = v27;
  pthread_mutex_lock(&gENUserAlertMutex);
  v29 = gENUserAlertMap;
  if (!gENUserAlertMap)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = gENUserAlertMap;
    gENUserAlertMap = v30;

    v29 = gENUserAlertMap;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithLong:v28];
  [v29 setObject:self forKeyedSubscript:v32];

  pthread_mutex_unlock(&gENUserAlertMutex);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v28, _responseCallback, 0);
  v34 = RunLoopSource;
  if (RunLoopSource)
  {
    self->_userRLS = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v34, *MEMORY[0x277CBF058]);
    (*(v5 + 2))(v5, 0);
  }

  else
  {
LABEL_24:
    v36 = ENErrorF(11);
    v37 = v43[5];
    v43[5] = v36;
  }

  v6[2](v6);
  _Block_object_dispose(&v42, 8);
}

uint64_t __46__ENUserAlert__activateWithCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory__ENUserAlert <= 90)
  {
    if (gLogCategory__ENUserAlert == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(*(v2 + 8) + 40);
    }

    v8 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  (*(a1[5] + 16))(a1[5]);
  v6 = a1[4];

  return [v6 _autoInvalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ENUserAlert_invalidate__block_invoke;
  block[3] = &unk_278A4B058;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__ENUserAlert_invalidate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENUserAlert <= 30)
  {
    if (gLogCategory_ENUserAlert != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __25__ENUserAlert_invalidate__block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 9) & 1) == 0)
  {
    *(v2 + 9) = 1;
    v3 = *(v1 + 32);

    return [v3 _autoInvalidate];
  }

  return result;
}

- (void)_autoInvalidate
{
  if (!self->_invalidateCalled && gLogCategory_ENUserAlert <= 30 && (gLogCategory_ENUserAlert != -1 || _LogCategory_Initialize()))
  {
    [ENUserAlert _autoInvalidate];
  }

  self->_invalidateCalled = 1;
  userRLS = self->_userRLS;
  if (userRLS)
  {
    v4 = *MEMORY[0x277CBF058];
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, userRLS, v4);
    CFRelease(userRLS);
    self->_userRLS = 0;
  }

  userNotification = self->_userNotification;
  if (userNotification)
  {
    pthread_mutex_lock(&gENUserAlertMutex);
    v7 = gENUserAlertMap;
    v8 = [MEMORY[0x277CCABB0] numberWithLong:userNotification];
    [v7 setObject:0 forKeyedSubscript:v8];

    pthread_mutex_unlock(&gENUserAlertMutex);
    if (!self->_dismissed)
    {
      CFUserNotificationCancel(userNotification);
    }

    CFRelease(userNotification);
    self->_userNotification = 0;
  }

  [(ENUserAlert *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_userNotification)
  {
    v6 = MEMORY[0x2383EE560](self->_actionHandler, a2);
    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    if (v6)
    {
      v6[2](v6, 11);
    }

    v4 = MEMORY[0x2383EE560](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v4)
    {
      v4[2](v4);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_ENUserAlert <= 30 && (gLogCategory_ENUserAlert != -1 || _LogCategory_Initialize()))
    {
      [ENUserAlert _invalidated];
    }
  }
}

- (void)_responseCallback:(__CFUserNotification *)callback responseFlags:(unint64_t)flags
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ENUserAlert__responseCallback_responseFlags___block_invoke;
  block[3] = &unk_278A4BCA8;
  block[4] = self;
  block[5] = callback;
  block[6] = flags;
  dispatch_async(dispatchQueue, block);
}

void __47__ENUserAlert__responseCallback_responseFlags___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == *(*(a1 + 32) + 16))
  {
    if (gLogCategory_ENUserAlert <= 30 && (gLogCategory_ENUserAlert != -1 || _LogCategory_Initialize()))
    {
      __47__ENUserAlert__responseCallback_responseFlags___block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 11) = 1;
    v3 = qword_2382C89A0[*(a1 + 48) & 3];
    v6 = MEMORY[0x2383EE560](*(*(a1 + 32) + 112));
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;

    if (v6)
    {
      v6[2](v6, v3);
    }

    [*(a1 + 32) _autoInvalidate];
  }
}

void __45__ENUserAlert_activateWithCompletionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

@end