@interface BKIOHIDService
- (BKIOHIDService)initWithHIDServiceRef:(__IOHIDService *)ref;
- (BOOL)claimsToConformToUsagePage:(unsigned __int16)page usage:(unsigned __int16)usage;
- (BOOL)isVirtualService;
- (BOOL)setProperties:(id)properties;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (NSString)uniqueProductIdentifier;
- (id)_disappearanceObservers;
- (id)_initForTestingWithSenderID:(unint64_t)d setUpInitialProperties:(BOOL)properties;
- (id)_workQueue;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initForSimulatorWithDisplayUUID:(id)d;
- (id)propertyForKey:(id)key;
- (id)propertyOfClass:(Class)class forKey:(id)key;
- (id)senderDescriptorForEventType:(unsigned int)type;
- (id)succinctDescription;
- (uint64_t)_isProbablyHeadset;
- (void)_serviceWasRemoved;
- (void)_setUpInitialProperties;
- (void)_workQueue_startIOServiceRemovalNotifications;
- (void)_workQueue_stopIOServiceRemovalNotifications;
- (void)addDisappearanceObserver:(id)observer queue:(id)queue;
- (void)asyncSetProperties:(id)properties;
- (void)asyncSetProperty:(id)property forKey:(id)key andDelayForSeconds:(double)seconds;
- (void)dealloc;
- (void)removeDisappearanceObserver:(id)observer;
- (void)setElementValue:(unsigned int)value forUsagePage:(unsigned int)page usage:(unsigned int)usage;
@end

@implementation BKIOHIDService

- (void)_serviceWasRemoved
{
  [(BKIOHIDService *)self setServiceStatus:2];
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BKIOHIDService__serviceWasRemoved__block_invoke;
  block[3] = &unk_2784F6B98;
  block[4] = self;
  dispatch_sync(_workQueue, block);
}

- (id)_workQueue
{
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    Serial = *(self + 24);
    if (!Serial)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p.workQueue", objc_opt_class(), self];
      Serial = BSDispatchQueueCreateSerial();

      objc_storeStrong((self + 24), Serial);
    }

    os_unfair_lock_unlock((self + 16));
  }

  else
  {
    Serial = 0;
  }

  return Serial;
}

