@interface AXEventTapManager
+ (id)sharedManager;
- (AXEventTapManager)init;
- (BOOL)_accessibilityShouldIgnoreHIDServiceForContinuity:(__IOHIDServiceClient *)a3;
- (BOOL)_processHIDEvent:(__IOHIDEvent *)a3 taskPort:(unsigned int)a4 bundleId:(id)a5;
- (id)_copyCurrentEventTapPairs;
- (id)_hidFilterListForPair:(id)a3 filterEvents:(id)a4;
- (id)description;
- (id)installEventTap:(id)a3 identifier:(id)a4 type:(int)a5;
- (id)installEventTap:(id)a3 identifier:(id)a4 type:(int)a5 skipDeviceMatching:(BOOL)a6 filterEvents:(id)a7 matchingServiceHandler:(id)a8;
- (id)installKeyboardEventTap:(id)a3 identifier:(id)a4 matchingServiceHandler:(id)a5;
- (void)_enumerateEventTapPairsUsingBlock:(id)a3;
- (void)_handleTestIOHIDEvent:(__IOHIDEvent *)a3;
- (void)_installEventTap:(id)a3 skipDeviceMatching:(BOOL)a4 filterEvents:(id)a5;
- (void)_installHIDFilter:(id)a3 skipDeviceMatching:(BOOL)a4 filterEvents:(id)a5;
- (void)_installSystemEventTap:(id)a3;
- (void)_removeHIDEventTapFilter:(id)a3;
- (void)_reorderEventTaps;
- (void)_runMatchingServiceHandler:(id)a3;
- (void)_setEventTapPriority:(id)a3 priority:(int)a4;
- (void)_setHIDEventTapCallback:(void *)a3;
- (void)dealloc;
- (void)removeEventTap:(id)a3;
- (void)runMatchingServiceHandlerForEventTap:(id)a3;
- (void)sendEvent:(id)a3 afterTap:(id)a4 useGSEvent:(BOOL)a5 namedTaps:(id)a6 options:(unint64_t)a7;
- (void)sendHIDSystemEvent:(id)a3 repostCreatorHIDEvent:(BOOL)a4 senderID:(unint64_t)a5;
- (void)setEventTapPriority:(id)a3 priority:(int)a4;
- (void)setFailedToProcessInTimeCallback:(id)a3 callback:(id)a4;
@end

@implementation AXEventTapManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AXEventTapManager sharedManager];
  }

  v3 = sharedManager_SharedManager;

  return v3;
}

uint64_t __34__AXEventTapManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager = objc_alloc_init(AXEventTapManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AXEventTapManager)init
{
  v15.receiver = self;
  v15.super_class = AXEventTapManager;
  v2 = [(AXEventTapManager *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventTaps = v2->_eventTaps;
    v2->_eventTaps = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    addedEventTapPairs = v2->_addedEventTapPairs;
    v2->_addedEventTapPairs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    removedEventTapIdentifiers = v2->_removedEventTapIdentifiers;
    v2->_removedEventTapIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AE68]);
    eventTapLock = v2->_eventTapLock;
    v2->_eventTapLock = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    disabledIDMappingRegistry = v2->_disabledIDMappingRegistry;
    v2->_disabledIDMappingRegistry = v11;

    v13 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ioSystemPostBackClient = self->_ioSystemPostBackClient;
  if (ioSystemPostBackClient)
  {
    CFRelease(ioSystemPostBackClient);
    self->_ioSystemPostBackClient = 0;
  }

  v4.receiver = self;
  v4.super_class = AXEventTapManager;
  [(AXEventTapManager *)&v4 dealloc];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXEventTapManager <%p>. Taps:\n", self];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_eventTaps;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v9 priority];
        [v3 appendFormat:@"\t%@. Priority:%d\n", v10, v11, v13];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_setHIDEventTapCallback:(void *)a3
{
  installationHIDCallback = self->_installationHIDCallback;
  if (installationHIDCallback)
  {
    installationHIDCallback[2](installationHIDCallback, a3);
  }
}

- (id)_copyCurrentEventTapPairs
{
  [(NSRecursiveLock *)self->_eventTapLock lock];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AXEventTapManager__copyCurrentEventTapPairs__block_invoke;
  v5[3] = &unk_1E71EA018;
  v5[4] = &v6;
  [(AXEventTapManager *)self _enumerateEventTapPairsUsingBlock:v5];
  [(NSRecursiveLock *)self->_eventTapLock unlock];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__AXEventTapManager__copyCurrentEventTapPairs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

- (void)_enumerateEventTapPairsUsingBlock:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  isEnumeratingEventTaps = self->_isEnumeratingEventTaps;
  self->_isEnumeratingEventTaps = 1;
  v28 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_eventTaps;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v6);
      }

      (*(v4 + 2))(v4, *(*(&v24 + 1) + 8 * v10), 0, &v28);
      if (v28)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_addedEventTapPairs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NSMutableArray *)self->_eventTaps insertObject:*(*(&v20 + 1) + 8 * i) atIndex:0];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }

  [(NSMutableArray *)self->_addedEventTapPairs removeAllObjects];
  if ([(NSMutableSet *)self->_removedEventTapIdentifiers count])
  {
    eventTaps = self->_eventTaps;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__AXEventTapManager__enumerateEventTapPairsUsingBlock___block_invoke;
    v19[3] = &unk_1E71EA040;
    v19[4] = self;
    v17 = [(NSMutableArray *)eventTaps indexesOfObjectsPassingTest:v19];
    [(NSMutableArray *)eventTaps removeObjectsAtIndexes:v17];

    [(NSMutableSet *)self->_removedEventTapIdentifiers removeAllObjects];
  }

  self->_isEnumeratingEventTaps = isEnumeratingEventTaps;
  if (self->_shouldReorderEventTaps)
  {
    [(AXEventTapManager *)self _reorderEventTaps];
  }

  if ([(NSMutableArray *)self->_eventTaps count])
  {
    v18 = _axEventTapHIDCallback;
  }

  else
  {
    v18 = 0;
  }

  [(AXEventTapManager *)self _setHIDEventTapCallback:v18];
}

