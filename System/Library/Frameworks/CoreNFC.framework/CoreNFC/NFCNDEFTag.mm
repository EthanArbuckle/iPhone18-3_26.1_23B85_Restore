@interface NFCNDEFTag
- (BOOL)_connectWithError:(id *)error;
- (BOOL)_disconnectWithError:(id *)error;
- (BOOL)isAvailable;
- (BOOL)isMatchingSession:(id)session outError:(id *)error;
- (NFCNDEFTag)initWithCoder:(id)coder;
- (NFCNDEFTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config;
- (id)_getInternalReaderSession;
- (id)_updateNdefStatusWithSession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_connectWithCompletionHandler:(id)handler;
- (void)_setSession:(id)session;
- (void)dispatchBlockOnDelegateQueueAsync:(id)async;
- (void)encodeWithCoder:(id)coder;
- (void)queryNDEFStatusWithCompletionHandler:(id)handler;
- (void)readNDEFWithCompletionHandler:(id)handler;
- (void)writeLockWithCompletionHandler:(id)handler;
- (void)writeNDEF:(id)f completionHandler:(id)handler;
@end

@implementation NFCNDEFTag

- (NFCNDEFTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config
{
  sessionCopy = session;
  tagCopy = tag;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCNDEFTag.m" lineNumber:28 description:@"Nil session"];
  }

  sessionQueue = [sessionCopy sessionQueue];

  if (!sessionQueue)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NFCNDEFTag.m" lineNumber:29 description:@"Nil session queue"];
  }

  hardwareManager = [sessionCopy hardwareManager];

  if (!hardwareManager)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NFCNDEFTag.m" lineNumber:30 description:@"Nil hardwareManager"];
  }

  v23.receiver = self;
  v23.super_class = NFCNDEFTag;
  v12 = [(NFCNDEFTag *)&v23 init];
  if (v12)
  {
    sessionId = [sessionCopy sessionId];
    sessionKey = v12->_sessionKey;
    v12->_sessionKey = sessionId;

    objc_storeStrong(&v12->_tag, tag);
    sessionQueue2 = [sessionCopy sessionQueue];
    delegateQueue = v12->_delegateQueue;
    v12->_delegateQueue = sessionQueue2;

    hardwareManager2 = [sessionCopy hardwareManager];
    hardwareManager = v12->_hardwareManager;
    v12->_hardwareManager = hardwareManager2;
  }

  return v12;
}

- (NFCNDEFTag)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = NFCNDEFTag;
  v6 = [(NFCNDEFTag *)&v31 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v6->_tag;
    v6->_tag = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionKey"];
    sessionKey = v6->_sessionKey;
    v6->_sessionKey = v9;

    if (!v6->_sessionKey)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"NFCNDEFTag.m" lineNumber:64 description:@"Missing session key"];
    }

    v11 = +[NFCHardwareManager sharedHardwareManager];
    hardwareManager = v6->_hardwareManager;
    v6->_hardwareManager = v11;

    v13 = [(NFCHardwareManager *)v6->_hardwareManager getReaderSessionWithKey:v6->_sessionKey];
    v14 = v13;
    if (v13)
    {
      sessionQueue = [v13 sessionQueue];
      delegateQueue = v6->_delegateQueue;
      v6->_delegateQueue = sessionQueue;
    }

    else
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v18 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName(a2);
        v22 = 45;
        if (isMetaClass)
        {
          v22 = 43;
        }

        v18(3, "%c[%{public}s %{public}s]:%i Session has been invalidated", v22, ClassName, Name, 69);
      }

      delegateQueue = NFSharedLogGetLogger();
      if (os_log_type_enabled(delegateQueue, OS_LOG_TYPE_ERROR))
      {
        v23 = object_getClass(v6);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        v25 = object_getClassName(v6);
        v26 = sel_getName(a2);
        *buf = 67109890;
        v33 = v24;
        v34 = 2082;
        v35 = v25;
        v36 = 2082;
        v37 = v26;
        v38 = 1024;
        v39 = 69;
        _os_log_impl(&dword_23728C000, delegateQueue, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has been invalidated", buf, 0x22u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  tag = self->_tag;
  coderCopy = coder;
  [coderCopy encodeObject:tag forKey:@"tag"];
  [coderCopy encodeObject:self->_sessionKey forKey:@"sessionKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->_delegateQueue)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCNDEFTag.m" lineNumber:86 description:@"Nil delegateQueue"];
  }

  if (!self->_hardwareManager)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NFCNDEFTag.m" lineNumber:87 description:@"Nil hardwareManager"];
  }

  v5 = objc_alloc_init(objc_opt_class());
  [v5 _setTag:self->_tag];
  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  [v5 _setSession:_getInternalReaderSession];

  [v5 _setDelegateQueue:self->_delegateQueue];
  return v5;
}

- (BOOL)isAvailable
{
  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  currentTag = [_getInternalReaderSession currentTag];
  if ([currentTag isEqualToNFTag:self->_tag])
  {
    v5 = [_getInternalReaderSession checkPresenceWithError:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)queryNDEFStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCNDEFTag queryNDEFStatusWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372B87E8;
  v9[3] = &unk_278A29F28;
  selfCopy = self;
  v12 = handlerCopy;
  v10 = _getInternalReaderSession;
  v7 = handlerCopy;
  v8 = _getInternalReaderSession;
  [(NFCNDEFTag *)self dispatchBlockOnDelegateQueueAsync:v9];
}

- (void)readNDEFWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCNDEFTag readNDEFWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v7 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B8AC0;
    v12[3] = &unk_278A29DC0;
    v8 = &v13;
    v9 = _getInternalReaderSession;
    v13 = v9;
    v14 = handlerCopy;
    v10 = handlerCopy;
    [v9 submitBlockOnSessionQueue:v12];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372B8A54;
    v15[3] = &unk_278A29C38;
    v8 = &v16;
    v16 = handlerCopy;
    v11 = handlerCopy;
    [(NFCNDEFTag *)self dispatchBlockOnDelegateQueueAsync:v15];
  }
}