uint64_t __36__BKIOHIDService__serviceWasRemoved__block_invoke(uint64_t result)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (v1)
  {
    [*(result + 32) _workQueue_stopIOServiceRemovalNotifications];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(v1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        v6 = 0;
        do
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * v6);
          if (v7)
          {
            WeakRetained = objc_loadWeakRetained(&v7[1].isa);
            v7 = objc_loadWeakRetained(&v7[2].isa);
            if (v7)
            {
              v9 = WeakRetained == 0;
            }

            else
            {
              v9 = 1;
            }

            if (!v9)
            {
              v12[0] = MEMORY[0x277D85DD0];
              v12[1] = 3221225472;
              v12[2] = __46__BKIOHIDService__workQueue_serviceWasRemoved__block_invoke;
              v12[3] = &unk_2784F7270;
              WeakRetained = WeakRetained;
              v13 = WeakRetained;
              v14 = v1;
              dispatch_async(v7, v12);
            }
          }

          else
          {
            WeakRetained = 0;
          }

          ++v6;
        }

        while (v4 != v6);
        v10 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v4 = v10;
      }

      while (v10);
    }

    result = [*(v1 + 48) removeAllObjects];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_workQueue_stopIOServiceRemovalNotifications
{
  _workQueue = [(BKIOHIDService *)self _workQueue];
  dispatch_assert_queue_V2(_workQueue);

  workQueue_removalNotification = self->_workQueue_removalNotification;
  if (workQueue_removalNotification)
  {
    CFRelease(workQueue_removalNotification);
    self->_workQueue_removalNotification = 0;
    workQueue_willTerminateNotification = self->_workQueue_willTerminateNotification;
    if (!workQueue_willTerminateNotification)
    {
      goto LABEL_6;
    }
  }

  else
  {
    workQueue_willTerminateNotification = self->_workQueue_willTerminateNotification;
    if (!workQueue_willTerminateNotification)
    {
      return;
    }
  }

  CFRelease(workQueue_willTerminateNotification);
  self->_workQueue_willTerminateNotification = 0;
LABEL_6:
  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (void)dealloc
{
  IOHIDService = self->_IOHIDService;
  if (IOHIDService)
  {
    CFRelease(IOHIDService);
  }

  workQueue_removalNotification = self->_workQueue_removalNotification;
  if (workQueue_removalNotification)
  {
    CFRelease(workQueue_removalNotification);
  }

  workQueue_willTerminateNotification = self->_workQueue_willTerminateNotification;
  if (workQueue_willTerminateNotification)
  {
    CFRelease(workQueue_willTerminateNotification);
  }

  v6.receiver = self;
  v6.super_class = BKIOHIDService;
  [(BKIOHIDService *)&v6 dealloc];
}

- (void)_setUpInitialProperties
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(BKIOHIDService *)self propertyForKey:@"displayUUID"];
  v4 = [v3 copy];
  displayUUID = self->_displayUUID;
  self->_displayUUID = v4;

  v6 = [(BKIOHIDService *)self propertyForKey:@"PrimaryUsagePage"];
  self->_primaryUsagePage = [v6 intValue];

  v7 = [(BKIOHIDService *)self propertyForKey:@"PrimaryUsage"];
  self->_primaryUsage = [v7 intValue];

  v8 = [(BKIOHIDService *)self propertyForKey:@"Authenticated"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 BOOLValue])
      {
        self->_authenticated = 1;
      }
    }
  }

  v9 = [(BKIOHIDService *)self propertyForKey:@"Built-In"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 BOOLValue])
      {
        self->_builtIn = 1;
      }
    }
  }

  v10 = [(BKIOHIDService *)self propertyForKey:@"IAPHIDAccessoryCategory"];
  if (v10)
  {
    v11 = [(BKIOHIDService *)self propertyForKey:@"DeviceTypeHint"];
    if ([v11 isEqualToString:@"Mouse"])
    {
      v12 = 11;
    }

    else
    {
      if (![v11 isEqualToString:@"Trackpad"])
      {

        intValue = [v10 intValue];
        if (intValue > 6)
        {
          v18 = 5;
        }

        else
        {
          v18 = dword_223CED968[intValue];
        }

        self->_eventSource = v18;
        goto LABEL_27;
      }

      v12 = 12;
    }

    self->_eventSource = v12;

LABEL_27:
    LOBYTE(builtIn) = 1;
    goto LABEL_28;
  }

  builtIn = self->_builtIn;
  if (builtIn)
  {
    self->_eventSource = 0;
LABEL_28:
    self->_authenticated = builtIn;
    goto LABEL_29;
  }

  selfCopy = self;
  if (![(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:2])
  {

    if (selfCopy->_authenticated)
    {
      if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:5])
      {
        v19 = 4;
LABEL_84:
        selfCopy->_eventSource = v19;
        goto LABEL_29;
      }

      if (selfCopy->_authenticated)
      {
        if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:6])
        {
          v19 = 3;
          goto LABEL_84;
        }

        if (selfCopy->_authenticated)
        {
          v19 = 5;
          goto LABEL_84;
        }
      }
    }

    v34 = [(BKIOHIDService *)selfCopy propertyForKey:@"AppleBluetoothRemote"];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v34 BOOLValue];

      if (bOOLValue)
      {
        v19 = 8;
        goto LABEL_84;
      }
    }

    else
    {
    }

    if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:5])
    {
      v19 = 9;
    }

    else if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:15])
    {
      v19 = 10;
    }

    else if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:11 usage:5])
    {
      v19 = 7;
    }

    else if ([(BKIOHIDService *)selfCopy _isProbablyHeadset])
    {
      v19 = 6;
    }

    else
    {
      if ([(BKIOHIDService *)selfCopy claimsToConformToUsagePage:1 usage:6])
      {
        selfCopy->_eventSource = 1;
        goto LABEL_29;
      }

      v19 = 2;
    }

    goto LABEL_84;
  }

  v15 = [(BKIOHIDService *)selfCopy propertyForKey:@"DeviceTypeHint"];
  if ([v15 isEqualToString:@"Mouse"])
  {
    v16 = 11;
  }

  else if ([v15 isEqualToString:@"Trackpad"])
  {
    v16 = 12;
  }

  else
  {
    v16 = 11;
    if (self->_primaryUsagePage == 13)
    {
      if (self->_primaryUsage == 12)
      {
        v16 = 12;
      }

      else
      {
        v16 = 11;
      }
    }
  }

  selfCopy->_eventSource = v16;