uint64_t __55__AXEventTapManager__enumerateEventTapPairsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)sendHIDSystemEvent:(id)a3 repostCreatorHIDEvent:(BOOL)a4 senderID:(unint64_t)a5
{
  v5 = a4;
  v7 = a3;
  v21 = v7;
  if (!self->_ioSystemPostBackClient)
  {
    self->_ioSystemPostBackClient = IOHIDEventSystemClientCreate();
    v7 = v21;
  }

  v8 = [v7 newHIDEventRef];
  if (v8)
  {
    v9 = v8;
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v11 = Children;
      if (CFArrayGetCount(Children) >= 1)
      {
        v12 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v11, v12);
          IntegerValue = IOHIDEventGetIntegerValue();
          if (!(IntegerValue & 2 | IOHIDEventGetIntegerValue()))
          {
            break;
          }

          if (++v12 >= CFArrayGetCount(v11))
          {
            goto LABEL_12;
          }
        }

        v14 = [v21 handInfo];
        v15 = [v14 paths];
        v16 = [v15 count];

        if (v12 < v16)
        {
          v17 = [v21 handInfo];
          v18 = [v17 paths];
          v19 = [v18 objectAtIndex:v12];
          [v19 setShouldSetTouchFlag:1];
        }
      }
    }

LABEL_12:
    CFRelease(v9);
  }

  if (v5)
  {
    v20 = [v21 creatorHIDEvent];
    CFRetain(v20);
  }

  else
  {
    v20 = [v21 newHIDEventRef];
  }

  [v21 type];
  if (v20)
  {
    IOHIDEventSetSenderID();
    IOHIDEventSystemClientDispatchEvent();
    CFRelease(v20);
  }

  else
  {
    _AXAssert();
  }
}

