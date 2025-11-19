@interface HSTPencilVirtualService
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (BOOL)setOutputEvent:(id)a3 forService:(id)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5;
- (HSTPencilVirtualService)initWithConfig:(const HSTPencilVirtualServiceConfig *)a3 withQueue:(id)a4;
- (HSTPencilVirtualServiceConfig)config;
- (id)copyEventMatching:(id)a3 forService:(id)a4;
- (id)propertyForKey:(id)a3 forService:(id)a4;
- (void)_dispatchHIDEvents:(const void *)a3;
- (void)_dispatchHIDEventsAsync:(void *)a3;
- (void)_handleDebugStateEvent:(id)a3;
- (void)_handleHIDPencilEvents:(id)a3;
- (void)_handleVendorEvent:(id)a3;
- (void)_logHIDEvent:(id)a3;
- (void)_saveLastTouchSystemReady:(id)a3;
- (void)dealloc;
- (void)handleConsume:(id)a3;
- (void)setConfig:(HSTPencilVirtualServiceConfig *)a3;
@end

@implementation HSTPencilVirtualService

- (HSTPencilVirtualService)initWithConfig:(const HSTPencilVirtualServiceConfig *)a3 withQueue:(id)a4
{
  v7 = a4;
  v26.receiver = self;
  v26.super_class = HSTPencilVirtualService;
  v8 = [(HSStage *)&v26 init];
  if (v8)
  {
    inactive = dispatch_workloop_create_inactive("com.apple.hid.PencilVirtualEventService");
    dispatch_set_qos_class_fallback();
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
    *&v8->_config.vendorID = *&a3->vendorID;
    v11 = *&a3->accurateMaxForce;
    v10 = *&a3->maxHoverHeight;
    v12 = *&a3->ownerRegistryID;
    *&v8->_config.heightMm = *&a3->heightMm;
    *&v8->_config.accurateMaxForce = v11;
    *&v8->_config.maxHoverHeight = v10;
    *&v8->_config.ownerRegistryID = v12;
    objc_storeStrong(&v8->_outie, a4);
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_innie);
  if ([v9 isEqualToString:@"MinDigitizerPressureValue"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.minForce = [(__CFString *)v8 unsignedIntegerValue];
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

  else if (([v9 isEqualToString:@"AccurateMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"MaxDigitizerPressureValue"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.accurateMaxForce = [(__CFString *)v8 unsignedIntegerValue];
      goto LABEL_8;
    }
  }

  else if (([v9 isEqualToString:@"ExtendedMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"DigitizerPressureDynamicRange"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.extendedMaxForce = [(__CFString *)v8 unsignedIntegerValue];
      goto LABEL_8;
    }
  }

  else if ([v9 isEqualToString:@"HoverDisabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_config.hoverDisabled = [(__CFString *)v8 BOOLValue];
      outie = self->_outie;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __57__HSTPencilVirtualService_setProperty_forKey_forService___block_invoke;
      block[3] = &unk_10A958;
      v28 = v9;
      v29 = v8;
      v30 = self;
      dispatch_async(outie, block);

      goto LABEL_8;
    }
  }

  else
  {
    if (![v9 isEqualToString:@"ExternalMessage"])
    {
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v34 = v9;
        v35 = 2112;
        v36 = v10;
        v37 = 2112;
        v38 = v8;
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
      v25 = v8;
      v26 = self;
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
  if (v8)
  {
    v19 = v8;
  }

  v32[1] = v9;
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

- (id)propertyForKey:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_innie);
  if ([v6 isEqualToString:@"Built-In"])
  {
    goto LABEL_2;
  }

  if ([v6 isEqualToString:@"DeviceUsagePairs"])
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

  if ([v6 isEqualToString:@"Transport"])
  {
    v8 = @"Virtual";
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"VendorID"])
  {
    p_config = &self->_config;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"ProductID"])
  {
    p_config = &self->_config.productID;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"VirtualServiceOwnerRegistryID"])
  {
    p_config = &self->_config.ownerRegistryID;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"PrimaryUsagePage"])
  {
    v8 = &off_1124A0;
  }

  else
  {
    if (([v6 isEqualToString:@"PrimaryUsage"] & 1) == 0)
    {
      if ([v6 isEqualToString:@"MaxHoverHeight"])
      {
        p_config = &self->_config.maxHoverHeight;
      }

      else
      {
        if ([v6 isEqualToString:@"DisplayIntegrated"])
        {
LABEL_2:
          v8 = &__kCFBooleanTrue;
          goto LABEL_17;
        }

        if ([v6 isEqualToString:@"ServicePluginDebug"])
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

        if ([v6 isEqualToString:@"MinDigitizerPressureValue"])
        {
          p_config = &self->_config.minForce;
        }

        else if (([v6 isEqualToString:@"AccurateMaxDigitizerPressureValue"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"MaxDigitizerPressureValue"))
        {
          p_config = &self->_config.accurateMaxForce;
        }

        else
        {
          if (([v6 isEqualToString:@"ExtendedMaxDigitizerPressureValue"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"DigitizerPressureDynamicRange"))
          {
            if (![v6 isEqualToString:@"HoverDisabled"])
            {
              if (![v6 isEqualToString:@"SurfaceDimensions"])
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

- (id)copyEventMatching:(id)a3 forService:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_innie);
  v6 = [v5 objectForKeyedSubscript:@"MatchingEvent"];
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

- (BOOL)setOutputEvent:(id)a3 forService:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_innie);
  LOBYTE(self) = [(HIDVirtualEventService *)self->_virtualService dispatchEvent:v5];

  return self;
}

- (void)_logHIDEvent:(id)a3
{
  v3 = a3;
  if ([v3 conformsToEventType:11])
  {
    v4 = [v3 integerValueForField:720920];
    if ((v4 & 0x83) != 0)
    {
      v5 = MTLoggingPlugin();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 children];
        v7 = 134219264;
        v8 = [v6 count];
        v9 = 2048;
        v10 = [v3 integerValueForField:720903];
        v11 = 2048;
        v12 = v4;
        v13 = 1024;
        v14 = (v4 >> 7) & 1;
        v15 = 2048;
        v16 = [v3 integerValueForField:720905];
        v17 = 2048;
        v18 = [v3 integerValueForField:720904];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Dispatching stylus digitizer event with %lu children, eventMask=0x%lx childEventMask=0x%lx Cancel=%d Touching=%ld inRange=%ld", &v7, 0x3Au);
      }
    }
  }
}

- (void)_saveLastTouchSystemReady:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_innie);
  if ([v5 type] == 1 && objc_msgSend(v5, "integerValueForField:", 0x10000) == &loc_FF60 && objc_msgSend(v5, "integerValueForField:", 65537) == &dword_8 + 1)
  {
    objc_storeStrong(&self->_lastTouchSystemReadyEvent, a3);
    v6 = [v5 dataValueForField:65540];
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

- (void)_dispatchHIDEvents:(const void *)a3
{
  dispatch_assert_queue_V2(self->_innie);
  v5 = *a3;
  v6 = *(a3 + 1);
  if (*a3 != v6)
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

- (void)_dispatchHIDEventsAsync:(void *)a3
{
  dispatch_assert_queue_not_V2(self->_innie);
  v5 = mach_continuous_time();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x4812000000;
  v9[3] = __Block_byref_object_copy__3;
  v9[4] = __Block_byref_object_dispose__3;
  v9[5] = &unk_FACCA;
  v10 = *a3;
  v11 = *(a3 + 2);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
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

- (void)_handleVendorEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_innie);
  if (!v4)
  {
    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleVendorEvent:]"];
    [v17 handleFailureInFunction:v18 file:@"HSTPencilVirtualService.mm" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v19.receiver = self;
  v19.super_class = HSTPencilVirtualService;
  [(HSStage *)&v19 handleConsume:v4];
  HSUtil::MachTimeFromNanoseconds([v4 hsTimestamp]);
  v5 = objc_opt_new();
  [v4 type];
  v6 = [v4 data];
  [v6 bytes];
  v7 = [v4 data];
  [v7 length];
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

- (void)_handleHIDPencilEvents:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_not_V2(self->_innie);
  v4 = v7;
  if (!v7)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleHIDPencilEvents:]"];
    [v5 handleFailureInFunction:v6 file:@"HSTPencilVirtualService.mm" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"events"}];

    v4 = 0;
  }

  [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:v4];
  [(HSTPencilVirtualService *)self _handleHIDEvents:v7];
}

- (void)_handleDebugStateEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_innie);
  if (!v4)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[HSTPencilVirtualService _handleDebugStateEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"HSTPencilVirtualService.mm" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  *(v4 + 16) = 1;
  v10[0] = @"Stage";
  v10[1] = @"Generation Stats";
  v11[0] = @"PencilVirtualService";
  v5 = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v11[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [*(v4 + 3) addObject:v6];
  v9.receiver = self;
  v9.super_class = HSTPencilVirtualService;
  [(HSStage *)&v9 handleConsume:v4];
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_innie);
  v5 = v4;
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

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  p_config = &self->_config;
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)110,(char)100,(char)111,(char)114,(char)73,(char)68>::Key, p_config->vendorID);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)100,(char)117,(char)99,(char)116,(char)73,(char)68>::Key, p_config->productID);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)111,(char)119,(char)110,(char)101,(char)114,(char)82,(char)101,(char)103,(char)105,(char)115,(char)116,(char)114,(char)121,(char)73,(char)68>::Key, p_config->ownerRegistryID);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->minForce);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)117,(char)114,(char)97,(char)116,(char)101,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->accurateMaxForce);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)116,(char)101,(char)110,(char)100,(char)101,(char)100,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, p_config->extendedMaxForce);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)72,(char)111,(char)118,(char)101,(char)114,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key, p_config->maxHoverHeight);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)118,(char)101,(char)114,(char)68,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)100>::Key, p_config->hoverDisabled);
  HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)100,(char)116,(char)104,(char)77,(char)109>::Key, p_config->widthMm);
  HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)104,(char)101,(char)105,(char)103,(char)104,(char)116,(char)77,(char)109>::Key, p_config->heightMm);
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  p_config = &self->_config;
  self->_config.vendorID = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)110,(char)100,(char)111,(char)114,(char)73,(char)68>::Key);
  p_config->productID = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)100,(char)117,(char)99,(char)116,(char)73,(char)68>::Key);
  p_config->ownerRegistryID = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)111,(char)119,(char)110,(char)101,(char)114,(char)82,(char)101,(char)103,(char)105,(char)115,(char)116,(char)114,(char)121,(char)73,(char)68>::Key);
  p_config->minForce = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->accurateMaxForce = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)117,(char)114,(char)97,(char)116,(char)101,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->extendedMaxForce = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)116,(char)101,(char)110,(char)100,(char)101,(char)100,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  p_config->maxHoverHeight = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)72,(char)111,(char)118,(char)101,(char)114,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key);
  p_config->hoverDisabled = HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)118,(char)101,(char)114,(char)68,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)100>::Key);
  p_config->widthMm = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)100,(char)116,(char)104,(char)77,(char)109>::Key);
  p_config->heightMm = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)104,(char)101,(char)105,(char)103,(char)104,(char)116,(char)77,(char)109>::Key);
  v5 = *a3;
  if (*a3)
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

- (void)setConfig:(HSTPencilVirtualServiceConfig *)a3
{
  *&self->_config.vendorID = *&a3->vendorID;
  v4 = *&a3->accurateMaxForce;
  v3 = *&a3->maxHoverHeight;
  v5 = *&a3->ownerRegistryID;
  *&self->_config.heightMm = *&a3->heightMm;
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