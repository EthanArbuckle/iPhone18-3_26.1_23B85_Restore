@interface NFCTag
- (BOOL)_connectWithSession:(id)session outError:(id *)error;
- (BOOL)_disconnectWithError:(id *)error;
- (BOOL)_transceiveWithSession:(id)session sendData:(id)data receivedData:(id *)receivedData error:(id *)error;
- (BOOL)isAvailable;
- (BOOL)isEqualToNFTag:(id)tag;
- (BOOL)isMatchingSession:(id)session outError:(id *)error;
- (BOOL)isNDEFFormatted;
- (BOOL)isReadOnly;
- (BOOL)proprietaryApplicationDataCoding;
- (NFCTag)initWithCoder:(id)coder;
- (NFCTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config;
- (id)_getInternalReaderSession;
- (id)applicationData;
- (id)asNFCFeliCaTag;
- (id)asNFCISO15693Tag;
- (id)asNFCISO7816Tag;
- (id)asNFCMiFareTag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)historicalBytes;
- (id)identifier;
- (id)selectedAID;
- (id)systemCode;
- (unint64_t)capacity;
- (unint64_t)type;
- (void)_connectWithCompletionHandler:(id)handler;
- (void)_sendAPDU:(id)u completionHandler:(id)handler;
- (void)_setSession:(id)session;
- (void)_setTag:(id)tag;
- (void)_transceiveWithData:(id)data completionHandler:(id)handler;
- (void)dispatchOnDelegateQueueAsync:(id)async;
- (void)encodeWithCoder:(id)coder;
- (void)queryNDEFStatusWithCompletionHandler:(id)handler;
- (void)readNDEFWithCompletionHandler:(id)handler;
- (void)writeLockWithCompletionHandler:(id)handler;
- (void)writeNDEF:(id)f completionHandler:(id)handler;
@end

@implementation NFCTag

- (NFCTag)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = NFCTag;
  v6 = [(NFCTag *)&v31 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v6->_tag;
    v6->_tag = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionKey"];
    sessionKey = v6->_sessionKey;
    v6->_sessionKey = v9;

    v6->_configuration = [coderCopy decodeIntegerForKey:@"configuration"];
    if (!v6->_sessionKey)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"NFCTag.m" lineNumber:67 description:@"Missing session key"];
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

        v18(3, "%c[%{public}s %{public}s]:%i Session has been invalidated", v22, ClassName, Name, 72);
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
        v39 = 72;
        _os_log_impl(&dword_23728C000, delegateQueue, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has been invalidated", buf, 0x22u);
      }
    }

    v6->_lock._os_unfair_lock_opaque = 0;
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
  [coderCopy encodeInteger:self->_configuration forKey:@"configuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->_hardwareManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCTag.m" lineNumber:92 description:@"Nil hardwareManager"];
  }

  v4 = objc_alloc(objc_opt_class());
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  v6 = [v4 initWithSession:_getInternalReaderSession tag:self->_tag startupConfig:self->_configuration];

  return v6;
}

