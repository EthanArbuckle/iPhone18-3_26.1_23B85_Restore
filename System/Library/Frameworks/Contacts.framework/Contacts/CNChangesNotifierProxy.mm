@interface CNChangesNotifierProxy
- (id)initWithSchedulerProvider:(void *)provider loggerProvider:;
- (id)postNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(char)identifier isFromExternalProcess:;
- (id)postNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(char)info shouldForwardExternally:(int)externally calledFromNotifierQueue:(char)queue isFromExternalProcess:;
- (id)receiveNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(int)info calledFromNotifierQueue:(char)queue isFromExternalProcess:;
- (id)receiveNotificationNames:(void *)names fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(int)info calledFromNotifierQueue:(char)queue isFromExternalProcess:;
- (void)addListenerForNotificationName:(void *)name registration:(void *)registration removal:;
- (void)coalesceNotificationName:(uint64_t)name;
- (void)forwardNotificationName:(void *)name asNotificationName:;
- (void)receiveExternalNotificationName:(id)name;
- (void)removeAllRegisteredNotificationSources;
- (void)setCoalescingTimer:(uint64_t)timer;
- (void)setRemovalBlocks:(uint64_t)blocks;
- (void)stopSupressionOfNotificationName:(uint64_t)name;
- (void)supressNotificationName:(uint64_t)name;
@end

@implementation CNChangesNotifierProxy

