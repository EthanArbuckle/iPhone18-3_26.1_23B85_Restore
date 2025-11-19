@interface ATXAmbientLightMonitor
+ (ATXAmbientLightMonitor)sharedInstance;
+ (int)getAmbientLightTypeForXValue:(double)a3 YValue:(double)a4 ZValue:(double)a5;
- (ATXAmbientLightMonitor)init;
- (ATXAmbientLightMonitor)initWithoutMonitoring;
- (int)getCurrentAmbientLightType;
- (void)addSampleWithXValue:(id)a3 YValue:(id)a4 ZValue:(id)a5;
- (void)dealloc;
- (void)start;
@end

@implementation ATXAmbientLightMonitor

+ (ATXAmbientLightMonitor)sharedInstance
{
  if (sharedInstance__pasOnceToken2_1 != -1)
  {
    +[ATXAmbientLightMonitor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_41;

  return v3;
}

void __40__ATXAmbientLightMonitor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_41;
  sharedInstance__pasExprOnceResult_41 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXAmbientLightMonitor)init
{
  v10.receiver = self;
  v10.super_class = ATXAmbientLightMonitor;
  v2 = [(ATXAmbientLightMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sampledAmbientLightValues = v2->_sampledAmbientLightValues;
    v2->_sampledAmbientLightValues = v3;

    v2->_sampledAmbientLightValuesCurrentIndex = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("ATXAmbientLightMonitor", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    [(ATXAmbientLightMonitor *)v2 start];
  }

  return v2;
}

- (ATXAmbientLightMonitor)initWithoutMonitoring
{
  v10.receiver = self;
  v10.super_class = ATXAmbientLightMonitor;
  v2 = [(ATXAmbientLightMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sampledAmbientLightValues = v2->_sampledAmbientLightValues;
    v2->_sampledAmbientLightValues = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("ATXAmbientLightMonitor", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)start
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = IOHIDEventSystemClientCreateWithType();
  self->_client = v4;
  if (v4)
  {
    queue = self->_queue;
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    client = self->_client;
    IOHIDEventSystemClientRegisterEventCallback();
    v7 = self->_client;

    IOHIDEventSystemClientSetProperty(v7, @"ClientEventFilter", &unk_283A589B8);
  }
}

- (void)dealloc
{
  if (self->_client)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    client = self->_client;
    queue = self->_queue;
    IOHIDEventSystemClientCancel();
    v5 = self->_client;
    IOHIDEventSystemClientCancel();
    CFRelease(self->_client);
    self->_client = 0;
  }

  v6.receiver = self;
  v6.super_class = ATXAmbientLightMonitor;
  [(ATXAmbientLightMonitor *)&v6 dealloc];
}

- (int)getCurrentAmbientLightType
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_client)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__86;
    v31 = __Block_byref_object_dispose__86;
    v32 = objc_opt_new();
    v3 = dispatch_semaphore_create(0);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ATXAmbientLightMonitor_getCurrentAmbientLightType__block_invoke;
    block[3] = &unk_27859B1C0;
    block[4] = self;
    v26 = &v27;
    v5 = v3;
    v25 = v5;
    dispatch_async(queue, block);
    if ([MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:1.0])
    {
      v6 = 7;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v28[5];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v8)
      {
        v9 = 0;
        v10 = *v21;
        v11 = &unk_283A57128;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = [v28[5] countForObject:{v13, v20}];
            v15 = v14;
            if (v14 <= v9)
            {
              if (v14 != v9)
              {
                continue;
              }

              v17 = [v13 integerValue];
              if (v17 >= [v11 integerValue])
              {
                continue;
              }
            }

            v16 = v13;

            v11 = v16;
            v9 = v15;
          }

          v8 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
        }

        while (v8);
      }

      else
      {
        v11 = &unk_283A57128;
      }

      v6 = [v11 intValue];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    [(ATXAmbientLightMonitor *)self start];
    v6 = 7;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

intptr_t __52__ATXAmbientLightMonitor_getCurrentAmbientLightType__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 objectAtIndexedSubscript:{0, v22}];
        [v8 doubleValue];
        v10 = v9;

        v11 = [v7 objectAtIndexedSubscript:1];
        [v11 doubleValue];
        v13 = v12;

        v14 = [v7 objectAtIndexedSubscript:2];
        [v14 doubleValue];
        v16 = v15;

        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = *(a1 + 32);
        v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "getAmbientLightTypeForXValue:YValue:ZValue:", v10, v13, v16)}];
        [v17 addObject:v19];
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addSampleWithXValue:(id)a3 YValue:(id)a4 ZValue:(id)a5
{
  v16[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if ([(NSMutableArray *)self->_sampledAmbientLightValues count]> 4)
  {
    v15[0] = v8;
    v15[1] = v9;
    v15[2] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [(NSMutableArray *)self->_sampledAmbientLightValues setObject:v13 atIndexedSubscript:self->_sampledAmbientLightValuesCurrentIndex];
  }

  else
  {
    sampledAmbientLightValues = self->_sampledAmbientLightValues;
    v16[0] = v8;
    v16[1] = v9;
    v16[2] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    [(NSMutableArray *)sampledAmbientLightValues addObject:v13];
  }

  objc_autoreleasePoolPop(v11);
  self->_sampledAmbientLightValuesCurrentIndex = (self->_sampledAmbientLightValuesCurrentIndex + 1) % 5uLL;

  v14 = *MEMORY[0x277D85DE8];
}

+ (int)getAmbientLightTypeForXValue:(double)a3 YValue:(double)a4 ZValue:(double)a5
{
  if (a4 < 4.0)
  {
    return 0;
  }

  if (a5 < a4 && a4 < 100.0 && a5 < a3)
  {
    return 1;
  }

  v8 = a3 * 0.8;
  if (a4 < 200.0 && v8 <= a5)
  {
    return 2;
  }

  if (a4 < 1000.0)
  {
    v9 = v8 == a5;
    v10 = v8 < a5;
  }

  else
  {
    v9 = 1;
    v10 = 0;
  }

  if (!v10 && !v9)
  {
    return 3;
  }

  if (a4 < 30000.0)
  {
    v11 = v8 == a5;
    v12 = v8 < a5;
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  if (!v12 && !v11)
  {
    return 4;
  }

  if (a4 >= 10000.0)
  {
    return 6;
  }

  return 5;
}

@end