- (void)writeLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCNDEFTag writeLockWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v7 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B8D94;
    v12[3] = &unk_278A29DE8;
    v8 = v13;
    v9 = _getInternalReaderSession;
    v13[0] = v9;
    v13[1] = self;
    v14 = handlerCopy;
    v10 = handlerCopy;
    [v9 submitBlockOnSessionQueue:v12];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372B8D2C;
    v15[3] = &unk_278A29C38;
    v8 = &v16;
    v16 = handlerCopy;
    v11 = handlerCopy;
    [(NFCNDEFTag *)self dispatchBlockOnDelegateQueueAsync:v15];
  }
}

- (void)writeNDEF:(id)f completionHandler:(id)handler
{
  fCopy = f;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_23728C000, "NFCNDEFTag writeNDEF:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v10 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372B9068;
    v15[3] = &unk_278A29DE8;
    v11 = &v16;
    v12 = _getInternalReaderSession;
    v16 = v12;
    v17 = fCopy;
    v18 = handlerCopy;
    v13 = handlerCopy;
    [v12 submitBlockOnSessionQueue:v15];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2372B9000;
    v19[3] = &unk_278A29C38;
    v11 = &v20;
    v20 = handlerCopy;
    v14 = handlerCopy;
    [(NFCNDEFTag *)self dispatchBlockOnDelegateQueueAsync:v19];
  }
}

- (void)_setSession:(id)session
{
  sessionId = [session sessionId];
  sessionKey = self->_sessionKey;
  self->_sessionKey = sessionId;

  MEMORY[0x2821F96F8]();
}

- (id)_updateNdefStatusWithSession:(id)session
{
  v8 = 0;
  v9 = 0;
  v4 = [session ndefStatus:&v8 maxMessageLength:&v9];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (v8 <= 4)
    {
      [(NFTag *)self->_tag _setNDEFAvailability:?];
    }

    [(NFTag *)self->_tag _setNDEFContainerSize:v9];
  }

  return v5;
}

- (id)_getInternalReaderSession
{
  hardwareManager = [(NFCNDEFTag *)self hardwareManager];
  v4 = [hardwareManager getReaderSessionWithKey:self->_sessionKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_connectWithError:(id *)error
{
  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v6 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    currentTag = [_getInternalReaderSession currentTag];
    v8 = [currentTag isEqualToNFTag:self->_tag];

    v9 = [v6 connectTag:self->_tag error:error];
    v10 = v9;
    if ((v8 & 1) == 0 && v9)
    {
      v11 = [(NFCNDEFTag *)self _updateNdefStatusWithSession:v6];
      if (error)
      {
        v11 = v11;
        *error = v11;
      }
    }
  }

  else if (error)
  {
    [NFCError errorWithCode:103];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v6 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    currentTag = [_getInternalReaderSession currentTag];
    v8 = [currentTag isEqualToNFTag:self->_tag] ^ 1;

    tag = self->_tag;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2372B9550;
    v13[3] = &unk_278A29F50;
    v16 = v8;
    v13[4] = self;
    v14 = v6;
    v15 = handlerCopy;
    v10 = handlerCopy;
    [v14 connectTag:tag completionHandler:v13];

    v11 = v14;
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2372B94E8;
    v17[3] = &unk_278A29C38;
    v18 = handlerCopy;
    v12 = handlerCopy;
    [(NFCNDEFTag *)self dispatchBlockOnDelegateQueueAsync:v17];
    v11 = v18;
  }
}

- (BOOL)_disconnectWithError:(id *)error
{
  _getInternalReaderSession = [(NFCNDEFTag *)self _getInternalReaderSession];
  v5 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v6 = [_getInternalReaderSession disconnectTagWithError:error];
  }

  else if (error)
  {
    [NFCError errorWithCode:103];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMatchingSession:(id)session outError:(id *)error
{
  sessionCopy = session;
  sessionId = [sessionCopy sessionId];

  if (!sessionId)
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sessionKey = self->_sessionKey;
  sessionId2 = [sessionCopy sessionId];
  v10 = [(NSNumber *)sessionKey isEqualToNumber:sessionId2];

  if (error && !v10)
  {
LABEL_6:
    [NFCError errorWithCode:103];
    *error = v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)dispatchBlockOnDelegateQueueAsync:(id)async
{
  v27 = *MEMORY[0x277D85DE8];
  delegateQueue = self->_delegateQueue;
  asyncCopy = async;
  if (delegateQueue)
  {
    v7 = delegateQueue;
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Session queue is not available; dispatching on main queue", v13, ClassName, Name, 330);
    }

    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v20 = v16;
      v21 = 2082;
      v22 = object_getClassName(self);
      v23 = 2082;
      v24 = sel_getName(a2);
      v25 = 1024;
      v26 = 330;
      _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session queue is not available; dispatching on main queue", buf, 0x22u);
    }

    v7 = MEMORY[0x277D85CD0];
  }

  dispatch_async(v7, asyncCopy);

  v17 = *MEMORY[0x277D85DE8];
}

@end