- (BOOL)isReadOnly
{
  v48 = *MEMORY[0x277D85DE8];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2372B34DC;
  v37[3] = &unk_278A29D20;
  v37[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v4 = sub_2372B34DC(v37);
  os_unfair_lock_unlock(&self->_lock);
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  currentTag = [_getInternalReaderSession currentTag];
  v7 = currentTag;
  if (_getInternalReaderSession && ([currentTag isEqualToNFTag:v4] & 1) != 0)
  {
    v36 = 0;
    v8 = [_getInternalReaderSession ndefStatus:&v36 maxMessageLength:0];
    if (v8)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(4, "%c[%{public}s %{public}s]:%i Error=%@", v13, ClassName, Name, 122, v8);
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

        v17 = object_getClassName(self);
        v18 = sel_getName(a2);
        *buf = 67110146;
        v39 = v16;
        v40 = 2082;
        v41 = v17;
        v42 = 2082;
        v43 = v18;
        v44 = 1024;
        v45 = 122;
        v46 = 2112;
        v47 = v8;
        _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error=%@", buf, 0x2Cu);
      }

      v19 = 0;
    }

    else
    {
      v19 = v36 == 3;
    }
  }

  else
  {
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v35 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(4, "%c[%{public}s %{public}s]:%i Tag is not connected", v25, v24, v35, 115);
    }

    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67109890;
      v39 = v28;
      v40 = 2082;
      v41 = v29;
      v42 = 2082;
      v43 = v30;
      v44 = 1024;
      v45 = 115;
      _os_log_impl(&dword_23728C000, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not connected", buf, 0x22u);
    }

    v19 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)isNDEFFormatted
{
  v48 = *MEMORY[0x277D85DE8];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2372B386C;
  v37[3] = &unk_278A29D20;
  v37[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v4 = sub_2372B386C(v37);
  os_unfair_lock_unlock(&self->_lock);
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  currentTag = [_getInternalReaderSession currentTag];
  v7 = currentTag;
  if (_getInternalReaderSession && ([currentTag isEqualToNFTag:v4] & 1) != 0)
  {
    v36 = 0;
    v8 = [_getInternalReaderSession ndefStatus:&v36 maxMessageLength:0];
    if (v8)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(4, "%c[%{public}s %{public}s]:%i Error=%@", v13, ClassName, Name, 146, v8);
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

        v17 = object_getClassName(self);
        v18 = sel_getName(a2);
        *buf = 67110146;
        v39 = v16;
        v40 = 2082;
        v41 = v17;
        v42 = 2082;
        v43 = v18;
        v44 = 1024;
        v45 = 146;
        v46 = 2112;
        v47 = v8;
        _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error=%@", buf, 0x2Cu);
      }

      v19 = 0;
    }

    else
    {
      v19 = v36 > 1;
    }
  }

  else
  {
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v35 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(4, "%c[%{public}s %{public}s]:%i Tag is not connected", v25, v24, v35, 139);
    }

    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67109890;
      v39 = v28;
      v40 = 2082;
      v41 = v29;
      v42 = 2082;
      v43 = v30;
      v44 = 1024;
      v45 = 139;
      _os_log_impl(&dword_23728C000, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not connected", buf, 0x22u);
    }

    v19 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)capacity
{
  v48 = *MEMORY[0x277D85DE8];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2372B3BF4;
  v37[3] = &unk_278A29D20;
  v37[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v4 = sub_2372B3BF4(v37);
  os_unfair_lock_unlock(&self->_lock);
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  currentTag = [_getInternalReaderSession currentTag];
  v7 = currentTag;
  if (_getInternalReaderSession && ([currentTag isEqualToNFTag:v4] & 1) != 0)
  {
    v36 = 0;
    v8 = [_getInternalReaderSession ndefStatus:0 maxMessageLength:&v36];
    if (v8)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(4, "%c[%{public}s %{public}s]:%i Error=%@", v13, ClassName, Name, 174, v8);
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

        v17 = object_getClassName(self);
        v18 = sel_getName(a2);
        *buf = 67110146;
        v39 = v16;
        v40 = 2082;
        v41 = v17;
        v42 = 2082;
        v43 = v18;
        v44 = 1024;
        v45 = 174;
        v46 = 2112;
        v47 = v8;
        _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error=%@", buf, 0x2Cu);
      }

      v19 = 0;
    }

    else
    {
      v19 = v36;
    }
  }

  else
  {
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v35 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(4, "%c[%{public}s %{public}s]:%i Tag is not connected", v25, v24, v35, 167);
    }

    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67109890;
      v39 = v28;
      v40 = 2082;
      v41 = v29;
      v42 = 2082;
      v43 = v30;
      v44 = 1024;
      v45 = 167;
      _os_log_impl(&dword_23728C000, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not connected", buf, 0x22u);
    }

    v19 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)queryNDEFStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _os_activity_create(&dword_23728C000, "NFCNDEFTag queryNDEFStatusWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  v8 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B3DDC;
    v12[3] = &unk_278A29D98;
    v12[4] = self;
    v14 = handlerCopy;
    v15 = a2;
    v13 = _getInternalReaderSession;
    v9 = handlerCopy;
    [v13 submitBlockOnSessionQueue:v12];

    v10 = v13;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2372B3D6C;
    v16[3] = &unk_278A29C38;
    v17 = handlerCopy;
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v16];
    v10 = v17;
  }
}

- (void)readNDEFWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCNDEFTag readNDEFWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  v7 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B450C;
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
    v15[2] = sub_2372B44A0;
    v15[3] = &unk_278A29C38;
    v8 = &v16;
    v16 = handlerCopy;
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v15];
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

  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  v7 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B47F4;
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
    v15[2] = sub_2372B478C;
    v15[3] = &unk_278A29C38;
    v8 = &v16;
    v16 = handlerCopy;
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v15];
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

  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  v10 = _getInternalReaderSession;
  if (_getInternalReaderSession)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372B4AD4;
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
    v19[2] = sub_2372B4A6C;
    v19[3] = &unk_278A29C38;
    v11 = &v20;
    v20 = handlerCopy;
    v14 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v19];
  }
}