- (void)sendEvent:(id)a3 afterTap:(id)a4 useGSEvent:(BOOL)a5 namedTaps:(id)a6 options:(unint64_t)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v10 = a4;
  v11 = a6;
  v26 = self;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v10 == 0;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if (v10 && ([*(*(&v28 + 1) + 8 * v17) identifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", v10), v19, (v20 & 1) != 0))
        {
          v15 = 1;
        }

        else if (v15 || ([v18 identifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v11, "containsObject:", v21), v21, v22))
        {
          if (![v18 type])
          {
            v23 = [v18 handler];
            v24 = (v23)[2](v23, v27);

            if (v24)
            {

              goto LABEL_19;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  installationEventRepPost = v26->_installationEventRepPost;
  if (installationEventRepPost)
  {
    installationEventRepPost[2](installationEventRepPost, v27);
  }

LABEL_19:
}

- (void)_handleTestIOHIDEvent:(__IOHIDEvent *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [AXEventRepresentation representationWithHIDEvent:a3 hidStreamIdentifier:@"AXEventTapManager" clientID:0 taskPort:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type])
      {
        v11 = [v10 handler];
        v12 = (v11)[2](v11, v4);
        [v10 identifier];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_processHIDEvent:(__IOHIDEvent *)a3 taskPort:(unsigned int)a4 bundleId:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [AXEventRepresentation representationWithHIDEvent:a3 hidStreamIdentifier:@"AXEventTapManager" clientID:a5 taskPort:*&a4];
  if (AXEventTypeIsTouch([v6 type]) && (objc_msgSend(v6, "handInfo"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "paths"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "indexOfObjectPassingTest:", &__block_literal_global_140), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v18 = 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (![v15 type])
          {
            v16 = [v15 handler];
            v17 = (v16)[2](v16, v6);
            [v15 identifier];

            if (v17)
            {
              v18 = 0;
              goto LABEL_14;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_14:
  }

  return v18;
}

- (void)_reorderEventTaps
{
  if (self->_isEnumeratingEventTaps)
  {
    v3 = 1;
  }

  else
  {
    [(NSMutableArray *)self->_eventTaps sortUsingComparator:&__block_literal_global_143];
    v3 = 0;
  }

  self->_shouldReorderEventTaps = v3;
}

uint64_t __38__AXEventTapManager__reorderEventTaps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 priority];
  v6 = [v4 priority];

  v7 = -1;
  if (v6 >= v5)
  {
    v7 = 1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)setFailedToProcessInTimeCallback:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSRecursiveLock *)self->_eventTapLock lock];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__AXEventTapManager_setFailedToProcessInTimeCallback_callback___block_invoke;
  v13 = &unk_1E71EA088;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [(AXEventTapManager *)self _enumerateEventTapPairsUsingBlock:&v10];
  [(NSRecursiveLock *)self->_eventTapLock unlock:v10];
}

void __63__AXEventTapManager_setFailedToProcessInTimeCallback_callback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [v8 setFailedToHandleInTime:*(a1 + 40)];
    *a4 = 1;
  }
}

- (void)setEventTapPriority:(id)a3 priority:(int)a4
{
  v6 = a3;
  [(NSRecursiveLock *)self->_eventTapLock lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AXEventTapManager_setEventTapPriority_priority___block_invoke;
  v8[3] = &unk_1E71EA0B0;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(AXEventTapManager *)self _enumerateEventTapPairsUsingBlock:v8];
  [(AXEventTapManager *)self _reorderEventTaps];
  [(NSRecursiveLock *)self->_eventTapLock unlock];
}

void __50__AXEventTapManager_setEventTapPriority_priority___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(a1 + 40) _setEventTapPriority:v8 priority:*(a1 + 48)];
    *a4 = 1;
  }
}

- (BOOL)_accessibilityShouldIgnoreHIDServiceForContinuity:(__IOHIDServiceClient *)a3
{
  v5 = [(AXEventTapManager *)self ignoreEventsForContinuitySession];
  LOBYTE(v6) = 0;
  if (a3 && v5)
  {
    v7 = IOHIDServiceClientGetRegistryID(a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(AXEventTapManager *)self disabledIDMappingRegistry];
      v9 = [v8 objectForKeyedSubscript:v7];

      if (v9)
      {
        LOBYTE(v6) = [v9 BOOLValue];
      }

      else
      {
        v11 = IOHIDServiceClientCopyProperty(a3, @"DisableAccessibilityEventTranslation");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v11 BOOLValue];
        }

        else
        {
          v6 = 0;
        }

        v12 = [(AXEventTapManager *)self disabledIDMappingRegistry];
        v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
        [v12 setObject:v13 forKey:v7];
      }
    }

    else
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AXEventTapManager *)v7 _accessibilityShouldIgnoreHIDServiceForContinuity:v10];
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)_setEventTapPriority:(id)a3 priority:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  [v5 setPriority:v4];
  if ([v5 type] == 1)
  {
    if (![v5 systemClient])
    {
      _AXAssert();
    }

    [v5 systemClient];
    IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
  }

  else if ([v5 type] == 2)
  {
    if (![v5 systemClient])
    {
      _AXAssert();
    }

    [v5 systemClient];
    IOHIDEventSystemClientRegisterEventCallback();
  }
}

