@interface AXEventTapManager
+ (id)sharedManager;
- (AXEventTapManager)init;
- (BOOL)_accessibilityShouldIgnoreHIDServiceForContinuity:(__IOHIDServiceClient *)continuity;
- (BOOL)_processHIDEvent:(__IOHIDEvent *)event taskPort:(unsigned int)port bundleId:(id)id;
- (id)_copyCurrentEventTapPairs;
- (id)_hidFilterListForPair:(id)pair filterEvents:(id)events;
- (id)description;
- (id)installEventTap:(id)tap identifier:(id)identifier type:(int)type;
- (id)installEventTap:(id)tap identifier:(id)identifier type:(int)type skipDeviceMatching:(BOOL)matching filterEvents:(id)events matchingServiceHandler:(id)handler;
- (id)installKeyboardEventTap:(id)tap identifier:(id)identifier matchingServiceHandler:(id)handler;
- (void)_enumerateEventTapPairsUsingBlock:(id)block;
- (void)_handleTestIOHIDEvent:(__IOHIDEvent *)event;
- (void)_installEventTap:(id)tap skipDeviceMatching:(BOOL)matching filterEvents:(id)events;
- (void)_installHIDFilter:(id)filter skipDeviceMatching:(BOOL)matching filterEvents:(id)events;
- (void)_installSystemEventTap:(id)tap;
- (void)_removeHIDEventTapFilter:(id)filter;
- (void)_reorderEventTaps;
- (void)_runMatchingServiceHandler:(id)handler;
- (void)_setEventTapPriority:(id)priority priority:(int)a4;
- (void)_setHIDEventTapCallback:(void *)callback;
- (void)dealloc;
- (void)removeEventTap:(id)tap;
- (void)runMatchingServiceHandlerForEventTap:(id)tap;
- (void)sendEvent:(id)event afterTap:(id)tap useGSEvent:(BOOL)sEvent namedTaps:(id)taps options:(unint64_t)options;
- (void)sendHIDSystemEvent:(id)event repostCreatorHIDEvent:(BOOL)dEvent senderID:(unint64_t)d;
- (void)setEventTapPriority:(id)priority priority:(int)a4;
- (void)setFailedToProcessInTimeCallback:(id)callback callback:(id)a4;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    disabledIDMappingRegistry = v2->_disabledIDMappingRegistry;
    v2->_disabledIDMappingRegistry = dictionary;

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
        identifier = [v9 identifier];
        priority = [v9 priority];
        [v3 appendFormat:@"\t%@. Priority:%d\n", identifier, priority, v13];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_setHIDEventTapCallback:(void *)callback
{
  installationHIDCallback = self->_installationHIDCallback;
  if (installationHIDCallback)
  {
    installationHIDCallback[2](installationHIDCallback, callback);
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

- (void)_enumerateEventTapPairsUsingBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

      (*(blockCopy + 2))(blockCopy, *(*(&v24 + 1) + 8 * v10), 0, &v28);
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

- (void)sendHIDSystemEvent:(id)event repostCreatorHIDEvent:(BOOL)dEvent senderID:(unint64_t)d
{
  dEventCopy = dEvent;
  eventCopy = event;
  v21 = eventCopy;
  if (!self->_ioSystemPostBackClient)
  {
    self->_ioSystemPostBackClient = IOHIDEventSystemClientCreate();
    eventCopy = v21;
  }

  newHIDEventRef = [eventCopy newHIDEventRef];
  if (newHIDEventRef)
  {
    v9 = newHIDEventRef;
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

        handInfo = [v21 handInfo];
        paths = [handInfo paths];
        v16 = [paths count];

        if (v12 < v16)
        {
          handInfo2 = [v21 handInfo];
          paths2 = [handInfo2 paths];
          v19 = [paths2 objectAtIndex:v12];
          [v19 setShouldSetTouchFlag:1];
        }
      }
    }

LABEL_12:
    CFRelease(v9);
  }

  if (dEventCopy)
  {
    creatorHIDEvent = [v21 creatorHIDEvent];
    CFRetain(creatorHIDEvent);
  }

  else
  {
    creatorHIDEvent = [v21 newHIDEventRef];
  }

  [v21 type];
  if (creatorHIDEvent)
  {
    IOHIDEventSetSenderID();
    IOHIDEventSystemClientDispatchEvent();
    CFRelease(creatorHIDEvent);
  }

  else
  {
    _AXAssert();
  }
}