- (unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372B4CAC;
  v6[3] = &unk_278A29E10;
  v6[4] = self;
  v6[5] = &v7;
  os_unfair_lock_lock(&self->_lock);
  sub_2372B4CAC(v6);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v8[3];
  if (v3 > 0x10)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_2372D51B8[v3];
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isAvailable
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372B4E04;
  v8[3] = &unk_278A29D20;
  v8[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B4E04(v8);
  os_unfair_lock_unlock(&self->_lock);
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  currentTag = [_getInternalReaderSession currentTag];
  if ([currentTag isEqualToNFTag:v3])
  {
LABEL_2:
    v6 = [_getInternalReaderSession checkPresenceWithError:0];
    goto LABEL_3;
  }

  v6 = 0;
  if (!currentTag && (self->_configuration & 1) != 0)
  {
    if (![(NFCTag *)self _connectWithSession:_getInternalReaderSession outError:0])
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v6;
}

- (id)asNFCISO15693Tag
{
  if ([(NFCTag *)self type]== 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)asNFCISO7816Tag
{
  if ([(NFCTag *)self type]== 3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)asNFCMiFareTag
{
  if ([(NFCTag *)self type]== 4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)asNFCFeliCaTag
{
  if ([(NFCTag *)self type]== 2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NFCTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config
{
  sessionCopy = session;
  tagCopy = tag;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCTag.m" lineNumber:418 description:@"Nil session"];
  }

  sessionQueue = [sessionCopy sessionQueue];

  if (!sessionQueue)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NFCTag.m" lineNumber:419 description:@"Nil session queue"];
  }

  hardwareManager = [sessionCopy hardwareManager];

  if (!hardwareManager)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NFCTag.m" lineNumber:420 description:@"Nil hardwareManager"];
  }

  v24.receiver = self;
  v24.super_class = NFCTag;
  v13 = [(NFCTag *)&v24 init];
  if (v13)
  {
    sessionId = [sessionCopy sessionId];
    sessionKey = v13->_sessionKey;
    v13->_sessionKey = sessionId;

    objc_storeStrong(&v13->_tag, tag);
    v13->_configuration = config;
    sessionQueue2 = [sessionCopy sessionQueue];
    delegateQueue = v13->_delegateQueue;
    v13->_delegateQueue = sessionQueue2;

    hardwareManager2 = [sessionCopy hardwareManager];
    hardwareManager = v13->_hardwareManager;
    v13->_hardwareManager = hardwareManager2;

    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372B51A8;
  v5[3] = &unk_278A29E38;
  v5[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B51A8(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)selectedAID
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372B52D0;
  v5[3] = &unk_278A29E38;
  v5[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B52D0(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)systemCode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372B53F4;
  v5[3] = &unk_278A29E38;
  v5[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B53F4(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)historicalBytes
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372B54F0;
  v5[3] = &unk_278A29E38;
  v5[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B54F0(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)applicationData
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372B55EC;
  v5[3] = &unk_278A29E38;
  v5[4] = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2372B55EC(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)proprietaryApplicationDataCoding
{
  selfCopy = self;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2372B56FC;
  v4[3] = &unk_278A29E10;
  v4[4] = self;
  v4[5] = &v5;
  os_unfair_lock_lock(&self->_lock);
  sub_2372B56FC(v4);
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

- (void)_setTag:(id)tag
{
  tagCopy = tag;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372B5818;
  v6[3] = &unk_278A29E60;
  v6[4] = self;
  v7 = tagCopy;
  v5 = tagCopy;
  os_unfair_lock_lock(&self->_lock);
  sub_2372B5818(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setSession:(id)session
{
  sessionId = [session sessionId];
  sessionKey = self->_sessionKey;
  self->_sessionKey = sessionId;

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqualToNFTag:(id)tag
{
  tagCopy = tag;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372B5954;
  v7[3] = &unk_278A29E88;
  v8 = tagCopy;
  v9 = &v10;
  v7[4] = self;
  v5 = tagCopy;
  os_unfair_lock_lock(&self->_lock);
  sub_2372B5954(v7);
  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (id)_getInternalReaderSession
{
  hardwareManager = [(NFCTag *)self hardwareManager];
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

- (void)dispatchOnDelegateQueueAsync:(id)async
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

      v9(3, "%c[%{public}s %{public}s]:%i Session queue is not available; dispatching on main queue", v13, ClassName, Name, 543);
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
      v26 = 543;
      _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session queue is not available; dispatching on main queue", buf, 0x22u);
    }

    v7 = MEMORY[0x277D85CD0];
  }

  dispatch_async(v7, asyncCopy);

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connectWithSession:(id)session outError:(id *)error
{
  sessionCopy = session;
  v7 = sessionCopy;
  if (sessionCopy)
  {
    v8 = [sessionCopy connectTag:self->_tag error:error];
  }

  else if (error)
  {
    [NFCError errorWithCode:103];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  if (_getInternalReaderSession)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2372B5E38;
    v12[3] = &unk_278A29D20;
    v12[4] = self;
    os_unfair_lock_lock(&self->_lock);
    v6 = sub_2372B5E38(v12);
    os_unfair_lock_unlock(&self->_lock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2372B5E44;
    v9[3] = &unk_278A29EB0;
    v9[4] = self;
    v10 = _getInternalReaderSession;
    v11 = handlerCopy;
    v7 = handlerCopy;
    [v10 connectTag:v6 completionHandler:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2372B5DD0;
    v13[3] = &unk_278A29C38;
    v14 = handlerCopy;
    v8 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v13];
  }
}

- (BOOL)_disconnectWithError:(id *)error
{
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
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

- (void)_transceiveWithData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
  if (_getInternalReaderSession)
  {
    if (-[NFCTag type](self, "type") != 1 || [dataCopy length] < 0x101)
    {
      goto LABEL_8;
    }

    v9 = 105;
  }

  else
  {
    v9 = 103;
  }

  v10 = [NFCError errorWithCode:v9];
  if (!v10)
  {
LABEL_8:
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372B619C;
    v14[3] = &unk_278A29ED8;
    v14[4] = self;
    v15 = _getInternalReaderSession;
    v16 = dataCopy;
    v17 = handlerCopy;
    v13 = handlerCopy;
    [v15 submitBlockOnSessionQueue:v14];

    goto LABEL_9;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2372B6184;
  v18[3] = &unk_278A29D48;
  v19 = v10;
  v20 = handlerCopy;
  v11 = v10;
  v12 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v18];

LABEL_9:
}

- (BOOL)_transceiveWithSession:(id)session sendData:(id)data receivedData:(id *)receivedData error:(id *)error
{
  sessionCopy = session;
  dataCopy = data;
  if (receivedData)
  {
    *receivedData = 0;
  }

  if (self->_configuration)
  {
    v32 = 0;
    v16 = [(NFCTag *)self _connectWithSession:sessionCopy outError:&v32];
    v17 = v32;
    v15 = v17;
    if (v16)
    {
      v30 = v17;
      v31 = 0;
      v13 = [sessionCopy transceive:dataCopy tagUpdate:&v31 error:&v30];
      v14 = v31;
      v18 = v30;

      if (v14)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_2372B6574;
        v28[3] = &unk_278A29E60;
        v28[4] = self;
        v14 = v14;
        v29 = v14;
        os_unfair_lock_lock(&self->_lock);
        sub_2372B6574(v28);
        os_unfair_lock_unlock(&self->_lock);
      }

      v15 = v18;
      if (receivedData)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      if (receivedData)
      {
LABEL_14:
        v19 = v13;
        *receivedData = v13;
      }
    }
  }

  else
  {
    currentTag = [sessionCopy currentTag];
    if ([currentTag isEqualToNFTag:self->_tag])
    {
      v26 = 0;
      v27 = 0;
      v13 = [sessionCopy transceive:dataCopy tagUpdate:&v27 error:&v26];
      v14 = v27;
      v15 = v26;
      if (v14)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_2372B6580;
        v24[3] = &unk_278A29E60;
        v24[4] = self;
        v14 = v14;
        v25 = v14;
        os_unfair_lock_lock(&self->_lock);
        sub_2372B6580(v24);
        os_unfair_lock_unlock(&self->_lock);
      }
    }

    else
    {
      v15 = [NFCError errorWithCode:104];
      v13 = 0;
      v14 = 0;
    }

    if (receivedData)
    {
      goto LABEL_14;
    }
  }

  if (error)
  {
    v20 = v15;
    *error = v15;
  }

  if (v15)
  {
    v21 = 1;
  }

  else
  {
    v21 = v13 == 0;
  }

  v22 = !v21;

  return v22;
}

- (void)_sendAPDU:(id)u completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372B6630;
  v8[3] = &unk_278A29C10;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:u completionHandler:v8];
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

@end