- (void)_installEventTap:(id)a3 skipDeviceMatching:(BOOL)a4 filterEvents:(id)a5
{
  v6 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = AXLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 identifier];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "Installing event filter for: %@", &v12, 0xCu);
  }

  if ([v8 type] == 1 || objc_msgSend(v8, "type") == 2)
  {
    [(AXEventTapManager *)self _installHIDFilter:v8 skipDeviceMatching:v6 filterEvents:v9];
  }

  else
  {
    [(AXEventTapManager *)self _installSystemEventTap:v8];
  }
}

- (id)_hidFilterListForPair:(id)a3 filterEvents:(id)a4
{
  v132[2] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 wantsDigitizerEvents])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v131[0] = v6;
    v132[0] = &unk_1EFE95FB0;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v131[1] = v7;
    v132[1] = &unk_1EFE95FC8;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
    [v5 addObject:v8];

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v129[0] = v9;
    v130[0] = &unk_1EFE95FB0;
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v129[1] = v10;
    v130[1] = &unk_1EFE95FE0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    [v5 addObject:v11];

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v127[0] = v12;
    v128[0] = &unk_1EFE95FB0;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v127[1] = v13;
    v128[1] = &unk_1EFE95FF8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
    [v5 addObject:v14];

    v15 = +[AXSettings sharedInstance];
    LODWORD(v13) = [v15 automationTrueTouch];

    if (v13)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v125[0] = v16;
      v126[0] = &unk_1EFE95FB0;
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
      v125[1] = v17;
      v126[1] = &unk_1EFE96010;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
      [v5 addObject:v18];
    }
  }

  if ([v4 wantsKeyboardEvents])
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v123[0] = v19;
    v124[0] = &unk_1EFE96028;
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v123[1] = v20;
    v124[1] = &unk_1EFE96040;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
    [v5 addObject:v21];

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v121[0] = v22;
    v122[0] = &unk_1EFE96028;
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v121[1] = v23;
    v122[1] = &unk_1EFE96058;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
    [v5 addObject:v24];

    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v119[0] = v25;
    v120[0] = &unk_1EFE96028;
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v119[1] = v26;
    v120[1] = &unk_1EFE96070;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
    [v5 addObject:v27];

    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v117[0] = v28;
    v118[0] = &unk_1EFE96040;
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v117[1] = v29;
    v118[1] = &unk_1EFE96088;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
    [v5 addObject:v30];

    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v115[0] = v31;
    v116[0] = &unk_1EFE960A0;
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v115[1] = v32;
    v116[1] = &unk_1EFE96088;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
    [v5 addObject:v33];

    if (AXDeviceIsAudioAccessory())
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v113[0] = v34;
      v114[0] = &unk_1EFE95FC8;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
      v113[1] = v35;
      v114[1] = &unk_1EFE96040;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
      [v5 addObject:v36];
    }

    if ((AXDeviceIsWatch() & 1) != 0 || _AXSMossdeepEnabled())
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v111 = v37;
      v112 = &unk_1EFE960B8;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      [v5 addObject:v38];
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v109[0] = v39;
    v110[0] = &unk_1EFE960D0;
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v109[1] = v40;
    v110[1] = &unk_1EFE96070;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
    [v5 addObject:v41];

    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v107[0] = v42;
    v108[0] = &unk_1EFE960D0;
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v107[1] = v43;
    v108[1] = &unk_1EFE96088;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
    [v5 addObject:v44];
  }

  if ([v4 wantsLisaEvents])
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v105[0] = v45;
    v106[0] = &unk_1EFE960E8;
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v105[1] = v46;
    v106[1] = &unk_1EFE96040;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
    [v5 addObject:v47];

    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v103[0] = v48;
    v104[0] = &unk_1EFE96040;
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v103[1] = v49;
    v104[1] = &unk_1EFE96100;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
    [v5 addObject:v50];
  }

  if ([v4 wantsATVRemoteEvents])
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v101[0] = v51;
    v102[0] = &unk_1EFE96040;
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v101[1] = v52;
    v102[1] = &unk_1EFE96118;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
    [v5 addObject:v53];

    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v99[0] = v54;
    v100[0] = &unk_1EFE96040;
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v99[1] = v55;
    v100[1] = &unk_1EFE96130;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    [v5 addObject:v56];

    v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v97[0] = v57;
    v98[0] = &unk_1EFE96040;
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v97[1] = v58;
    v98[1] = &unk_1EFE96148;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
    [v5 addObject:v59];

    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v95[0] = v60;
    v96[0] = &unk_1EFE96040;
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v95[1] = v61;
    v96[1] = &unk_1EFE96160;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    [v5 addObject:v62];
  }

  if ([v4 wantsMouseEvents])
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v93[0] = v63;
    v94[0] = &unk_1EFE96040;
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v93[1] = v64;
    v94[1] = &unk_1EFE96058;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
    [v5 addObject:v65];

    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v91[0] = v66;
    v92[0] = &unk_1EFE96040;
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v91[1] = v67;
    v92[1] = &unk_1EFE96040;
    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    [v5 addObject:v68];

    v69 = +[AXSettings sharedInstance];
    LODWORD(v67) = [v69 laserEnabled];

    if (v67)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v89[0] = v70;
      v90[0] = &unk_1EFE95FB0;
      v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
      v89[1] = v71;
      v90[1] = &unk_1EFE95FC8;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
      [v5 addObject:v72];
    }
  }

  if ([v4 wantsStylusEvents])
  {
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v87[0] = v73;
    v88[0] = &unk_1EFE95FB0;
    v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v87[1] = v74;
    v88[1] = &unk_1EFE95FE0;
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
    [v5 addObject:v75];
  }

  if ([v4 wantsAccessibilityEvents])
  {
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v85[0] = v76;
    v86[0] = &unk_1EFE96178;
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v85[1] = v77;
    v86[1] = &unk_1EFE96190;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
    [v5 addObject:v78];
  }

  if ([v4 wantsVolumeButtonEvents])
  {
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v84[0] = &unk_1EFE960B8;
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"DeviceUsage", v79}];
    v83[1] = v80;
    v84[1] = &unk_1EFE96040;
    v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
    [v5 addObject:v81];
  }

  return v5;
}

