@interface FaceTimePushHandler
+ (id)commandToHandlerBlock;
- (FaceTimePushHandler)initWithTopics:(id)a3;
- (NSData)pushToken;
- (void)_acceptIncomingPushes;
- (void)_ignoreIncomingPushes;
- (void)_updateListenerIfNeeded;
- (void)addListener:(id)a3;
- (void)configureAsMacNotificationCenterObserver:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)removeListener:(id)a3;
@end

@implementation FaceTimePushHandler

+ (id)commandToHandlerBlock
{
  if (qword_2814228B8 != -1)
  {
    sub_23BCC0594();
  }

  return qword_2814228B0;
}

- (FaceTimePushHandler)initWithTopics:(id)a3
{
  v6.receiver = self;
  v6.super_class = FaceTimePushHandler;
  v4 = [(FaceTimePushHandler *)&v6 init];
  if (v4)
  {
    v4->_topics = a3;
  }

  return v4;
}

- (void)dealloc
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, v2, v3, v4);
  objc_msgSend_removeListener_(v6, v7, self, v8, v9);

  v10.receiver = self;
  v10.super_class = FaceTimePushHandler;
  [(FaceTimePushHandler *)&v10 dealloc];
}

- (NSData)pushToken
{
  if (!self->_registeredForPush)
  {
    return 0;
  }

  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, v2, v3, v4);

  return objc_msgSend_pushToken(v6, v7, v8, v9, v10);
}

- (void)_updateListenerIfNeeded
{
  if (self->_registeredForPush)
  {
    v55 = v4;
    v56 = v3;
    v57 = v2;
    v10 = objc_autoreleasePoolPush();
    v15 = objc_msgSend__pushTopics(self, v11, v12, v13, v14);
    v20 = v15;
    if (self->_isListening || !objc_msgSend_count(v15, v16, v17, v18, v19))
    {
      v43 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v16, v17, v18, v19, v7, v6, v5, v55, v56, v57);
      if (objc_msgSend_count(v20, v44, v45, v46, v47))
      {
        v52 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v48, v20, v50, v51);
      }

      else
      {
        v52 = objc_msgSend_set(MEMORY[0x277CBEB98], v48, v49, v50, v51);
      }

      objc_msgSend_setTopics_forListener_(v43, v53, v52, self, v54);
    }

    else
    {
      v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v16, v17, v18, v19);
      v25 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v22, v20, v23, v24);
      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v32 = objc_msgSend_commandToHandlerBlock(v27, v28, v29, v30, v31);
      v37 = objc_msgSend_allKeys(v32, v33, v34, v35, v36);
      v41 = objc_msgSend_setWithArray_(v26, v38, v37, v39, v40);
      objc_msgSend_addListener_topics_commands_queue_(v21, v42, self, v25, v41, MEMORY[0x277D85CD0]);
      self->_isListening = 1;
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_acceptIncomingPushes
{
  if (!self->_registeredForPush)
  {
    self->_registeredForPush = 1;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_23BC9F000, v7, OS_LOG_TYPE_INFO, "Accepting incoming pushes", v8, 2u);
      }
    }

    objc_msgSend__updateListenerIfNeeded(self, v3, v4, v5, v6);
  }
}

- (void)_ignoreIncomingPushes
{
  if (self->_registeredForPush)
  {
    self->_registeredForPush = 0;
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_INFO, "No longer accepting incoming pushes", v13, 2u);
      }
    }

    v4 = objc_autoreleasePoolPush();
    v9 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v5, v6, v7, v8);
    objc_msgSend_removeListener_(v9, v10, self, v11, v12);
    self->_isListening = 0;
    objc_autoreleasePoolPop(v4);
  }
}

- (void)configureAsMacNotificationCenterObserver:(id)a3
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, a3, v3, v4);

  objc_msgSend_configureAsMacNotificationCenterObserver_(v6, v7, a3, v8, v9);
}

- (void)addListener:(id)a3
{
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_handlers, a2, a3, v3, v4) & 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      handlers = objc_msgSend_nonRetainingArray(MEMORY[0x277CBEB18], v7, v8, v9, v10);
      self->_handlers = handlers;
    }

    objc_msgSend_addObject_(handlers, v7, a3, v9, v10);
  }
}

- (void)removeListener:(id)a3
{
  objc_msgSend_removeObjectIdenticalTo_(self->_handlers, a2, a3, v3, v4);
  if (!objc_msgSend_count(self->_handlers, v6, v7, v8, v9))
  {

    self->_handlers = 0;
  }
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_objectForKey_(a4, a2, @"c", a4, a5, a6, a7);
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v11, v12, v13, v14);
    v19 = objc_msgSend_objectForKey_inDomain_(v16, v17, @"LDMGlobalEnabled", *MEMORY[0x277CCA208], v18);
    if (objc_msgSend_BOOLValue(v19, v20, v21, v22, v23))
    {
      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = a4;
        _os_log_impl(&dword_23BC9F000, v27, OS_LOG_TYPE_DEFAULT, "dropping push message: %@ for IMAV because lockdown mode is enabled", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    else
    {
      v28 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], v24, 0, v25, v26);
      v32 = objc_msgSend_objectForKey_(v28, v29, @"imav-disable-sunset", v30, v31);
      if (v32)
      {
        v37 = objc_msgSend_BOOLValue(v32, v33, v34, v35, v36);
      }

      else
      {
        v37 = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v76) = v37;
          _os_log_impl(&dword_23BC9F000, v38, OS_LOG_TYPE_INFO, "shouldNotSunsetValue %d", buf, 8u);
        }
      }

      if (!v37 && _os_feature_enabled_impl())
      {
        v39 = objc_opt_class();
        v43 = objc_msgSend_objectForKey_(a4, v40, @"W", v41, v42);
        if ((objc_opt_isKindOfClass() & 1) == 0 && v43)
        {
          v48 = objc_msgSend_registration(MEMORY[0x277D19298], v44, v45, v46, v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_23BCC05A8(v39, v48);
          }

          v43 = 0;
        }

        v49 = objc_msgSend__stripFZIDPrefix(v43, v44, v45, v46, v47);
        v54 = objc_msgSend_sharedInstance(MEMORY[0x277D6EDF8], v50, v51, v52, v53);
        if (objc_opt_respondsToSelector())
        {
          v58 = objc_msgSend_validateIMAVPush_(v54, v55, v49, v56, v57);
          if (IMOSLoggingEnabled())
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v76) = v58;
              _os_log_impl(&dword_23BC9F000, v63, OS_LOG_TYPE_INFO, "isValid: %d", buf, 8u);
            }
          }

          if ((v58 & 1) == 0 && objc_msgSend_integerValue(v15, v59, v60, v61, v62) == 1)
          {
            v15 = &unk_284E75878;
          }
        }
      }

      v64 = objc_opt_class();
      v69 = objc_msgSend_commandToHandlerBlock(v64, v65, v66, v67, v68);
      v73 = objc_msgSend_objectForKey_(v69, v70, v15, v71, v72);
      if (v73)
      {
        (*(v73 + 16))(v73, self, a5, a4);
      }
    }
  }

  v74 = *MEMORY[0x277D85DE8];
}

@end