- (id)postNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(char)info shouldForwardExternally:(int)externally calledFromNotifierQueue:(char)queue isFromExternalProcess:
{
  v15 = a2;
  nameCopy = name;
  senderCopy = sender;
  identifierCopy = identifier;
  if (self)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__22;
    v36 = __Block_byref_object_dispose__22;
    v37 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __152__CNChangesNotifierProxy_postNotificationName_fromSender_saveIdentifier_userInfo_shouldForwardExternally_calledFromNotifierQueue_isFromExternalProcess___block_invoke;
    aBlock[3] = &unk_1E7415B00;
    aBlock[4] = self;
    v25 = v15;
    v26 = nameCopy;
    queueCopy = queue;
    infoCopy = info;
    v27 = senderCopy;
    v29 = &v32;
    v28 = identifierCopy;
    v19 = _Block_copy(aBlock);
    v20 = v19;
    if (externally)
    {
      v19[2](v19);
      v21 = _Block_copy(v33[5]);
    }

    else
    {
      dispatch_sync(*(self + 80), v19);
      v22 = v33[5];
      if (v22)
      {
        (*(v22 + 16))();
      }

      v21 = 0;
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)stopSupressionOfNotificationName:(uint64_t)name
{
  v3 = a2;
  v4 = v3;
  if (name)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__22;
    v14 = __Block_byref_object_dispose__22;
    v15 = 0;
    v5 = *(name + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__CNChangesNotifierProxy_stopSupressionOfNotificationName___block_invoke;
    block[3] = &unk_1E7413108;
    block[4] = name;
    v8 = v3;
    v9 = &v10;
    dispatch_sync(v5, block);
    v6 = v11[5];
    if (v6)
    {
      (*(v6 + 16))();
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)receiveExternalNotificationName:(id)name
{
  nameCopy = name;
  if (!self)
  {
    goto LABEL_10;
  }

  v5 = self->_coalescingNotificationName;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = self->_coalescingNotificationName;
  if (nameCopy | v7)
  {
    v8 = v7;
    v9 = [(NSString *)self->_coalescingNotificationName isEqual:nameCopy];

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_10:
    [CNChangesNotifierProxy receiveExternalNotificationName:];
    goto LABEL_9;
  }

LABEL_6:
  if (!self->_coalescingTimer)
  {
    objc_initWeak(&location, self);
    v10 = self->_schedulerProvider;
    v11 = objc_alloc(MEMORY[0x1E6996678]);
    [(CNChangesNotifierProxy *)self externalNotificationCoalescingDelay];
    v13 = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__CNChangesNotifierProxy_receiveExternalNotificationName___block_invoke;
    v16[3] = &unk_1E7415B28;
    objc_copyWeak(&v18, &location);
    v17 = nameCopy;
    mainThreadScheduler = [(CNSchedulerProvider *)v10 mainThreadScheduler];
    v15 = [v11 initWithDelay:1 options:v16 block:v10 schedulerProvider:mainThreadScheduler downstreamScheduler:v13];
    [(CNChangesNotifierProxy *)self setCoalescingTimer:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  [(CNCoalescingTimer *)self->_coalescingTimer handleEvent];
LABEL_9:
}

- (id)receiveNotificationNames:(void *)names fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(int)info calledFromNotifierQueue:(char)queue isFromExternalProcess:
{
  v13 = a2;
  namesCopy = names;
  senderCopy = sender;
  identifierCopy = identifier;
  if (self)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__22;
    v45 = __Block_byref_object_dispose__22;
    v46 = 0;
    v17 = *(self + 48);
    contactsLogger = [v17 contactsLogger];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke;
    v32[3] = &unk_1E7415BA0;
    v33 = v13;
    selfCopy = self;
    v39 = &v41;
    v35 = namesCopy;
    v36 = senderCopy;
    v37 = identifierCopy;
    queueCopy = queue;
    v19 = contactsLogger;
    v38 = v19;
    v20 = _Block_copy(v32);
    v21 = v20;
    if (info)
    {
      v20[2](v20);
      v22 = _Block_copy(v42[5]);
    }

    else
    {
      dispatch_sync(*(self + 80), v20);
      v30 = v42[5];
      if (v30)
      {
        (*(v30 + 16))(v30, v23, v24, v25, v26, v27, v28, v29, v32[0]);
      }

      v22 = 0;
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke_2(id *a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke_3;
  v9[3] = &unk_1E7415B50;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 postingNotification:v9];
}

void __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [*(a1 + 40) postingNotificationWithName:{v7, v9}];
        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        [v8 postNotificationName:v7 object:*(a1 + 48) userInfo:*(a1 + 56)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)initWithSchedulerProvider:(void *)provider loggerProvider:
{
  v6 = a2;
  providerCopy = provider;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = CNChangesNotifierProxy;
    self = objc_msgSendSuper2(&v21, sel_init);
    if (self)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v9 = self[3];
      self[3] = strongToStrongObjectsMapTable;

      strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v11 = self[4];
      self[4] = strongToStrongObjectsMapTable2;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v13 = self[7];
      self[7] = dictionary;

      v14 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v15 = self[8];
      self[8] = v14;

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = self[9];
      self[9] = v16;

      v18 = dispatch_queue_create("com.apple.Contacts.CNChangesNotifierProxy", 0);
      v19 = self[10];
      self[10] = v18;

      objc_storeStrong(self + 5, a2);
      objc_storeStrong(self + 6, provider);
      self[2] = 0x3FF0000000000000;
    }
  }

  return self;
}

- (void)addListenerForNotificationName:(void *)name registration:(void *)registration removal:
{
  v7 = a2;
  nameCopy = name;
  registrationCopy = registration;
  if (self)
  {
    v10 = *(self + 80);
    OUTLINED_FUNCTION_2();
    v11[1] = 3221225472;
    v11[2] = __78__CNChangesNotifierProxy_addListenerForNotificationName_registration_removal___block_invoke;
    v11[3] = &unk_1E7415AD8;
    v14 = nameCopy;
    v12 = v7;
    selfCopy = self;
    v15 = registrationCopy;
    dispatch_async(v10, v11);
  }
}

void __78__CNChangesNotifierProxy_addListenerForNotificationName_registration_removal___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3();
  v2();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  v9 = [v4 objectForKey:*(a1 + 32)];
  if (!v9)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
    }

    v9 = v5;
    [v7 setObject:v5 forKey:*(a1 + 32)];
  }

  v8 = [*(a1 + 56) copy];
  [v9 addObject:v8];
}

- (id)postNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(char)identifier isFromExternalProcess:
{
  if (result)
  {
    return [(CNChangesNotifierProxy *)result postNotificationName:a2 fromSender:name saveIdentifier:sender userInfo:0 shouldForwardExternally:1 calledFromNotifierQueue:0 isFromExternalProcess:identifier];
  }

  return result;
}

void __152__CNChangesNotifierProxy_postNotificationName_fromSender_saveIdentifier_userInfo_shouldForwardExternally_calledFromNotifierQueue_isFromExternalProcess___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 containsObject:*(a1 + 40)];
  v5 = *(a1 + 32);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v5 + 72);
    }

    else
    {
      v6 = 0;
    }

    v24 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    if (!v24)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 72);
      }

      else
      {
        v9 = 0;
      }

      v24 = v7;
      [v9 setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = v10;
    v12 = *(a1 + 48);
    if (v12)
    {
      [v10 setObject:v12 forKey:@"CNNotificationSourcesKey"];
    }

    if (*(a1 + 80) == 1)
    {
      [v11 setObject:MEMORY[0x1E695E118] forKey:@"CNNotificationOriginationExternally"];
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      [v11 setObject:v13 forKey:@"CNNotificationSaveIdentifiersKey"];
    }

    [v24 addObject:v11];
  }

  else
  {
    if (v5)
    {
      v14 = *(v5 + 32);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 objectForKey:*(a1 + 40)];
    v16 = v15;
    if (v15 && *(a1 + 81) == 1)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = [v15 objectEnumerator];
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            OUTLINED_FUNCTION_4_3();
            v22();
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }
    }

    v23 = [(CNChangesNotifierProxy *)*(a1 + 32) receiveNotificationName:*(a1 + 48) fromSender:*(a1 + 56) saveIdentifier:*(a1 + 64) userInfo:1 calledFromNotifierQueue:*(a1 + 80) isFromExternalProcess:?];
    OUTLINED_FUNCTION_14(v23, *(a1 + 72));
  }
}

