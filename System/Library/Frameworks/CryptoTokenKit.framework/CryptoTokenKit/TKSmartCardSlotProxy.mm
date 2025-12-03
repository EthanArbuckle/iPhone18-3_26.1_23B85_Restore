@interface TKSmartCardSlotProxy
- (TKSmartCardSlotProxy)initWithSlot:(id)slot;
- (void)cardSessionRequested;
- (void)notifyWithParameters:(id)parameters reply:(id)reply;
- (void)processNotificationParameters:(id)parameters;
- (void)slotInitialized;
@end

@implementation TKSmartCardSlotProxy

- (void)processNotificationParameters:(id)parameters
{
  v48 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"state"];
  integerValue = [v5 integerValue];

  v7 = [parametersCopy objectForKey:@"atr"];
  v8 = TK_LOG_smartcard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained(&self->_slot);
    v42 = 138543874;
    v43 = WeakRetained;
    v44 = 2048;
    v45 = integerValue;
    v46 = 2114;
    v47 = v7;
    _os_log_debug_impl(&dword_1DF413000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: stateChangedTo:%ld atr:%{public}@", &v42, 0x20u);
  }

  if (v7)
  {
    v9 = integerValue == 4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v15 = objc_loadWeakRetained(&self->_slot);
    v16 = [v15 ATR];
    v17 = [v16 isEqual:v7];

    if (v17)
    {
      goto LABEL_16;
    }

    v14 = [[TKSmartCardATR alloc] initWithBytes:v7];
    v18 = objc_loadWeakRetained(&self->_slot);
    [v18 setATR:v14];

    goto LABEL_15;
  }

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = integerValue == 4;
  }

  if (!v10)
  {
    v11 = objc_loadWeakRetained(&self->_slot);
    v12 = [v11 ATR];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = objc_loadWeakRetained(&self->_slot);
      [(TKSmartCardATR *)v14 setATR:0];
LABEL_15:
    }
  }

LABEL_16:
  v19 = [parametersCopy objectForKey:@"power"];
  integerValue2 = [v19 integerValue];

  v21 = objc_loadWeakRetained(&self->_slot);
  v22 = integerValue2 == [v21 powerState];

  if (!v22)
  {
    v23 = objc_loadWeakRetained(&self->_slot);
    objc_sync_enter(v23);
    v24 = objc_loadWeakRetained(&self->_slot);
    [v24 setPowerState:integerValue2];

    objc_sync_exit(v23);
  }

  v25 = [parametersCopy objectForKey:@"share"];
  integerValue3 = [v25 integerValue];

  v27 = objc_loadWeakRetained(&self->_slot);
  v28 = integerValue3 == [v27 shareState];

  if (!v28)
  {
    v29 = objc_loadWeakRetained(&self->_slot);
    objc_sync_enter(v29);
    v30 = objc_loadWeakRetained(&self->_slot);
    [v30 setShareState:integerValue3];

    objc_sync_exit(v29);
  }

  v31 = [parametersCopy objectForKey:@"prevstate"];
  integerValue4 = [v31 integerValue];

  v33 = objc_loadWeakRetained(&self->_slot);
  v34 = integerValue4 == [v33 previousState];

  if (!v34)
  {
    v35 = objc_loadWeakRetained(&self->_slot);
    [v35 setPreviousState:integerValue4];
  }

  v36 = objc_loadWeakRetained(&self->_slot);
  v37 = [v36 state] == integerValue;

  if (!v37)
  {
    v38 = objc_loadWeakRetained(&self->_slot);
    objc_sync_enter(v38);
    v39 = objc_loadWeakRetained(&self->_slot);
    [v39 setState:integerValue];

    objc_sync_exit(v38);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)notifyWithParameters:(id)parameters reply:(id)reply
{
  parametersCopy = parameters;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queuedParameters = selfCopy->_queuedParameters;
  if (queuedParameters)
  {
    [(NSMutableArray *)queuedParameters addObject:parametersCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    [(TKSmartCardSlotProxy *)selfCopy processNotificationParameters:parametersCopy];
  }

  replyCopy[2](replyCopy);
}

- (void)cardSessionRequested
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  cards = [(TKSmartCardSlotProxy *)self cards];
  v3 = [cards countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(cards);
        }

        [*(*(&v8 + 1) + 8 * v6++) sessionRequested];
      }

      while (v4 != v6);
      v4 = [cards countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (TKSmartCardSlotProxy)initWithSlot:(id)slot
{
  slotCopy = slot;
  v12.receiver = self;
  v12.super_class = TKSmartCardSlotProxy;
  v5 = [(TKSmartCardSlotProxy *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_slot, slotCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cards = v6->_cards;
    v6->_cards = weakObjectsHashTable;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queuedParameters = v6->_queuedParameters;
    v6->_queuedParameters = v9;
  }

  return v6;
}

- (void)slotInitialized
{
  v14 = *MEMORY[0x1E69E9840];
  while (1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(NSMutableArray *)self->_queuedParameters count])
    {
      break;
    }

    v4 = TK_LOG_smartcard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(&self->_slot);
      v7 = [(NSMutableArray *)self->_queuedParameters count];
      *buf = 138412546;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = v7;
      _os_log_debug_impl(&dword_1DF413000, v4, OS_LOG_TYPE_DEBUG, "%@: processing accumulated state changes, %d remain", buf, 0x12u);
    }

    firstObject = [(NSMutableArray *)self->_queuedParameters firstObject];
    [(NSMutableArray *)self->_queuedParameters removeObjectAtIndex:0];
    objc_sync_exit(selfCopy);

    [(TKSmartCardSlotProxy *)selfCopy processNotificationParameters:firstObject];
  }

  queuedParameters = self->_queuedParameters;
  self->_queuedParameters = 0;

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x1E69E9840];
}

@end