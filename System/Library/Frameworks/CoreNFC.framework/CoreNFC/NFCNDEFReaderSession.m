@interface NFCNDEFReaderSession
- (NFCNDEFReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue invalidateAfterFirstRead:(BOOL)invalidateAfterFirstRead;
- (void)_callbackDidBecomeActive;
- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler;
- (void)didDetectNDEFMessages:(id)a3 fromTags:(id)a4 connectedTagIndex:(unint64_t)a5 updateUICallback:(id)a6;
- (void)didTerminate:(id)a3;
- (void)restartPolling;
@end

@implementation NFCNDEFReaderSession

- (void)didTerminate:(id)a3
{
  v3.receiver = self;
  v3.super_class = NFCNDEFReaderSession;
  [(NFCReaderSession *)&v3 didTerminate:a3];
}

- (void)didDetectNDEFMessages:(id)a3 fromTags:(id)a4 connectedTagIndex:(unint64_t)a5 updateUICallback:(id)a6
{
  v108 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = 0x277CBE000uLL;
  v76 = v13;
  v77 = v12;
  if ([(NFCReaderSession *)self delegateType]== 5)
  {
    v15 = v11;
    v13[2](v13, 0);
    [(NFCReaderSession *)self didDetectTags:v12 connectedTagIndex:a5];
    v16 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v94 objects:v107 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v95;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v95 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [[NFCNDEFTag alloc] initWithSession:self tag:*(*(&v94 + 1) + 8 * i) startupConfig:0];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v94 objects:v107 count:16];
      }

      while (v19);
    }

    v23 = v16;
    if ([v16 count])
    {
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = sub_2372B74D8;
      v92[3] = &unk_278A29E60;
      v92[4] = self;
      v23 = v16;
      v93 = v23;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v92];
    }

    else
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v61 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v65 = !isMetaClass;
        v23 = v16;
        v66 = 45;
        if (!v65)
        {
          v66 = 43;
        }

        v61(4, "%c[%{public}s %{public}s]:%i No suitable NDEF tag found", v66, ClassName, Name, 73);
      }

      v67 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = object_getClass(self);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(self);
        v71 = sel_getName(a2);
        *buf = 67109890;
        v100 = v69;
        v101 = 2082;
        v102 = v70;
        v23 = v16;
        v103 = 2082;
        v104 = v71;
        v105 = 1024;
        v106 = 73;
        _os_log_impl(&dword_23728C000, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No suitable NDEF tag found", buf, 0x22u);
      }
    }

    v59 = v76;
    v58 = v77;
  }

  else
  {
    v74 = self;
    v79 = objc_opt_new();
    v13[2](v13, 1);
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v75 = v11;
    obj = v11;
    v81 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v81)
    {
      v80 = *v89;
      do
      {
        v24 = 0;
        do
        {
          if (*v89 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v82 = v24;
          v25 = *(*(&v88 + 1) + 8 * v24);
          v26 = *(v14 + 2840);
          v83 = objc_opt_new();
          v27 = [v25 records];
          v28 = [v27 count];

          if (v28)
          {
            v29 = 0;
            v30 = 0;
            do
            {
              v31 = [v25 records];
              v32 = [v31 objectAtIndexedSubscript:v29];

              v33 = [v32 typeNameFormat];
              v34 = [v32 type];
              v85 = [v32 identifier];
              v35 = objc_alloc(MEMORY[0x277CBEB28]);
              v36 = [v32 payload];
              v37 = [v35 initWithData:v36];

              if ([v32 chunked] && objc_msgSend(v34, "length"))
              {
                v38 = v30 + 1;
                [v25 records];
                v39 = v84 = v37;
                v40 = [v39 count];

                v37 = v84;
                if (v40 > v30 + 1)
                {
                  v41 = v38;
                  while (1)
                  {
                    v42 = [v25 records];
                    v43 = [v42 objectAtIndexedSubscript:v41];

                    v44 = [v43 identifier];
                    if ([v44 length])
                    {
                      goto LABEL_32;
                    }

                    v45 = v25;
                    v46 = [v43 type];
                    if ([v46 length])
                    {

                      v25 = v45;
LABEL_32:

                      goto LABEL_36;
                    }

                    v47 = v33;
                    v48 = [v43 typeNameFormat];

                    if (v48 != 6)
                    {
                      v25 = v45;
                      goto LABEL_35;
                    }

                    v49 = [v43 payload];
                    [v84 appendData:v49];

                    v25 = v45;
                    if (([v43 chunked] & 1) == 0)
                    {
                      break;
                    }

                    ++v41;
                    v50 = [v45 records];
                    v51 = [v50 count];

                    ++v30;
                    v33 = v47;
                    if (v51 <= v41)
                    {
                      v38 = v30 + 1;
                      goto LABEL_37;
                    }
                  }

                  ++v30;
LABEL_35:
                  v33 = v47;
LABEL_36:

                  v38 = v30;
LABEL_37:
                  v37 = v84;
                }
              }

              else
              {
                v38 = v30;
              }

              v52 = [[NFCNDEFPayload alloc] initWithFormat:v33 type:v34 identifier:v85 payload:v37 chunkSize:0];
              [v83 addObject:v52];

              v30 = v38 + 1;
              v29 = v38 + 1;
              v53 = [v25 records];
              v54 = [v53 count];
            }

            while (v54 > v29);
          }

          v55 = [[NFCNDEFMessage alloc] initWithNDEFRecords:v83];
          v56 = [(NFCNDEFMessage *)v55 records];
          v57 = [v56 count];

          if (v57)
          {
            [v79 addObject:v55];
          }

          v24 = v82 + 1;
          v14 = 0x277CBE000;
        }

        while (v82 + 1 != v81);
        v81 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v81);
    }

    v23 = v79;
    v58 = v77;
    if ([v79 count])
    {
      v74->_tagsRead += [v77 count];
      if ([(NFCReaderSession *)v74 delegateType]== 4)
      {
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = sub_2372B7554;
        v86[3] = &unk_278A29E60;
        v86[4] = v74;
        v87 = v79;
        [(NFCReaderSession *)v74 submitBlockOnDelegateQueue:v86];
      }
    }

    v15 = v75;
    v59 = v76;
    if (v74->_invalidateAfterFirstRead)
    {
      [(NFCReaderSession *)v74 invalidateSessionWithReason:204];
    }
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (NFCNDEFReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue invalidateAfterFirstRead:(BOOL)invalidateAfterFirstRead
{
  v5 = invalidateAfterFirstRead;
  v8 = delegate;
  v9 = queue;
  if ([v8 conformsToProtocol:&unk_284A5A210] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    LOBYTE(v5) = 0;
    v10 = 528;
    v11 = 5;
  }

  else
  {
    if (v5)
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    v11 = 4;
  }

  v15.receiver = self;
  v15.super_class = NFCNDEFReaderSession;
  v12 = [(NFCReaderSession *)&v15 initWithDelegate:v8 sessionDelegateType:v11 queue:v9 pollMethod:2 sessionType:1 sessionConfig:v10];
  v13 = v12;
  if (v12)
  {
    v12->_invalidateAfterFirstRead = v5;
  }

  return v13;
}

- (void)restartPolling
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_23728C000, "NFCNDEFReaderSession restartPolling", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v4, state);
  os_activity_scope_leave(state);

  if ([(NFCReaderSession *)self delegateType]== 5)
  {
    v18.receiver = self;
    v18.super_class = NFCNDEFReaderSession;
    [(NFCReaderSession *)&v18 restartPolling];
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(5, "%c[%{public}s %{public}s]:%i Delegate conforms to [NFCNDEFReaderSessionDelegate readerSession:didDetectTags]; polling is auto restarted.", v10, ClassName, Name, 185);
    }

    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(self);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(self);
      v15 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v13;
      *&state[8] = 2082;
      *&state[10] = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 1024;
      v23 = 185;
      _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delegate conforms to [NFCNDEFReaderSessionDelegate readerSession:didDetectTags]; polling is auto restarted.", state, 0x22u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = tag;
  v8 = completionHandler;
  v9 = _os_activity_create(&dword_23728C000, "NFCNDEFReaderSession connectToTag:completionHandler", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v44 = 0;
    v11 = [v10 isMatchingSession:self outError:&v44];
    v12 = v44;
    if (v11)
    {
      [v10 _connectWithCompletionHandler:v8];
    }

    else
    {
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = sub_2372B7D08;
      v41 = &unk_278A29D48;
      v43 = v8;
      v42 = v12;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:&v38];
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v29 = 45;
        if (isMetaClass)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", v29, ClassName, Name, 207, v38, v39, v40, v41);
      }

      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(self);
        v34 = sel_getName(a2);
        *state = 67109890;
        *&state[4] = v32;
        *&state[8] = 2082;
        *&state[10] = v33;
        v48 = 2082;
        v49 = v34;
        v50 = 1024;
        v51 = 207;
        _os_log_impl(&dword_23728C000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", state, 0x22u);
      }
    }
  }

  else
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2372B7CA0;
    v45[3] = &unk_278A29C38;
    v46 = v8;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v45];
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(self);
      v36 = sel_getName(a2);
      v18 = 45;
      if (v16)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Invalid tag object", v18, v17, v36, 197);
    }

    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v21;
      *&state[8] = 2082;
      *&state[10] = v22;
      v48 = 2082;
      v49 = v23;
      v50 = 1024;
      v51 = 197;
      _os_log_impl(&dword_23728C000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag object", state, 0x22u);
    }

    v10 = v46;
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_callbackDidBecomeActive
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(NFCReaderSession *)self delegateType]!= 4 && [(NFCReaderSession *)self delegateType]!= 5)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v29 = [(NFCReaderSession *)self delegateType];
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v19(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v24, ClassName, Name, 226, v29);
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
    v38 = 226;
    v39 = 2048;
    v40 = [(NFCReaderSession *)self delegateType];
    v15 = "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld";
    v16 = v12;
    v17 = 44;
    goto LABEL_23;
  }

  v4 = [(NFCReaderSession *)self delegate];
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

      v7(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method", v11, v10, v28, 223);
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
    v38 = 223;
    v15 = "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method";
    v16 = v12;
    v17 = 34;
LABEL_23:
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
LABEL_24:

    goto LABEL_25;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2372B8054;
  v30[3] = &unk_278A29F00;
  v30[4] = self;
  [(NFCReaderSession *)self submitBlockOnDelegateQueue:v30];
LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
}

@end