- (id)receiveNotificationName:(void *)name fromSender:(void *)sender saveIdentifier:(void *)identifier userInfo:(int)info calledFromNotifierQueue:(char)queue isFromExternalProcess:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  nameCopy = name;
  senderCopy = sender;
  identifierCopy = identifier;
  if (self)
  {
    if (v13)
    {
      v20[0] = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v18 = [(CNChangesNotifierProxy *)self receiveNotificationNames:v17 fromSender:nameCopy saveIdentifier:senderCopy userInfo:identifierCopy calledFromNotifierQueue:info isFromExternalProcess:queue];
    }

    else
    {
      v18 = &__block_literal_global_82;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)forwardNotificationName:(void *)name asNotificationName:
{
  v5 = a2;
  nameCopy = name;
  if (self)
  {
    v7 = *(self + 80);
    OUTLINED_FUNCTION_0();
    v9 = 3221225472;
    v10 = __69__CNChangesNotifierProxy_forwardNotificationName_asNotificationName___block_invoke;
    v11 = &unk_1E7412A60;
    selfCopy = self;
    v13 = v5;
    v14 = nameCopy;
    dispatch_async(v7, block);
  }
}

void __69__CNChangesNotifierProxy_forwardNotificationName_asNotificationName___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 _cn_objectOrDefaultToEmptyArrayForKey:a1[5]];
  [v4 addObject:a1[6]];
}

- (void)removeAllRegisteredNotificationSources
{
  if (self)
  {
    v1 = *(self + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CNChangesNotifierProxy_removeAllRegisteredNotificationSources__block_invoke;
    block[3] = &unk_1E7412A88;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __64__CNChangesNotifierProxy_removeAllRegisteredNotificationSources__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  obj = [v3 keyEnumerator];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        else
        {
          v9 = 0;
        }

        v10 = [v9 objectForKey:*(*(&v25 + 1) + 8 * v7)];
        v11 = v10;
        if (v10)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v12 = [v10 objectEnumerator];
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v22;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v22 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                OUTLINED_FUNCTION_4_3();
                v17();
              }

              v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v14);
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      v5 = v18;
    }

    while (v18);
  }

  v19 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  [(CNChangesNotifierProxy *)*(a1 + 32) setRemovalBlocks:v19];
}

- (void)setRemovalBlocks:(uint64_t)blocks
{
  if (blocks)
  {
    objc_storeStrong((blocks + 24), a2);
  }
}

- (void)supressNotificationName:(uint64_t)name
{
  v3 = a2;
  if (name)
  {
    v4 = *(name + 80);
    OUTLINED_FUNCTION_2();
    v5[1] = 3221225472;
    v5[2] = __50__CNChangesNotifierProxy_supressNotificationName___block_invoke;
    v5[3] = &unk_1E74121B8;
    v5[4] = name;
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t __50__CNChangesNotifierProxy_supressNotificationName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[8];
  }

  return [v1 addObject:*(a1 + 40)];
}

