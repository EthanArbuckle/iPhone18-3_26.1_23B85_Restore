@interface CKPKPushRegistry
+ (id)sharedPushRegistry;
- (id)initInternal;
- (void)addDelegate:(id)delegate;
- (void)pushRegistry:(id)registry didReceiveIncomingPushWithPayload:(id)payload forType:(id)type withCompletionHandler:(id)handler;
- (void)removeDelegate:(id)delegate;
@end

@implementation CKPKPushRegistry

+ (id)sharedPushRegistry
{
  if (qword_1ED4B62D8 != -1)
  {
    dispatch_once(&qword_1ED4B62D8, &unk_1EFA2FBC8);
  }

  v3 = qword_1ED4B62E0;

  return v3;
}

- (id)initInternal
{
  v17.receiver = self;
  v17.super_class = CKPKPushRegistry;
  v4 = [(CKPKPushRegistry *)&v17 init];
  if (v4)
  {
    v5 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v2, v3);
    delegates = v4->_delegates;
    v4->_delegates = v5;

    v7 = objc_alloc(MEMORY[0x1E6979258]);
    v8 = CKGetGlobalQueue(-1);
    v10 = objc_msgSend_initWithQueue_(v7, v9, v8);
    pushRegistry = v4->_pushRegistry;
    v4->_pushRegistry = v10;

    objc_msgSend_setDelegate_(v4->_pushRegistry, v12, v4);
    v14 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v13, *MEMORY[0x1E6979270]);
    objc_msgSend_setDesiredPushTypes_(v4->_pushRegistry, v15, v14);
  }

  return v4;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_delegates(selfCopy, v5, v6);
  objc_msgSend_addObject_(v7, v8, delegateCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_delegates(selfCopy, v5, v6);
  objc_msgSend_removeObject_(v7, v8, delegateCopy);

  objc_sync_exit(selfCopy);
}

- (void)pushRegistry:(id)registry didReceiveIncomingPushWithPayload:(id)payload forType:(id)type withCompletionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  payloadCopy = payload;
  typeCopy = type;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = objc_msgSend_delegates(selfCopy, v12, v13);
  v17 = objc_msgSend_allObjects(v14, v15, v16);

  objc_sync_exit(selfCopy);
  if (objc_msgSend_count(v17, v18, v19))
  {
    v20 = dispatch_group_create();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v17;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v42, 16);
    if (v23)
    {
      v24 = *v39;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * i);
          dispatch_group_enter(v20);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_18864B6B8;
          v36[3] = &unk_1E70BC388;
          v37 = v20;
          objc_msgSend_didReceiveIncomingPushWithPayload_withCompletionHandler_(v26, v27, payloadCopy, v36);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v38, v42, 16);
      }

      while (v23);
    }

    v29 = CKGetGlobalQueue(-1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18864B6C0;
    block[3] = &unk_1E70BC2C0;
    v35 = handlerCopy;
    dispatch_group_notify(v20, v29, block);
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end