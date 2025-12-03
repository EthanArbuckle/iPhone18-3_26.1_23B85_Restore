@interface HSTPencilVirtualService
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (BOOL)setOutputEvent:(id)event forService:(id)service;
- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service;
- (HSTPencilVirtualService)initWithConfig:(const HSTPencilVirtualServiceConfig *)config withQueue:(id)queue;
- (HSTPencilVirtualServiceConfig)config;
- (id)copyEventMatching:(id)matching forService:(id)service;
- (id)propertyForKey:(id)key forService:(id)service;
- (void)_dispatchHIDEvents:(const void *)events;
- (void)_dispatchHIDEventsAsync:(void *)async;
- (void)_handleDebugStateEvent:(id)event;
- (void)_handleHIDPencilEvents:(id)events;
- (void)_handleVendorEvent:(id)event;
- (void)_logHIDEvent:(id)event;
- (void)_saveLastTouchSystemReady:(id)ready;
- (void)dealloc;
- (void)handleConsume:(id)consume;
- (void)setConfig:(HSTPencilVirtualServiceConfig *)config;
@end

@implementation HSTPencilVirtualService

- (HSTPencilVirtualService)initWithConfig:(const HSTPencilVirtualServiceConfig *)config withQueue:(id)queue
{
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = HSTPencilVirtualService;
  v8 = [(HSStage *)&v26 init];
  if (v8)
  {
    inactive = dispatch_workloop_create_inactive("com.apple.hid.PencilVirtualEventService");
    dispatch_set_qos_class_fallback();
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
    *&v8->_config.vendorID = *&config->vendorID;
    v11 = *&config->accurateMaxForce;
    v10 = *&config->maxHoverHeight;
    v12 = *&config->ownerRegistryID;
    *&v8->_config.heightMm = *&config->heightMm;
    *&v8->_config.accurateMaxForce = v11;
    *&v8->_config.maxHoverHeight = v10;
    *&v8->_config.ownerRegistryID = v12;
    objc_storeStrong(&v8->_outie, queue);
    objc_storeStrong(&v8->_innie, inactive);
    v13 = objc_opt_new();
    hidStats = v8->_hidStats;
    v8->_hidStats = v13;

    v15 = objc_opt_new();
    recordedProperties = v8->_recordedProperties;
    v8->_recordedProperties = v15;

    v17 = objc_opt_new();
    formatter = v8->_formatter;
    v8->_formatter = v17;

    [(NSDateFormatter *)v8->_formatter setDateStyle:1];
    [(NSDateFormatter *)v8->_formatter setTimeStyle:4];
    v19 = +[NSTimeZone localTimeZone];
    [(NSDateFormatter *)v8->_formatter setTimeZone:v19];

    innie = v8->_innie;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52__HSTPencilVirtualService_initWithConfig_withQueue___block_invoke;
    block[3] = &unk_109150;
    v21 = v8;
    v25 = v21;
    dispatch_async(innie, block);
    v22 = v21;
  }

  return v8;
}

void __52__HSTPencilVirtualService_initWithConfig_withQueue___block_invoke(uint64_t a1)
{
  v5 = objc_opt_new();
  [*(a1 + 32) setVirtualService:?];

  v2 = [*(a1 + 32) virtualService];

  if (v2)
  {
    v6 = [*(a1 + 32) virtualService];
    [v6 setDelegate:*(a1 + 32)];

    v7 = [*(a1 + 32) virtualService];
    [v7 setCancelHandler:&__block_literal_global_5];

    v8 = [*(a1 + 32) virtualService];
    v3 = [*(a1 + 32) innie];
    [v8 setDispatchQueue:v3];

    v9 = [*(a1 + 32) virtualService];
    [v9 activate];
  }

  else
  {
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__HSTPencilVirtualService_initWithConfig_withQueue___block_invoke_cold_1(v4);
    }
  }
}

void __52__HSTPencilVirtualService_initWithConfig_withQueue___block_invoke_30(id a1)
{
  v1 = MTLoggingPlugin();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "HSTPencilVirtualService: Calling cancel handler", v2, 2u);
  }
}

- (void)dealloc
{
  [(HIDVirtualEventService *)self->_virtualService cancel];
  v3.receiver = self;
  v3.super_class = HSTPencilVirtualService;
  [(HSStage *)&v3 dealloc];
}

- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service
{
  propertyCopy = property;
  keyCopy = key;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_innie);
  if ([keyCopy isEqualToString:@"MinDigitizerPressureValue"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.minForce = [(__CFString *)propertyCopy unsignedIntegerValue];
LABEL_8:
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [HSTPencilVirtualService setProperty:forKey:forService:];
      }

      v12 = 1;
LABEL_11:

      goto LABEL_23;
    }
  }

  else if (([keyCopy isEqualToString:@"AccurateMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"MaxDigitizerPressureValue"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.accurateMaxForce = [(__CFString *)propertyCopy unsignedIntegerValue];
      goto LABEL_8;
    }
  }

  else if (([keyCopy isEqualToString:@"ExtendedMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"DigitizerPressureDynamicRange"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.extendedMaxForce = [(__CFString *)propertyCopy unsignedIntegerValue];
      goto LABEL_8;
    }
  }

  else if ([keyCopy isEqualToString:@"HoverDisabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.hoverDisabled = [(__CFString *)propertyCopy BOOLValue];
      outie = self->_outie;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __57__HSTPencilVirtualService_setProperty_forKey_forService___block_invoke;
      block[3] = &unk_10A958;
      v28 = keyCopy;
      v29 = propertyCopy;
      selfCopy = self;
      dispatch_async(outie, block);

      goto LABEL_8;
    }
  }

  else
  {
    if (![keyCopy isEqualToString:@"ExternalMessage"])
    {
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v34 = keyCopy;
        v35 = 2112;
        v36 = serviceCopy;
        v37 = 2112;
        v38 = propertyCopy;
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "HSTPencilVirtualService: unknown set property %@ for service %@ with value %@", buf, 0x20u);
      }

      v12 = 0;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = self->_outie;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __57__HSTPencilVirtualService_setProperty_forKey_forService___block_invoke_2;
      v24[3] = &unk_109250;
      v25 = propertyCopy;
      selfCopy2 = self;
      dispatch_async(v14, v24);

      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_23:
  formatter = self->_formatter;
  v16 = +[NSDate date];
  v17 = [(NSDateFormatter *)formatter stringFromDate:v16];

  v18 = @"0";
  if (v17)
  {
    v18 = v17;
  }

  v31[0] = @"set time";
  v31[1] = @"key";
  v31[2] = @"value";
  v32[0] = v18;
  v19 = @"nil";
  if (propertyCopy)
  {
    v19 = propertyCopy;
  }

  v32[1] = keyCopy;
  v32[2] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  while (1)
  {
    v21 = [(NSMutableArray *)self->_recordedProperties count];
    recordedProperties = self->_recordedProperties;
    if (v21 < 0x64)
    {
      break;
    }

    [(NSMutableArray *)recordedProperties removeObjectAtIndex:0];
  }

  [(NSMutableArray *)recordedProperties addObject:v20];

  return v12;
}

void __57__HSTPencilVirtualService_setProperty_forKey_forService___block_invoke(id *a1)
{
  v2 = objc_opt_new();
  std::string::assign((v2 + 16), [a1[4] UTF8String]);
  objc_storeStrong((v2 + 40), a1[5]);
  v3.receiver = a1[6];
  v3.super_class = HSTPencilVirtualService;
  objc_msgSendSuper2(&v3, "handleConsume:", v2);
}

void __57__HSTPencilVirtualService_setProperty_forKey_forService___block_invoke_2(uint64_t a1)
{
  v2 = [[HSTExternalMessageEvent alloc] initWithMessage:*(a1 + 32)];
  v3.receiver = *(a1 + 40);
  v3.super_class = HSTPencilVirtualService;
  objc_msgSendSuper2(&v3, "handleConsume:", v2);
}

- (id)propertyForKey:(id)key forService:(id)service
{
  keyCopy = key;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_innie);
  if ([keyCopy isEqualToString:@"Built-In"])
  {
    goto LABEL_2;
  }

  if ([keyCopy isEqualToString:@"DeviceUsagePairs"])
  {
    v18[0] = @"DeviceUsagePage";
    v18[1] = @"DeviceUsage";
    v19[0] = &off_1124A0;
    v19[1] = &off_1124B8;
    v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v20 = v9;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
LABEL_5:

    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:@"Transport"])
  {
    v8 = @"Virtual";
    goto LABEL_17;
  }

  if ([keyCopy isEqualToString:@"VendorID"])
  {
    p_config = &self->_config;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"ProductID"])
  {
    p_config = &self->_config.productID;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"VirtualServiceOwnerRegistryID"])
  {
    p_config = &self->_config.ownerRegistryID;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"PrimaryUsagePage"])
  {
    v8 = &off_1124A0;
  }

  else
  {
    if (([keyCopy isEqualToString:@"PrimaryUsage"] & 1) == 0)
    {
      if ([keyCopy isEqualToString:@"MaxHoverHeight"])
      {
        p_config = &self->_config.maxHoverHeight;
      }

      else
      {
        if ([keyCopy isEqualToString:@"DisplayIntegrated"])
        {
LABEL_2:
          v8 = &__kCFBooleanTrue;
          goto LABEL_17;
        }

        if ([keyCopy isEqualToString:@"ServicePluginDebug"])
        {
          v8 = objc_opt_new();
          [(__CFString *)v8 setObject:self->_recordedProperties forKeyedSubscript:@"Recent set properties"];
LABEL_16:
          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

        if ([keyCopy isEqualToString:@"MinDigitizerPressureValue"])
        {
          p_config = &self->_config.minForce;
        }

        else if (([keyCopy isEqualToString:@"AccurateMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"MaxDigitizerPressureValue"))
        {
          p_config = &self->_config.accurateMaxForce;
        }

        else
        {
          if (([keyCopy isEqualToString:@"ExtendedMaxDigitizerPressureValue"] & 1) == 0 && !objc_msgSend(keyCopy, "isEqualToString:", @"DigitizerPressureDynamicRange"))
          {
            if (![keyCopy isEqualToString:@"HoverDisabled"])
            {
              if (![keyCopy isEqualToString:@"SurfaceDimensions"])
              {
                v12 = MTLoggingPlugin();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  [HSTPencilVirtualService propertyForKey:forService:];
                }

                v8 = 0;
                goto LABEL_19;
              }

              v14 = &self->_config;
              v9 = [NSNumber numberWithInt:self->_config.widthMm, @"Width"];
              v16[1] = @"Height";
              v17[0] = v9;
              v15 = [NSNumber numberWithInt:v14->heightMm];
              v17[1] = v15;
              v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

              goto LABEL_5;
            }

            v11 = [NSNumber numberWithBool:self->_config.hoverDisabled];
            goto LABEL_15;
          }

          p_config = &self->_config.extendedMaxForce;
        }
      }

LABEL_14:
      v11 = [NSNumber numberWithUnsignedInteger:p_config->vendorID];
LABEL_15:
      v8 = v11;
      goto LABEL_16;
    }

    v8 = &off_1124B8;
  }

LABEL_17:
  v12 = MTLoggingPlugin();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [HSTPencilVirtualService propertyForKey:forService:];
  }

LABEL_19:

LABEL_20:

  return v8;
}

- (id)copyEventMatching:(id)matching forService:(id)service
{
  matchingCopy = matching;
  dispatch_assert_queue_V2(self->_innie);
  v6 = [matchingCopy objectForKeyedSubscript:@"MatchingEvent"];
  v7 = [v6 integerValueForField:0x10000];
  v8 = [v6 integerValueForField:65537];
  if ([v6 type] != 1 || v7 == 65376 || v8 == 9)
  {
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12[0] = 67109632;
      v12[1] = [v6 type];
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Unsuported Pencil copyEvent match event: type=0x%x, usagePage=0x%x, usage=0x%x", v12, 0x14u);
    }

    v9 = 0;
  }

  else
  {
    v9 = self->_lastTouchSystemReadyEvent;
  }

  return v9;
}