- (void)sendEvent:(id)event afterTap:(id)tap useGSEvent:(BOOL)sEvent namedTaps:(id)taps options:(unint64_t)options
{
  v33 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  tapCopy = tap;
  tapsCopy = taps;
  selfCopy = self;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  _copyCurrentEventTapPairs = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v13 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = tapCopy == 0;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(_copyCurrentEventTapPairs);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if (tapCopy && ([*(*(&v28 + 1) + 8 * v17) identifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", tapCopy), v19, (v20 & 1) != 0))
        {
          v15 = 1;
        }

        else if (v15 || ([v18 identifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(tapsCopy, "containsObject:", v21), v21, v22))
        {
          if (![v18 type])
          {
            handler = [v18 handler];
            v24 = (handler)[2](handler, eventCopy);

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
      v14 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  installationEventRepPost = selfCopy->_installationEventRepPost;
  if (installationEventRepPost)
  {
    installationEventRepPost[2](installationEventRepPost, eventCopy);
  }

LABEL_19:
}

- (void)_handleTestIOHIDEvent:(__IOHIDEvent *)event
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [AXEventRepresentation representationWithHIDEvent:event hidStreamIdentifier:@"AXEventTapManager" clientID:0 taskPort:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _copyCurrentEventTapPairs = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v6 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(_copyCurrentEventTapPairs);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type])
      {
        handler = [v10 handler];
        v12 = (handler)[2](handler, v4);
        [v10 identifier];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_processHIDEvent:(__IOHIDEvent *)event taskPort:(unsigned int)port bundleId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [AXEventRepresentation representationWithHIDEvent:event hidStreamIdentifier:@"AXEventTapManager" clientID:id taskPort:*&port];
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
    _copyCurrentEventTapPairs = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
    v11 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(_copyCurrentEventTapPairs);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (![v15 type])
          {
            handler = [v15 handler];
            v17 = (handler)[2](handler, v6);
            [v15 identifier];

            if (v17)
            {
              v18 = 0;
              goto LABEL_14;
            }
          }
        }

        v12 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)setFailedToProcessInTimeCallback:(id)callback callback:(id)a4
{
  callbackCopy = callback;
  v7 = a4;
  [(NSRecursiveLock *)self->_eventTapLock lock];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__AXEventTapManager_setFailedToProcessInTimeCallback_callback___block_invoke;
  v13 = &unk_1E71EA088;
  v14 = callbackCopy;
  v15 = v7;
  v8 = v7;
  v9 = callbackCopy;
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

- (void)setEventTapPriority:(id)priority priority:(int)a4
{
  priorityCopy = priority;
  [(NSRecursiveLock *)self->_eventTapLock lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AXEventTapManager_setEventTapPriority_priority___block_invoke;
  v8[3] = &unk_1E71EA0B0;
  v9 = priorityCopy;
  selfCopy = self;
  v11 = a4;
  v7 = priorityCopy;
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

- (BOOL)_accessibilityShouldIgnoreHIDServiceForContinuity:(__IOHIDServiceClient *)continuity
{
  ignoreEventsForContinuitySession = [(AXEventTapManager *)self ignoreEventsForContinuitySession];
  LOBYTE(bOOLValue) = 0;
  if (continuity && ignoreEventsForContinuitySession)
  {
    v7 = IOHIDServiceClientGetRegistryID(continuity);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      disabledIDMappingRegistry = [(AXEventTapManager *)self disabledIDMappingRegistry];
      v9 = [disabledIDMappingRegistry objectForKeyedSubscript:v7];

      if (v9)
      {
        LOBYTE(bOOLValue) = [v9 BOOLValue];
      }

      else
      {
        v11 = IOHIDServiceClientCopyProperty(continuity, @"DisableAccessibilityEventTranslation");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v11 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        disabledIDMappingRegistry2 = [(AXEventTapManager *)self disabledIDMappingRegistry];
        v13 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
        [disabledIDMappingRegistry2 setObject:v13 forKey:v7];
      }
    }

    else
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AXEventTapManager *)v7 _accessibilityShouldIgnoreHIDServiceForContinuity:v10];
      }

      LOBYTE(bOOLValue) = 0;
    }
  }

  return bOOLValue;
}

- (void)_setEventTapPriority:(id)priority priority:(int)a4
{
  v4 = *&a4;
  priorityCopy = priority;
  [priorityCopy setPriority:v4];
  if ([priorityCopy type] == 1)
  {
    if (![priorityCopy systemClient])
    {
      _AXAssert();
    }

    [priorityCopy systemClient];
    IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
  }

  else if ([priorityCopy type] == 2)
  {
    if (![priorityCopy systemClient])
    {
      _AXAssert();
    }

    [priorityCopy systemClient];
    IOHIDEventSystemClientRegisterEventCallback();
  }
}

- (void)_installEventTap:(id)tap skipDeviceMatching:(BOOL)matching filterEvents:(id)events
{
  matchingCopy = matching;
  v14 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  eventsCopy = events;
  v10 = AXLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [tapCopy identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "Installing event filter for: %@", &v12, 0xCu);
  }

  if ([tapCopy type] == 1 || objc_msgSend(tapCopy, "type") == 2)
  {
    [(AXEventTapManager *)self _installHIDFilter:tapCopy skipDeviceMatching:matchingCopy filterEvents:eventsCopy];
  }

  else
  {
    [(AXEventTapManager *)self _installSystemEventTap:tapCopy];
  }
}

- (id)_hidFilterListForPair:(id)pair filterEvents:(id)events
{
  v132[2] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  array = [MEMORY[0x1E695DF70] array];
  if ([eventsCopy wantsDigitizerEvents])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v131[0] = v6;
    v132[0] = &unk_1EFE95FB0;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v131[1] = v7;
    v132[1] = &unk_1EFE95FC8;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
    [array addObject:v8];

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v129[0] = v9;
    v130[0] = &unk_1EFE95FB0;
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v129[1] = v10;
    v130[1] = &unk_1EFE95FE0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    [array addObject:v11];

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v127[0] = v12;
    v128[0] = &unk_1EFE95FB0;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v127[1] = v13;
    v128[1] = &unk_1EFE95FF8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
    [array addObject:v14];

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
      [array addObject:v18];
    }
  }

  if ([eventsCopy wantsKeyboardEvents])
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v123[0] = v19;
    v124[0] = &unk_1EFE96028;
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v123[1] = v20;
    v124[1] = &unk_1EFE96040;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
    [array addObject:v21];

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v121[0] = v22;
    v122[0] = &unk_1EFE96028;
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v121[1] = v23;
    v122[1] = &unk_1EFE96058;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
    [array addObject:v24];

    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v119[0] = v25;
    v120[0] = &unk_1EFE96028;
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v119[1] = v26;
    v120[1] = &unk_1EFE96070;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
    [array addObject:v27];

    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v117[0] = v28;
    v118[0] = &unk_1EFE96040;
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v117[1] = v29;
    v118[1] = &unk_1EFE96088;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
    [array addObject:v30];

    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v115[0] = v31;
    v116[0] = &unk_1EFE960A0;
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v115[1] = v32;
    v116[1] = &unk_1EFE96088;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
    [array addObject:v33];

    if (AXDeviceIsAudioAccessory())
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v113[0] = v34;
      v114[0] = &unk_1EFE95FC8;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
      v113[1] = v35;
      v114[1] = &unk_1EFE96040;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
      [array addObject:v36];
    }

    if ((AXDeviceIsWatch() & 1) != 0 || _AXSMossdeepEnabled())
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
      v111 = v37;
      v112 = &unk_1EFE960B8;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      [array addObject:v38];
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v109[0] = v39;
    v110[0] = &unk_1EFE960D0;
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v109[1] = v40;
    v110[1] = &unk_1EFE96070;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
    [array addObject:v41];

    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v107[0] = v42;
    v108[0] = &unk_1EFE960D0;
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v107[1] = v43;
    v108[1] = &unk_1EFE96088;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
    [array addObject:v44];
  }

  if ([eventsCopy wantsLisaEvents])
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v105[0] = v45;
    v106[0] = &unk_1EFE960E8;
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v105[1] = v46;
    v106[1] = &unk_1EFE96040;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
    [array addObject:v47];

    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v103[0] = v48;
    v104[0] = &unk_1EFE96040;
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v103[1] = v49;
    v104[1] = &unk_1EFE96100;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
    [array addObject:v50];
  }

  if ([eventsCopy wantsATVRemoteEvents])
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v101[0] = v51;
    v102[0] = &unk_1EFE96040;
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v101[1] = v52;
    v102[1] = &unk_1EFE96118;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
    [array addObject:v53];

    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v99[0] = v54;
    v100[0] = &unk_1EFE96040;
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v99[1] = v55;
    v100[1] = &unk_1EFE96130;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    [array addObject:v56];

    v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v97[0] = v57;
    v98[0] = &unk_1EFE96040;
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v97[1] = v58;
    v98[1] = &unk_1EFE96148;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
    [array addObject:v59];

    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v95[0] = v60;
    v96[0] = &unk_1EFE96040;
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v95[1] = v61;
    v96[1] = &unk_1EFE96160;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    [array addObject:v62];
  }

  if ([eventsCopy wantsMouseEvents])
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v93[0] = v63;
    v94[0] = &unk_1EFE96040;
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v93[1] = v64;
    v94[1] = &unk_1EFE96058;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
    [array addObject:v65];

    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v91[0] = v66;
    v92[0] = &unk_1EFE96040;
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v91[1] = v67;
    v92[1] = &unk_1EFE96040;
    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    [array addObject:v68];

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
      [array addObject:v72];
    }
  }

  if ([eventsCopy wantsStylusEvents])
  {
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v87[0] = v73;
    v88[0] = &unk_1EFE95FB0;
    v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v87[1] = v74;
    v88[1] = &unk_1EFE95FE0;
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
    [array addObject:v75];
  }

  if ([eventsCopy wantsAccessibilityEvents])
  {
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v85[0] = v76;
    v86[0] = &unk_1EFE96178;
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsage"];
    v85[1] = v77;
    v86[1] = &unk_1EFE96190;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
    [array addObject:v78];
  }

  if ([eventsCopy wantsVolumeButtonEvents])
  {
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DeviceUsagePage"];
    v84[0] = &unk_1EFE960B8;
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"DeviceUsage", v79}];
    v83[1] = v80;
    v84[1] = &unk_1EFE96040;
    v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
    [array addObject:v81];
  }

  return array;
}