LABEL_29:
  v20 = objc_alloc_init(MEMORY[0x277CF0760]);
  [v20 setAuthenticated:self->_authenticated];
  switch(self->_eventSource)
  {
    case 0:
      v21 = 0;
      v22 = 1;
      break;
    case 1:
    case 3:
      v21 = 0;
      v22 = 3;
      break;
    case 2:
    case 5:
      v21 = 0;
      v22 = 2;
      break;
    case 4:
    case 9:
      v21 = 0;
      v22 = 4;
      break;
    case 6:
    case 7:
      v21 = 0;
      v22 = 5;
      break;
    case 8:
      v21 = 0;
      v22 = 6;
      break;
    case 0xA:
      v21 = 0;
      v22 = 7;
      break;
    case 0xB:
      v21 = 0;
      v22 = 8;
      break;
    case 0xC:
      v21 = 1;
      v22 = 9;
      break;
    case 0xD:
      v21 = 0;
      v22 = 10;
      break;
    default:
      v21 = 0;
      v22 = 0;
      break;
  }

  if (self->_displayUUID)
  {
    builtinDisplay = [MEMORY[0x277CF0698] displayWithHardwareIdentifier:?];
  }

  else
  {
    v24 = [(BKIOHIDService *)self propertyOfClass:objc_opt_class() forKey:@"DisplayIntegrated"];
    bOOLValue2 = [v24 BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_46;
    }

    builtinDisplay = [MEMORY[0x277CF0698] builtinDisplay];
  }

  v26 = builtinDisplay;
  [v20 setAssociatedDisplay:builtinDisplay];

LABEL_46:
  [v20 setSenderID:self->_senderID];
  [v20 setHardwareType:v22];
  [v20 setAuthenticated:self->_authenticated];
  primaryUsagePage = self->_primaryUsagePage;
  if (primaryUsagePage)
  {
    [v20 setPrimaryPage:primaryUsagePage primaryUsage:self->_primaryUsage];
  }

  else
  {
    v28 = BKLogHID();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      primaryUsage = self->_primaryUsage;
      v36[0] = 67109378;
      v36[1] = primaryUsage;
      v37 = 2114;
      selfCopy2 = self;
      _os_log_error_impl(&dword_223CBE000, v28, OS_LOG_TYPE_ERROR, "strangeness: primary page is zero; primary usage is:%X %{public}@", v36, 0x12u);
    }
  }

  objc_storeStrong(&self->_senderDescriptor, v20);
  if (v21 && [(BKIOHIDService *)self claimsToConformToUsagePage:1 usage:6])
  {
    v29 = [v20 mutableCopy];
    [v29 setHardwareType:3];
    senderDescriptorForKeyboardEvents = self->_senderDescriptorForKeyboardEvents;
    self->_senderDescriptorForKeyboardEvents = v29;
  }

  else
  {
    v31 = v20;
    senderDescriptorForKeyboardEvents = self->_senderDescriptorForKeyboardEvents;
    self->_senderDescriptorForKeyboardEvents = v31;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_workQueue_startIOServiceRemovalNotifications
{
  _workQueue = [(BKIOHIDService *)self _workQueue];
  dispatch_assert_queue_V2(_workQueue);

  if (!self->_workQueue_removalNotification)
  {
    objc_storeStrong(&self->_strongSelf, self);
    IOHIDService = self->_IOHIDService;
    self->_workQueue_removalNotification = IOHIDServiceCreateRemovalNotification();
    v5 = self->_IOHIDService;
    self->_workQueue_willTerminateNotification = IOHIDServiceCreateRequestTerminationNotification();
  }
}

- (id)_disappearanceObservers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__BKIOHIDService__disappearanceObservers__block_invoke;
  v6[3] = &unk_2784F6B58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__BKIOHIDService__disappearanceObservers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)uniqueProductIdentifier
{
  v3 = [(BKIOHIDService *)self propertyForKey:@"VendorID"];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(BKIOHIDService *)self propertyForKey:@"ProductID"];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(BKIOHIDService *)self propertyForKey:@"HIDVirtualDevice"];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if ([v17 BOOLValue])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-v%@", v7, v12, v17];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v7, v12, v20];
  }
  v18 = ;

  return v18;
}