- (BOOL)setOutputEvent:(id)event forService:(id)service
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_innie);
  LOBYTE(self) = [(HIDVirtualEventService *)self->_virtualService dispatchEvent:eventCopy];

  return self;
}

- (void)_logHIDEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy conformsToEventType:11])
  {
    v4 = [eventCopy integerValueForField:720920];
    if ((v4 & 0x83) != 0)
    {
      v5 = MTLoggingPlugin();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        children = [eventCopy children];
        v7 = 134219264;
        v8 = [children count];
        v9 = 2048;
        v10 = [eventCopy integerValueForField:720903];
        v11 = 2048;
        v12 = v4;
        v13 = 1024;
        v14 = (v4 >> 7) & 1;
        v15 = 2048;
        v16 = [eventCopy integerValueForField:720905];
        v17 = 2048;
        v18 = [eventCopy integerValueForField:720904];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Dispatching stylus digitizer event with %lu children, eventMask=0x%lx childEventMask=0x%lx Cancel=%d Touching=%ld inRange=%ld", &v7, 0x3Au);
      }
    }
  }
}

- (void)_saveLastTouchSystemReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_innie);
  if ([readyCopy type] == 1 && objc_msgSend(readyCopy, "integerValueForField:", 0x10000) == &loc_FF60 && objc_msgSend(readyCopy, "integerValueForField:", 65537) == &dword_8 + 1)
  {
    objc_storeStrong(&self->_lastTouchSystemReadyEvent, ready);
    v6 = [readyCopy dataValueForField:65540];
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*v6)
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      v9 = 136446210;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Pencil Touch System Ready = %{public}s", &v9, 0xCu);
    }
  }
}