void __59__CNChangesNotifierProxy_stopSupressionOfNotificationName___block_invoke(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObject:*(v1 + 40)];
  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = v4[8];
  }

  v31 = v4;
  if ([v31 countForObject:*(v1 + 40)])
  {
  }

  else
  {
    v5 = *(v1 + 32);
    if (v5)
    {
      v5 = v5[9];
    }

    v6 = v5;
    v7 = [v6 allKeys];
    v8 = [v7 containsObject:*(v1 + 40)];

    if (v8)
    {
      v9 = *(v1 + 32);
      if (v9)
      {
        v10 = *(v9 + 72);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 objectForKeyedSubscript:*(v1 + 40)];
      v12 = *(v1 + 32);
      if (v12)
      {
        v13 = *(v12 + 72);
      }

      else
      {
        v13 = 0;
      }

      [v13 removeObjectForKey:*(v1 + 40)];
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v32 = [MEMORY[0x1E695DF70] array];
      v30 = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = [v11 objectEnumerator];
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v27 = v14;
        v28 = v11;
        v29 = v1;
        v18 = 0;
        v19 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"CNNotificationOriginationExternally"];
            v23 = [v22 BOOLValue];

            v24 = [v21 objectForKeyedSubscript:@"CNNotificationSourcesKey"];
            if (v24)
            {
              [v32 addObject:v24];
            }

            v25 = [v21 objectForKeyedSubscript:@"CNNotificationSaveIdentifiersKey"];
            if (v25)
            {
              [v30 addObject:v25];
            }

            v18 |= v23;
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);

        v11 = v28;
        v1 = v29;
        v14 = v27;
        if (v18)
        {
          [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CNNotificationOriginationExternally"];
        }
      }

      else
      {
      }

      [v14 setObject:v32 forKeyedSubscript:@"CNNotificationSourcesKey"];
      [v14 setObject:v30 forKeyedSubscript:@"CNNotificationSaveIdentifiersKey"];
      v26 = [(CNChangesNotifierProxy *)*(v1 + 32) postNotificationName:0 fromSender:0 saveIdentifier:v14 userInfo:1 shouldForwardExternally:1 calledFromNotifierQueue:0 isFromExternalProcess:?];
      OUTLINED_FUNCTION_14(v26, *(v1 + 48));
    }
  }
}

- (void)coalesceNotificationName:(uint64_t)name
{
  v4 = a2;
  if (name)
  {
    objc_storeStrong((name + 96), a2);
  }
}

void __58__CNChangesNotifierProxy_receiveExternalNotificationName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_3_4();
  v8 = [(CNChangesNotifierProxy *)v1 receiveNotificationName:v2 fromSender:v3 saveIdentifier:v4 userInfo:v5 calledFromNotifierQueue:v6 isFromExternalProcess:v7];
}

- (void)setCoalescingTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 88), a2);
  }
}

void __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKey:v2];
  OUTLINED_FUNCTION_4_3();
  v7 = v6();
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = [(CNChangesNotifierProxy *)v8 receiveNotificationNames:v5 fromSender:*(a1 + 48) saveIdentifier:*(a1 + 56) userInfo:*(a1 + 64) calledFromNotifierQueue:1 isFromExternalProcess:*(a1 + 88)];
LABEL_9:
    OUTLINED_FUNCTION_14(v9, *(a1 + 80));
    goto LABEL_22;
  }

  if (v8)
  {
    v8 = v8[8];
  }

  if ([v8 containsObject:v2])
  {
    v9 = [(CNChangesNotifierProxy *)*(a1 + 40) postNotificationName:v2 fromSender:*(a1 + 48) saveIdentifier:*(a1 + 56) userInfo:*(a1 + 64) shouldForwardExternally:0 calledFromNotifierQueue:1 isFromExternalProcess:*(a1 + 88)];
    goto LABEL_9;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v13;
    if (*(a1 + 88) == 1)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKey:@"CNNotificationOriginationExternally"];
    }

    if (v10)
    {
      v27[0] = v10;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v12 setObject:v14 forKey:@"CNNotificationSourcesKey"];
    }

    else
    {
      [v12 setObject:MEMORY[0x1E695E0F0] forKey:@"CNNotificationSourcesKey"];
    }

    if (*(a1 + 56))
    {
      v26 = *(a1 + 56);
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v12 setObject:v15 forKey:@"CNNotificationSaveIdentifiersKey"];
    }

    else
    {
      [v12 setObject:MEMORY[0x1E695E0F0] forKey:@"CNNotificationSaveIdentifiersKey"];
    }

    v10 = 0;
  }

  OUTLINED_FUNCTION_0();
  v19 = 3221225472;
  v20 = __132__CNChangesNotifierProxy_receiveNotificationNames_fromSender_saveIdentifier_userInfo_calledFromNotifierQueue_isFromExternalProcess___block_invoke_2;
  v21 = &unk_1E7415B78;
  v22 = *(a1 + 72);
  v23 = *(a1 + 32);
  v24 = v10;
  v25 = v12;
  v16 = v12;
  v17 = v10;
  OUTLINED_FUNCTION_14([v18 copy], *(a1 + 80));

LABEL_22:
}

@end