- (void)removeDisappearanceObserver:(id)observer
{
  observerCopy = observer;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BKIOHIDService_removeDisappearanceObserver___block_invoke;
  v7[3] = &unk_2784F7270;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(_workQueue, v7);
}

void __46__BKIOHIDService_removeDisappearanceObserver___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [(BKIOHIDService *)v1 _workQueue];
    dispatch_assert_queue_V2(v3);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v1[6];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (v9)
          {
            WeakRetained = objc_loadWeakRetained(v9 + 1);
          }

          else
          {
            WeakRetained = 0;
          }

          if (WeakRetained == v2)
          {
            v12 = v9;

            if (!v9)
            {
              goto LABEL_17;
            }

            [v1[6] removeObject:{v12, v14}];
            goto LABEL_18;
          }

          ++v8;
        }

        while (v6 != v8);
        v11 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = v11;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:
    if (![v1[6] count])
    {
      [v1 _workQueue_stopIOServiceRemovalNotifications];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addDisappearanceObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BKIOHIDService_addDisappearanceObserver_queue___block_invoke;
  block[3] = &unk_2784F6B30;
  block[4] = self;
  v12 = observerCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = observerCopy;
  dispatch_sync(_workQueue, block);
}

void __49__BKIOHIDService_addDisappearanceObserver_queue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [(BKIOHIDService *)v1 _workQueue];
    dispatch_assert_queue_V2(v5);

    if ([v1 serviceStatus] == 2)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __60__BKIOHIDService__workQueue_addDisappearanceObserver_queue___block_invoke;
      v10[3] = &unk_2784F7270;
      v11 = v3;
      v12 = v1;
      dispatch_async(v4, v10);
    }

    else
    {
      if (!v1[6])
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v7 = v1[6];
        v1[6] = v6;
      }

      v8 = objc_alloc_init(_BKIOHIDServiceDisappearanceObserverInfo);
      p_isa = &v8->super.isa;
      if (v8)
      {
        objc_storeWeak(&v8->_observer, v3);
        objc_storeWeak(p_isa + 2, v4);
      }

      [v1[6] addObject:p_isa];
      [v1 _workQueue_startIOServiceRemovalNotifications];
    }
  }
}

- (void)setElementValue:(unsigned int)value forUsagePage:(unsigned int)page usage:(unsigned int)usage
{
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BKIOHIDService_setElementValue_forUsagePage_usage___block_invoke;
  block[3] = &unk_2784F6B08;
  block[4] = self;
  pageCopy = page;
  usageCopy = usage;
  valueCopy = value;
  dispatch_async(_workQueue, block);
}