- (void)_dispatchHIDEvents:(const void *)events
{
  dispatch_assert_queue_V2(self->_innie);
  v5 = *events;
  v6 = *(events + 1);
  if (*events != v6)
  {
    do
    {
      v7 = *v5;
      [(HSTPencilVirtualService *)self _logHIDEvent:v7];
      [(HSTPencilVirtualService *)self _saveLastTouchSystemReady:v7];
      [(HIDVirtualEventService *)self->_virtualService dispatchEvent:v7];

      ++v5;
    }

    while (v5 != v6);
  }
}

- (void)_dispatchHIDEventsAsync:(void *)async
{
  dispatch_assert_queue_not_V2(self->_innie);
  v5 = mach_continuous_time();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x4812000000;
  v9[3] = __Block_byref_object_copy__3;
  v9[4] = __Block_byref_object_dispose__3;
  v9[5] = &unk_FACCA;
  v10 = *async;
  v11 = *(async + 2);
  *async = 0;
  *(async + 1) = 0;
  *(async + 2) = 0;
  objc_initWeak(&location, self);
  innie = self->_innie;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__HSTPencilVirtualService__dispatchHIDEventsAsync___block_invoke;
  block[3] = &unk_10A980;
  objc_copyWeak(v8, &location);
  block[4] = v9;
  v8[1] = v5;
  dispatch_async(innie, block);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v9, 8);
  location = &v10;
  std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&location);
}

void __51__HSTPencilVirtualService__dispatchHIDEventsAsync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dispatchHIDEvents:*(*(a1 + 32) + 8) + 48];
    v4 = MTLoggingPlugin();
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 48);
      v6 = 134349056;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DispatchStylus", "%{public, signpost.description:begin_time}llu", &v6, 0xCu);
    }
  }
}

- (void)_handleVendorEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_innie);
  if (!eventCopy)
  {
    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleVendorEvent:]"];
    [v17 handleFailureInFunction:v18 file:@"HSTPencilVirtualService.mm" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v19.receiver = self;
  v19.super_class = HSTPencilVirtualService;
  [(HSStage *)&v19 handleConsume:eventCopy];
  HSUtil::MachTimeFromNanoseconds([eventCopy hsTimestamp]);
  v5 = objc_opt_new();
  [eventCopy type];
  data = [eventCopy data];
  [data bytes];
  data2 = [eventCopy data];
  [data2 length];
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  v9 = v5 + 1;
  v11 = v5[2];
  v10 = v5[3];
  if (v11 >= v10)
  {
    v13 = (v11 - *v9) >> 3;
    if ((v13 + 1) >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - *v9;
    v15 = v14 >> 2;
    if (v14 >> 2 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v24 = v5 + 1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>((v5 + 1), v16);
    }

    v20 = 0;
    v21 = (8 * v13);
    v23 = 0;
    *v21 = VendorDefinedEvent;
    v22 = 8 * v13 + 8;
    std::vector<HIDEvent * {__strong}>::__swap_out_circular_buffer((v5 + 1), &v20);
    v12 = v5[2];
    std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(&v20);
  }

  else
  {
    *v11 = VendorDefinedEvent;
    v12 = v11 + 1;
  }

  v5[2] = v12;

  [(HSTPencilVirtualService *)self _handleHIDEvents:v5];
}

- (void)_handleHIDPencilEvents:(id)events
{
  eventsCopy = events;
  dispatch_assert_queue_not_V2(self->_innie);
  v4 = eventsCopy;
  if (!eventsCopy)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleHIDPencilEvents:]"];
    [v5 handleFailureInFunction:v6 file:@"HSTPencilVirtualService.mm" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"events"}];

    v4 = 0;
  }

  [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:v4];
  [(HSTPencilVirtualService *)self _handleHIDEvents:eventsCopy];
}