- (void)_installHIDFilter:(id)filter skipDeviceMatching:(BOOL)matching filterEvents:(id)events
{
  v33 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  eventsCopy = events;
  if (![filterCopy systemClient])
  {
    if ([filterCopy type] == 2)
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
    if (!matching)
    {
      v12 = [(AXEventTapManager *)self _hidFilterListForPair:filterCopy filterEvents:eventsCopy];
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

      matchingServiceHandler = [filterCopy matchingServiceHandler];

      if (matchingServiceHandler)
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
              matchingServiceHandler2 = [filterCopy matchingServiceHandler];
              matchingServiceHandler2[2](matchingServiceHandler2, v20);

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
        v27 = filterCopy;
        IOHIDEventSystemClientRegisterDeviceMatchingBlock();

        v12 = v22;
      }
    }

    [filterCopy setSystemClient:{v11, v22, v23, v24, v25, v26}];
    if (v11)
    {
      CFRelease(v11);
    }

    [(NSRecursiveLock *)self->_eventTapLock lock];
    [(NSMutableArray *)self->_eventTaps insertObject:filterCopy atIndex:0];
    [(NSRecursiveLock *)self->_eventTapLock unlock];
  }
}

void __71__AXEventTapManager__installHIDFilter_skipDeviceMatching_filterEvents___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) matchingServiceHandler];
  v5[2](v5, a4);
}