void __53__BKIOHIDService_setElementValue_forUsagePage_usage___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = IOHIDServiceSetElementValue();
  if (v6)
  {
    v7 = v6;
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 44);
      v10 = *(a1 + 48);
      v12 = *(a1 + 40);
      v13[0] = 67109888;
      v13[1] = v10;
      v14 = 1024;
      v15 = v12;
      v16 = 1024;
      v17 = v11;
      v18 = 1024;
      v19 = v7;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "setElementValue:(%X) page:%X usage:%X failed:%X", v13, 0x1Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)asyncSetProperties:(id)properties
{
  propertiesCopy = properties;
  objc_initWeak(&location, self);
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BKIOHIDService_asyncSetProperties___block_invoke;
  block[3] = &unk_2784F6AE0;
  objc_copyWeak(&v9, &location);
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  dispatch_async(_workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__BKIOHIDService_asyncSetProperties___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 12);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__BKIOHIDService_asyncSetProperties___block_invoke_2;
    v6[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
    v6[4] = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)asyncSetProperty:(id)property forKey:(id)key andDelayForSeconds:(double)seconds
{
  propertyCopy = property;
  keyCopy = key;
  objc_initWeak(&location, self);
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BKIOHIDService_asyncSetProperty_forKey_andDelayForSeconds___block_invoke;
  block[3] = &unk_2784F6AB8;
  objc_copyWeak(v16, &location);
  v14 = keyCopy;
  v15 = propertyCopy;
  v16[1] = *&seconds;
  v11 = propertyCopy;
  v12 = keyCopy;
  dispatch_async(_workQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __61__BKIOHIDService_asyncSetProperty_forKey_andDelayForSeconds___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained[12];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    IOHIDServiceSetProperty();
    WeakRetained = v7;
    v6 = *(a1 + 56);
    if (v6 > 0.0)
    {
      usleep((v6 * 1000000.0));
      WeakRetained = v7;
    }
  }
}

- (BOOL)setProperties:(id)properties
{
  propertiesCopy = properties;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__BKIOHIDService_setProperties___block_invoke;
  v8[3] = &unk_2784F7270;
  v8[4] = self;
  v9 = propertiesCopy;
  v6 = propertiesCopy;
  dispatch_sync(_workQueue, v8);

  return 0;
}

uint64_t __32__BKIOHIDService_setProperties___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 96);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__BKIOHIDService_setProperties___block_invoke_2;
  v5[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
  v5[4] = v3;
  return [v1 enumerateKeysAndObjectsUsingBlock:v5];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__BKIOHIDService_setProperty_forKey___block_invoke;
  v12[3] = &unk_2784F6A70;
  v12[4] = self;
  v13 = keyCopy;
  v14 = propertyCopy;
  v15 = &v16;
  v9 = propertyCopy;
  v10 = keyCopy;
  dispatch_sync(_workQueue, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

uint64_t __37__BKIOHIDService_setProperty_forKey___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 96);
  v4 = a1[6];
  result = IOHIDServiceSetProperty();
  *(*(a1[7] + 8) + 24) = result != 0;
  return result;
}

