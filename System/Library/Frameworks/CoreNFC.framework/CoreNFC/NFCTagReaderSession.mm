@interface NFCTagReaderSession
- (NFCTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue;
- (NFCTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue;
- (void)_callbackDidBecomeActive;
- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler;
- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index;
- (void)restartPolling;
@end

@implementation NFCTagReaderSession

- (NFCTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue
{
  v52 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  if ((option - 1) >= 0xF)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Invalid NFCPollingOption parameter: 0x%lx", v21, ClassName, Name, 31, option);
    }

    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67110146;
      v43 = v24;
      v44 = 2082;
      v45 = object_getClassName(self);
      v46 = 2082;
      v47 = sel_getName(a2);
      v48 = 1024;
      v49 = 31;
      v50 = 2048;
      optionCopy = option;
      _os_log_impl(&dword_23728C000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid NFCPollingOption parameter: 0x%lx", buf, 0x2Cu);
    }

    selfCopy = 0;
  }

  else
  {
    if (option >= 8)
    {
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v30 = object_getClassName(self);
        v40 = sel_getName(a2);
        v31 = 45;
        if (v29)
        {
          v31 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i PACE-polling enabled", v31, v30, v40, 42);
      }

      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = object_getClass(self);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        *buf = 67109890;
        v43 = v34;
        v44 = 2082;
        v45 = object_getClassName(self);
        v46 = 2082;
        v47 = sel_getName(a2);
        v48 = 1024;
        v49 = 42;
        _os_log_impl(&dword_23728C000, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PACE-polling enabled", buf, 0x22u);
      }

      v16 = 1030;
      v15 = 8;
    }

    else
    {
      v15 = (__rbit32(option & 3) >> 28) & 0xFFFFFFFFFFFFFFEFLL | (16 * ((option >> 2) & 1));
      v16 = 6;
    }

    if (sessionType == 5)
    {
      v35 = v15 | 0x20;
    }

    else
    {
      v35 = v15;
    }

    v41.receiver = self;
    v41.super_class = NFCTagReaderSession;
    self = [(NFCReaderSession *)&v41 initWithDelegate:delegateCopy sessionDelegateType:type queue:queueCopy pollMethod:v35 sessionType:sessionType sessionConfig:v16];
    selfCopy = self;
  }

  v36 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (NFCTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue
{
  objc_storeStrong(&self->_swiftDelegateWrapper, delegate);
  delegateCopy = delegate;
  queueCopy = queue;
  v13 = [(NFCTagReaderSession *)self initWithPollingOption:option delegate:delegateCopy delegateType:3 sessionType:type queue:queueCopy];

  return v13;
}

- (void)restartPolling
{
  v3 = _os_activity_create(&dword_23728C000, "NFCTagReaderSession restartPolling", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectedTag = selfCopy->_connectedTag;
  selfCopy->_connectedTag = 0;

  objc_sync_exit(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = NFCTagReaderSession;
  [(NFCReaderSession *)&v6 restartPolling];
}

- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = tag;
  v9 = completionHandler;
  v10 = _os_activity_create(&dword_23728C000, "NFCTagReaderSession connectToTag:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v10, state);
  os_activity_scope_leave(state);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v47 = 0;
    v12 = [v11 isMatchingSession:self outError:&v47];
    v13 = v47;
    if (v12)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_connectedTag, tag);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_2372C2EDC;
      v41[3] = &unk_278A2A090;
      v41[4] = selfCopy;
      v43 = v9;
      v42 = v13;
      v15 = v11;
      [v15 _connectWithCompletionHandler:v41];

      objc_sync_exit(selfCopy);
    }

    else
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_2372C2EC8;
      v44[3] = &unk_278A29D48;
      v46 = v9;
      v45 = v13;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v44];
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v28 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v32 = 45;
        if (isMetaClass)
        {
          v32 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", v32, ClassName, Name, 112);
      }

      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(self);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(self);
        v37 = sel_getName(a2);
        *state = 67109890;
        *&state[4] = v35;
        *&state[8] = 2082;
        *&state[10] = v36;
        v51 = 2082;
        v52 = v37;
        v53 = 1024;
        v54 = 112;
        _os_log_impl(&dword_23728C000, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", state, 0x22u);
      }

      selfCopy = v46;
    }
  }

  else
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2372C2E60;
    v48[3] = &unk_278A29C38;
    v49 = v9;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v48];
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(self);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(self);
      v39 = sel_getName(a2);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Invalid tag object", v21, v20, v39, 102);
    }

    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v24;
      *&state[8] = 2082;
      *&state[10] = v25;
      v51 = 2082;
      v52 = v26;
      v53 = 1024;
      v54 = 102;
      _os_log_impl(&dword_23728C000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag object", state, 0x22u);
    }

    v11 = v49;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_callbackDidBecomeActive
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(NFCReaderSession *)self delegateType]!= 2 && [(NFCReaderSession *)self delegateType]!= 3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      delegateType = [(NFCReaderSession *)self delegateType];
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v19(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v24, ClassName, Name, 152, delegateType);
    }

    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    *buf = 67110146;
    v32 = v26;
    v33 = 2082;
    v34 = object_getClassName(self);
    v35 = 2082;
    v36 = sel_getName(a2);
    v37 = 1024;
    v38 = 152;
    v39 = 2048;
    delegateType2 = [(NFCReaderSession *)self delegateType];
    v15 = "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld";
    v16 = v12;
    v17 = 44;
    goto LABEL_23;
  }

  delegate = [(NFCReaderSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(self);
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(self);
      v28 = sel_getName(a2);
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSessionDidBecomeActive: method", v11, v10, v28, 149);
    }

    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v32 = v14;
    v33 = 2082;
    v34 = object_getClassName(self);
    v35 = 2082;
    v36 = sel_getName(a2);
    v37 = 1024;
    v38 = 149;
    v15 = "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSessionDidBecomeActive: method";
    v16 = v12;
    v17 = 34;
LABEL_23:
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
LABEL_24:

    goto LABEL_25;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2372C32A0;
  v30[3] = &unk_278A29F00;
  v30[4] = self;
  [(NFCReaderSession *)self submitBlockOnDelegateQueue:v30];
LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index
{
  v62 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v53.receiver = self;
  v53.super_class = NFCTagReaderSession;
  [(NFCReaderSession *)&v53 didDetectTags:tagsCopy connectedTagIndex:index];
  delegate = [(NFCReaderSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v49 = a2;
    v52 = 0;
    v10 = objc_opt_new();
    if ([tagsCopy count])
    {
      v11 = 0;
      while (1)
      {
        v12 = [tagsCopy objectAtIndexedSubscript:v11];
        type = [v12 type];
        v14 = off_278A29970;
        if (type == 8)
        {
          goto LABEL_11;
        }

        type2 = [v12 type];
        v14 = off_278A29968;
        if (type2 == 7)
        {
          goto LABEL_11;
        }

        if ([v12 type] == 9 || objc_msgSend(v12, "type") == 14 || objc_msgSend(v12, "type") == 15 || objc_msgSend(v12, "type") == 16)
        {
          break;
        }

        if ([v12 type] == 3)
        {
          goto LABEL_17;
        }

        if ([v12 type] == 6)
        {
          goto LABEL_17;
        }

        if ([v12 type] == 5)
        {
          tagB = [v12 tagB];
          pupi = [tagB pupi];
          v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v52 length:4];
          v46 = [pupi isEqualToData:v18];

          if (v46)
          {
LABEL_17:
            v14 = off_278A29978;
LABEL_11:
            v16 = [objc_alloc(*v14) initWithSession:self tag:v12 startupConfig:0];
            if (v16)
            {
              v17 = v16;
              [v10 addObject:v16];
            }
          }
        }

        if (++v11 >= [tagsCopy count])
        {
          goto LABEL_30;
        }
      }

      v14 = off_278A29980;
      goto LABEL_11;
    }

LABEL_30:
    if ([v10 count])
    {
      if (index != 0x7FFFFFFFFFFFFFFFLL)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v30 = [v10 objectAtIndex:index];
        connectedTag = selfCopy->_connectedTag;
        selfCopy->_connectedTag = v30;

        objc_sync_exit(selfCopy);
      }

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_2372C3848;
      v50[3] = &unk_278A29E60;
      v50[4] = self;
      v51 = v10;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v50];
    }

    else
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v33 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(v49);
        v37 = 45;
        if (isMetaClass)
        {
          v37 = 43;
        }

        v33(4, "%c[%{public}s %{public}s]:%i No suitable tag found", v37, ClassName, Name, 197);
      }

      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = object_getClass(self);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(self);
        v42 = sel_getName(v49);
        *buf = 67109890;
        v55 = v40;
        v56 = 2082;
        v57 = v41;
        v58 = 2082;
        v59 = v42;
        v60 = 1024;
        v61 = 197;
        _os_log_impl(&dword_23728C000, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No suitable tag found", buf, 0x22u);
      }
    }
  }

  else
  {
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v44 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSession:didDetectTags: method", v24, v23, v44, 163);
    }

    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v55 = v26;
      v56 = 2082;
      v57 = v27;
      v58 = 2082;
      v59 = v28;
      v60 = 1024;
      v61 = 163;
      _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSession:didDetectTags: method", buf, 0x22u);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

@end