- (void)_installSystemEventTap:(id)tap
{
  eventTapLock = self->_eventTapLock;
  tapCopy = tap;
  [(NSRecursiveLock *)eventTapLock lock];
  if (self->_isEnumeratingEventTaps)
  {
    [(NSMutableArray *)self->_addedEventTapPairs addObject:tapCopy];
  }

  else
  {
    [(NSMutableArray *)self->_eventTaps insertObject:tapCopy atIndex:0];

    if ([(NSMutableArray *)self->_eventTaps count]== 1)
    {
      [(AXEventTapManager *)self _setHIDEventTapCallback:_axEventTapHIDCallback];
    }
  }

  [(AXEventTapManager *)self _reorderEventTaps];
  v6 = self->_eventTapLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (id)installEventTap:(id)tap identifier:(id)identifier type:(int)type
{
  v5 = *&type;
  identifierCopy = identifier;
  tapCopy = tap;
  v10 = objc_opt_new();
  v11 = [(AXEventTapManager *)self installEventTap:tapCopy identifier:identifierCopy type:v5 skipDeviceMatching:0 filterEvents:v10 matchingServiceHandler:0];

  return v11;
}

- (id)installEventTap:(id)tap identifier:(id)identifier type:(int)type skipDeviceMatching:(BOOL)matching filterEvents:(id)events matchingServiceHandler:(id)handler
{
  matchingCopy = matching;
  v11 = *&type;
  identifierCopy = identifier;
  eventsCopy = events;
  handlerCopy = handler;
  tapCopy = tap;
  v18 = objc_alloc_init(AXEventTapPair);
  [(AXEventTapPair *)v18 setHandler:tapCopy];

  [(AXEventTapPair *)v18 setMatchingServiceHandler:handlerCopy];
  [(AXEventTapPair *)v18 setType:v11];
  v19 = *MEMORY[0x1E695E480];
  v20 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (identifierCopy)
  {
    [(AXEventTapPair *)v18 setIdentifier:identifierCopy];
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

  [(AXEventTapManager *)self _installEventTap:v18 skipDeviceMatching:matchingCopy filterEvents:eventsCopy];
  identifier = [(AXEventTapPair *)v18 identifier];

  return identifier;
}

- (id)installKeyboardEventTap:(id)tap identifier:(id)identifier matchingServiceHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  tapCopy = tap;
  v11 = objc_opt_new();
  [v11 setWantsKeyboardEvents:1];
  v12 = [(AXEventTapManager *)self installEventTap:tapCopy identifier:identifierCopy type:1 skipDeviceMatching:0 filterEvents:v11 matchingServiceHandler:handlerCopy];

  return v12;
}

- (void)removeEventTap:(id)tap
{
  tapCopy = tap;
  if (tapCopy)
  {
    [(NSRecursiveLock *)self->_eventTapLock lock];
    if (self->_isEnumeratingEventTaps)
    {
      [(NSMutableSet *)self->_removedEventTapIdentifiers addObject:tapCopy];
    }

    else
    {
      eventTaps = self->_eventTaps;
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __36__AXEventTapManager_removeEventTap___block_invoke;
      v10 = &unk_1E71EA100;
      v11 = tapCopy;
      selfCopy = self;
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

- (void)_removeHIDEventTapFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy systemClient])
  {
    if ([filterCopy type] != 1 && objc_msgSend(filterCopy, "type") != 2)
    {
      _AXAssert();
    }

    if ([filterCopy type] == 1)
    {
      [filterCopy systemClient];
      IOHIDEventSystemClientUnregisterEventFilterCallback();
    }

    else if ([filterCopy type] == 2)
    {
      [filterCopy systemClient];
      IOHIDEventSystemClientUnregisterEventCallback();
    }

    [filterCopy systemClient];
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
  }
}

- (void)runMatchingServiceHandlerForEventTap:(id)tap
{
  v18 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _copyCurrentEventTapPairs = [(AXEventTapManager *)self _copyCurrentEventTapPairs];
  v6 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_copyCurrentEventTapPairs);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:tapCopy];

        if (v12)
        {
          [(AXEventTapManager *)self _runMatchingServiceHandler:v10];
          goto LABEL_11;
        }
      }

      v7 = [_copyCurrentEventTapPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_runMatchingServiceHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  matchingServiceHandler = [handlerCopy matchingServiceHandler];

  if (!matchingServiceHandler)
  {
    _AXAssert();
  }

  matchingServiceHandler2 = [handlerCopy matchingServiceHandler];

  if (matchingServiceHandler2)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = IOHIDEventSystemClientCopyServices([handlerCopy systemClient]);
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
          matchingServiceHandler3 = [handlerCopy matchingServiceHandler];
          matchingServiceHandler3[2](matchingServiceHandler3, v11);

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