- (id)propertyOfClass:(Class)class forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [(BKIOHIDService *)self propertyForKey:keyCopy];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543874;
      v13 = keyCopy;
      v14 = 2114;
      classCopy = class;
      v16 = 2114;
      v17 = objc_opt_class();
      v11 = v17;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "expected %{public}@ to be of class kind %{public}@, got %{public}@ instead", &v12, 0x20u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  _workQueue = [(BKIOHIDService *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BKIOHIDService_propertyForKey___block_invoke;
  block[3] = &unk_2784F6A48;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(_workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __33__BKIOHIDService_propertyForKey___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 96);
  v4 = IOHIDServiceGetProperty();
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isVirtualService
{
  v2 = [(BKIOHIDService *)self propertyOfClass:objc_opt_class() forKey:@"HIDVirtualDevice"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)claimsToConformToUsagePage:(unsigned __int16)page usage:(unsigned __int16)usage
{
  usageCopy = usage;
  pageCopy = page;
  v37 = *MEMORY[0x277D85DE8];
  if (self->_primaryUsagePage == page && self->_primaryUsage == usage)
  {
    v6 = 1;
  }

  else
  {
    [(BKIOHIDService *)self propertyForKey:@"DeviceUsagePairs"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = usageCopy;
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = objc_opt_class();
          v13 = v11;
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            v16 = [v15 objectForKeyedSubscript:@"DeviceUsagePage"];
            v17 = objc_opt_class();
            v18 = v16;
            if (v17)
            {
              v19 = (objc_opt_isKindOfClass() & 1) != 0 ? v18 : 0;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            v21 = [v15 objectForKeyedSubscript:@"DeviceUsage"];
            v22 = objc_opt_class();
            v23 = v21;
            if (v22)
            {
              v24 = (objc_opt_isKindOfClass() & 1) != 0 ? v23 : 0;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            intValue = [v20 intValue];
            intValue2 = [v25 intValue];

            if (pageCopy == intValue && intValue2 == v30)
            {

              v6 = 1;
              goto LABEL_31;
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_31:
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)senderDescriptorForEventType:(unsigned int)type
{
  v3 = 80;
  if (type == 3)
  {
    v3 = 56;
  }

  return *(&self->super.isa + v3);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKIOHIDService *)self succinctDescriptionBuilder];
  serviceStatus = self->_serviceStatus;
  if (serviceStatus >= 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<bogus:%d>", self->_serviceStatus];
  }

  else
  {
    v6 = off_2784F6B78[serviceStatus];
  }

  v7 = [succinctDescriptionBuilder appendObject:v6 withName:@"serviceStatus"];

  v8 = [succinctDescriptionBuilder appendObject:self->_IOHIDService withName:@"IOHIDService"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%llX", self->_senderID];
  v10 = [succinctDescriptionBuilder appendObject:v9 withName:@"senderID"];

  v11 = [succinctDescriptionBuilder appendObject:self->_displayUUID withName:@"displayUUID"];
  eventSource = self->_eventSource;
  v13 = NSStringFromBKSHIDEventSource();
  v14 = [succinctDescriptionBuilder appendObject:v13 withName:@"eventSource"];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%X", self->_primaryUsagePage];
  v16 = [succinctDescriptionBuilder appendObject:v15 withName:@"primaryUsagePage"];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%X", self->_primaryUsage];
  v18 = [succinctDescriptionBuilder appendObject:v17 withName:@"primaryUsage"];

  v19 = [succinctDescriptionBuilder appendBool:self->_authenticated withName:@"authenticated"];
  v20 = [succinctDescriptionBuilder appendBool:self->_builtIn withName:@"builtIn"];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKIOHIDService *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKIOHIDService *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BKIOHIDService)initWithHIDServiceRef:(__IOHIDService *)ref
{
  v27 = *MEMORY[0x277D85DE8];
  if (!ref)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"hidService"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"BKIOHIDService.m";
      v23 = 1024;
      v24 = 240;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDB4D4);
  }

  v14.receiver = self;
  v14.super_class = BKIOHIDService;
  v5 = [(BKIOHIDService *)&v14 init];
  if (v5)
  {
    CFRetain(ref);
    v5->_IOHIDService = ref;
    v6 = IOHIDServiceGetRegistryID();
    v5->_senderID = [v6 unsignedLongLongValue];
    [(BKIOHIDService *)v5 _setUpInitialProperties];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)initForSimulatorWithDisplayUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKIOHIDService;
  v5 = [(BKIOHIDService *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (v5->_IOHIDService)
    {
      v7 = IOHIDServiceGetRegistryID();
      v6->_senderID = [v7 unsignedLongLongValue];
    }

    v8 = [dCopy copy];
    displayUUID = v6->_displayUUID;
    v6->_displayUUID = v8;
  }

  return v6;
}

- (id)_initForTestingWithSenderID:(unint64_t)d setUpInitialProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = BKIOHIDService;
  v6 = [(BKIOHIDService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_senderID = d;
    if (propertiesCopy)
    {
      [(BKIOHIDService *)v6 _setUpInitialProperties];
    }
  }

  return v7;
}

- (uint64_t)_isProbablyHeadset
{
  if (!self)
  {
    return 0;
  }

  v1 = [self propertyForKey:@"DeviceTypeHint"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 isEqual:@"Headset"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end