- (void)_handleDebugStateEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_innie);
  if (!eventCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleDebugStateEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"HSTPencilVirtualService.mm" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  *(eventCopy + 16) = 1;
  v10[0] = @"Stage";
  v10[1] = @"Generation Stats";
  v11[0] = @"PencilVirtualService";
  stats = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v11[1] = stats;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [*(eventCopy + 3) addObject:v6];
  v9.receiver = self;
  v9.super_class = HSTPencilVirtualService;
  [(HSStage *)&v9 handleConsume:eventCopy];
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  dispatch_assert_queue_not_V2(self->_innie);
  v5 = consumeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(HSTPencilVirtualService *)self _handleVendorEvent:v5];
  }

  else
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(HSTPencilVirtualService *)self _handleHIDPencilEvents:v7];
    }

    else
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [(HSTPencilVirtualService *)self _handleDebugStateEvent:v9];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = HSTPencilVirtualService;
        [(HSStage *)&v11 handleConsume:v9];
      }
    }
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v7 = *(encode + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  p_config = &self->_config;
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)110,(char)100,(char)111,(char)114,(char)73,(char)68>::Key, p_config->vendorID);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)100,(char)117,(char)99,(char)116,(char)73,(char)68>::Key, p_config->productID);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)111,(char)119,(char)110,(char)101,(char)114,(char)82,(char)101,(char)103,(char)105,(char)115,(char)116,(char)114,(char)121,(char)73,(char)68>::Key, p_config->ownerRegistryID);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->minForce);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)117,(char)114,(char)97,(char)116,(char)101,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->accurateMaxForce);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)116,(char)101,(char)110,(char)100,(char)101,(char)100,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->extendedMaxForce);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)72,(char)111,(char)118,(char)101,(char)114,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key, p_config->maxHoverHeight);
  HSUtil::Encoder::encodeBool(encode, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)118,(char)101,(char)114,(char)68,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)100>::Key, p_config->hoverDisabled);
  HSUtil::Encoder::encodeInt(encode, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)100,(char)116,(char)104,(char)77,(char)109>::Key, p_config->widthMm);
  HSUtil::Encoder::encodeInt(encode, HSUtil::CoderKey::Literal<(char)104,(char)101,(char)105,(char)103,(char)104,(char)116,(char)77,(char)109>::Key, p_config->heightMm);
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  p_config = &self->_config;
  self->_config.vendorID = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)110,(char)100,(char)111,(char)114,(char)73,(char)68>::Key);
  p_config->productID = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)100,(char)117,(char)99,(char)116,(char)73,(char)68>::Key);
  p_config->ownerRegistryID = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)111,(char)119,(char)110,(char)101,(char)114,(char)82,(char)101,(char)103,(char)105,(char)115,(char)116,(char)114,(char)121,(char)73,(char)68>::Key);
  p_config->minForce = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->accurateMaxForce = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)117,(char)114,(char)97,(char)116,(char)101,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->extendedMaxForce = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)116,(char)101,(char)110,(char)100,(char)101,(char)100,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->maxHoverHeight = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)72,(char)111,(char)118,(char)101,(char)114,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key);
  p_config->hoverDisabled = HSUtil::Decoder::decodeBool(decode, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)118,(char)101,(char)114,(char)68,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)100>::Key);
  p_config->widthMm = HSUtil::Decoder::decodeInt(decode, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)100,(char)116,(char)104,(char)77,(char)109>::Key);
  p_config->heightMm = HSUtil::Decoder::decodeInt(decode, HSUtil::CoderKey::Literal<(char)104,(char)101,(char)105,(char)103,(char)104,(char)116,(char)77,(char)109>::Key);
  v5 = *decode;
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    v6 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTPencilVirtualService.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTPencilVirtualService handleHSDecode:v6];
    }
  }

  return v5 == 0;
}

- (HSTPencilVirtualServiceConfig)config
{
  v3 = *&self[3].productID;
  *&retstr->accurateMaxForce = *&self[2].heightMm;
  *&retstr->maxHoverHeight = v3;
  *&retstr->heightMm = self[3].minForce;
  v4 = *&self[2].maxHoverHeight;
  *&retstr->vendorID = *&self[2].accurateMaxForce;
  *&retstr->ownerRegistryID = v4;
  return self;
}

- (void)setConfig:(HSTPencilVirtualServiceConfig *)config
{
  *&self->_config.vendorID = *&config->vendorID;
  v4 = *&config->accurateMaxForce;
  v3 = *&config->maxHoverHeight;
  v5 = *&config->ownerRegistryID;
  *&self->_config.heightMm = *&config->heightMm;
  *&self->_config.accurateMaxForce = v4;
  *&self->_config.maxHoverHeight = v3;
  *&self->_config.ownerRegistryID = v5;
}

- (void)handleHSDecode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = 136315906;
  v2 = "[HSTPencilVirtualService handleHSDecode:]";
  v3 = 2080;
  v4 = a1;
  v5 = 2048;
  v6 = 479;
  v7 = 2080;
  v8 = "coder";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", &v1, 0x2Au);
}

@end