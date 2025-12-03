@interface APTestingRig
+ (id)sharedInstance;
- (APTestingRig)init;
- (void)invokeHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler;
- (void)subscribeForDictMessage:(id)message handler:(id)handler;
- (void)subscribeForMessage:(id)message handler:(id)handler;
@end

@implementation APTestingRig

+ (id)sharedInstance
{
  if (qword_1EDBA4BB0 != -1)
  {
    sub_1BAF8E27C();
  }

  v3 = qword_1EDBA40F8;

  return v3;
}

- (APTestingRig)init
{
  v14.receiver = self;
  v14.super_class = APTestingRig;
  v5 = [(APTestingRig *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4);
    handlers = v5->_handlers;
    v5->_handlers = v6;

    v8 = [APUnfairLock alloc];
    v11 = objc_msgSend_initWithOptions_(v8, v9, 1, v10);
    theLock = v5->_theLock;
    v5->_theLock = v11;
  }

  return v5;
}

- (void)subscribeForDictMessage:(id)message handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1BAF202C0;
  v9[3] = &unk_1E7F1D3E8;
  v10 = handlerCopy;
  v7 = handlerCopy;
  objc_msgSend_subscribeForMessage_handler_(self, v8, message, v9);
}

- (void)subscribeForMessage:(id)message handler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v23 = objc_msgSend_theLock(self, v8, v9, v10);
  objc_msgSend_lock(v23, v11, v12, v13);
  v14 = _Block_copy(handlerCopy);

  v18 = objc_msgSend_handlers(self, v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v14, messageCopy);

  objc_msgSend_unlock(v23, v20, v21, v22);
}

- (void)invokeHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  messageCopy = message;
  v13 = objc_msgSend_theLock(self, v10, v11, v12);
  objc_msgSend_lock(v13, v14, v15, v16);
  v20 = objc_msgSend_handlers(self, v17, v18, v19);
  v23 = objc_msgSend_objectForKey_(v20, v21, messageCopy, v22);

  objc_msgSend_unlock(v13, v24, v25, v26);
  if (v23)
  {
    (v23)[2](v23, payloadCopy, handlerCopy);
  }

  else
  {
    handlerCopy[2](handlerCopy, @"Message was not registered");
  }
}

@end