- (void)_installHIDFilter:(id)a3 skipDeviceMatching:(BOOL)a4 filterEvents:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (![v8 systemClient])
  {
    if ([v8 type] == 2)
    {
      v10 = IOHIDEventSystemClientCreateWithType();
    }

    else
    {
      v10 = IOHIDEventSystemClientCreate();
    }

    v11 = v10;
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    if (!a4)
    {
      v12 = [(AXEventTapManager *)self _hidFilterListForPair:v8 filterEvents:v9];
      if ([v12 count] < 2)
      {
        if ([v12 count] == 1)
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          IOHIDEventSystemClientSetMatching();
        }
      }

      else
      {
        IOHIDEventSystemClientSetMatchingMultiple();
      }

      v14 = [v8 matchingServiceHandler];

      if (v14)
      {
        v22 = v12;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = IOHIDEventSystemClientCopyServices(v11);
        v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
          do
          {
            v19 = 0;
            do
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v28 + 1) + 8 * v19);
              v21 = [v8 matchingServiceHandler];
              v21[2](v21, v20);

              ++v19;
            }

            while (v17 != v19);
            v17 = [(__CFArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v17);
        }

        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __71__AXEventTapManager__installHIDFilter_skipDeviceMatching_filterEvents___block_invoke;
        v26 = &unk_1E71EA0D8;
        v27 = v8;
        IOHIDEventSystemClientRegisterDeviceMatchingBlock();

        v12 = v22;
      }
    }

    [v8 setSystemClient:{v11, v22, v23, v24, v25, v26}];
    if (v11)
    {
      CFRelease(v11);
    }

    [(NSRecursiveLock *)self->_eventTapLock lock];
    [(NSMutableArray *)self->_eventTaps insertObject:v8 atIndex:0];
    [(NSRecursiveLock *)self->_eventTapLock unlock];
  }
}

void __71__AXEventTapManager__installHIDFilter_skipDeviceMatching_filterEvents___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) matchingServiceHandler];
  v5[2](v5, a4);
}

- (void)_installSystemEventTap:(id)a3
{
  eventTapLock = self->_eventTapLock;
  v5 = a3;
  [(NSRecursiveLock *)eventTapLock lock];
  if (self->_isEnumeratingEventTaps)
  {
    [(NSMutableArray *)self->_addedEventTapPairs addObject:v5];
  }

  else
  {
    [(NSMutableArray *)self->_eventTaps insertObject:v5 atIndex:0];

    if ([(NSMutableArray *)self->_eventTaps count]== 1)
    {
      [(AXEventTapManager *)self _setHIDEventTapCallback:_axEventTapHIDCallback];
    }
  }

  [(AXEventTapManager *)self _reorderEventTaps];
  v6 = self->_eventTapLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (id)installEventTap:(id)a3 identifier:(id)a4 type:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(AXEventTapManager *)self installEventTap:v9 identifier:v8 type:v5 skipDeviceMatching:0 filterEvents:v10 matchingServiceHandler:0];

  return v11;
}

- (id)installEventTap:(id)a3 identifier:(id)a4 type:(int)a5 skipDeviceMatching:(BOOL)a6 filterEvents:(id)a7 matchingServiceHandler:(id)a8
{
  v10 = a6;
  v11 = *&a5;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a3;
  v18 = objc_alloc_init(AXEventTapPair);
  [(AXEventTapPair *)v18 setHandler:v17];

  [(AXEventTapPair *)v18 setMatchingServiceHandler:v16];
  [(AXEventTapPair *)v18 setType:v11];
  v19 = *MEMORY[0x1E695E480];
  v20 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (v14)
  {
    [(AXEventTapPair *)v18 setIdentifier:v14];
  }

  else
  {
    v21 = CFUUIDCreateString(v19, v20);
    [(AXEventTapPair *)v18 setIdentifier:v21];
  }

  [(AXEventTapPair *)v18 setPriority:30];
  if (v20)
  {
    CFRelease(v20);
  }

  [(AXEventTapManager *)self _installEventTap:v18 skipDeviceMatching:v10 filterEvents:v15];
  v22 = [(AXEventTapPair *)v18 identifier];

  return v22;
}

- (id)installKeyboardEventTap:(id)a3 identifier:(id)a4 matchingServiceHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setWantsKeyboardEvents:1];
  v12 = [(AXEventTapManager *)self installEventTap:v10 identifier:v9 type:1 skipDeviceMatching:0 filterEvents:v11 matchingServiceHandler:v8];

  return v12;
}

- (void)removeEventTap:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSRecursiveLock *)self->_eventTapLock lock];
    if (self->_isEnumeratingEventTaps)
    {
      [(NSMutableSet *)self->_removedEventTapIdentifiers addObject:v4];
    }

    else
    {
      eventTaps = self->_eventTaps;
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __36__AXEventTapManager_removeEventTap___block_invoke;
      v10 = &unk_1E71EA100;
      v11 = v4;
      v12 = self;
      v6 = [(NSMutableArray *)eventTaps indexesOfObjectsPassingTest:&v7];
      [(NSMutableArray *)eventTaps removeObjectsAtIndexes:v6, v7, v8, v9, v10];

      if (![(NSMutableArray *)self->_eventTaps count])
      {
        [(AXEventTapManager *)self _setHIDEventTapCallback:0];
      }
    }

    [(AXEventTapManager *)self _reorderEventTaps];
    [(NSRecursiveLock *)self->_eventTapLock unlock];
  }
}

uint64_t __36__AXEventTapManager_removeEventTap___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *a4 = 1;
    [*(a1 + 40) _removeHIDEventTapFilter:v6];
  }

  return v8;
}

- (void)_removeHIDEventTapFilter:(id)a3
{
  v3 = a3;
  if ([v3 systemClient])
  {
    if ([v3 type] != 1 && objc_msgSend(v3, "type") != 2)
    {
      _AXAssert();
    }

    if ([v3 type] == 1)
    {
      [v3 systemClient];
      IOHIDEventSystemClientUnregisterEventFilterCallback();
    }

    else if ([v3 type] == 2)
    {
      [v3 systemClient];
      IOHIDEventSystemClientUnregisterEventCallback();
    }

    [v3 systemClient];
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
  }
}

- (void)runMatchingServiceHandlerForEventTap:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(AXEventTapManager *)self _runMatchingServiceHandler:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_runMatchingServiceHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 matchingServiceHandler];

  if (!v4)
  {
    _AXAssert();
  }

  v5 = [v3 matchingServiceHandler];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = IOHIDEventSystemClientCopyServices([v3 systemClient]);
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [v3 matchingServiceHandler];
          v12[2](v12, v11);

          ++v10;
        }

        while (v8 != v10);
        v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_accessibilityShouldIgnoreHIDServiceForContinuity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[AXEventTapManager _accessibilityShouldIgnoreHIDServiceForContinuity:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "%s: hidServiceClientRegistryIDNum is not NSNumber: %@", &v2, 0x16u);
}

@end